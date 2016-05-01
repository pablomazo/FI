subroutine fi_a4(r,p)
! compute the fundamental invariants
! atom order : A A A A
! r (input) real(kind=8) the internuclear distances
! p (output) real(kind=8) the fundamental invariants
implicit none
real(kind=8),intent(in) :: r(6)
real(kind=8),intent(out) :: p(9)
p(1)=r(1)+r(3)+r(2)+r(6)+r(4)+r(5) 
p(2)=r(1)**2+r(3)**2+r(2)**2+r(6)**2+r(4)**2+r(5)**2 
p(3)=r(1)*r(2)+r(1)*r(3)+r(3)*r(5)+r(3)*r(6)+r(2)*r(3)+r(2)*r(4)+r(2)*r(6)+r(5)*r(6)+r(4)*r(6) &
+r(1)*r(4)+r(4)*r(5)+r(1)*r(5) 
p(4)=r(1)**3+r(3)**3+r(2)**3+r(6)**3+r(4)**3+r(5)**3 
p(5)=r(1)**2*r(2)+r(1)**2*r(3)+r(1)*r(3)**2+r(3)**2*r(5)+r(3)**2*r(6)+r(2)*r(3)**2+r(2)**2*r(3) &
+r(1)*r(2)**2+r(2)**2*r(4)+r(2)**2*r(6)+r(2)*r(6)**2+r(3)*r(6)**2+r(5)*r(6)**2+r(4)*r(6)**2 &
+r(4)**2*r(6)+r(2)*r(4)**2+r(1)*r(4)**2+r(4)**2*r(5)+r(4)*r(5)**2+r(5)**2*r(6)+r(3)*r(5)**2 &
+r(1)*r(5)**2+r(1)**2*r(5)+r(1)**2*r(4) 
p(6)=r(1)*r(2)*r(3)+r(3)*r(5)*r(6)+r(2)*r(4)*r(6)+r(1)*r(4)*r(5) 
p(7)=r(1)**4+r(3)**4+r(2)**4+r(6)**4+r(4)**4+r(5)**4 
p(8)=r(1)**3*r(2)+r(1)**3*r(3)+r(1)*r(3)**3+r(3)**3*r(5)+r(3)**3*r(6)+r(2)*r(3)**3+r(2)**3*r(3) &
+r(1)*r(2)**3+r(2)**3*r(4)+r(2)**3*r(6)+r(2)*r(6)**3+r(3)*r(6)**3+r(5)*r(6)**3+r(4)*r(6)**3 &
+r(4)**3*r(6)+r(2)*r(4)**3+r(1)*r(4)**3+r(4)**3*r(5)+r(4)*r(5)**3+r(5)**3*r(6)+r(3)*r(5)**3 &
+r(1)*r(5)**3+r(1)**3*r(5)+r(1)**3*r(4) 
p(9)=r(1)**5+r(3)**5+r(2)**5+r(6)**5+r(4)**5+r(5)**5 
end subroutine fi_a4
