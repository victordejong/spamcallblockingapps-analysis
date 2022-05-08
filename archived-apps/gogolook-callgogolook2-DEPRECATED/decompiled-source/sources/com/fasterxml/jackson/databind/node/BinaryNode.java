package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/node/BinaryNode.class */
public class BinaryNode extends ValueNode {
    public static final BinaryNode EMPTY_BINARY_NODE = new BinaryNode(new byte[0]);
    public final byte[] _data;

    public BinaryNode(byte[] bArr) {
        this._data = bArr;
    }

    public static BinaryNode valueOf(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return bArr.length == 0 ? EMPTY_BINARY_NODE : new BinaryNode(bArr);
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText() {
        return Base64Variants.getDefaultVariant().encode(this._data, false);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof BinaryNode)) {
            return Arrays.equals(((BinaryNode) obj)._data, this._data);
        }
        return false;
    }

    public int hashCode() {
        byte[] bArr = this._data;
        return bArr == null ? -1 : bArr.length;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.JsonSerializable
    public final void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        Base64Variant base64Variant = serializerProvider.getConfig().getBase64Variant();
        byte[] bArr = this._data;
        jsonGenerator.writeBinary(base64Variant, bArr, 0, bArr.length);
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.JsonNode
    public String toString() {
        return Base64Variants.getDefaultVariant().encode(this._data, true);
    }
}
