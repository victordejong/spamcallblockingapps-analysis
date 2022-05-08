package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/BeanPropertyMap.class */
public class BeanPropertyMap implements Iterable<SettableBeanProperty>, Serializable {
    public final boolean _caseInsensitive;
    public Object[] _hashArea;
    public int _hashMask;
    public SettableBeanProperty[] _propsInOrder;
    public int _size;
    public int _spillCount;

    public BeanPropertyMap(boolean z, Collection<SettableBeanProperty> collection) {
        this._caseInsensitive = z;
        this._propsInOrder = (SettableBeanProperty[]) collection.toArray(new SettableBeanProperty[collection.size()]);
        init(collection);
    }

    public static BeanPropertyMap construct(Collection<SettableBeanProperty> collection, boolean z) {
        return new BeanPropertyMap(z, collection);
    }

    public static final int findSize(int i) {
        if (i <= 5) {
            return 8;
        }
        if (i <= 12) {
            return 16;
        }
        int i2 = 32;
        while (i2 < i + (i >> 2)) {
            i2 += i2;
        }
        return i2;
    }

    public final SettableBeanProperty _find2(String str, int i, Object obj) {
        if (obj == null) {
            return null;
        }
        int i2 = this._hashMask + 1;
        int i3 = ((i >> 1) + i2) << 1;
        Object obj2 = this._hashArea[i3];
        if (str.equals(obj2)) {
            return (SettableBeanProperty) this._hashArea[i3 + 1];
        }
        if (obj2 == null) {
            return null;
        }
        int i4 = (i2 + (i2 >> 1)) << 1;
        int i5 = this._spillCount;
        for (int i6 = i4; i6 < i5 + i4; i6 += 2) {
            Object obj3 = this._hashArea[i6];
            if (obj3 == str || str.equals(obj3)) {
                return (SettableBeanProperty) this._hashArea[i6 + 1];
            }
        }
        return null;
    }

    public final int _findFromOrdered(SettableBeanProperty settableBeanProperty) {
        int length = this._propsInOrder.length;
        for (int i = 0; i < length; i++) {
            if (this._propsInOrder[i] == settableBeanProperty) {
                return i;
            }
        }
        throw new IllegalStateException("Illegal state: property '" + settableBeanProperty.getName() + "' missing from _propsInOrder");
    }

    public final int _findIndexInHash(String str) {
        int _hashCode = _hashCode(str);
        int i = _hashCode << 1;
        if (str.equals(this._hashArea[i])) {
            return i + 1;
        }
        int i2 = this._hashMask + 1;
        int i3 = ((_hashCode >> 1) + i2) << 1;
        if (str.equals(this._hashArea[i3])) {
            return i3 + 1;
        }
        int i4 = (i2 + (i2 >> 1)) << 1;
        int i5 = this._spillCount;
        for (int i6 = i4; i6 < i5 + i4; i6 += 2) {
            if (str.equals(this._hashArea[i6])) {
                return i6 + 1;
            }
        }
        return -1;
    }

    public final int _hashCode(String str) {
        return str.hashCode() & this._hashMask;
    }

    public SettableBeanProperty _rename(SettableBeanProperty settableBeanProperty, NameTransformer nameTransformer) {
        if (settableBeanProperty == null) {
            return settableBeanProperty;
        }
        SettableBeanProperty withSimpleName = settableBeanProperty.withSimpleName(nameTransformer.transform(settableBeanProperty.getName()));
        JsonDeserializer<Object> valueDeserializer = withSimpleName.getValueDeserializer();
        SettableBeanProperty settableBeanProperty2 = withSimpleName;
        if (valueDeserializer != null) {
            JsonDeserializer<Object> unwrappingDeserializer = valueDeserializer.unwrappingDeserializer(nameTransformer);
            settableBeanProperty2 = withSimpleName;
            if (unwrappingDeserializer != valueDeserializer) {
                settableBeanProperty2 = withSimpleName.withValueDeserializer(unwrappingDeserializer);
            }
        }
        return settableBeanProperty2;
    }

    public BeanPropertyMap assignIndexes() {
        int length = this._hashArea.length;
        int i = 0;
        for (int i2 = 1; i2 < length; i2 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i2];
            i = i;
            if (settableBeanProperty != null) {
                settableBeanProperty.assignIndex(i);
                i++;
            }
        }
        return this;
    }

    public SettableBeanProperty find(String str) {
        if (str != null) {
            String str2 = str;
            if (this._caseInsensitive) {
                str2 = str.toLowerCase();
            }
            int hashCode = str2.hashCode() & this._hashMask;
            int i = hashCode << 1;
            Object obj = this._hashArea[i];
            return (obj == str2 || str2.equals(obj)) ? (SettableBeanProperty) this._hashArea[i + 1] : _find2(str2, hashCode, obj);
        }
        throw new IllegalArgumentException("Can not pass null property name");
    }

    public SettableBeanProperty[] getPropertiesInInsertionOrder() {
        return this._propsInOrder;
    }

    public final String getPropertyName(SettableBeanProperty settableBeanProperty) {
        boolean z = this._caseInsensitive;
        String name = settableBeanProperty.getName();
        String str = name;
        if (z) {
            str = name.toLowerCase();
        }
        return str;
    }

    public void init(Collection<SettableBeanProperty> collection) {
        this._size = collection.size();
        int findSize = findSize(this._size);
        this._hashMask = findSize - 1;
        int i = (findSize >> 1) + findSize;
        Object[] objArr = new Object[i * 2];
        int i2 = 0;
        for (SettableBeanProperty settableBeanProperty : collection) {
            if (settableBeanProperty != null) {
                String propertyName = getPropertyName(settableBeanProperty);
                int _hashCode = _hashCode(propertyName);
                int i3 = _hashCode << 1;
                Object[] objArr2 = objArr;
                i2 = i2;
                int i4 = i3;
                if (objArr[i3] != null) {
                    int i5 = ((_hashCode >> 1) + findSize) << 1;
                    objArr2 = objArr;
                    i2 = i2;
                    i4 = i5;
                    if (objArr[i5] != null) {
                        int i6 = (i << 1) + i2;
                        int i7 = i2 + 2;
                        objArr2 = objArr;
                        i2 = i7;
                        i4 = i6;
                        if (i6 >= objArr.length) {
                            objArr2 = Arrays.copyOf(objArr, objArr.length + 4);
                            i4 = i6;
                            i2 = i7;
                        }
                    }
                }
                objArr2[i4] = propertyName;
                objArr2[i4 + 1] = settableBeanProperty;
                objArr = objArr2;
            }
        }
        this._hashArea = objArr;
        this._spillCount = i2;
    }

    @Override // java.lang.Iterable
    public Iterator<SettableBeanProperty> iterator() {
        return properties().iterator();
    }

    public final List<SettableBeanProperty> properties() {
        ArrayList arrayList = new ArrayList(this._size);
        int length = this._hashArea.length;
        for (int i = 1; i < length; i += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i];
            if (settableBeanProperty != null) {
                arrayList.add(settableBeanProperty);
            }
        }
        return arrayList;
    }

    public void remove(SettableBeanProperty settableBeanProperty) {
        ArrayList arrayList = new ArrayList(this._size);
        String propertyName = getPropertyName(settableBeanProperty);
        int length = this._hashArea.length;
        boolean z = false;
        for (int i = 1; i < length; i += 2) {
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) this._hashArea[i];
            if (settableBeanProperty2 == null) {
                z = z;
            } else {
                z = z;
                if (!z) {
                    boolean equals = propertyName.equals(settableBeanProperty2.getName());
                    z = equals;
                    if (equals) {
                        this._propsInOrder[_findFromOrdered(settableBeanProperty2)] = null;
                        z = equals;
                    }
                }
                arrayList.add(settableBeanProperty2);
            }
        }
        if (z) {
            init(arrayList);
            return;
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty.getName() + "' found, can't remove");
    }

    public BeanPropertyMap renameAll(NameTransformer nameTransformer) {
        if (nameTransformer == null || nameTransformer == NameTransformer.NOP) {
            return this;
        }
        int length = this._propsInOrder.length;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            SettableBeanProperty settableBeanProperty = this._propsInOrder[i];
            if (settableBeanProperty == null) {
                arrayList.add(settableBeanProperty);
            } else {
                arrayList.add(_rename(settableBeanProperty, nameTransformer));
            }
        }
        return new BeanPropertyMap(this._caseInsensitive, arrayList);
    }

    public void replace(SettableBeanProperty settableBeanProperty) {
        String propertyName = getPropertyName(settableBeanProperty);
        int _findIndexInHash = _findIndexInHash(propertyName);
        if (_findIndexInHash >= 0) {
            Object[] objArr = this._hashArea;
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) objArr[_findIndexInHash];
            objArr[_findIndexInHash] = settableBeanProperty;
            this._propsInOrder[_findFromOrdered(settableBeanProperty2)] = settableBeanProperty;
            return;
        }
        throw new NoSuchElementException("No entry '" + propertyName + "' found, can't replace");
    }

    public int size() {
        return this._size;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Properties=[");
        Iterator<SettableBeanProperty> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            SettableBeanProperty next = it.next();
            if (i > 0) {
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
            }
            sb.append(next.getName());
            sb.append('(');
            sb.append(next.getType());
            sb.append(')');
            i++;
        }
        sb.append(']');
        return sb.toString();
    }

    public BeanPropertyMap withProperty(SettableBeanProperty settableBeanProperty) {
        String propertyName = getPropertyName(settableBeanProperty);
        int length = this._hashArea.length;
        for (int i = 1; i < length; i += 2) {
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) this._hashArea[i];
            if (settableBeanProperty2 != null && settableBeanProperty2.getName().equals(propertyName)) {
                this._hashArea[i] = settableBeanProperty;
                this._propsInOrder[_findFromOrdered(settableBeanProperty2)] = settableBeanProperty;
                return this;
            }
        }
        int _hashCode = _hashCode(propertyName);
        int i2 = this._hashMask + 1;
        int i3 = _hashCode << 1;
        Object[] objArr = this._hashArea;
        int i4 = i3;
        if (objArr[i3] != null) {
            int i5 = ((_hashCode >> 1) + i2) << 1;
            i4 = i5;
            if (objArr[i5] != null) {
                int i6 = this._spillCount;
                int i7 = ((i2 + (i2 >> 1)) << 1) + i6;
                this._spillCount = i6 + 2;
                i4 = i7;
                if (i7 >= objArr.length) {
                    this._hashArea = Arrays.copyOf(objArr, objArr.length + 4);
                    i4 = i7;
                }
            }
        }
        Object[] objArr2 = this._hashArea;
        objArr2[i4] = propertyName;
        objArr2[i4 + 1] = settableBeanProperty;
        SettableBeanProperty[] settableBeanPropertyArr = this._propsInOrder;
        int length2 = settableBeanPropertyArr.length;
        this._propsInOrder = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, length2 + 1);
        this._propsInOrder[length2] = settableBeanProperty;
        return this;
    }
}
