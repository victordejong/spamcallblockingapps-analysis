package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.core.JsonParser;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor.class */
public interface JsonIntegerFormatVisitor extends JsonValueFormatVisitor {
    void numberType(JsonParser.NumberType numberType);
}
