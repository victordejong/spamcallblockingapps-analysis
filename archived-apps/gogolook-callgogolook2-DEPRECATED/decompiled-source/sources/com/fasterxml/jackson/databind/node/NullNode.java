package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.io.IOException;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/node/NullNode.class */
public final class NullNode extends ValueNode {
    public static final NullNode instance = new NullNode();

    public static NullNode getInstance() {
        return instance;
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText() {
        return C14247d.f31851f;
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public int hashCode() {
        return JsonNodeType.NULL.ordinal();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public final void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        serializerProvider.defaultSerializeNull(jsonGenerator);
    }
}
