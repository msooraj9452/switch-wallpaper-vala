/* switch.vala
 *
 * Copyright 2020 mabhishek7081
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/*  Author: simargl <https://github.com/simargl>
 *  License: GPL v3
 */


 // Single line comment

/* Multiline
Comment */

/**
* Documentation comment
*/

/* Data Types */

char character = 'a'
unichar unicode_character = 'u' // 32-bit unicode character

int i = 2; // ints can also have guaranteed sizes (e.g. int64, uint64)
uint j = -6; // Won't compile; unsigned ints can only be positive

long k;

short l;
ushort m;

string text = "Hello,"; // Note that the == operator will check string content

string verbatim = """This is a verbatim (a.k.a. raw) string. Special characters
(e.g. \n and "") are not interpreted. They may also be multiple lines long.""";

// String Templates allow for easy string formatting
string string_template = @"$text world"; // "$text" evaluates to "Hello,"

int test = 5;
int test2 = 10;
string template2 = @"$(test * test2) is a number."; // Expression evaluation

string template_slice = string_template[7:12]; // => "world"

// Most data types have methods for parsing.

bool parse_bool = bool.parse("false"); // => false
int parse_int = int.parse("-52"); // => -52
string parse_string = parse_int.to_string(); // => "-52"

/* Basic I/O */

stdout.printf(parse_string); // Prints to console
string input = stdin.read_line(); // Gets input from console

stderr.printf("Error message"); // Error printing

/* Arrays */

int[] int_array = new int[10]; // Array of ints with 10 slots
int better_int_array[10]; // Above expression, shortened
int_array.length; // => 10;

int[] int_array2 = {5, 10, 15, 20}; // Can be created on-the-fly

int[] array_slice = int_array2[1:3]; // Slice (copy of data)
unowned int[] array_slice_ref = int_array2[1:3]; // Reference to data

// Multi-dimensional Arrays (defined with a number of commas in the brackets)

int[,] multi_array = new int[6,4]; // 6 is the number of arrays, 4 is their size
int[,] multi_array2 = {{7, 4, 6, 4},
                       {3, 2, 4, 6},
                       {5, 9, 5, 1}}; // new int[3,4]
multi_array2[2,3] = 12; // 2 is the array, 3 is the index in the array
int first_d = multi_array2.length[0] // => 3
int second_d = multi_array2.length[1] // => 4