package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.p049io.CharTypes;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/node/TextNode.class */
public class TextNode extends ValueNode {
    public static final TextNode EMPTY_STRING_NODE = new TextNode("");
    public final String _value;

    public TextNode(String str) {
        this._value = str;
    }

    public static void appendQuoted(StringBuilder sb, String str) {
        sb.append('\"');
        CharTypes.appendQuoted(sb, str);
        sb.append('\"');
    }

    public static TextNode valueOf(String str) {
        if (str == null) {
            return null;
        }
        return str.length() == 0 ? EMPTY_STRING_NODE : new TextNode(str);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText() {
        return this._value;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof TextNode)) {
            return ((TextNode) obj)._value.equals(this._value);
        }
        return false;
    }

    public int hashCode() {
        return this._value.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public final void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        String str = this._value;
        if (str == null) {
            jsonGenerator.writeNull();
        } else {
            jsonGenerator.writeString(str);
        }
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.JsonNode
    public String toString() {
        int length = this._value.length();
        StringBuilder sb = new StringBuilder(length + 2 + (length >> 4));
        appendQuoted(sb, this._value);
        return sb.toString();
    }
}
