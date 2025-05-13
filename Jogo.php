<?php

function embaralharCartas() {
    $letras = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E']; // pares + 1 solta
    shuffle($letras);
    return $letras;
}

function mostrarTabuleiro($cartas, $reveladas) {
    echo "Tabuleiro:\n";
    for ($i = 0; $i < 9; $i++) {
        if ($reveladas[$i]) {
            echo " {$cartas[$i]} ";
        } else {
            echo " " . ($i + 1) . " ";
        }

        if (($i + 1) % 3 == 0) echo "\n";
    }
}

function todasEncontradas($reveladas, $cartas) {
    foreach (array_count_values($cartas) as $letra => $count) {
        if ($count == 2) {
            $pos = array_keys($cartas, $letra);
            if (!($reveladas[$pos[0]] && $reveladas[$pos[1]])) {
                return false;
            }
        }
    }
    return true;
}

// Início do jogo
$cartas = embaralharCartas();
$reveladas = array_fill(0, 9, false);

do {
    system('clear'); // ou 'cls' no Windows
    mostrarTabuleiro($cartas, $reveladas);

    echo "\nEscolha a primeira carta (1 a 9): ";
    $pos1 = (int)trim(fgets(STDIN)) - 1;
    if (!isset($cartas[$pos1]) || $reveladas[$pos1]) continue;

    echo "Escolha a segunda carta (1 a 9): ";
    $pos2 = (int)trim(fgets(STDIN)) - 1;
    if (!isset($cartas[$pos2]) || $reveladas[$pos2] || $pos1 == $pos2) continue;

    // Mostrar escolha temporariamente
    system('clear');
    for ($i = 0; $i < 9; $i++) {
        if ($i === $pos1 || $i === $pos2 || $reveladas[$i]) {
            echo " {$cartas[$i]} ";
        } else {
            echo " " . ($i + 1) . " ";
        }
        if (($i + 1) % 3 == 0) echo "\n";
    }

    if ($cartas[$pos1] === $cartas[$pos2]) {
        echo "\nParabéns! Você encontrou um par!\n";
        $reveladas[$pos1] = true;
        $reveladas[$pos2] = true;
    } else {
        echo "\nNão foi um par. Tente novamente.\n";
    }

    echo "Pressione Enter para continuar...";
    fgets(STDIN);

} while (!todasEncontradas($reveladas, $cartas));

system('clear');
mostrarTabuleiro($cartas, $reveladas);
echo "\nVocê venceu o jogo! 🎉\n";