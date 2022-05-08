package com.fasterxml.jackson.databind.node;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/node/ObjectNode.class */
public class ObjectNode extends ContainerNode<ObjectNode> {
    public final Map<String, JsonNode> _children = new LinkedHashMap();

    public ObjectNode(JsonNodeFactory jsonNodeFactory) {
        super(jsonNodeFactory);
    }

    public boolean _childrenEqual(ObjectNode objectNode) {
        return this._children.equals(objectNode._children);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public Iterator<JsonNode> elements() {
        return this._children.values().iterator();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof ObjectNode)) {
            return _childrenEqual((ObjectNode) obj);
        }
        return false;
    }

    public int hashCode() {
        return this._children.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializable.Base
    public boolean isEmpty(SerializerProvider serializerProvider) {
        return this._children.isEmpty();
    }

    public JsonNode replace(String str, JsonNode jsonNode) {
        JsonNode jsonNode2 = jsonNode;
        if (jsonNode == null) {
            jsonNode2 = nullNode();
        }
        return this._children.put(str, jsonNode2);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeStartObject();
        for (Map.Entry<String, JsonNode> entry : this._children.entrySet()) {
            jsonGenerator.writeFieldName(entry.getKey());
            ((BaseJsonNode) entry.getValue()).serialize(jsonGenerator, serializerProvider);
        }
        jsonGenerator.writeEndObject();
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializable
    public void serializeWithType(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        typeSerializer.writeTypePrefixForObject(this, jsonGenerator);
        for (Map.Entry<String, JsonNode> entry : this._children.entrySet()) {
            jsonGenerator.writeFieldName(entry.getKey());
            ((BaseJsonNode) entry.getValue()).serialize(jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffixForObject(this, jsonGenerator);
    }

    public int size() {
        return this._children.size();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String toString() {
        StringBuilder sb = new StringBuilder((size() << 4) + 32);
        sb.append(CssParser.BLOCK_START);
        int i = 0;
        for (Map.Entry<String, JsonNode> entry : this._children.entrySet()) {
            if (i > 0) {
                sb.append(",");
            }
            i++;
            TextNode.appendQuoted(sb, entry.getKey());
            sb.append(':');
            sb.append(entry.getValue().toString());
        }
        sb.append(CssParser.BLOCK_END);
        return sb.toString();
    }
}
