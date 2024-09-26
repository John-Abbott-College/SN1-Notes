# Math Module

Mathematic functions are often described as a black box which maps an input set X to an output set Y:

<img src="Images\functions_black_box.png" height=300/>

- The `math` module allows you to use mathematic functions. You need to firstly import the module:

  ```python
  import math
  ```

- To use the functions defined within the math module, you can use the "dot" ( `.`)  to access a function:

  ```python
  math.cos(0)
  ```

- There exists many useful functions performing math operations that we will be using in this course:

  <div class="button-container">     
      <a href="https://app.codeboot.org/4.1.2/?init=.odXNpbmdfdmFyaWFibGVzXzIucHk=~XQAAgACAAQAAAAAAAAA6GUn-74cyTh0__GhBNjgdVfqEsZ-12mb5qH1w6HItSS8aB7YPpB70sX-c_R-tuJfsZ7Q5rD2_gLB0p_txmGHlhNTJbW0X5OQh_zuMqn6hVMcGuk-_OFhOu7uWqIoGNneXmnvCASdmSPMOycQkIgDfe9X3Z4CqXqHOS2YuLWkA_-gZ9Mg=.oYXNzaWduaW5nX3ZhcmlhYmxlcy5weQ==~XQAAgAAXAAAAAAAAAAA8CAOiEWEDQUfSteh5uxz_eJ-pfPsoZcaE__9yMgAA.fbWF0aF9mdW5jdGlvbnMucHk=~XQAAgAB7AAAAAAAAAAA0m0pnuFI8c-fPp4GmUQhPyfWm-sZLdkTp2ysHhXIpXdPqLmFecWpjgN9D12FvR64UVRP0p-GLs6zwpzXKoJkMKXeVqch2IFv__7rLgAA=.~lang=py-novice.e1">         
      <button class="codeboot-button">
        <span>Run example</span>
      </button>     
      </a> 
  </div>


  ```python
  # math already imported
  
  math.ceil(5.5)
  math.floor(5.5)
  math.sqrt(9)
  math.sin(3.14)
  math.cos(0)
  math.atan(1)
  math.acos(1)
  math.asin(1)
  ```

- If you intend on using a particular function often, you can import only the function you are interested in:

<div class="button-container">     
    <a href="https://app.codeboot.org/4.1.2/?init=.odXNpbmdfdmFyaWFibGVzXzIucHk=~XQAAgACAAQAAAAAAAAA6GUn-74cyTh0__GhBNjgdVfqEsZ-12mb5qH1w6HItSS8aB7YPpB70sX-c_R-tuJfsZ7Q5rD2_gLB0p_txmGHlhNTJbW0X5OQh_zuMqn6hVMcGuk-_OFhOu7uWqIoGNneXmnvCASdmSPMOycQkIgDfe9X3Z4CqXqHOS2YuLWkA_-gZ9Mg=.oYXNzaWduaW5nX3ZhcmlhYmxlcy5weQ==~XQAAgAAXAAAAAAAAAAA8CAOiEWEDQUfSteh5uxz_eJ-pfPsoZcaE__9yMgAA.obWF0aF9mdW5jdGlvbnMucHk=~XQAAgAB7AAAAAAAAAAA0m0pnuFI8c-fPp4GmUQhPyfWm-sZLdkTp2ysHhXIpXdPqLmFecWpjgN9D12FvR64UVRP0p-GLs6zwpzXKoJkMKXeVqch2IFv__7rLgAA=.fbWF0aF9zaG9ydGN1dC5weQ==~XQAAgABzAAAAAAAAAAAzHIoib6qOhkKVB6-O3fm4OMH2bmXUooVDSXNCOTOx1vn2P7Xw4a1CrMNaImBHJJfBiVLOxug_0_3s50V6keTmARhldZtjP__FLMAA.~lang=py-novice.a">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>


```python
from math import sin
from math import cos

sin_pi = sin(math.pi)
cos_pi = cos(math.pi)
```

