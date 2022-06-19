package p193e.p194a.p804h.p826e;

import android.net.Uri;
import android.telecom.PhoneAccountHandle;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.e.b */
/* loaded from: classes3-dex2jar.jar:e/a/h/e/b.class */
public final class C14654b {

    /* renamed from: a */
    public final String f42141a;

    /* renamed from: b */
    public final String f42142b;

    /* renamed from: c */
    public final Uri f42143c;

    /* renamed from: d */
    public final PhoneAccountHandle f42144d;

    /* renamed from: e */
    public final boolean f42145e;

    /* renamed from: f */
    public final String f42146f;

    /* renamed from: g */
    public final boolean f42147g;

    /* renamed from: h */
    public final String f42148h;

    /* renamed from: i */
    public final boolean f42149i;

    public C14654b(String str, String str2, Uri uri, PhoneAccountHandle phoneAccountHandle, boolean z, String str3, boolean z2, String str4, boolean z3) {
        C22128a.m8703I0(str, "action", str2, "analyticsContext", str4, "normalizedNumber");
        this.f42141a = str;
        this.f42142b = str2;
        this.f42143c = uri;
        this.f42144d = phoneAccountHandle;
        this.f42145e = z;
        this.f42146f = str3;
        this.f42147g = z2;
        this.f42148h = str4;
        this.f42149i = z3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14654b)) {
                return false;
            }
            C14654b c14654b = (C14654b) obj;
            return l.a(this.f42141a, c14654b.f42141a) && l.a(this.f42142b, c14654b.f42142b) && l.a(this.f42143c, c14654b.f42143c) && l.a(this.f42144d, c14654b.f42144d) && this.f42145e == c14654b.f42145e && l.a(this.f42146f, c14654b.f42146f) && this.f42147g == c14654b.f42147g && l.a(this.f42148h, c14654b.f42148h) && this.f42149i == c14654b.f42149i;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f42141a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f42142b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Uri uri = this.f42143c;
        int hashCode3 = uri != null ? uri.hashCode() : 0;
        PhoneAccountHandle phoneAccountHandle = this.f42144d;
        int hashCode4 = phoneAccountHandle != null ? phoneAccountHandle.hashCode() : 0;
        boolean z = this.f42145e;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        String str3 = this.f42146f;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        boolean z2 = this.f42147g;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        String str4 = this.f42148h;
        if (str4 != null) {
            i = str4.hashCode();
        }
        boolean z3 = this.f42149i;
        if (!z3) {
            i2 = z3 ? 1 : 0;
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i3) * 31) + hashCode5) * 31) + i4) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallIntent(action=");
        m8728C.append(this.f42141a);
        m8728C.append(", analyticsContext=");
        m8728C.append(this.f42142b);
        m8728C.append(", uri=");
        m8728C.append(this.f42143c);
        m8728C.append(", account=");
        m8728C.append(this.f42144d);
        m8728C.append(", isSipAccount=");
        m8728C.append(this.f42145e);
        m8728C.append(", simToken=");
        m8728C.append(this.f42146f);
        m8728C.append(", isVideoCall=");
        m8728C.append(this.f42147g);
        m8728C.append(", normalizedNumber=");
        m8728C.append(this.f42148h);
        m8728C.append(", fallbackToNativeApp=");
        return C22128a.m8590o(m8728C, this.f42149i, ")");
    }
}
