subroutine fi_a2bcde(x, G)
implicit none
! Atoms: A A B C D E
! x: input
! G: fundamental invariant
real(8), dimension(15), intent(in) :: x
real(8), dimension(21), intent(out) :: G
real(8), dimension(15) :: x2

G = 0e0
x2 = x * x

G(1)=x(15)
G(2)=x(14)
G(3)=x(13)
G(4)=x(12)
G(5)=x(11)
G(6)=x(10)
G(7)=x(5)+x(9)
G(8)=x(4)+x(8)
G(9)=x(3)+x(7)
G(10)=x(2)+x(6)
G(11)=x(1)
G(12)=x2(5)+x2(9)
G(13)=x(4)*x(5)+x(8)*x(9)
G(14)=x(3)*x(5)+x(7)*x(9)
G(15)=x(2)*x(5)+x(6)*x(9)
G(16)=x2(4)+x2(8)
G(17)=x(3)*x(4)+x(7)*x(8)
G(18)=x(2)*x(4)+x(6)*x(8)
G(19)=x2(3)+x2(7)
G(20)=x(2)*x(3)+x(6)*x(7)
G(21)=x2(2)+x2(6)
end subroutine
