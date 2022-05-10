package p012b.p076s.p116d;

import android.content.ComponentName;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.media2.session.SessionToken;
import p012b.p042i.p053o.C0943c;
/* renamed from: b.s.d.m */
/* loaded from: classes-dex2jar.jar:b/s/d/m.class */
public final class C1801m implements SessionToken.AbstractC0432a {

    /* renamed from: a */
    public int f7237a;

    /* renamed from: b */
    public int f7238b;

    /* renamed from: c */
    public String f7239c;

    /* renamed from: d */
    public String f7240d;

    /* renamed from: e */
    public IBinder f7241e;

    /* renamed from: f */
    public ComponentName f7242f;

    /* renamed from: g */
    public Bundle f7243g;

    public boolean equals(Object obj) {
        if (!(obj instanceof C1801m)) {
            return false;
        }
        C1801m mVar = (C1801m) obj;
        boolean z = false;
        if (this.f7237a == mVar.f7237a) {
            z = false;
            if (TextUtils.equals(this.f7239c, mVar.f7239c)) {
                z = false;
                if (TextUtils.equals(this.f7240d, mVar.f7240d)) {
                    z = false;
                    if (this.f7238b == mVar.f7238b) {
                        z = false;
                        if (C0943c.m35448a(this.f7241e, mVar.f7241e)) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return C0943c.m35447a(Integer.valueOf(this.f7238b), Integer.valueOf(this.f7237a), this.f7239c, this.f7240d);
    }

    public String toString() {
        return "SessionToken {pkg=" + this.f7239c + " type=" + this.f7238b + " service=" + this.f7240d + " IMediaSession=" + this.f7241e + " extras=" + this.f7243g + "}";
    }
}
