UPDATE SinhVien 
set TrangThai = case
when DiemTB >= 5.0 THEN 'Đạt'
else 'Không đạt'
end;