package p193e.p194a.p937j4.p939b.p941b;

import android.text.TextUtils;
import com.freshchat.consumer.sdk.beans.config.DefaultUserEventsConfig;
import com.truecaller.blocking.ActionSource;
import e.m.e.s;
import e.m.e.t;
import e.m.e.w;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p291a3.C7427c;
import p193e.p194a.p682e.C12864a2;
import w3.c.a.a.a.h;
/* renamed from: e.a.j4.b.b.e */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/b/e.class */
public class C15579e implements AbstractC15575a {

    /* renamed from: a */
    public long f44057a;

    /* renamed from: b */
    public String f44058b;

    /* renamed from: c */
    public String f44059c;

    /* renamed from: d */
    public String f44060d;

    /* renamed from: e */
    public boolean f44061e;

    /* renamed from: f */
    public boolean f44062f;

    /* renamed from: g */
    public ActionSource f44063g;

    /* renamed from: h */
    public String f44064h;

    public C15579e(long j, String str, String str2, String str3, boolean z, boolean z2, ActionSource actionSource, String str4) {
        this.f44063g = ActionSource.NONE;
        this.f44059c = str2;
        this.f44058b = str;
        this.f44057a = j;
        this.f44060d = str3;
        this.f44061e = z;
        this.f44062f = z2;
        this.f44063g = actionSource;
        this.f44064h = str4;
    }

    public C15579e(t tVar) {
        this.f44063g = ActionSource.NONE;
        this.f44058b = C12864a2.m22587G("n", tVar);
        this.f44057a = C12864a2.m22532z("ts", tVar);
        this.f44059c = C12864a2.m22587G("na", tVar);
        this.f44060d = C12864a2.m22587G("t", tVar);
        this.f44061e = C12864a2.m22539s(C22021b.f61237c, tVar);
        this.f44062f = C12864a2.m22539s("h", tVar);
        this.f44063g = C7427c.m29644a(C12864a2.m22587G("as", tVar));
        String m22587G = C12864a2.m22587G("cc", tVar);
        this.f44064h = h.j(m22587G) ? null : m22587G;
    }

    @Override // p193e.p194a.p937j4.p939b.p941b.AbstractC15575a
    /* renamed from: a */
    public t mo18610a() {
        s sVar = s.a;
        t tVar = new t();
        tVar.j("n", this.f44058b);
        tVar.i("ts", Long.valueOf(this.f44057a));
        tVar.j("na", this.f44059c);
        tVar.j("t", this.f44060d);
        Boolean valueOf = Boolean.valueOf(this.f44061e);
        tVar.a.put(C22021b.f61237c, valueOf == null ? sVar : new w(valueOf));
        Boolean valueOf2 = Boolean.valueOf(this.f44062f);
        if (valueOf2 != null) {
            sVar = new w(valueOf2);
        }
        tVar.a.put("h", sVar);
        tVar.j("as", this.f44063g.name());
        tVar.j("cc", this.f44064h);
        return tVar;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C15579e)) {
            return false;
        }
        C15579e c15579e = (C15579e) obj;
        if (Math.abs(this.f44057a - c15579e.f44057a) >= DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD || !TextUtils.equals(this.f44058b, c15579e.f44058b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f44057a;
        int i = (int) (j ^ (j >>> 32));
        String str = this.f44058b;
        return ((403 + i) * 31) + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PhoneNotification{mTimestamp=");
        m8728C.append(this.f44057a);
        m8728C.append(", mNumber='");
        C22128a.m8678P0(m8728C, this.f44058b, '\'', ", mName='");
        C22128a.m8678P0(m8728C, this.f44059c, '\'', ", mType='");
        C22128a.m8678P0(m8728C, this.f44060d, '\'', ", mBlocked=");
        m8728C.append(this.f44061e);
        m8728C.append('\'');
        m8728C.append(", mHangUp=");
        m8728C.append(this.f44062f);
        m8728C.append('\'');
        m8728C.append(", mActionSource=");
        m8728C.append(this.f44063g);
        m8728C.append('\'');
        m8728C.append(", mCallingCode=");
        return C22128a.m8630e(m8728C, this.f44064h, '}');
    }
}
