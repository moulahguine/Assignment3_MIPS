# 🧠 Assignment 3 – MIPS Assembly Programs

This project contains two MIPS assembly programs designed to reinforce concepts of function calls, stack usage, arithmetic operations, and system calls in MIPS architecture. It is part of an academic assignment on low-level programming.

---

## 📁 File Overview

| File | Description |
|------|-------------|
| `homework-3.asm` | A simple program that calculates and prints the double of 15 using a custom function (`doubleInt`). |
| `homework-3-2.asm` | A slightly more advanced program that evaluates the expression `(34 + 2) * 2` using nested function calls (`foo` and `bar`). |
| `images/` | Contains screenshots of the programs running in the MIPS simulator. |

---

## 🔧 How It Works

### `homework-3.asm`

- Loads the number `15` into `$a0`
- Calls `doubleInt` function (which uses a left shift to multiply by 2)
- Prints a message and the result (`30`)

### `homework-3-2.asm`

- Loads `34` into `$a0`
- Calls `foo`, which:
  - Calls `bar` to compute `34 + 2`
  - Multiplies the result by 2 via shift left
- Prints the expression and the final result (`72`)

---

## ▶️ How to Run

These programs are written for [MARS](http://courses.missouristate.edu/KenVollmar/MARS/) or [SPIM](https://spimsimulator.sourceforge.net/) simulators.

1. Open the `.asm` file in your MIPS simulator
2. Assemble and run
3. View the console output

---

## 📸 Screenshots

Images of the output are available in the `images/` directory:
### Output of `homework-3.asm`

![Double of 15](images/Screenshot%202025-05-11%20111844.png)
![Expression Result](images/Screenshot%202025-05-11%20121148.png)

### Output of `homework-3-2.asm`

![Final Result](images/Screenshot%202025-05-11%20130100.png)
---

## 📚 Topics Covered

- System calls (`syscall`)
- Register usage
- Stack frame handling
- Function calls and returns
- Arithmetic via shifting

---

## 🧑‍💻 Author

- GitHub: [@moulahguine](https://github.com/moulahguine)

---

## 📜 License

This project is for educational use only.
