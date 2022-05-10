package com.inmobi.ads;

import android.util.Base64;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.utilities.p515a.C8394b;
/* renamed from: com.inmobi.ads.r */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/r.class */
public final class C8302r {

    /* renamed from: d */
    public static final String f32303d = "r";

    /* renamed from: e */
    public static byte[] f32304e;

    /* renamed from: f */
    public static byte[] f32305f;

    /* renamed from: a */
    public final byte[] f32306a;

    /* renamed from: b */
    public final byte[] f32307b;

    /* renamed from: c */
    public final byte[] f32308c = C8394b.m5711a(8);

    public C8302r(boolean z) {
        byte[] bArr = f32304e;
        f32304e = bArr == null ? C8394b.m5712a() : bArr;
        byte[] bArr2 = f32305f;
        byte[] a = bArr2 == null ? C8394b.m5711a(16) : bArr2;
        f32305f = a;
        if (z) {
            this.f32307b = f32304e;
            this.f32306a = a;
            return;
        }
        this.f32307b = C8394b.m5712a();
        this.f32306a = C8394b.m5711a(16);
    }

    /* renamed from: a */
    public final String m5964a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return C8384d.m5732a(C8394b.m5706a(Base64.decode(str, 0), this.f32307b, this.f32306a));
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public final String m5963a(String str, String str2) {
        try {
            byte[] a = C8394b.m5709a(this.f32307b);
            return new String(Base64.encode(C8394b.m5708a(C8394b.m5707a(C8394b.m5707a(a, C8394b.m5709a(this.f32308c)), C8394b.m5709a(this.f32306a)), str2, str), 8));
        } catch (Exception e) {
            return null;
        }
    }
}
