package androidx.media2.session;

import android.os.Bundle;
import android.text.TextUtils;
import p012b.p035f.C0780a;
import p012b.p042i.p053o.C0943c;
import p012b.p130z.AbstractC1978c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommand.class */
public final class SessionCommand implements AbstractC1978c {

    /* renamed from: d */
    public static final C0780a<Integer, C0430a> f2215d = new C0780a<>();

    /* renamed from: e */
    public static final C0780a<Integer, C0430a> f2216e = new C0780a<>();

    /* renamed from: f */
    public static final C0780a<Integer, C0430a> f2217f = new C0780a<>();

    /* renamed from: g */
    public static final C0780a<Integer, C0430a> f2218g;

    /* renamed from: h */
    public static final C0780a<Integer, C0430a> f2219h;

    /* renamed from: i */
    public static final C0780a<Integer, C0430a> f2220i;

    /* renamed from: a */
    public int f2221a;

    /* renamed from: b */
    public String f2222b;

    /* renamed from: c */
    public Bundle f2223c;

    /* renamed from: androidx.media2.session.SessionCommand$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommand$a.class */
    public static final class C0430a {

        /* renamed from: a */
        public final int f2224a;

        /* renamed from: b */
        public final int f2225b;

        public C0430a(int i, int i2) {
            this.f2224a = i;
            this.f2225b = i2;
        }
    }

    static {
        f2215d.put(1, new C0430a(10000, 10004));
        f2216e.put(1, new C0430a(10005, 10018));
        f2217f.put(1, new C0430a(11000, 11002));
        C0780a<Integer, C0430a> aVar = new C0780a<>();
        f2218g = aVar;
        aVar.put(1, new C0430a(30000, 30001));
        C0780a<Integer, C0430a> aVar2 = new C0780a<>();
        f2219h = aVar2;
        aVar2.put(1, new C0430a(40000, 40010));
        C0780a<Integer, C0430a> aVar3 = new C0780a<>();
        f2220i = aVar3;
        aVar3.put(1, new C0430a(50000, 50006));
    }

    public SessionCommand() {
    }

    public SessionCommand(int i) {
        if (i != 0) {
            this.f2221a = i;
            this.f2222b = null;
            this.f2223c = null;
            return;
        }
        throw new IllegalArgumentException("commandCode shouldn't be COMMAND_CODE_CUSTOM");
    }

    /* renamed from: e */
    public int m37728e() {
        return this.f2221a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SessionCommand)) {
            return false;
        }
        SessionCommand sessionCommand = (SessionCommand) obj;
        boolean z = false;
        if (this.f2221a == sessionCommand.f2221a) {
            z = false;
            if (TextUtils.equals(this.f2222b, sessionCommand.f2222b)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return C0943c.m35447a(this.f2222b, Integer.valueOf(this.f2221a));
    }
}
