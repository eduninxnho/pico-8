pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
--inicio
function _init()
    x=30 -- Inicializa a posição horizontal do sprite (`x`) com valor 30.
    y=30 -- Inicializa a posição vertical do sprite (`y`) com valor 30.
    c=2  -- Inicializa a variável `c` que representa o índice do sprite (aparência inicial).
end

--mudancas
function _update()
    -- Move o sprite para a direita e altera a aparência (sprite) ao pressionar a seta para a direita.
    if btn(➡️) then
        x=x+1 -- Incrementa a posição `x` (movimenta para a direita).
        c=3   -- Altera o sprite para o índice 3.
    end
    
    -- Move o sprite para a esquerda e altera a aparência (sprite) ao pressionar a seta para a esquerda.
    if btn(⬅️) then
        x=x-1 -- Decrementa a posição `x` (movimenta para a esquerda).
        c=1   -- Altera o sprite para o índice 1.
    end
    
    -- Move o sprite para cima ao pressionar a seta para cima.
    if btn(⬆️) then
        y=y-1 -- Decrementa a posição `y` (movimenta para cima).
    end
    
    -- Move o sprite para baixo ao pressionar a seta para baixo.
    if btn(⬇️) then
        y=y+1 -- Incrementa a posição `y` (movimenta para baixo).
    end
end

--graficos
function _draw()
    cls() -- Limpa a tela antes de desenhar.
    spr(c,x,y) -- Desenha o sprite com índice `c` na posição (`x`, `y`).
end

__gfx__
00000000004444000044440000444400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000ffff0000ffff0000ffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070000ffff0000ffff0000ffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000099ff990066ff660088ff880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000099559900665566008855880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007000f9559f00f6556f00f8558f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000004444000044440000444400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000004004000040040000400400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
