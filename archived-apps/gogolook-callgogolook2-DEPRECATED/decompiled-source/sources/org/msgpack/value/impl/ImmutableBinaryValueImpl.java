package org.msgpack.value.impl;

import java.io.IOException;
import java.util.Arrays;
import org.msgpack.core.MessagePacker;
import org.msgpack.value.ImmutableBinaryValue;
import org.msgpack.value.Value;
import org.msgpack.value.ValueType;
/* loaded from: classes3-dex2jar.jar:org/msgpack/value/impl/ImmutableBinaryValueImpl.class */
public class ImmutableBinaryValueImpl extends AbstractImmutableRawValue implements ImmutableBinaryValue {
    public ImmutableBinaryValueImpl(byte[] bArr) {
        super(bArr);
    }

    @Override // org.msgpack.value.impl.AbstractImmutableRawValue, org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.ImmutableValue, org.msgpack.value.Value
    public ImmutableBinaryValue asBinaryValue() {
        return this;
    }

    @Override // org.msgpack.value.Value
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Value)) {
            return false;
        }
        Value value = (Value) obj;
        if (!value.isBinaryValue()) {
            return false;
        }
        if (!(value instanceof ImmutableBinaryValueImpl)) {
            return Arrays.equals(this.data, value.asBinaryValue().asByteArray());
        }
        return Arrays.equals(this.data, ((ImmutableBinaryValueImpl) value).data);
    }

    @Override // org.msgpack.value.Value
    public ValueType getValueType() {
        return ValueType.BINARY;
    }

    public int hashCode() {
        return Arrays.hashCode(this.data);
    }

    @Override // org.msgpack.value.Value
    public ImmutableBinaryValue immutableValue() {
        return this;
    }

    @Override // org.msgpack.value.Value
    public void writeTo(MessagePacker messagePacker) throws IOException {
        messagePacker.packBinaryHeader(this.data.length);
        messagePacker.writePayload(this.data);
    }
}
