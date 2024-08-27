## Assignment operator

Assignment operators are used to set the value of a variable, unlike mathematics. For instance, in math 5 + 3 = 8 is a correct **statement**. However in Python, executing`5 + 3 = 8` will cause a syntax error. This is because the `=` operator is not used for arithmetic operations or equality. In programming, `5 + 3` is an expression that cannot be reassigned.

Assignment operators are evaluated from right to left, the value or expression on the right hand side of the operator is evaluated first. Then the result of this expression is assigned to the variable on the left hand side.  Python expects the left hand side of the equality to be a variable.

<img src="Images/Variables_assignment.png" height=250/>



There exists much more assignment operators, but we will only focus on the following ones.

### Assignment `=`

Assigns a value to a variable (e.g.: `name = "Julie"` , result: assigns the value `"Julie`" to the variable `name`)

⚠️ This operator does not have the same definition as in math. In math and algebra, = is a **statement** used to communicate that two values are equal as in 5+3 = 8. In Python, `=` is an **assignment**, it sets the value of a variable. `5 + 3 = 8` would cause a syntax error in Python because you cannot reassign the value of a literal or an expression. 



<div class="button-container">     
    <a target="_blank" href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.oYXJpdGhtZXRpY3MyLnB5~XQAAgAAyAAAAAAAAAAAwiAOiEahbOGuxQe1CZvIjyRYu5mub1I1Va1AIIODnRLN-GxtFSkmZFiGNPbP__7xKAAA=.oYXNzaWdubWVudF9wbHVzX2VxdWFsXzEucHk=~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQVq949oPwc4AHCfa7_CrqzOIf_qQQAA==.fYXNzaWdubWVudF8xLnB5~XQAAgAAtAAAAAAAAAAA3GEn9-d2KwgqzO3WiO93_asMbSuJMPn19rh4Ws-7u99O1ogE7PwqtmXBsxnv_-HNgAA==.~lang=py-novice.~showLineNumbers=true.a">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>

```python
name = "Julie"
sum  = 5 + 3
average = sum / 2
```



<div class="button-container">     
    <a target="_blank" href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.oYXJpdGhtZXRpY3MyLnB5~XQAAgAAyAAAAAAAAAAAwiAOiEahbOGuxQe1CZvIjyRYu5mub1I1Va1AIIODnRLN-GxtFSkmZFiGNPbP__7xKAAA=.oYXNzaWdubWVudF9wbHVzX2VxdWFsXzEucHk=~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQVq949oPwc4AHCfa7_CrqzOIf_qQQAA==.oYXNzaWdubWVudF8xLnB5~XQAAgAAtAAAAAAAAAAA3GEn9-d2KwgqzO3WiO93_asMbSuJMPn19rh4Ws-7u99O1ogE7PwqtmXBsxnv_-HNgAA==.fYXNzaWdubWVudF9lcnJvci5weQ==~XQAAgAAJAAAAAAAAAAAaiAG1DW5pPxYc_ZQa__3KsAA=.~lang=py-novice.~showLineNumbers=true.e">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>

```python
5 + 3 = 8 # This will cause an error
```



### Addition assignment `+=`

- Performs an addition (numeric addition or string concatenation) on the two operands and **assigns** the result to the left operand. 



<div class="button-container">     
    <a target="_blank" href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.oYXJpdGhtZXRpY3MyLnB5~XQAAgAAyAAAAAAAAAAAwiAOiEahbOGuxQe1CZvIjyRYu5mub1I1Va1AIIODnRLN-GxtFSkmZFiGNPbP__7xKAAA=.fYXNzaWdubWVudF9wbHVzX2VxdWFsXzEucHk=~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQVq949oPwc4AHCfa7_CrqzOIf_qQQAA==.~lang=py-novice.~showLineNumbers=true.a">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>

```python
value = 6
value += 2
print(value) # output: 8
```






<div class="button-container">     
    <a target="_blank" href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.fYXNzaWdubWVudF9wbHVzX2VxdWFsXzIucHk=~XQAAgAAqAAAAAAAAAAA3GEn9-d2KwgquAeQuSLwRz6Cqke6qg6gX-Mz_0bJzRbF9mH-blJSf___YPIAA.~lang=py-novice.~showLineNumbers=true.a">         
    <button style="border: none; background-color: transparent;">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>

```python
name = "Emma"
name += "Watson"
print(name) # output: "EmmaWatson"
```



### Subtraction assignment `-=`

- Performs a subtraction on the two operands and **assigns** the result to the left operand. 



<div class="button-container">     
    <a target="_blank" href="https://app.codeboot.org/5.0.0/?init=.obWludXNfZXF1YWwucHk=~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQWRok9oPwc4AHCfa7_CrqzOIf_qQQAA==.fYXNzaWdubWVudF9wbHVzX2VxdWFsXzEucHk=~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQVq949oPwc4AHCfa7_CrqzOIf_qQQAA==.~lang=py-novice.~showLineNumbers=true.a">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>

```python
value = 6
value -= 2
print(value) # output: 4
```



### Multiplication assignment `*=`

- Performs a multiplication on the two operands and **assigns** the result to the left operand. 



<div class="button-container">     
    <a target="_blank" href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.oYXJpdGhtZXRpY3MyLnB5~XQAAgAAyAAAAAAAAAAAwiAOiEahbOGuxQe1CZvIjyRYu5mub1I1Va1AIIODnRLN-GxtFSkmZFiGNPbP__7xKAAA=.fYXNzaWdubWVudF9wbHVzX2VxdWFsXzEucHk=~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQVq949oPwc4AHCfa7_CrqzOIf_qQQAA==.oYXNzaWdubWVudF8xLnB5~XQAAgAAtAAAAAAAAAAA3GEn9-d2KwgqzO3WiO93_asMbSuJMPn19rh4Ws-7u99O1ogE7PwqtmXBsxnv_-HNgAA==.oYXNzaWdubWVudF9lcnJvci5weQ==~XQAAgAAJAAAAAAAAAAAaiAG1DW5pPxYc_ZQa__3KsAA=.ob3BlcmF0b3JzX2NoYWxsZW5nZTEucHk=~XQAAgABoAQAAAAAAAAAyGEuUHxEvL_uf85Adn-YPLdgd9bjdwPPfaaBxGsx9NvHx1yG6xtpH-jzukUm0BsSAfCsTE1pQA6lcsmm9M5PZB7uVg8DzAk81mds4hcDAxgHOxTF8V_3PTUz7kBOaqbF7VO60KlzSQ-X03fTR1HmgNMnaQv814WAA.oYXNzaWdubWVudF9kaXZfZXF1YWw=~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQW4TQ9oPwc4AHCfa7_CrqzOIf_qQQAA==.oYXNzaWdubWVudF9wbHVzX2VxdWFsXzEtMy5weQ==~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQVq949oPwc4AHCfa7_CrqzOIf_qQQAA==.oYXNzaWduX211bHRfcGx1cy5weQ==~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQVXog9oPwc4AHCfa7_CrqzOIf_qQQAA==.~lang=py-novice.~showLineNumbers=true.a8">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>

```python
value = 6
value *= 2
print(value) # output: 12
```



### Division assignment `/=`

- Performs a division on the two operands and **assigns** the result to the left operand. 



<div class="button-container">     
    <a target="_blank" href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.oYXJpdGhtZXRpY3MyLnB5~XQAAgAAyAAAAAAAAAAAwiAOiEahbOGuxQe1CZvIjyRYu5mub1I1Va1AIIODnRLN-GxtFSkmZFiGNPbP__7xKAAA=.oYXNzaWdubWVudF9wbHVzX2VxdWFsXzEucHk=~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQVq949oPwc4AHCfa7_CrqzOIf_qQQAA==.oYXNzaWdubWVudF8xLnB5~XQAAgAAtAAAAAAAAAAA3GEn9-d2KwgqzO3WiO93_asMbSuJMPn19rh4Ws-7u99O1ogE7PwqtmXBsxnv_-HNgAA==.oYXNzaWdubWVudF9lcnJvci5weQ==~XQAAgAAJAAAAAAAAAAAaiAG1DW5pPxYc_ZQa__3KsAA=.ob3BlcmF0b3JzX2NoYWxsZW5nZTEucHk=~XQAAgABoAQAAAAAAAAAyGEuUHxEvL_uf85Adn-YPLdgd9bjdwPPfaaBxGsx9NvHx1yG6xtpH-jzukUm0BsSAfCsTE1pQA6lcsmm9M5PZB7uVg8DzAk81mds4hcDAxgHOxTF8V_3PTUz7kBOaqbF7VO60KlzSQ-X03fTR1HmgNMnaQv814WAA.fYXNzaWdubWVudF9kaXZfZXF1YWw=~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQW4TQ9oPwc4AHCfa7_CrqzOIf_qQQAA==.oYXNzaWdubWVudF9wbHVzX2VxdWFsXzEtMy5weQ==~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQVq949oPwc4AHCfa7_CrqzOIf_qQQAA==.~lang=py-novice.~showLineNumbers=true.a60">         
    <button class="codeboot-button">
      <span>Run example</span>
    </button>     
    </a> 
</div>

```python
value = 6
value /= 2
print(value) # output: 3
```



✍️**Challenge**: Manually execute the operations below and write the expected result. Check your answers by copying the code into a Python editor or terminal. 



<div class="button-container">     
    <a target="_blank" href="https://app.codeboot.org/5.0.0/?init=.oYXJpdGhtZXRpY3MxLnB5~XQAAgABzAAAAAAAAAAA7iAOiEWEBkg99P3WsHCwTzyEnkel2CBOuLrjllUppjR2CUAq-gAuD7LU2oyanmA9U_RpSi-drNpr416lu9L-NrvGsbtQ5a-GEWkgA0kTkSGfwDTPluIsbrwON_vHxgA==.oYXJpdGhtZXRpY3MyLnB5~XQAAgAAyAAAAAAAAAAAwiAOiEahbOGuxQe1CZvIjyRYu5mub1I1Va1AIIODnRLN-GxtFSkmZFiGNPbP__7xKAAA=.oYXNzaWdubWVudF9wbHVzX2VxdWFsXzEucHk=~XQAAgAAhAAAAAAAAAAA7GEncQfTWSH3AOTZQVq949oPwc4AHCfa7_CrqzOIf_qQQAA==.oYXNzaWdubWVudF8xLnB5~XQAAgAAtAAAAAAAAAAA3GEn9-d2KwgqzO3WiO93_asMbSuJMPn19rh4Ws-7u99O1ogE7PwqtmXBsxnv_-HNgAA==.oYXNzaWdubWVudF9lcnJvci5weQ==~XQAAgAAJAAAAAAAAAAAaiAG1DW5pPxYc_ZQa__3KsAA=.fb3BlcmF0b3JzX2NoYWxsZW5nZTEucHk=~XQAAgABoAQAAAAAAAAAyGEuUHxEvL_uf85Adn-YPLdgd9bjdwPPfaaBxGsx9NvHx1yG6xtpH-jzukUm0BsSAfCsTE1pQA6lcsmm9M5PZB7uVg8DzAk81mds4hcDAxgHOxTF8V_3PTUz7kBOaqbF7VO60KlzSQ-X03fTR1HmgNMnaQv814WAA.~lang=py-novice.~showLineNumbers=true.~hidden=true.e">         
    <button class="codeboot-button">
      <span>Check answer</span>
    </button>     
    </a> 
</div>

```python
day = 1
temperature  = 25.0
print(temperature)
day+=1
temperature -= 5.0
print(temperature)
day+=1
temperature = 23.5
print(temperature)
day+=1
temperature += 2.5
print(temperature)
day+=1
temperature -= 5.0
print(temperature)
day+=1
temperature /= 2
print(temperature)
day+=1
temperature *= 3

print("The weather in Canada is nuts...")
print(day, temperature)
```

