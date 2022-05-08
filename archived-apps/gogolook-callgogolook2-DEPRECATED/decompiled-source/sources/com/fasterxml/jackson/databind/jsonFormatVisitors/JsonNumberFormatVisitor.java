package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.core.JsonParser;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor.class */
public interface JsonNumberFormatVisitor extends JsonValueFormatVisitor {
    void numberType(JsonParser.NumberType numberType);
}
