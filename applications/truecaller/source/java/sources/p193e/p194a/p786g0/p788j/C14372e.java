package p193e.p194a.p786g0.p788j;

import android.os.Bundle;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.z.c.l;
/* renamed from: e.a.g0.j.e */
/* loaded from: classes14-dex2jar.jar:e/a/g0/j/e.class */
public final class C14372e implements AbstractC19549v {

    /* renamed from: a */
    public final long f41506a;

    /* renamed from: b */
    public final long f41507b;

    /* renamed from: c */
    public final long f41508c;

    /* renamed from: d */
    public final AbstractC12603e f41509d;

    /* renamed from: e */
    public final long f41510e;

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    public C14372e(AbstractC12603e abstractC12603e, long j) {
        l.e(abstractC12603e, "engine");
        this.f41509d = abstractC12603e;
        this.f41510e = j;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        this.f41506a = i > 0 ? TimeUnit.MILLISECONDS.toHours(j) : (char) 0;
        this.f41507b = i > 0 ? TimeUnit.MILLISECONDS.toMinutes(j) : (char) 0;
        this.f41508c = i > 0 ? TimeUnit.MILLISECONDS.toSeconds(j) : (char) 0;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putString("MobileServices", this.f41509d.f36735a);
        bundle.putLong("TotalHours", this.f41506a);
        bundle.putLong("TotalMinutes", this.f41507b);
        bundle.putLong("TotalSeconds", this.f41508c);
        return new AbstractC19580x.C19582b("RecaptchaSucceeded", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14372e)) {
                return false;
            }
            C14372e c14372e = (C14372e) obj;
            return l.a(this.f41509d, c14372e.f41509d) && this.f41510e == c14372e.f41510e;
        }
        return true;
    }

    public int hashCode() {
        AbstractC12603e abstractC12603e = this.f41509d;
        return ((abstractC12603e != null ? abstractC12603e.hashCode() : 0) * 31) + C4876d.m34274a(this.f41510e);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RecaptchaSucceededEvent(engine=");
        m8728C.append(this.f41509d);
        m8728C.append(", timeMillis=");
        return C22128a.m8693K2(m8728C, this.f41510e, ")");
    }
}
