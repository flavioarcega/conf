import csv
import re

origem = "tabular.csv"
destino = "contacts.vcf"


SELECT_WORDS = re.compile(r"\w+")


def capitalizeMatch(m):
    if m.group(0) in ("E", "DE", "DA", "DO", "DAS", "DOS"):
        return m.group(0).lower()
    return m.group(0).capitalize()


def capitalizeWords(linha: str):
    return SELECT_WORDS.sub(capitalizeMatch, linha.replace("  ", " "))


arquivo = csv.DictReader(open(origem, "r"), delimiter=";")
for linha in arquivo:
    phones = ""

    if "CELULAR" in linha:
        phones += f"TEL:{str(linha['CELULAR'])}\n"

    if "TELEFONE1" in linha:
        phones += f"TEL:{str(linha['TELEFONE1'])}\n"

    if "TELEFONE2" in linha:
        phones += f"TEL:{str(linha['TELEFONE2'])}\n"

    if not phones:
        continue

    card = "BEGIN:VCARD\nVERSION:3.0\n"
    card += f"FN:PT {capitalizeWords(linha['NOME'])}\n"
    card += phones
    if "EMAIL" in linha:
        card += f"EMAIL;TYPE=INTERNET:{linha['EMAIL']}\n"
    card += "NOTE: Optante do Setorial de Ciência e Tecnologia\n"
    card += "END:VCARD\n"
    print(card)
    print()

# BEGIN:VCARD
# VERSION:3.0
# FN:Nome completo
# item1.EMAIL;TYPE=INTERNET:email@pessoa.com
# item1.X-ABLabel:Label-1
# item2.TEL:41 99999-9999
# item2.X-ABLabel: Home
# item3.TEL:41 99999-9999
# item3.X-ABLabel: Work
# END:VCARD
