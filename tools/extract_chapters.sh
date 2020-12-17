function pdfpextr()
{
    # this function uses 3 arguments:
    #     $1 is the first page of the range to extract
    #     $2 is the last page of the range to extract
    #     $3 is the input file
    #     output file will be named "inputfile_pXX-pYY.pdf"
    gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER \
       -dFirstPage=${1} \
       -dLastPage=${2} \
       -sOutputFile="extract/${3%.pdf}_p${1}-p${2}.pdf" \
       ${3}
}

IN="thesis.pdf"

if [ ! -d "extract" ]; then
  mkdir "extract"
fi


# declare -A CHAPTERS=(
#   [0preface] = "7 10" \
#   [1abstract] = "11 13" \
#   [2abstractnl] = "15 17" \
#   [3nanopores] = "37 89" \
#   [4aims] = "91 93" \
#   [5electrostatics] = "95 130" \
#   [6trapping] = "131 157" \
#   [7epnps] = "159 178" \
#   [8transport] = "179 211" \
#   [9conclusions] = "213 221" \
# )


declare -A CHAPTERS=(
  [preface]="7 10"
  [abstract]="11 13"
  [abstractnl]="15 17"
  [nanopores]="37 89"
  [aims]="91 93"
  [electrostatics]="95 130"
  [trapping]="131 157"
  [epnps]="159 178"
  [transport]="179 211"
  [conclusions]="213 221"
)

for chapter in "${!CHAPTERS[@]}"; do

  pages=(${CHAPTERS[$chapter]})
  first=${pages[0]}
  last=${pages[1]}

  echo "\nProcessing ${chapter}"
  # echo $first
  # echo $last

  pdfpextr $first $last $IN
done


