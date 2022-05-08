package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/JsonNode.class */
public abstract class JsonNode extends JsonSerializable.Base implements TreeNode, Iterable<JsonNode> {
    public abstract String asText();

    public Iterator<JsonNode> elements() {
        return ClassUtil.emptyIterator();
    }

    @Override // java.lang.Iterable
    public final Iterator<JsonNode> iterator() {
        return elements();
    }

    public abstract String toString();
}
