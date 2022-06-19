package p193e.p194a.p673d0;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.concurrent.atomic.AtomicBoolean;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
/* renamed from: e.a.d0.a0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a0.class */
public final class C12472a0 {

    /* renamed from: b */
    public boolean f36433b;

    /* renamed from: d */
    public String f36435d;

    /* renamed from: e */
    public Long f36436e;

    /* renamed from: f */
    public Long f36437f;

    /* renamed from: g */
    public Boolean f36438g;

    /* renamed from: h */
    public final AbstractC19222c f36439h;

    /* renamed from: i */
    public final AbstractC19321u f36440i;

    /* renamed from: j */
    public final AbstractC19462a f36441j;

    /* renamed from: k */
    public final AbstractC19230g f36442k;

    /* renamed from: a */
    public AtomicBoolean f36432a = new AtomicBoolean(false);

    /* renamed from: c */
    public EnumC12473a f36434c = EnumC12473a.SEARCHING;

    /* renamed from: e.a.d0.a0$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a0$a.class */
    public enum EnumC12473a {
        SEARCHING(0, "Searching"),
        REQUEST_FAILED(1, "RequestFailed"),
        BACKEND_MISS(2, "BackendMiss"),
        CACHED_MISS(3, "CachedMiss"),
        PUSH(4, "Push"),
        CACHED_HIT(5, "CachedHit"),
        BACKEND_HIT(6, "BackendHit"),
        PB(7, "Phonebook");
        

        /* renamed from: a */
        public final int f36452a;

        /* renamed from: b */
        public final String f36453b;

        EnumC12473a(int i, String str) {
            this.f36452a = i;
            this.f36453b = str;
        }
    }

    public C12472a0(AbstractC19222c abstractC19222c, AbstractC19321u abstractC19321u, AbstractC19462a abstractC19462a, AbstractC19230g abstractC19230g) {
        l.e(abstractC19222c, "clock");
        l.e(abstractC19321u, "networkUtil");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19230g, "deviceInfoUtil");
        this.f36439h = abstractC19222c;
        this.f36440i = abstractC19321u;
        this.f36441j = abstractC19462a;
        this.f36442k = abstractC19230g;
    }

    /* renamed from: a */
    public final void m22953a(C12560v c12560v) {
        l.e(c12560v, "callState");
        this.f36432a.set(true);
        this.f36437f = Long.valueOf(c12560v.f36672d);
        this.f36438g = Boolean.valueOf(c12560v.f36673e);
        this.f36434c = EnumC12473a.SEARCHING;
        this.f36435d = null;
        this.f36436e = null;
    }
}
