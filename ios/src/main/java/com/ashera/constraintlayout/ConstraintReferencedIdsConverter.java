//start - license
/*
 * Copyright (c) 2025 Ashera Cordova
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 */
//end - license
package com.ashera.constraintlayout;

import java.util.List;
import java.util.Map;

import com.ashera.converter.IConverter;
import com.ashera.core.IFragment;
import com.ashera.widget.IdGenerator;

public class ConstraintReferencedIdsConverter implements IConverter<int[], String> {
    @Override
    public int[] convertFrom(String value,  Map<String, Object> dependentAttributesMap, IFragment fragment) {
        String[] ids = value.split(",");
        int[] idRefs = new int[ids.length];

        for (int i = 0; i < ids.length; i++) {
            idRefs[i] = (int) fragment.getRootWidget().quickConvert("@+id/" + ids[i].trim(), "id");

        }
        return idRefs;
    }


    @Override
    public String convertTo(int[] values, IFragment fragment) {
        List<String> idRefs = new java.util.ArrayList<>();

        for (int value : values) {
        	idRefs.add(IdGenerator.getName(value).replace("@+id/", ""));
        }
        return com.ashera.utils.StringUtils.join(",", idRefs);
    }
    
   


    @Override
    public List<String> getDependentAttributes() {
        return null;
    }

}