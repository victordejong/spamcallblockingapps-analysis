package p012b.p076s.p116d;

import android.content.ComponentName;
import android.os.Bundle;
import android.support.p009v4.media.session.MediaSessionCompat;
import androidx.media2.session.SessionToken;
import androidx.versionedparcelable.CustomVersionedParcelable;
import p012b.p042i.p053o.C0943c;
import p012b.p130z.AbstractC1978c;
/* renamed from: b.s.d.n */
/* loaded from: classes-dex2jar.jar:b/s/d/n.class */
public final class C1802n extends CustomVersionedParcelable implements SessionToken.AbstractC0432a {

    /* renamed from: a */
    public MediaSessionCompat.Token f7244a;

    /* renamed from: b */
    public Bundle f7245b;

    /* renamed from: c */
    public int f7246c;

    /* renamed from: d */
    public int f7247d;

    /* renamed from: e */
    public ComponentName f7248e;

    /* renamed from: f */
    public String f7249f;

    /* renamed from: g */
    public Bundle f7250g;

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public void mo32076a(boolean z) {
        MediaSessionCompat.Token token = this.f7244a;
        if (token != null) {
            AbstractC1978c b = token.m39238b();
            this.f7244a.m39241a((AbstractC1978c) null);
            this.f7245b = this.f7244a.m39236d();
            this.f7244a.m39241a(b);
            return;
        }
        this.f7245b = null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C1802n)) {
            return false;
        }
        C1802n nVar = (C1802n) obj;
        int i = this.f7247d;
        if (i != nVar.f7247d) {
            return false;
        }
        if (i == 100) {
            return C0943c.m35448a(this.f7244a, nVar.f7244a);
        }
        if (i != 101) {
            return false;
        }
        return C0943c.m35448a(this.f7248e, nVar.f7248e);
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: f */
    public void mo32075f() {
        this.f7244a = MediaSessionCompat.Token.m39242a(this.f7245b);
        this.f7245b = null;
    }

    public int hashCode() {
        return C0943c.m35447a(Integer.valueOf(this.f7247d), this.f7248e, this.f7244a);
    }

    public String toString() {
        return "SessionToken {legacyToken=" + this.f7244a + "}";
    }
}
