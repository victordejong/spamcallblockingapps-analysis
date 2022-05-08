package com.fasterxml.jackson.databind.jsonFormatVisitors;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormatVisitor.class */
public interface JsonValueFormatVisitor {
    void enumTypes(Set<String> set);

    void format(JsonValueFormat jsonValueFormat);
}
