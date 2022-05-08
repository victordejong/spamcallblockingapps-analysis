package org.msgpack.value.impl;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.io.IOException;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.msgpack.core.MessagePacker;
import org.msgpack.value.ImmutableArrayValue;
import org.msgpack.value.ImmutableBinaryValue;
import org.msgpack.value.ImmutableBooleanValue;
import org.msgpack.value.ImmutableExtensionValue;
import org.msgpack.value.ImmutableFloatValue;
import org.msgpack.value.ImmutableIntegerValue;
import org.msgpack.value.ImmutableMapValue;
import org.msgpack.value.ImmutableNilValue;
import org.msgpack.value.ImmutableNumberValue;
import org.msgpack.value.ImmutableRawValue;
import org.msgpack.value.ImmutableStringValue;
import org.msgpack.value.Value;
import org.msgpack.value.ValueType;
/* loaded from: classes3-dex2jar.jar:org/msgpack/value/impl/ImmutableMapValueImpl.class */
public class ImmutableMapValueImpl extends AbstractImmutableValue implements ImmutableMapValue {
    public static final ImmutableMapValueImpl EMPTY = new ImmutableMapValueImpl(new Value[0]);
    public final Value[] kvs;

    /* loaded from: classes3-dex2jar.jar:org/msgpack/value/impl/ImmutableMapValueImpl$EntryIterator.class */
    public static class EntryIterator implements Iterator<Value> {
        public int index;
        public Value[] kvs;

        public EntryIterator(Value[] valueArr, int i) {
            this.kvs = valueArr;
            this.index = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.kvs.length;
        }

        @Override // java.util.Iterator
        public Value next() {
            int i = this.index;
            Value[] valueArr = this.kvs;
            if (i < valueArr.length) {
                this.index = i + 2;
                return valueArr[i];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/value/impl/ImmutableMapValueImpl$EntrySet.class */
    public static class EntrySet extends AbstractSet<Map.Entry<Value, Value>> {
        public final Value[] kvs;

        public EntrySet(Value[] valueArr) {
            this.kvs = valueArr;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<Value, Value>> iterator() {
            return new EntrySetIterator(this.kvs);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.kvs.length / 2;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/value/impl/ImmutableMapValueImpl$EntrySetIterator.class */
    public static class EntrySetIterator implements Iterator<Map.Entry<Value, Value>> {
        public int index = 0;
        public final Value[] kvs;

        public EntrySetIterator(Value[] valueArr) {
            this.kvs = valueArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.kvs.length;
        }

        @Override // java.util.Iterator
        public Map.Entry<Value, Value> next() {
            int i = this.index;
            Value[] valueArr = this.kvs;
            if (i < valueArr.length) {
                AbstractMap.SimpleImmutableEntry simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(valueArr[i], valueArr[i + 1]);
                this.index += 2;
                return simpleImmutableEntry;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/value/impl/ImmutableMapValueImpl$ImmutableMapValueMap.class */
    public static class ImmutableMapValueMap extends AbstractMap<Value, Value> {
        public final Value[] kvs;

        public ImmutableMapValueMap(Value[] valueArr) {
            this.kvs = valueArr;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<Value, Value>> entrySet() {
            return new EntrySet(this.kvs);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/value/impl/ImmutableMapValueImpl$KeySet.class */
    public static class KeySet extends AbstractSet<Value> {
        public Value[] kvs;

        public KeySet(Value[] valueArr) {
            this.kvs = valueArr;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Value> iterator() {
            return new EntryIterator(this.kvs, 0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.kvs.length / 2;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/value/impl/ImmutableMapValueImpl$ValueCollection.class */
    public static class ValueCollection extends AbstractCollection<Value> {
        public Value[] kvs;

        public ValueCollection(Value[] valueArr) {
            this.kvs = valueArr;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Value> iterator() {
            return new EntryIterator(this.kvs, 1);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.kvs.length / 2;
        }
    }

    public ImmutableMapValueImpl(Value[] valueArr) {
        this.kvs = valueArr;
    }

    public static void appendJsonKey(StringBuilder sb, Value value) {
        if (value.isRawValue()) {
            sb.append(value.toJson());
        } else {
            AbstractImmutableRawValue.appendJsonString(sb, value.toString());
        }
    }

    public static void appendString(StringBuilder sb, Value value) {
        if (value.isRawValue()) {
            sb.append(value.toJson());
        } else {
            sb.append(value.toString());
        }
    }

    public static ImmutableMapValue empty() {
        return EMPTY;
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.ImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ ImmutableArrayValue asArrayValue() {
        return super.asArrayValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.ImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ ImmutableBinaryValue asBinaryValue() {
        return super.asBinaryValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.ImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ ImmutableBooleanValue asBooleanValue() {
        return super.asBooleanValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ ImmutableExtensionValue asExtensionValue() {
        return super.asExtensionValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.ImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ ImmutableFloatValue asFloatValue() {
        return super.asFloatValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.ImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ ImmutableIntegerValue asIntegerValue() {
        return super.asIntegerValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.ImmutableValue, org.msgpack.value.Value
    public ImmutableMapValue asMapValue() {
        return this;
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.ImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ ImmutableNilValue asNilValue() {
        return super.asNilValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ ImmutableNumberValue asNumberValue() {
        return super.asNumberValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.ImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ ImmutableRawValue asRawValue() {
        return super.asRawValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.ImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ ImmutableStringValue asStringValue() {
        return super.asStringValue();
    }

    @Override // org.msgpack.value.MapValue
    public Set<Map.Entry<Value, Value>> entrySet() {
        return new EntrySet(this.kvs);
    }

    @Override // org.msgpack.value.Value
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Value)) {
            return false;
        }
        Value value = (Value) obj;
        if (!value.isMapValue()) {
            return false;
        }
        return map().equals(value.asMapValue().map());
    }

    @Override // org.msgpack.value.MapValue
    public Value[] getKeyValueArray() {
        Value[] valueArr = this.kvs;
        return (Value[]) Arrays.copyOf(valueArr, valueArr.length);
    }

    @Override // org.msgpack.value.Value
    public ValueType getValueType() {
        return ValueType.MAP;
    }

    public int hashCode() {
        int i = 0;
        int i2 = 0;
        while (true) {
            Value[] valueArr = this.kvs;
            if (i >= valueArr.length) {
                return i2;
            }
            i2 += valueArr[i].hashCode() ^ this.kvs[i + 1].hashCode();
            i += 2;
        }
    }

    @Override // org.msgpack.value.Value
    public ImmutableMapValue immutableValue() {
        return this;
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ boolean isArrayValue() {
        return super.isArrayValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ boolean isBinaryValue() {
        return super.isBinaryValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ boolean isBooleanValue() {
        return super.isBooleanValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ boolean isExtensionValue() {
        return super.isExtensionValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ boolean isFloatValue() {
        return super.isFloatValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ boolean isIntegerValue() {
        return super.isIntegerValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ boolean isMapValue() {
        return super.isMapValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ boolean isNilValue() {
        return super.isNilValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ boolean isNumberValue() {
        return super.isNumberValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ boolean isRawValue() {
        return super.isRawValue();
    }

    @Override // org.msgpack.value.impl.AbstractImmutableValue, org.msgpack.value.Value
    public /* bridge */ /* synthetic */ boolean isStringValue() {
        return super.isStringValue();
    }

    @Override // org.msgpack.value.MapValue
    public Set<Value> keySet() {
        return new KeySet(this.kvs);
    }

    @Override // org.msgpack.value.MapValue
    public Map<Value, Value> map() {
        return new ImmutableMapValueMap(this.kvs);
    }

    @Override // org.msgpack.value.MapValue
    public int size() {
        return this.kvs.length / 2;
    }

    @Override // org.msgpack.value.Value
    public String toJson() {
        if (this.kvs.length == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(CssParser.BLOCK_START);
        appendJsonKey(sb, this.kvs[0]);
        sb.append(":");
        sb.append(this.kvs[1].toJson());
        for (int i = 2; i < this.kvs.length; i += 2) {
            sb.append(",");
            appendJsonKey(sb, this.kvs[i]);
            sb.append(":");
            sb.append(this.kvs[i + 1].toJson());
        }
        sb.append(CssParser.BLOCK_END);
        return sb.toString();
    }

    public String toString() {
        if (this.kvs.length == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(CssParser.BLOCK_START);
        appendString(sb, this.kvs[0]);
        sb.append(":");
        appendString(sb, this.kvs[1]);
        for (int i = 2; i < this.kvs.length; i += 2) {
            sb.append(",");
            appendString(sb, this.kvs[i]);
            sb.append(":");
            appendString(sb, this.kvs[i + 1]);
        }
        sb.append(CssParser.BLOCK_END);
        return sb.toString();
    }

    @Override // org.msgpack.value.MapValue
    public Collection<Value> values() {
        return new ValueCollection(this.kvs);
    }

    @Override // org.msgpack.value.Value
    public void writeTo(MessagePacker messagePacker) throws IOException {
        messagePacker.packMapHeader(this.kvs.length / 2);
        int i = 0;
        while (true) {
            Value[] valueArr = this.kvs;
            if (i < valueArr.length) {
                valueArr[i].writeTo(messagePacker);
                i++;
            } else {
                return;
            }
        }
    }
}
