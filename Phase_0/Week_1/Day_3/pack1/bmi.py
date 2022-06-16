def BMI(weight,height):
    BMI_formula = weight / (height**2)
    if BMI_formula > 0:
        if BMI_formula < 18.5:
            return print(f"BMI anda = {BMI_formula} masuk dalam kategori underweight")
        elif 18.5<=BMI_formula<= 24.9:
            return print(f"BMI anda = {BMI_formula} masuk dalam kategori normal")
        elif 25<=BMI_formula<= 29.9:
            return print(f"BMI anda = {BMI_formula} masuk dalam kategori overweight")
        else:
            return print(f"BMI anda = {BMI_formula} masuk dalam kategori very overweight")
