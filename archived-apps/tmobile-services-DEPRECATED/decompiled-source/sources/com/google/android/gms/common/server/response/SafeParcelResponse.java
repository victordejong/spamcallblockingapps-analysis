package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
@VisibleForTesting
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/SafeParcelResponse.class */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    @KeepForSdk
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new zap();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7602f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final Parcel f7603g;

    /* renamed from: h */
    private final int f7604h = 2;
    @SafeParcelable.Field

    /* renamed from: i */
    private final zaj f7605i;

    /* renamed from: j */
    private final String f7606j;

    /* renamed from: k */
    private int f7607k;

    /* renamed from: l */
    private int f7608l;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public SafeParcelResponse(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Parcel parcel, @SafeParcelable.Param(id = 3) zaj zajVar) {
        this.f7602f = i;
        Preconditions.m14523k(parcel);
        this.f7603g = parcel;
        this.f7605i = zajVar;
        if (zajVar == null) {
            this.f7606j = null;
        } else {
            this.f7606j = zajVar.m14375I();
        }
        this.f7607k = 2;
    }

    /* renamed from: e */
    private static void m14380e(StringBuilder sb, int i, Object obj) {
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
                sb.append(JsonUtils.m14324a(obj.toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(Base64Utils.m14346a((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(Base64Utils.m14345b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                MapUtils.m14323a(sb, (HashMap) obj);
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

    /* renamed from: f */
    private final void m14379f(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().m14391B(), entry);
        }
        sb.append('{');
        int J = SafeParcelReader.m14492J(parcel);
        boolean z = false;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.m14469u(B));
            if (entry2 != null) {
                if (z) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field<?, ?> field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (field.m14387d0()) {
                    switch (field.f7594i) {
                        case 0:
                            m14378g(sb, field, FastJsonResponse.m14392d(field, Integer.valueOf(SafeParcelReader.m14498D(parcel, B))));
                            break;
                        case 1:
                            m14378g(sb, field, FastJsonResponse.m14392d(field, SafeParcelReader.m14487c(parcel, B)));
                            break;
                        case 2:
                            m14378g(sb, field, FastJsonResponse.m14392d(field, Long.valueOf(SafeParcelReader.m14496F(parcel, B))));
                            break;
                        case 3:
                            m14378g(sb, field, FastJsonResponse.m14392d(field, Float.valueOf(SafeParcelReader.m14464z(parcel, B))));
                            break;
                        case 4:
                            m14378g(sb, field, FastJsonResponse.m14392d(field, Double.valueOf(SafeParcelReader.m14466x(parcel, B))));
                            break;
                        case 5:
                            m14378g(sb, field, FastJsonResponse.m14392d(field, SafeParcelReader.m14489a(parcel, B)));
                            break;
                        case 6:
                            m14378g(sb, field, FastJsonResponse.m14392d(field, Boolean.valueOf(SafeParcelReader.m14468v(parcel, B))));
                            break;
                        case 7:
                            m14378g(sb, field, FastJsonResponse.m14392d(field, SafeParcelReader.m14475o(parcel, B)));
                            break;
                        case 8:
                        case 9:
                            m14378g(sb, field, FastJsonResponse.m14392d(field, SafeParcelReader.m14483g(parcel, B)));
                            break;
                        case 10:
                            Bundle f = SafeParcelReader.m14484f(parcel, B);
                            HashMap hashMap = new HashMap();
                            for (String str2 : f.keySet()) {
                                hashMap.put(str2, f.getString(str2));
                            }
                            m14378g(sb, field, FastJsonResponse.m14392d(field, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            int i = field.f7594i;
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                } else if (field.f7595j) {
                    sb.append("[");
                    switch (field.f7594i) {
                        case 0:
                            ArrayUtils.m14351e(sb, SafeParcelReader.m14480j(parcel, B));
                            break;
                        case 1:
                            ArrayUtils.m14349g(sb, SafeParcelReader.m14486d(parcel, B));
                            break;
                        case 2:
                            ArrayUtils.m14350f(sb, SafeParcelReader.m14479k(parcel, B));
                            break;
                        case 3:
                            ArrayUtils.m14352d(sb, SafeParcelReader.m14481i(parcel, B));
                            break;
                        case 4:
                            ArrayUtils.m14353c(sb, SafeParcelReader.m14482h(parcel, B));
                            break;
                        case 5:
                            ArrayUtils.m14349g(sb, SafeParcelReader.m14488b(parcel, B));
                            break;
                        case 6:
                            ArrayUtils.m14348h(sb, SafeParcelReader.m14485e(parcel, B));
                            break;
                        case 7:
                            ArrayUtils.m14347i(sb, SafeParcelReader.m14474p(parcel, B));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] m = SafeParcelReader.m14477m(parcel, B);
                            int length = m.length;
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 > 0) {
                                    sb.append(",");
                                }
                                m[i2].setDataPosition(0);
                                m14379f(sb, field.m14384u0(), m[i2]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.f7594i) {
                        case 0:
                            sb.append(SafeParcelReader.m14498D(parcel, B));
                            break;
                        case 1:
                            sb.append(SafeParcelReader.m14487c(parcel, B));
                            break;
                        case 2:
                            sb.append(SafeParcelReader.m14496F(parcel, B));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.m14464z(parcel, B));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.m14466x(parcel, B));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.m14489a(parcel, B));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.m14468v(parcel, B));
                            break;
                        case 7:
                            String o = SafeParcelReader.m14475o(parcel, B);
                            sb.append("\"");
                            sb.append(JsonUtils.m14324a(o));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] g = SafeParcelReader.m14483g(parcel, B);
                            sb.append("\"");
                            sb.append(Base64Utils.m14346a(g));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] g2 = SafeParcelReader.m14483g(parcel, B);
                            sb.append("\"");
                            sb.append(Base64Utils.m14345b(g2));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle f2 = SafeParcelReader.m14484f(parcel, B);
                            Set<String> keySet = f2.keySet();
                            keySet.size();
                            sb.append("{");
                            boolean z2 = true;
                            for (String str3 : keySet) {
                                if (!z2) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(str3);
                                sb.append("\"");
                                sb.append(":");
                                sb.append("\"");
                                sb.append(JsonUtils.m14324a(f2.getString(str3)));
                                sb.append("\"");
                                z2 = false;
                            }
                            sb.append("}");
                            break;
                        case 11:
                            Parcel l = SafeParcelReader.m14478l(parcel, B);
                            l.setDataPosition(0);
                            m14379f(sb, field.m14384u0(), l);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == J) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(J);
        throw new SafeParcelReader.ParseException(sb3.toString(), parcel);
    }

    /* renamed from: g */
    private final void m14378g(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (field.f7593h) {
            ArrayList arrayList = (ArrayList) obj;
            sb.append("[");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (i != 0) {
                    sb.append(",");
                }
                m14380e(sb, field.f7592g, arrayList.get(i));
            }
            sb.append("]");
            return;
        }
        m14380e(sb, field.f7592g, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
        if (r0 != 1) goto L_0x002c;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.os.Parcel m14377h() {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.f7607k
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
            android.os.Parcel r1 = r1.f7603g
            int r1 = com.google.android.gms.common.internal.safeparcel.SafeParcelWriter.m14463a(r1)
            r0.f7608l = r1
        L_0x001c:
            r0 = r3
            android.os.Parcel r0 = r0.f7603g
            r1 = r3
            int r1 = r1.f7608l
            com.google.android.gms.common.internal.safeparcel.SafeParcelWriter.m14462b(r0, r1)
            r0 = r3
            r1 = 2
            r0.f7607k = r1
        L_0x002c:
            r0 = r3
            android.os.Parcel r0 = r0.f7603g
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.SafeParcelResponse.m14377h():android.os.Parcel");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public Map<String, FastJsonResponse.Field<?, ?>> mo14382a() {
        zaj zajVar = this.f7605i;
        if (zajVar == null) {
            return null;
        }
        return zajVar.m14374W(this.f7606j);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: c */
    public boolean mo14381c(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public String toString() {
        Preconditions.m14522l(this.f7605i, "Cannot convert to JSON on client side.");
        Parcel h = m14377h();
        h.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        m14379f(sb, this.f7605i.m14374W(this.f7606j), h);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zaj zajVar;
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7602f);
        SafeParcelWriter.m14449o(parcel, 2, m14377h(), false);
        int i2 = this.f7604h;
        if (i2 == 0) {
            zajVar = null;
        } else if (i2 == 1) {
            zajVar = this.f7605i;
        } else if (i2 == 2) {
            zajVar = this.f7605i;
        } else {
            int i3 = this.f7604h;
            StringBuilder sb = new StringBuilder(34);
            sb.append("Invalid creation type: ");
            sb.append(i3);
            throw new IllegalStateException(sb.toString());
        }
        SafeParcelWriter.m14448p(parcel, 3, zajVar, i, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
