package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse.class */
public abstract class FastJsonResponse {

    @VisibleForTesting
    @SafeParcelable.Class(creator = "FieldCreator")
    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$Field.class */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zai CREATOR = new zai();
        @SafeParcelable.VersionField(getter = "getVersionCode", m342id = 1)
        private final int zale;
        @SafeParcelable.Field(getter = "getTypeIn", m344id = 2)
        protected final int zapq;
        @SafeParcelable.Field(getter = "isTypeInArray", m344id = 3)
        protected final boolean zapr;
        @SafeParcelable.Field(getter = "getTypeOut", m344id = 4)
        protected final int zaps;
        @SafeParcelable.Field(getter = "isTypeOutArray", m344id = 5)
        protected final boolean zapt;
        @SafeParcelable.Field(getter = "getOutputFieldName", m344id = 6)
        protected final String zapu;
        @SafeParcelable.Field(getter = "getSafeParcelableFieldId", m344id = 7)
        protected final int zapv;
        protected final Class<? extends FastJsonResponse> zapw;
        @SafeParcelable.Field(getter = "getConcreteTypeName", m344id = 8)
        private final String zapx;
        private zak zapy;
        @SafeParcelable.Field(getter = "getWrappedConverter", m344id = 9, type = "com.google.android.gms.common.server.converter.ConverterWrapper")
        private FieldConverter<I, O> zapz;

        /* JADX INFO: Access modifiers changed from: package-private */
        @SafeParcelable.Constructor
        public Field(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) int i2, @SafeParcelable.Param(m343id = 3) boolean z, @SafeParcelable.Param(m343id = 4) int i3, @SafeParcelable.Param(m343id = 5) boolean z2, @SafeParcelable.Param(m343id = 6) String str, @SafeParcelable.Param(m343id = 7) int i4, @SafeParcelable.Param(m343id = 8) String str2, @SafeParcelable.Param(m343id = 9) zaa zaaVar) {
            this.zale = i;
            this.zapq = i2;
            this.zapr = z;
            this.zaps = i3;
            this.zapt = z2;
            this.zapu = str;
            this.zapv = i4;
            if (str2 == null) {
                this.zapw = null;
                this.zapx = null;
            } else {
                this.zapw = SafeParcelResponse.class;
                this.zapx = str2;
            }
            if (zaaVar == null) {
                this.zapz = null;
            } else {
                this.zapz = (FieldConverter<I, O>) zaaVar.zaci();
            }
        }

        private Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class<? extends FastJsonResponse> cls, FieldConverter<I, O> fieldConverter) {
            this.zale = 1;
            this.zapq = i;
            this.zapr = z;
            this.zaps = i2;
            this.zapt = z2;
            this.zapu = str;
            this.zapv = i3;
            this.zapw = cls;
            if (cls == null) {
                this.zapx = null;
            } else {
                this.zapx = cls.getCanonicalName();
            }
            this.zapz = fieldConverter;
        }

        @VisibleForTesting
        @KeepForSdk
        public static Field<byte[], byte[]> forBase64(String str, int i) {
            return new Field<>(8, false, 8, false, str, i, null, null);
        }

        @KeepForSdk
        public static Field<Boolean, Boolean> forBoolean(String str, int i) {
            return new Field<>(6, false, 6, false, str, i, null, null);
        }

        @KeepForSdk
        public static <T extends FastJsonResponse> Field<T, T> forConcreteType(String str, int i, Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        @KeepForSdk
        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> forConcreteTypeArray(String str, int i, Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i, cls, null);
        }

        @KeepForSdk
        public static Field<Double, Double> forDouble(String str, int i) {
            return new Field<>(4, false, 4, false, str, i, null, null);
        }

        @KeepForSdk
        public static Field<Float, Float> forFloat(String str, int i) {
            return new Field<>(3, false, 3, false, str, i, null, null);
        }

        @VisibleForTesting
        @KeepForSdk
        public static Field<Integer, Integer> forInteger(String str, int i) {
            return new Field<>(0, false, 0, false, str, i, null, null);
        }

        @KeepForSdk
        public static Field<Long, Long> forLong(String str, int i) {
            return new Field<>(2, false, 2, false, str, i, null, null);
        }

        @KeepForSdk
        public static Field<String, String> forString(String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        @KeepForSdk
        public static Field<ArrayList<String>, ArrayList<String>> forStrings(String str, int i) {
            return new Field<>(7, true, 7, true, str, i, null, null);
        }

        @KeepForSdk
        public static Field withConverter(String str, int i, FieldConverter<?, ?> fieldConverter, boolean z) {
            return new Field(fieldConverter.zacj(), z, fieldConverter.zack(), false, str, i, null, fieldConverter);
        }

        private final String zacm() {
            if (this.zapx == null) {
                return null;
            }
            return this.zapx;
        }

        private final zaa zaco() {
            if (this.zapz == null) {
                return null;
            }
            return zaa.zaa(this.zapz);
        }

        public final O convert(I i) {
            return this.zapz.convert(i);
        }

        public final I convertBack(O o) {
            return this.zapz.convertBack(o);
        }

        @KeepForSdk
        public int getSafeParcelableFieldId() {
            return this.zapv;
        }

        public String toString() {
            Objects.ToStringHelper add = Objects.toStringHelper(this).add("versionCode", Integer.valueOf(this.zale)).add("typeIn", Integer.valueOf(this.zapq)).add("typeInArray", Boolean.valueOf(this.zapr)).add("typeOut", Integer.valueOf(this.zaps)).add("typeOutArray", Boolean.valueOf(this.zapt)).add("outputFieldName", this.zapu).add("safeParcelFieldId", Integer.valueOf(this.zapv)).add("concreteTypeName", zacm());
            Class<? extends FastJsonResponse> cls = this.zapw;
            if (cls != null) {
                add.add("concreteType.class", cls.getCanonicalName());
            }
            if (this.zapz != null) {
                add.add("converterName", this.zapz.getClass().getCanonicalName());
            }
            return add.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeInt(parcel, 1, this.zale);
            SafeParcelWriter.writeInt(parcel, 2, this.zapq);
            SafeParcelWriter.writeBoolean(parcel, 3, this.zapr);
            SafeParcelWriter.writeInt(parcel, 4, this.zaps);
            SafeParcelWriter.writeBoolean(parcel, 5, this.zapt);
            SafeParcelWriter.writeString(parcel, 6, this.zapu, false);
            SafeParcelWriter.writeInt(parcel, 7, getSafeParcelableFieldId());
            SafeParcelWriter.writeString(parcel, 8, zacm(), false);
            SafeParcelWriter.writeParcelable(parcel, 9, zaco(), i, false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }

        public final void zaa(zak zakVar) {
            this.zapy = zakVar;
        }

        public final Field<I, O> zacl() {
            return new Field<>(this.zale, this.zapq, this.zapr, this.zaps, this.zapt, this.zapu, this.zapv, this.zapx, zaco());
        }

        public final boolean zacn() {
            return this.zapz != null;
        }

        public final FastJsonResponse zacp() throws InstantiationException, IllegalAccessException {
            if (this.zapw != SafeParcelResponse.class) {
                return (FastJsonResponse) this.zapw.newInstance();
            }
            Preconditions.checkNotNull(this.zapy, "The field mapping dictionary must be set if the concrete type is a SafeParcelResponse object.");
            return new SafeParcelResponse(this.zapy, this.zapx);
        }

        public final Map<String, Field<?, ?>> zacq() {
            Preconditions.checkNotNull(this.zapx);
            Preconditions.checkNotNull(this.zapy);
            return this.zapy.zai(this.zapx);
        }
    }

    @ShowFirstParty
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$FieldConverter.class */
    public interface FieldConverter<I, O> {
        O convert(I i);

        I convertBack(O o);

        int zacj();

        int zack();
    }

    private final <I, O> void zaa(Field<I, O> field, I i) {
        String str = field.zapu;
        O convert = field.convert(i);
        switch (field.zaps) {
            case 0:
                if (zaa(str, convert)) {
                    setIntegerInternal(field, str, ((Integer) convert).intValue());
                    return;
                }
                return;
            case 1:
                zaa((Field<?, ?>) field, str, (BigInteger) convert);
                return;
            case 2:
                if (zaa(str, convert)) {
                    setLongInternal(field, str, ((Long) convert).longValue());
                    return;
                }
                return;
            case 3:
            default:
                int i2 = field.zaps;
                StringBuilder sb = new StringBuilder(44);
                sb.append("Unsupported type for conversion: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            case 4:
                if (zaa(str, convert)) {
                    zaa((Field<?, ?>) field, str, ((Double) convert).doubleValue());
                    return;
                }
                return;
            case 5:
                zaa((Field<?, ?>) field, str, (BigDecimal) convert);
                return;
            case 6:
                if (zaa(str, convert)) {
                    setBooleanInternal(field, str, ((Boolean) convert).booleanValue());
                    return;
                }
                return;
            case 7:
                setStringInternal(field, str, (String) convert);
                return;
            case 8:
            case 9:
                if (zaa(str, convert)) {
                    setDecodedBytesInternal(field, str, (byte[]) convert);
                    return;
                }
                return;
        }
    }

    private static void zaa(StringBuilder sb, Field field, Object obj) {
        if (field.zapq == 11) {
            sb.append(((FastJsonResponse) field.zapw.cast(obj)).toString());
        } else if (field.zapq == 7) {
            sb.append("\"");
            sb.append(JsonUtils.escapeString((String) obj));
            sb.append("\"");
        } else {
            sb.append(obj);
        }
    }

    private static <O> boolean zaa(String str, O o) {
        if (o != null) {
            return true;
        }
        if (!Log.isLoggable("FastJsonResponse", 6)) {
            return false;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 58);
        sb.append("Output field (");
        sb.append(str);
        sb.append(") has a null value, but expected a primitive");
        Log.e("FastJsonResponse", sb.toString());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public static <O, I> I zab(Field<I, O> field, Object obj) {
        return ((Field) field).zapz != null ? field.convertBack(obj) : obj;
    }

    @KeepForSdk
    public <T extends FastJsonResponse> void addConcreteTypeArrayInternal(Field<?, ?> field, String str, ArrayList<T> arrayList) {
        throw new UnsupportedOperationException("Concrete type array not supported");
    }

    @KeepForSdk
    public <T extends FastJsonResponse> void addConcreteTypeInternal(Field<?, ?> field, String str, T t) {
        throw new UnsupportedOperationException("Concrete type not supported");
    }

    @KeepForSdk
    public abstract Map<String, Field<?, ?>> getFieldMappings();

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public Object getFieldValue(Field field) {
        String str = field.zapu;
        if (field.zapw == null) {
            return getValueObject(field.zapu);
        }
        Preconditions.checkState(getValueObject(field.zapu) == null, "Concrete field shouldn't be value object: %s", field.zapu);
        boolean z = field.zapt;
        try {
            char upperCase = Character.toUpperCase(str.charAt(0));
            String substring = str.substring(1);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 4);
            sb.append("get");
            sb.append(upperCase);
            sb.append(substring);
            return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @KeepForSdk
    protected abstract Object getValueObject(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public boolean isFieldSet(Field field) {
        if (field.zaps != 11) {
            return isPrimitiveFieldSet(field.zapu);
        }
        if (field.zapt) {
            String str = field.zapu;
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        String str2 = field.zapu;
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    @KeepForSdk
    protected abstract boolean isPrimitiveFieldSet(String str);

    @KeepForSdk
    protected void setBooleanInternal(Field<?, ?> field, String str, boolean z) {
        throw new UnsupportedOperationException("Boolean not supported");
    }

    @KeepForSdk
    protected void setDecodedBytesInternal(Field<?, ?> field, String str, byte[] bArr) {
        throw new UnsupportedOperationException("byte[] not supported");
    }

    @KeepForSdk
    protected void setIntegerInternal(Field<?, ?> field, String str, int i) {
        throw new UnsupportedOperationException("Integer not supported");
    }

    @KeepForSdk
    protected void setLongInternal(Field<?, ?> field, String str, long j) {
        throw new UnsupportedOperationException("Long not supported");
    }

    @KeepForSdk
    protected void setStringInternal(Field<?, ?> field, String str, String str2) {
        throw new UnsupportedOperationException("String not supported");
    }

    @KeepForSdk
    protected void setStringsInternal(Field<?, ?> field, String str, ArrayList<String> arrayList) {
        throw new UnsupportedOperationException("String list not supported");
    }

    @KeepForSdk
    public String toString() {
        Map<String, Field<?, ?>> fieldMappings = getFieldMappings();
        StringBuilder sb = new StringBuilder(100);
        for (String str : fieldMappings.keySet()) {
            Field<?, ?> field = fieldMappings.get(str);
            if (isFieldSet(field)) {
                Object zab = zab(field, getFieldValue(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (zab != null) {
                    switch (field.zaps) {
                        case 8:
                            sb.append("\"");
                            sb.append(Base64Utils.encode((byte[]) zab));
                            sb.append("\"");
                            continue;
                        case 9:
                            sb.append("\"");
                            sb.append(Base64Utils.encodeUrlSafe((byte[]) zab));
                            sb.append("\"");
                            continue;
                        case 10:
                            MapUtils.writeStringMapToJson(sb, (HashMap) zab);
                            continue;
                        default:
                            if (!field.zapr) {
                                zaa(sb, field, zab);
                                break;
                            } else {
                                ArrayList arrayList = (ArrayList) zab;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i = 0; i < size; i++) {
                                    if (i > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i);
                                    if (obj != null) {
                                        zaa(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                                continue;
                            }
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    public final <O> void zaa(Field<Double, O> field, double d) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<Double, O>, O>) field, (Field<Double, O>) Double.valueOf(d));
        } else {
            zaa(field, field.zapu, d);
        }
    }

    public final <O> void zaa(Field<Float, O> field, float f) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<Float, O>, O>) field, (Field<Float, O>) Float.valueOf(f));
        } else {
            zaa((Field<?, ?>) field, field.zapu, f);
        }
    }

    public final <O> void zaa(Field<Integer, O> field, int i) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<Integer, O>, O>) field, (Field<Integer, O>) Integer.valueOf(i));
        } else {
            setIntegerInternal(field, field.zapu, i);
        }
    }

    public final <O> void zaa(Field<Long, O> field, long j) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<Long, O>, O>) field, (Field<Long, O>) Long.valueOf(j));
        } else {
            setLongInternal(field, field.zapu, j);
        }
    }

    public final <O> void zaa(Field<String, O> field, String str) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<String, O>, O>) field, (Field<String, O>) str);
        } else {
            setStringInternal(field, field.zapu, str);
        }
    }

    protected void zaa(Field<?, ?> field, String str, double d) {
        throw new UnsupportedOperationException("Double not supported");
    }

    protected void zaa(Field<?, ?> field, String str, float f) {
        throw new UnsupportedOperationException("Float not supported");
    }

    protected void zaa(Field<?, ?> field, String str, BigDecimal bigDecimal) {
        throw new UnsupportedOperationException("BigDecimal not supported");
    }

    protected void zaa(Field<?, ?> field, String str, BigInteger bigInteger) {
        throw new UnsupportedOperationException("BigInteger not supported");
    }

    protected void zaa(Field<?, ?> field, String str, ArrayList<Integer> arrayList) {
        throw new UnsupportedOperationException("Integer list not supported");
    }

    protected void zaa(Field<?, ?> field, String str, Map<String, String> map) {
        throw new UnsupportedOperationException("String map not supported");
    }

    public final <O> void zaa(Field<BigDecimal, O> field, BigDecimal bigDecimal) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<BigDecimal, O>, O>) field, (Field<BigDecimal, O>) bigDecimal);
        } else {
            zaa(field, field.zapu, bigDecimal);
        }
    }

    public final <O> void zaa(Field<BigInteger, O> field, BigInteger bigInteger) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<BigInteger, O>, O>) field, (Field<BigInteger, O>) bigInteger);
        } else {
            zaa(field, field.zapu, bigInteger);
        }
    }

    public final <O> void zaa(Field<ArrayList<Integer>, O> field, ArrayList<Integer> arrayList) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<ArrayList<Integer>, O>, O>) field, (Field<ArrayList<Integer>, O>) arrayList);
        } else {
            zaa(field, field.zapu, arrayList);
        }
    }

    public final <O> void zaa(Field<Map<String, String>, O> field, Map<String, String> map) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<Map<String, String>, O>, O>) field, (Field<Map<String, String>, O>) map);
        } else {
            zaa(field, field.zapu, map);
        }
    }

    public final <O> void zaa(Field<Boolean, O> field, boolean z) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<Boolean, O>, O>) field, (Field<Boolean, O>) Boolean.valueOf(z));
        } else {
            setBooleanInternal(field, field.zapu, z);
        }
    }

    public final <O> void zaa(Field<byte[], O> field, byte[] bArr) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<byte[], O>, O>) field, (Field<byte[], O>) bArr);
        } else {
            setDecodedBytesInternal(field, field.zapu, bArr);
        }
    }

    protected void zab(Field<?, ?> field, String str, ArrayList<BigInteger> arrayList) {
        throw new UnsupportedOperationException("BigInteger list not supported");
    }

    public final <O> void zab(Field<ArrayList<BigInteger>, O> field, ArrayList<BigInteger> arrayList) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<ArrayList<BigInteger>, O>, O>) field, (Field<ArrayList<BigInteger>, O>) arrayList);
        } else {
            zab(field, field.zapu, arrayList);
        }
    }

    protected void zac(Field<?, ?> field, String str, ArrayList<Long> arrayList) {
        throw new UnsupportedOperationException("Long list not supported");
    }

    public final <O> void zac(Field<ArrayList<Long>, O> field, ArrayList<Long> arrayList) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<ArrayList<Long>, O>, O>) field, (Field<ArrayList<Long>, O>) arrayList);
        } else {
            zac(field, field.zapu, arrayList);
        }
    }

    protected void zad(Field<?, ?> field, String str, ArrayList<Float> arrayList) {
        throw new UnsupportedOperationException("Float list not supported");
    }

    public final <O> void zad(Field<ArrayList<Float>, O> field, ArrayList<Float> arrayList) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<ArrayList<Float>, O>, O>) field, (Field<ArrayList<Float>, O>) arrayList);
        } else {
            zad(field, field.zapu, arrayList);
        }
    }

    protected void zae(Field<?, ?> field, String str, ArrayList<Double> arrayList) {
        throw new UnsupportedOperationException("Double list not supported");
    }

    public final <O> void zae(Field<ArrayList<Double>, O> field, ArrayList<Double> arrayList) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<ArrayList<Double>, O>, O>) field, (Field<ArrayList<Double>, O>) arrayList);
        } else {
            zae(field, field.zapu, arrayList);
        }
    }

    protected void zaf(Field<?, ?> field, String str, ArrayList<BigDecimal> arrayList) {
        throw new UnsupportedOperationException("BigDecimal list not supported");
    }

    public final <O> void zaf(Field<ArrayList<BigDecimal>, O> field, ArrayList<BigDecimal> arrayList) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<ArrayList<BigDecimal>, O>, O>) field, (Field<ArrayList<BigDecimal>, O>) arrayList);
        } else {
            zaf(field, field.zapu, arrayList);
        }
    }

    protected void zag(Field<?, ?> field, String str, ArrayList<Boolean> arrayList) {
        throw new UnsupportedOperationException("Boolean list not supported");
    }

    public final <O> void zag(Field<ArrayList<Boolean>, O> field, ArrayList<Boolean> arrayList) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<ArrayList<Boolean>, O>, O>) field, (Field<ArrayList<Boolean>, O>) arrayList);
        } else {
            zag(field, field.zapu, arrayList);
        }
    }

    public final <O> void zah(Field<ArrayList<String>, O> field, ArrayList<String> arrayList) {
        if (((Field) field).zapz != null) {
            zaa((Field<Field<ArrayList<String>, O>, O>) field, (Field<ArrayList<String>, O>) arrayList);
        } else {
            setStringsInternal(field, field.zapu, arrayList);
        }
    }
}
