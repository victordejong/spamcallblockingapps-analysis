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

    /* renamed from: a */
    public final int f23523a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final Parcel f23524b;

    /* renamed from: c */
    public final int f23525c = 2;
    @SafeParcelable.Field

    /* renamed from: d */
    public final zal f23526d;

    /* renamed from: e */
    public final String f23527e;

    /* renamed from: f */
    public int f23528f;

    /* renamed from: g */
    public int f23529g;

    @SafeParcelable.Constructor
    public SafeParcelResponse(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Parcel parcel, @SafeParcelable.Param(id = 3) zal zalVar) {
        this.f23523a = i;
        Preconditions.m17288a(parcel);
        this.f23524b = parcel;
        this.f23526d = zalVar;
        if (zalVar == null) {
            this.f23527e = null;
        } else {
            this.f23527e = zalVar.m17131i();
        }
        this.f23528f = 2;
    }

    /* renamed from: a */
    public static void m17137a(StringBuilder sb, int i, Object obj) {
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
                Preconditions.m17288a(obj);
                sb.append(JsonUtils.m17070a(obj.toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(Base64Utils.m17111a((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(Base64Utils.m17110b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                Preconditions.m17288a(obj);
                MapUtils.m17069a(sb, (HashMap) obj);
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
    private final void m17136a(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (field.f23514c) {
            ArrayList arrayList = (ArrayList) obj;
            sb.append("[");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (i != 0) {
                    sb.append(",");
                }
                m17137a(sb, field.f23513b, arrayList.get(i));
            }
            sb.append("]");
            return;
        }
        m17137a(sb, field.f23513b, obj);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public Map<String, FastJsonResponse.Field<?, ?>> mo17139a() {
        zal zalVar = this.f23526d;
        if (zalVar == null) {
            return null;
        }
        String str = this.f23527e;
        Preconditions.m17288a(str);
        return zalVar.m17133a(str);
    }

    /* renamed from: a */
    public final void m17135a(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().m17145f(), entry);
        }
        sb.append('{');
        int b = SafeParcelReader.m17263b(parcel);
        boolean z = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.m17269a(a));
            if (entry2 != null) {
                if (z) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field<?, ?> field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (field.m17144i()) {
                    switch (field.f23515d) {
                        case 0:
                            m17136a(sb, field, FastJsonResponse.m17149a(field, Integer.valueOf(SafeParcelReader.m17275A(parcel, a))));
                            break;
                        case 1:
                            m17136a(sb, field, FastJsonResponse.m17149a(field, SafeParcelReader.m17260c(parcel, a)));
                            break;
                        case 2:
                            m17136a(sb, field, FastJsonResponse.m17149a(field, Long.valueOf(SafeParcelReader.m17274B(parcel, a))));
                            break;
                        case 3:
                            m17136a(sb, field, FastJsonResponse.m17149a(field, Float.valueOf(SafeParcelReader.m17238x(parcel, a))));
                            break;
                        case 4:
                            m17136a(sb, field, FastJsonResponse.m17149a(field, Double.valueOf(SafeParcelReader.m17240v(parcel, a))));
                            break;
                        case 5:
                            m17136a(sb, field, FastJsonResponse.m17149a(field, SafeParcelReader.m17267a(parcel, a)));
                            break;
                        case 6:
                            m17136a(sb, field, FastJsonResponse.m17149a(field, Boolean.valueOf(SafeParcelReader.m17242t(parcel, a))));
                            break;
                        case 7:
                            m17136a(sb, field, FastJsonResponse.m17149a(field, SafeParcelReader.m17246p(parcel, a)));
                            break;
                        case 8:
                        case 9:
                            m17136a(sb, field, FastJsonResponse.m17149a(field, SafeParcelReader.m17255g(parcel, a)));
                            break;
                        case 10:
                            Bundle f = SafeParcelReader.m17256f(parcel, a);
                            HashMap hashMap = new HashMap();
                            for (String str2 : f.keySet()) {
                                String string = f.getString(str2);
                                Preconditions.m17288a(string);
                                hashMap.put(str2, string);
                            }
                            m17136a(sb, field, FastJsonResponse.m17149a(field, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            int i = field.f23515d;
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                } else if (field.f23516e) {
                    sb.append("[");
                    switch (field.f23515d) {
                        case 0:
                            ArrayUtils.m17118a(sb, SafeParcelReader.m17251k(parcel, a));
                            break;
                        case 1:
                            ArrayUtils.m17116a(sb, SafeParcelReader.m17258d(parcel, a));
                            break;
                        case 2:
                            ArrayUtils.m17117a(sb, SafeParcelReader.m17249m(parcel, a));
                            break;
                        case 3:
                            ArrayUtils.m17119a(sb, SafeParcelReader.m17252j(parcel, a));
                            break;
                        case 4:
                            ArrayUtils.m17120a(sb, SafeParcelReader.m17253i(parcel, a));
                            break;
                        case 5:
                            ArrayUtils.m17116a(sb, SafeParcelReader.m17262b(parcel, a));
                            break;
                        case 6:
                            ArrayUtils.m17114a(sb, SafeParcelReader.m17257e(parcel, a));
                            break;
                        case 7:
                            ArrayUtils.m17115a(sb, SafeParcelReader.m17245q(parcel, a));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] o = SafeParcelReader.m17247o(parcel, a);
                            int length = o.length;
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 > 0) {
                                    sb.append(",");
                                }
                                o[i2].setDataPosition(0);
                                m17135a(sb, field.m17143u(), o[i2]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.f23515d) {
                        case 0:
                            sb.append(SafeParcelReader.m17275A(parcel, a));
                            break;
                        case 1:
                            sb.append(SafeParcelReader.m17260c(parcel, a));
                            break;
                        case 2:
                            sb.append(SafeParcelReader.m17274B(parcel, a));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.m17238x(parcel, a));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.m17240v(parcel, a));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.m17267a(parcel, a));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.m17242t(parcel, a));
                            break;
                        case 7:
                            String p = SafeParcelReader.m17246p(parcel, a);
                            sb.append("\"");
                            sb.append(JsonUtils.m17070a(p));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] g = SafeParcelReader.m17255g(parcel, a);
                            sb.append("\"");
                            sb.append(Base64Utils.m17111a(g));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] g2 = SafeParcelReader.m17255g(parcel, a);
                            sb.append("\"");
                            sb.append(Base64Utils.m17110b(g2));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle f2 = SafeParcelReader.m17256f(parcel, a);
                            Set<String> keySet = f2.keySet();
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
                                sb.append(JsonUtils.m17070a(f2.getString(str3)));
                                sb.append("\"");
                                z2 = false;
                            }
                            sb.append("}");
                            break;
                        case 11:
                            Parcel n = SafeParcelReader.m17248n(parcel, a);
                            n.setDataPosition(0);
                            m17135a(sb, field.m17143u(), n);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == b) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(b);
        throw new SafeParcelReader.ParseException(sb3.toString(), parcel);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public boolean mo17138a(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
        if (r0 != 1) goto L_0x002c;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Parcel m17134b() {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.f23528f
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
            android.os.Parcel r1 = r1.f23524b
            int r1 = com.google.android.gms.common.internal.safeparcel.SafeParcelWriter.m17235a(r1)
            r0.f23529g = r1
        L_0x001c:
            r0 = r3
            android.os.Parcel r0 = r0.f23524b
            r1 = r3
            int r1 = r1.f23529g
            com.google.android.gms.common.internal.safeparcel.SafeParcelWriter.m17234a(r0, r1)
            r0 = r3
            r1 = 2
            r0.f23528f = r1
        L_0x002c:
            r0 = r3
            android.os.Parcel r0 = r0.f23524b
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.SafeParcelResponse.m17134b():android.os.Parcel");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public String toString() {
        Preconditions.m17287a(this.f23526d, "Cannot convert to JSON on client side.");
        Parcel b = m17134b();
        b.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        zal zalVar = this.f23526d;
        String str = this.f23527e;
        Preconditions.m17288a(str);
        Map<String, FastJsonResponse.Field<?, ?>> a = zalVar.m17133a(str);
        Preconditions.m17288a(a);
        m17135a(sb, a, b);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zal zalVar;
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23523a);
        SafeParcelWriter.m17227a(parcel, 2, m17134b(), false);
        int i2 = this.f23525c;
        if (i2 == 0) {
            zalVar = null;
        } else if (i2 == 1) {
            zalVar = this.f23526d;
        } else if (i2 == 2) {
            zalVar = this.f23526d;
        } else {
            int i3 = this.f23525c;
            StringBuilder sb = new StringBuilder(34);
            sb.append("Invalid creation type: ");
            sb.append(i3);
            throw new IllegalStateException(sb.toString());
        }
        SafeParcelWriter.m17226a(parcel, 3, (Parcelable) zalVar, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
