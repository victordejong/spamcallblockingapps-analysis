package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/SafeParcelResponse.class */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new zap();

    /* renamed from: a */
    private final int f6913a;

    /* renamed from: b */
    private final Parcel f6914b;

    /* renamed from: c */
    private final int f6915c;

    /* renamed from: d */
    private final zaj f6916d;

    /* renamed from: e */
    private final String f6917e;

    /* renamed from: f */
    private int f6918f;

    /* renamed from: g */
    private int f6919g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SafeParcelResponse(int i, Parcel parcel, zaj zajVar) {
        this.f6913a = i;
        this.f6914b = (Parcel) Preconditions.checkNotNull(parcel);
        this.f6915c = 2;
        this.f6916d = zajVar;
        zaj zajVar2 = this.f6916d;
        this.f6917e = zajVar2 == null ? null : zajVar2.zacr();
        this.f6918f = 2;
    }

    private SafeParcelResponse(SafeParcelable safeParcelable, zaj zajVar, String str) {
        this.f6913a = 1;
        this.f6914b = Parcel.obtain();
        safeParcelable.writeToParcel(this.f6914b, 0);
        this.f6915c = 1;
        this.f6916d = (zaj) Preconditions.checkNotNull(zajVar);
        this.f6917e = (String) Preconditions.checkNotNull(str);
        this.f6918f = 2;
    }

    public SafeParcelResponse(zaj zajVar, String str) {
        this.f6913a = 1;
        this.f6914b = Parcel.obtain();
        this.f6915c = 0;
        this.f6916d = (zaj) Preconditions.checkNotNull(zajVar);
        this.f6917e = (String) Preconditions.checkNotNull(str);
        this.f6918f = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
        if (r0 != 1) goto L_0x002c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.os.Parcel m5599a() {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.f6918f
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0011
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L_0x001c
            goto L_0x002c
        L_0x0011:
            r0 = r3
            r1 = r3
            android.os.Parcel r1 = r1.f6914b
            int r1 = com.google.android.gms.common.internal.safeparcel.SafeParcelWriter.beginObjectHeader(r1)
            r0.f6919g = r1
        L_0x001c:
            r0 = r3
            android.os.Parcel r0 = r0.f6914b
            r1 = r3
            int r1 = r1.f6919g
            com.google.android.gms.common.internal.safeparcel.SafeParcelWriter.finishObjectHeader(r0, r1)
            r0 = r3
            r1 = 2
            r0.f6918f = r1
        L_0x002c:
            r0 = r3
            android.os.Parcel r0 = r0.f6914b
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.SafeParcelResponse.m5599a():android.os.Parcel");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static void m5587a(zaj zajVar, FastJsonResponse fastJsonResponse) {
        Class<?> cls = fastJsonResponse.getClass();
        if (!zajVar.zaa(cls)) {
            Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
            zajVar.zaa(cls, fieldMappings);
            for (String str : fieldMappings.keySet()) {
                FastJsonResponse.Field<?, ?> field = fieldMappings.get(str);
                Class<? extends FastJsonResponse> cls2 = field.f6888g;
                if (cls2 != null) {
                    try {
                        m5587a(zajVar, (FastJsonResponse) cls2.newInstance());
                    } catch (IllegalAccessException e) {
                        String valueOf = String.valueOf(field.f6888g.getCanonicalName());
                        throw new IllegalStateException(valueOf.length() != 0 ? "Could not access object of type ".concat(valueOf) : new String("Could not access object of type "), e);
                    } catch (InstantiationException e2) {
                        String valueOf2 = String.valueOf(field.f6888g.getCanonicalName());
                        throw new IllegalStateException(valueOf2.length() != 0 ? "Could not instantiate an object of type ".concat(valueOf2) : new String("Could not instantiate an object of type "), e2);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private static void m5586a(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"");
                sb.append(JsonUtils.escapeString(obj.toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(Base64Utils.encode((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(Base64Utils.encodeUrlSafe((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                MapUtils.writeStringMapToJson(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("Unknown type = ");
                sb2.append(i);
                throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* renamed from: a */
    private static void m5585a(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (field.f6883b) {
            ArrayList arrayList = (ArrayList) obj;
            sb.append("[");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (i != 0) {
                    sb.append(",");
                }
                m5586a(sb, field.f6882a, arrayList.get(i));
            }
            sb.append("]");
            return;
        }
        m5586a(sb, field.f6882a, obj);
    }

    /* renamed from: a */
    private final void m5584a(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        Object obj;
        String str;
        String str2;
        Object obj2;
        Object obj3;
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().getSafeParcelableFieldId(), entry);
        }
        sb.append('{');
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        boolean z = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.getFieldId(readHeader));
            if (entry2 != null) {
                if (z) {
                    sb.append(",");
                }
                String str3 = (String) entry2.getKey();
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append(str3);
                sb.append("\":");
                if (field.zacl()) {
                    switch (field.f6884c) {
                        case 0:
                            obj3 = Integer.valueOf(SafeParcelReader.readInt(parcel, readHeader));
                            obj2 = m5634a(field, obj3);
                            break;
                        case 1:
                            obj3 = SafeParcelReader.createBigInteger(parcel, readHeader);
                            obj2 = m5634a(field, obj3);
                            break;
                        case 2:
                            obj3 = Long.valueOf(SafeParcelReader.readLong(parcel, readHeader));
                            obj2 = m5634a(field, obj3);
                            break;
                        case 3:
                            obj3 = Float.valueOf(SafeParcelReader.readFloat(parcel, readHeader));
                            obj2 = m5634a(field, obj3);
                            break;
                        case 4:
                            obj3 = Double.valueOf(SafeParcelReader.readDouble(parcel, readHeader));
                            obj2 = m5634a(field, obj3);
                            break;
                        case 5:
                            obj3 = SafeParcelReader.createBigDecimal(parcel, readHeader);
                            obj2 = m5634a(field, obj3);
                            break;
                        case 6:
                            obj3 = Boolean.valueOf(SafeParcelReader.readBoolean(parcel, readHeader));
                            obj2 = m5634a(field, obj3);
                            break;
                        case 7:
                            obj3 = SafeParcelReader.createString(parcel, readHeader);
                            obj2 = m5634a(field, obj3);
                            break;
                        case 8:
                        case 9:
                            obj2 = m5634a((FastJsonResponse.Field<Object, O>) field, (Object) SafeParcelReader.createByteArray(parcel, readHeader));
                            break;
                        case 10:
                            Bundle createBundle = SafeParcelReader.createBundle(parcel, readHeader);
                            HashMap hashMap = new HashMap();
                            for (String str4 : createBundle.keySet()) {
                                hashMap.put(str4, createBundle.getString(str4));
                            }
                            obj2 = m5634a((FastJsonResponse.Field<Object, O>) field, (Object) hashMap);
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            int i = field.f6884c;
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                    m5585a(sb, field, obj2);
                } else {
                    if (field.f6885d) {
                        sb.append("[");
                        switch (field.f6884c) {
                            case 0:
                                ArrayUtils.writeArray(sb, SafeParcelReader.createIntArray(parcel, readHeader));
                                break;
                            case 1:
                                ArrayUtils.writeArray(sb, SafeParcelReader.createBigIntegerArray(parcel, readHeader));
                                break;
                            case 2:
                                ArrayUtils.writeArray(sb, SafeParcelReader.createLongArray(parcel, readHeader));
                                break;
                            case 3:
                                ArrayUtils.writeArray(sb, SafeParcelReader.createFloatArray(parcel, readHeader));
                                break;
                            case 4:
                                ArrayUtils.writeArray(sb, SafeParcelReader.createDoubleArray(parcel, readHeader));
                                break;
                            case 5:
                                ArrayUtils.writeArray(sb, SafeParcelReader.createBigDecimalArray(parcel, readHeader));
                                break;
                            case 6:
                                ArrayUtils.writeArray(sb, SafeParcelReader.createBooleanArray(parcel, readHeader));
                                break;
                            case 7:
                                ArrayUtils.writeStringArray(sb, SafeParcelReader.createStringArray(parcel, readHeader));
                                break;
                            case 8:
                            case 9:
                            case 10:
                                throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                            case 11:
                                Parcel[] createParcelArray = SafeParcelReader.createParcelArray(parcel, readHeader);
                                int length = createParcelArray.length;
                                for (int i2 = 0; i2 < length; i2++) {
                                    if (i2 > 0) {
                                        sb.append(",");
                                    }
                                    createParcelArray[i2].setDataPosition(0);
                                    m5584a(sb, field.zaco(), createParcelArray[i2]);
                                }
                                break;
                            default:
                                throw new IllegalStateException("Unknown field type out.");
                        }
                        str2 = "]";
                    } else {
                        switch (field.f6884c) {
                            case 0:
                                sb.append(SafeParcelReader.readInt(parcel, readHeader));
                                break;
                            case 1:
                                obj = SafeParcelReader.createBigInteger(parcel, readHeader);
                                sb.append(obj);
                                break;
                            case 2:
                                sb.append(SafeParcelReader.readLong(parcel, readHeader));
                                break;
                            case 3:
                                sb.append(SafeParcelReader.readFloat(parcel, readHeader));
                                break;
                            case 4:
                                sb.append(SafeParcelReader.readDouble(parcel, readHeader));
                                break;
                            case 5:
                                obj = SafeParcelReader.createBigDecimal(parcel, readHeader);
                                sb.append(obj);
                                break;
                            case 6:
                                sb.append(SafeParcelReader.readBoolean(parcel, readHeader));
                                break;
                            case 7:
                                String createString = SafeParcelReader.createString(parcel, readHeader);
                                sb.append("\"");
                                str = JsonUtils.escapeString(createString);
                                sb.append(str);
                                sb.append("\"");
                                break;
                            case 8:
                                byte[] createByteArray = SafeParcelReader.createByteArray(parcel, readHeader);
                                sb.append("\"");
                                str = Base64Utils.encode(createByteArray);
                                sb.append(str);
                                sb.append("\"");
                                break;
                            case 9:
                                byte[] createByteArray2 = SafeParcelReader.createByteArray(parcel, readHeader);
                                sb.append("\"");
                                str = Base64Utils.encodeUrlSafe(createByteArray2);
                                sb.append(str);
                                sb.append("\"");
                                break;
                            case 10:
                                Bundle createBundle2 = SafeParcelReader.createBundle(parcel, readHeader);
                                Set<String> keySet = createBundle2.keySet();
                                keySet.size();
                                sb.append("{");
                                boolean z2 = true;
                                for (String str5 : keySet) {
                                    if (!z2) {
                                        sb.append(",");
                                    }
                                    sb.append("\"");
                                    sb.append(str5);
                                    sb.append("\"");
                                    sb.append(":");
                                    sb.append("\"");
                                    sb.append(JsonUtils.escapeString(createBundle2.getString(str5)));
                                    sb.append("\"");
                                    z2 = false;
                                }
                                str2 = "}";
                                break;
                            case 11:
                                Parcel createParcel = SafeParcelReader.createParcel(parcel, readHeader);
                                createParcel.setDataPosition(0);
                                m5584a(sb, field.zaco(), createParcel);
                                break;
                            default:
                                throw new IllegalStateException("Unknown field type out");
                        }
                    }
                    sb.append(str2);
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == validateObjectHeader) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(validateObjectHeader);
        throw new SafeParcelReader.ParseException(sb3.toString(), parcel);
    }

    /* renamed from: c */
    private final void m5582c(FastJsonResponse.Field<?, ?> field) {
        if (field.f6887f != -1) {
            Parcel parcel = this.f6914b;
            if (parcel != null) {
                int i = this.f6918f;
                if (i == 0) {
                    this.f6919g = SafeParcelWriter.beginObjectHeader(parcel);
                    this.f6918f = 1;
                } else if (i == 1) {
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("Unknown parse state in SafeParcelResponse.");
                    }
                    throw new IllegalStateException("Attempted to parse JSON with a SafeParcelResponse object that is already filled with data.");
                }
            } else {
                throw new IllegalStateException("Internal Parcel object is null.");
            }
        } else {
            throw new IllegalStateException("Field does not have a valid safe parcelable field id.");
        }
    }

    public static <T extends FastJsonResponse & SafeParcelable> SafeParcelResponse from(T t) {
        String canonicalName = t.getClass().getCanonicalName();
        zaj zajVar = new zaj(t.getClass());
        m5587a(zajVar, t);
        zajVar.zacq();
        zajVar.zacp();
        return new SafeParcelResponse(t, zajVar, canonicalName);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    protected final void mo5598a(FastJsonResponse.Field<?, ?> field, double d) {
        m5582c(field);
        SafeParcelWriter.writeDouble(this.f6914b, field.getSafeParcelableFieldId(), d);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    protected final void mo5597a(FastJsonResponse.Field<?, ?> field, float f) {
        m5582c(field);
        SafeParcelWriter.writeFloat(this.f6914b, field.getSafeParcelableFieldId(), f);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    protected final void mo5596a(FastJsonResponse.Field<?, ?> field, int i) {
        m5582c(field);
        SafeParcelWriter.writeInt(this.f6914b, field.getSafeParcelableFieldId(), i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    protected final void mo5595a(FastJsonResponse.Field<?, ?> field, long j) {
        m5582c(field);
        SafeParcelWriter.writeLong(this.f6914b, field.getSafeParcelableFieldId(), j);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    protected final void mo5594a(FastJsonResponse.Field<?, ?> field, String str) {
        m5582c(field);
        SafeParcelWriter.writeString(this.f6914b, field.getSafeParcelableFieldId(), str, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    protected final void mo5593a(FastJsonResponse.Field<?, ?> field, BigDecimal bigDecimal) {
        m5582c(field);
        SafeParcelWriter.writeBigDecimal(this.f6914b, field.getSafeParcelableFieldId(), bigDecimal, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    protected final void mo5592a(FastJsonResponse.Field<?, ?> field, BigInteger bigInteger) {
        m5582c(field);
        SafeParcelWriter.writeBigInteger(this.f6914b, field.getSafeParcelableFieldId(), bigInteger, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    protected final void mo5591a(FastJsonResponse.Field<?, ?> field, ArrayList<Integer> arrayList) {
        m5582c(field);
        int size = arrayList.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = arrayList.get(i).intValue();
        }
        SafeParcelWriter.writeIntArray(this.f6914b, field.getSafeParcelableFieldId(), iArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    protected final void mo5590a(FastJsonResponse.Field<?, ?> field, Map<String, String> map) {
        m5582c(field);
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            bundle.putString(str, map.get(str));
        }
        SafeParcelWriter.writeBundle(this.f6914b, field.getSafeParcelableFieldId(), bundle, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    protected final void mo5589a(FastJsonResponse.Field<?, ?> field, boolean z) {
        m5582c(field);
        SafeParcelWriter.writeBoolean(this.f6914b, field.getSafeParcelableFieldId(), z);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    protected final void mo5588a(FastJsonResponse.Field<?, ?> field, byte[] bArr) {
        m5582c(field);
        SafeParcelWriter.writeByteArray(this.f6914b, field.getSafeParcelableFieldId(), bArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public <T extends FastJsonResponse> void addConcreteTypeArrayInternal(FastJsonResponse.Field<?, ?> field, String str, ArrayList<T> arrayList) {
        m5582c(field);
        ArrayList arrayList2 = new ArrayList();
        arrayList.size();
        ArrayList<T> arrayList3 = arrayList;
        int size = arrayList3.size();
        int i = 0;
        while (i < size) {
            T t = arrayList3.get(i);
            i++;
            arrayList2.add(((SafeParcelResponse) t).m5599a());
        }
        SafeParcelWriter.writeParcelList(this.f6914b, field.getSafeParcelableFieldId(), arrayList2, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public <T extends FastJsonResponse> void addConcreteTypeInternal(FastJsonResponse.Field<?, ?> field, String str, T t) {
        m5582c(field);
        SafeParcelWriter.writeParcel(this.f6914b, field.getSafeParcelableFieldId(), ((SafeParcelResponse) t).m5599a(), true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: b */
    protected final void mo5583b(FastJsonResponse.Field<?, ?> field, ArrayList<BigInteger> arrayList) {
        m5582c(field);
        int size = arrayList.size();
        BigInteger[] bigIntegerArr = new BigInteger[size];
        for (int i = 0; i < size; i++) {
            bigIntegerArr[i] = arrayList.get(i);
        }
        SafeParcelWriter.writeBigIntegerArray(this.f6914b, field.getSafeParcelableFieldId(), bigIntegerArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: c */
    protected final void mo5581c(FastJsonResponse.Field<?, ?> field, ArrayList<Long> arrayList) {
        m5582c(field);
        int size = arrayList.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = arrayList.get(i).longValue();
        }
        SafeParcelWriter.writeLongArray(this.f6914b, field.getSafeParcelableFieldId(), jArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: d */
    protected final void mo5580d(FastJsonResponse.Field<?, ?> field, ArrayList<Float> arrayList) {
        m5582c(field);
        int size = arrayList.size();
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            fArr[i] = arrayList.get(i).floatValue();
        }
        SafeParcelWriter.writeFloatArray(this.f6914b, field.getSafeParcelableFieldId(), fArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: e */
    protected final void mo5579e(FastJsonResponse.Field<?, ?> field, ArrayList<Double> arrayList) {
        m5582c(field);
        int size = arrayList.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = arrayList.get(i).doubleValue();
        }
        SafeParcelWriter.writeDoubleArray(this.f6914b, field.getSafeParcelableFieldId(), dArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: f */
    protected final void mo5578f(FastJsonResponse.Field<?, ?> field, ArrayList<BigDecimal> arrayList) {
        m5582c(field);
        int size = arrayList.size();
        BigDecimal[] bigDecimalArr = new BigDecimal[size];
        for (int i = 0; i < size; i++) {
            bigDecimalArr[i] = arrayList.get(i);
        }
        SafeParcelWriter.writeBigDecimalArray(this.f6914b, field.getSafeParcelableFieldId(), bigDecimalArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: g */
    protected final void mo5577g(FastJsonResponse.Field<?, ?> field, ArrayList<Boolean> arrayList) {
        m5582c(field);
        int size = arrayList.size();
        boolean[] zArr = new boolean[size];
        for (int i = 0; i < size; i++) {
            zArr[i] = arrayList.get(i).booleanValue();
        }
        SafeParcelWriter.writeBooleanArray(this.f6914b, field.getSafeParcelableFieldId(), zArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Map<String, FastJsonResponse.Field<?, ?>> getFieldMappings() {
        zaj zajVar = this.f6916d;
        if (zajVar == null) {
            return null;
        }
        return zajVar.zai(this.f6917e);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public Object getValueObject(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: h */
    protected final void mo5576h(FastJsonResponse.Field<?, ?> field, ArrayList<String> arrayList) {
        m5582c(field);
        int size = arrayList.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = arrayList.get(i);
        }
        SafeParcelWriter.writeStringArray(this.f6914b, field.getSafeParcelableFieldId(), strArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public boolean isPrimitiveFieldSet(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public String toString() {
        Preconditions.checkNotNull(this.f6916d, "Cannot convert to JSON on client side.");
        Parcel a = m5599a();
        a.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        m5584a(sb, this.f6916d.zai(this.f6917e), a);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zaj zajVar;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6913a);
        SafeParcelWriter.writeParcel(parcel, 2, m5599a(), false);
        int i2 = this.f6915c;
        if (i2 == 0) {
            zajVar = null;
        } else if (i2 == 1 || i2 == 2) {
            zajVar = this.f6916d;
        } else {
            StringBuilder sb = new StringBuilder(34);
            sb.append("Invalid creation type: ");
            sb.append(i2);
            throw new IllegalStateException(sb.toString());
        }
        SafeParcelWriter.writeParcelable(parcel, 3, zajVar, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
