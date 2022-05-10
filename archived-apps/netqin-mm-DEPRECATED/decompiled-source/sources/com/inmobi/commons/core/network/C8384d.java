package com.inmobi.commons.core.network;

import com.android.volley.Request;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
/* renamed from: com.inmobi.commons.core.network.d */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/network/d.class */
public class C8384d {

    /* renamed from: e */
    public static final String f32622e = "d";

    /* renamed from: a */
    public byte[] f32623a;

    /* renamed from: b */
    public NetworkError f32624b;

    /* renamed from: c */
    public int f32625c;

    /* renamed from: d */
    public Map<String, List<String>> f32626d;

    /* renamed from: f */
    public String f32627f;

    /* renamed from: a */
    public static String m5732a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        try {
            return new String(bArr, Request.DEFAULT_PARAMS_ENCODING);
        } catch (UnsupportedEncodingException e) {
            return "";
        }
    }

    /* renamed from: a */
    public final boolean m5733a() {
        return this.f32624b != null;
    }

    /* renamed from: b */
    public final String m5731b() {
        if (this.f32627f == null) {
            this.f32627f = m5732a(this.f32623a);
        }
        return this.f32627f;
    }

    /* renamed from: b */
    public final void m5730b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            this.f32623a = new byte[0];
            return;
        }
        byte[] bArr2 = new byte[bArr.length];
        this.f32623a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m5729c() {
        /*
            r5 = this;
            r0 = 0
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            java.lang.String r0 = r0.f32627f     // Catch: Exception -> 0x001d
            if (r0 == 0) goto L_0x0033
            r0 = r5
            java.lang.String r0 = r0.f32627f     // Catch: Exception -> 0x001d
            int r0 = r0.length()     // Catch: Exception -> 0x001d
            r10 = r0
            r0 = r10
            long r0 = (long) r0
            r1 = 0
            long r0 = r0 + r1
            r8 = r0
            goto L_0x0033
        L_0x001d:
            r11 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "SDK encountered unexpected error in computing response size; "
            r1.<init>(r2)
            r1 = r11
            java.lang.String r1 = r1.getMessage()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r8 = r0
        L_0x0033:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.core.network.C8384d.m5729c():long");
    }
}
