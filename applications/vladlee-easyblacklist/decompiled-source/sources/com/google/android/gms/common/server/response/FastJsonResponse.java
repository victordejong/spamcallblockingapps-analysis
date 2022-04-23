package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.converter.zab;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse.class */
public abstract class FastJsonResponse {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$Field.class */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zai CREATOR = new zai();

        /* renamed from: a */
        protected final int f6882a;

        /* renamed from: b */
        protected final boolean f6883b;

        /* renamed from: c */
        protected final int f6884c;

        /* renamed from: d */
        protected final boolean f6885d;

        /* renamed from: e */
        protected final String f6886e;

        /* renamed from: f */
        protected final int f6887f;

        /* renamed from: g */
        protected final Class<? extends FastJsonResponse> f6888g;

        /* renamed from: h */
        private final int f6889h;

        /* renamed from: i */
        private final String f6890i;

        /* renamed from: j */
        private zaj f6891j;

        /* renamed from: k */
        private FieldConverter<I, O> f6892k;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, zab zabVar) {
            this.f6889h = i;
            this.f6882a = i2;
            this.f6883b = z;
            this.f6884c = i3;
            this.f6885d = z2;
            this.f6886e = str;
            this.f6887f = i4;
            if (str2 == null) {
                this.f6888g = null;
                this.f6890i = null;
            } else {
                this.f6888g = SafeParcelResponse.class;
                this.f6890i = str2;
            }
            if (zabVar == null) {
                this.f6892k = null;
            } else {
                this.f6892k = (FieldConverter<I, O>) zabVar.zacg();
            }
        }

        private Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class<? extends FastJsonResponse> cls, FieldConverter<I, O> fieldConverter) {
            this.f6889h = 1;
            this.f6882a = i;
            this.f6883b = z;
            this.f6884c = i2;
            this.f6885d = z2;
            this.f6886e = str;
            this.f6887f = i3;
            this.f6888g = cls;
            this.f6890i = cls == null ? null : cls.getCanonicalName();
            this.f6892k = fieldConverter;
        }

        /* renamed from: a */
        private final String m5629a() {
            String str = this.f6890i;
            String str2 = str;
            if (str == null) {
                str2 = null;
            }
            return str2;
        }

        /* renamed from: b */
        private final zab m5627b() {
            FieldConverter<I, O> fieldConverter = this.f6892k;
            if (fieldConverter == null) {
                return null;
            }
            return zab.zaa(fieldConverter);
        }

        public static Field<byte[], byte[]> forBase64(String str, int i) {
            return new Field<>(8, false, 8, false, str, i, null, null);
        }

        public static Field<Boolean, Boolean> forBoolean(String str, int i) {
            return new Field<>(6, false, 6, false, str, i, null, null);
        }

        public static <T extends FastJsonResponse> Field<T, T> forConcreteType(String str, int i, Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> forConcreteTypeArray(String str, int i, Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i, cls, null);
        }

        public static Field<Double, Double> forDouble(String str, int i) {
            return new Field<>(4, false, 4, false, str, i, null, null);
        }

        public static Field<Float, Float> forFloat(String str, int i) {
            return new Field<>(3, false, 3, false, str, i, null, null);
        }

        public static Field<Integer, Integer> forInteger(String str, int i) {
            return new Field<>(0, false, 0, false, str, i, null, null);
        }

        public static Field<Long, Long> forLong(String str, int i) {
            return new Field<>(2, false, 2, false, str, i, null, null);
        }

        public static Field<String, String> forString(String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        public static Field<HashMap<String, String>, HashMap<String, String>> forStringMap(String str, int i) {
            return new Field<>(10, false, 10, false, str, i, null, null);
        }

        public static Field<ArrayList<String>, ArrayList<String>> forStrings(String str, int i) {
            return new Field<>(7, true, 7, true, str, i, null, null);
        }

        public static Field withConverter(String str, int i, FieldConverter<?, ?> fieldConverter, boolean z) {
            return new Field(fieldConverter.zach(), z, fieldConverter.zaci(), false, str, i, null, fieldConverter);
        }

        public final O convert(I i) {
            return this.f6892k.convert(i);
        }

        public final I convertBack(O o) {
            return this.f6892k.convertBack(o);
        }

        public int getSafeParcelableFieldId() {
            return this.f6887f;
        }

        public String toString() {
            Objects.ToStringHelper add = Objects.toStringHelper(this).add("versionCode", Integer.valueOf(this.f6889h)).add("typeIn", Integer.valueOf(this.f6882a)).add("typeInArray", Boolean.valueOf(this.f6883b)).add("typeOut", Integer.valueOf(this.f6884c)).add("typeOutArray", Boolean.valueOf(this.f6885d)).add("outputFieldName", this.f6886e).add("safeParcelFieldId", Integer.valueOf(this.f6887f)).add("concreteTypeName", m5629a());
            Class<? extends FastJsonResponse> cls = this.f6888g;
            if (cls != null) {
                add.add("concreteType.class", cls.getCanonicalName());
            }
            FieldConverter<I, O> fieldConverter = this.f6892k;
            if (fieldConverter != null) {
                add.add("converterName", fieldConverter.getClass().getCanonicalName());
            }
            return add.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeInt(parcel, 1, this.f6889h);
            SafeParcelWriter.writeInt(parcel, 2, this.f6882a);
            SafeParcelWriter.writeBoolean(parcel, 3, this.f6883b);
            SafeParcelWriter.writeInt(parcel, 4, this.f6884c);
            SafeParcelWriter.writeBoolean(parcel, 5, this.f6885d);
            SafeParcelWriter.writeString(parcel, 6, this.f6886e, false);
            SafeParcelWriter.writeInt(parcel, 7, getSafeParcelableFieldId());
            SafeParcelWriter.writeString(parcel, 8, m5629a(), false);
            SafeParcelWriter.writeParcelable(parcel, 9, m5627b(), i, false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }

        public final void zaa(zaj zajVar) {
            this.f6891j = zajVar;
        }

        public final Field<I, O> zacj() {
            return new Field<>(this.f6889h, this.f6882a, this.f6883b, this.f6884c, this.f6885d, this.f6886e, this.f6887f, this.f6890i, m5627b());
        }

        public final boolean zacl() {
            return this.f6892k != null;
        }

        public final FastJsonResponse zacn() {
            Class<? extends FastJsonResponse> cls = this.f6888g;
            if (cls != SafeParcelResponse.class) {
                return (FastJsonResponse) cls.newInstance();
            }
            Preconditions.checkNotNull(this.f6891j, "The field mapping dictionary must be set if the concrete type is a SafeParcelResponse object.");
            return new SafeParcelResponse(this.f6891j, this.f6890i);
        }

        public final Map<String, Field<?, ?>> zaco() {
            Preconditions.checkNotNull(this.f6890i);
            Preconditions.checkNotNull(this.f6891j);
            return this.f6891j.zai(this.f6890i);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastJsonResponse$FieldConverter.class */
    public interface FieldConverter<I, O> {
        O convert(I i);

        I convertBack(O o);

        int zach();

        int zaci();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <O, I> I m5634a(Field<I, O> field, Object obj) {
        return ((Field) field).f6892k != null ? field.convertBack(obj) : obj;
    }

    /* renamed from: a */
    private static void m5632a(StringBuilder sb, Field field, Object obj) {
        String str;
        if (field.f6882a == 11) {
            str = ((FastJsonResponse) field.f6888g.cast(obj)).toString();
        } else if (field.f6882a == 7) {
            str = "\"";
            sb.append("\"");
            sb.append(JsonUtils.escapeString((String) obj));
        } else {
            sb.append(obj);
            return;
        }
        sb.append(str);
    }

    /* renamed from: a */
    private static <O> boolean m5633a(String str, O o) {
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

    /* renamed from: b */
    private final <I, O> void m5630b(Field<I, O> field, I i) {
        String str = field.f6886e;
        O convert = field.convert(i);
        switch (field.f6884c) {
            case 0:
                if (m5633a(str, convert)) {
                    mo5596a((Field<?, ?>) field, ((Integer) convert).intValue());
                    return;
                }
                return;
            case 1:
                mo5592a((Field<?, ?>) field, (BigInteger) convert);
                return;
            case 2:
                if (m5633a(str, convert)) {
                    mo5595a((Field<?, ?>) field, ((Long) convert).longValue());
                    return;
                }
                return;
            case 3:
            default:
                int i2 = field.f6884c;
                StringBuilder sb = new StringBuilder(44);
                sb.append("Unsupported type for conversion: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            case 4:
                if (m5633a(str, convert)) {
                    mo5598a((Field<?, ?>) field, ((Double) convert).doubleValue());
                    return;
                }
                return;
            case 5:
                mo5593a((Field<?, ?>) field, (BigDecimal) convert);
                return;
            case 6:
                if (m5633a(str, convert)) {
                    mo5589a((Field<?, ?>) field, ((Boolean) convert).booleanValue());
                    return;
                }
                return;
            case 7:
                mo5594a((Field<?, ?>) field, (String) convert);
                return;
            case 8:
            case 9:
                if (m5633a(str, convert)) {
                    mo5588a((Field<?, ?>) field, (byte[]) convert);
                    return;
                }
                return;
        }
    }

    /* renamed from: a */
    protected void mo5598a(Field<?, ?> field, double d) {
        throw new UnsupportedOperationException("Double not supported");
    }

    /* renamed from: a */
    protected void mo5597a(Field<?, ?> field, float f) {
        throw new UnsupportedOperationException("Float not supported");
    }

    /* renamed from: a */
    protected void mo5596a(Field<?, ?> field, int i) {
        throw new UnsupportedOperationException("Integer not supported");
    }

    /* renamed from: a */
    protected void mo5595a(Field<?, ?> field, long j) {
        throw new UnsupportedOperationException("Long not supported");
    }

    /* renamed from: a */
    protected void mo5594a(Field<?, ?> field, String str) {
        throw new UnsupportedOperationException("String not supported");
    }

    /* renamed from: a */
    protected void mo5593a(Field<?, ?> field, BigDecimal bigDecimal) {
        throw new UnsupportedOperationException("BigDecimal not supported");
    }

    /* renamed from: a */
    protected void mo5592a(Field<?, ?> field, BigInteger bigInteger) {
        throw new UnsupportedOperationException("BigInteger not supported");
    }

    /* renamed from: a */
    protected void mo5591a(Field<?, ?> field, ArrayList<Integer> arrayList) {
        throw new UnsupportedOperationException("Integer list not supported");
    }

    /* renamed from: a */
    protected void mo5590a(Field<?, ?> field, Map<String, String> map) {
        throw new UnsupportedOperationException("String map not supported");
    }

    /* renamed from: a */
    protected void mo5589a(Field<?, ?> field, boolean z) {
        throw new UnsupportedOperationException("Boolean not supported");
    }

    /* renamed from: a */
    protected void mo5588a(Field<?, ?> field, byte[] bArr) {
        throw new UnsupportedOperationException("byte[] not supported");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final boolean m5635a(Field field) {
        if (field.f6884c != 11) {
            return isPrimitiveFieldSet(field.f6886e);
        }
        if (field.f6885d) {
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    public <T extends FastJsonResponse> void addConcreteTypeArrayInternal(Field<?, ?> field, String str, ArrayList<T> arrayList) {
        throw new UnsupportedOperationException("Concrete type array not supported");
    }

    public <T extends FastJsonResponse> void addConcreteTypeInternal(Field<?, ?> field, String str, T t) {
        throw new UnsupportedOperationException("Concrete type not supported");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final Object m5631b(Field field) {
        String str = field.f6886e;
        if (field.f6888g == null) {
            return getValueObject(field.f6886e);
        }
        Preconditions.checkState(getValueObject(field.f6886e) == null, "Concrete field shouldn't be value object: %s", field.f6886e);
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

    /* renamed from: b */
    protected void mo5583b(Field<?, ?> field, ArrayList<BigInteger> arrayList) {
        throw new UnsupportedOperationException("BigInteger list not supported");
    }

    /* renamed from: c */
    protected void mo5581c(Field<?, ?> field, ArrayList<Long> arrayList) {
        throw new UnsupportedOperationException("Long list not supported");
    }

    /* renamed from: d */
    protected void mo5580d(Field<?, ?> field, ArrayList<Float> arrayList) {
        throw new UnsupportedOperationException("Float list not supported");
    }

    /* renamed from: e */
    protected void mo5579e(Field<?, ?> field, ArrayList<Double> arrayList) {
        throw new UnsupportedOperationException("Double list not supported");
    }

    /* renamed from: f */
    protected void mo5578f(Field<?, ?> field, ArrayList<BigDecimal> arrayList) {
        throw new UnsupportedOperationException("BigDecimal list not supported");
    }

    /* renamed from: g */
    protected void mo5577g(Field<?, ?> field, ArrayList<Boolean> arrayList) {
        throw new UnsupportedOperationException("Boolean list not supported");
    }

    public abstract Map<String, Field<?, ?>> getFieldMappings();

    protected abstract Object getValueObject(String str);

    /* renamed from: h */
    protected void mo5576h(Field<?, ?> field, ArrayList<String> arrayList) {
        throw new UnsupportedOperationException("String list not supported");
    }

    protected abstract boolean isPrimitiveFieldSet(String str);

    public String toString() {
        String str;
        String encode;
        Map<String, Field<?, ?>> fieldMappings = getFieldMappings();
        StringBuilder sb = new StringBuilder(100);
        for (String str2 : fieldMappings.keySet()) {
            Field<?, ?> field = fieldMappings.get(str2);
            if (m5635a(field)) {
                Object a = m5634a(field, m5631b(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str2);
                sb.append("\":");
                if (a != null) {
                    switch (field.f6884c) {
                        case 8:
                            sb.append("\"");
                            encode = Base64Utils.encode((byte[]) a);
                            sb.append(encode);
                            sb.append("\"");
                            break;
                        case 9:
                            sb.append("\"");
                            encode = Base64Utils.encodeUrlSafe((byte[]) a);
                            sb.append(encode);
                            sb.append("\"");
                            break;
                        case 10:
                            MapUtils.writeStringMapToJson(sb, (HashMap) a);
                            break;
                        default:
                            if (field.f6883b) {
                                ArrayList arrayList = (ArrayList) a;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i = 0; i < size; i++) {
                                    if (i > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i);
                                    if (obj != null) {
                                        m5632a(sb, field, obj);
                                    }
                                }
                                str = "]";
                                break;
                            } else {
                                m5632a(sb, field, a);
                                break;
                            }
                    }
                } else {
                    str = "null";
                }
                sb.append(str);
            }
        }
        sb.append(sb.length() > 0 ? "}" : "{}");
        return sb.toString();
    }

    public final <O> void zaa(Field<Double, O> field, double d) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<Double, O>, O>) field, (Field<Double, O>) Double.valueOf(d));
        } else {
            mo5598a(field, d);
        }
    }

    public final <O> void zaa(Field<Float, O> field, float f) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<Float, O>, O>) field, (Field<Float, O>) Float.valueOf(f));
        } else {
            mo5597a((Field<?, ?>) field, f);
        }
    }

    public final <O> void zaa(Field<Integer, O> field, int i) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<Integer, O>, O>) field, (Field<Integer, O>) Integer.valueOf(i));
        } else {
            mo5596a((Field<?, ?>) field, i);
        }
    }

    public final <O> void zaa(Field<Long, O> field, long j) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<Long, O>, O>) field, (Field<Long, O>) Long.valueOf(j));
        } else {
            mo5595a((Field<?, ?>) field, j);
        }
    }

    public final <O> void zaa(Field<String, O> field, String str) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<String, O>, O>) field, (Field<String, O>) str);
        } else {
            mo5594a((Field<?, ?>) field, str);
        }
    }

    public final <O> void zaa(Field<BigDecimal, O> field, BigDecimal bigDecimal) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<BigDecimal, O>, O>) field, (Field<BigDecimal, O>) bigDecimal);
        } else {
            mo5593a((Field<?, ?>) field, bigDecimal);
        }
    }

    public final <O> void zaa(Field<BigInteger, O> field, BigInteger bigInteger) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<BigInteger, O>, O>) field, (Field<BigInteger, O>) bigInteger);
        } else {
            mo5592a((Field<?, ?>) field, bigInteger);
        }
    }

    public final <O> void zaa(Field<ArrayList<Integer>, O> field, ArrayList<Integer> arrayList) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<ArrayList<Integer>, O>, O>) field, (Field<ArrayList<Integer>, O>) arrayList);
        } else {
            mo5591a((Field<?, ?>) field, arrayList);
        }
    }

    public final <O> void zaa(Field<Map<String, String>, O> field, Map<String, String> map) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<Map<String, String>, O>, O>) field, (Field<Map<String, String>, O>) map);
        } else {
            mo5590a((Field<?, ?>) field, map);
        }
    }

    public final <O> void zaa(Field<Boolean, O> field, boolean z) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<Boolean, O>, O>) field, (Field<Boolean, O>) Boolean.valueOf(z));
        } else {
            mo5589a(field, z);
        }
    }

    public final <O> void zaa(Field<byte[], O> field, byte[] bArr) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<byte[], O>, O>) field, (Field<byte[], O>) bArr);
        } else {
            mo5588a((Field<?, ?>) field, bArr);
        }
    }

    public final <O> void zab(Field<ArrayList<BigInteger>, O> field, ArrayList<BigInteger> arrayList) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<ArrayList<BigInteger>, O>, O>) field, (Field<ArrayList<BigInteger>, O>) arrayList);
        } else {
            mo5583b((Field<?, ?>) field, arrayList);
        }
    }

    public final <O> void zac(Field<ArrayList<Long>, O> field, ArrayList<Long> arrayList) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<ArrayList<Long>, O>, O>) field, (Field<ArrayList<Long>, O>) arrayList);
        } else {
            mo5581c(field, arrayList);
        }
    }

    public final <O> void zad(Field<ArrayList<Float>, O> field, ArrayList<Float> arrayList) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<ArrayList<Float>, O>, O>) field, (Field<ArrayList<Float>, O>) arrayList);
        } else {
            mo5580d(field, arrayList);
        }
    }

    public final <O> void zae(Field<ArrayList<Double>, O> field, ArrayList<Double> arrayList) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<ArrayList<Double>, O>, O>) field, (Field<ArrayList<Double>, O>) arrayList);
        } else {
            mo5579e(field, arrayList);
        }
    }

    public final <O> void zaf(Field<ArrayList<BigDecimal>, O> field, ArrayList<BigDecimal> arrayList) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<ArrayList<BigDecimal>, O>, O>) field, (Field<ArrayList<BigDecimal>, O>) arrayList);
        } else {
            mo5578f(field, arrayList);
        }
    }

    public final <O> void zag(Field<ArrayList<Boolean>, O> field, ArrayList<Boolean> arrayList) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<ArrayList<Boolean>, O>, O>) field, (Field<ArrayList<Boolean>, O>) arrayList);
        } else {
            mo5577g(field, arrayList);
        }
    }

    public final <O> void zah(Field<ArrayList<String>, O> field, ArrayList<String> arrayList) {
        if (((Field) field).f6892k != null) {
            m5630b((Field<Field<ArrayList<String>, O>, O>) field, (Field<ArrayList<String>, O>) arrayList);
        } else {
            mo5576h(field, arrayList);
        }
    }
}
