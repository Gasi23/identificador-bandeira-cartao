#!/bin/bash

read -p "Digite o número do cartão: " card_number

# Remove espaços e traços do número
card_number=$(echo "$card_number" | tr -d ' -')

if [[ $card_number =~ ^4[0-9]{12}([0-9]{3})?$ ]]; then
  echo "Bandeira: Visa"
elif [[ $card_number =~ ^5[1-5][0-9]{14}$ ]]; then
  echo "Bandeira: MasterCard"
elif [[ $card_number =~ ^3[47][0-9]{13}$ ]]; then
  echo "Bandeira: American Express"
elif [[ $card_number =~ ^6(?:011|5[0-9]{2})[0-9]{12}$ ]]; then
  echo "Bandeira: Discover"
else
  echo "Bandeira não identificada"
fi
