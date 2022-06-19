package p193e.p194a.p703e3.p710k.p711s;

import android.database.sqlite.SQLiteException;
import com.truecaller.api.services.callerid.p135v1.CallNotificationResponse;
import com.truecaller.data.entity.Number;
import com.truecaller.log.AssertionUtil;
import com.truecaller.network.util.calling_cache.CallCacheEntry;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19222c;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
import u3.k0;
/* renamed from: e.a.e3.k.s.d */
/* loaded from: classes6-dex2jar.jar:e/a/e3/k/s/d.class */
public final class C13469d implements AbstractC13468c {

    /* renamed from: a */
    public final AbstractC13465a f39086a;

    /* renamed from: b */
    public final AbstractC19222c f39087b;

    /* renamed from: e.a.e3.k.s.d$a */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/s/d$a.class */
    public static final class C13470a extends m implements l<AbstractC13465a, s> {

        /* renamed from: b */
        public final /* synthetic */ long f39088b;

        /* renamed from: c */
        public final /* synthetic */ C13469d f39089c;

        /* renamed from: d */
        public final /* synthetic */ Number f39090d;

        /* renamed from: e */
        public final /* synthetic */ String f39091e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13470a(long j, C13469d c13469d, Number number, String str) {
            super(1);
            this.f39088b = j;
            this.f39089c = c13469d;
            this.f39090d = number;
            this.f39091e = str;
        }

        /* renamed from: d */
        public Object m21780d(Object obj) {
            AbstractC13465a abstractC13465a = (AbstractC13465a) obj;
            s1.z.c.l.e(abstractC13465a, "$receiver");
            abstractC13465a.mo21787a(new CallCacheEntry(C13469d.m21782d(this.f39089c, this.f39090d), this.f39089c.f39087b.mo13819c(), this.f39091e, this.f39088b, null, 16, null));
            return s.a;
        }
    }

    /* renamed from: e.a.e3.k.s.d$b */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/s/d$b.class */
    public static final class C13471b extends m implements l<AbstractC13465a, s> {

        /* renamed from: c */
        public final /* synthetic */ Number f39093c;

        /* renamed from: d */
        public final /* synthetic */ CallNotificationResponse f39094d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13471b(Number number, CallNotificationResponse callNotificationResponse) {
            super(1);
            C13469d.this = r4;
            this.f39093c = number;
            this.f39094d = callNotificationResponse;
        }

        /* renamed from: d */
        public Object m21779d(Object obj) {
            AbstractC13465a abstractC13465a = (AbstractC13465a) obj;
            s1.z.c.l.e(abstractC13465a, "$receiver");
            abstractC13465a.mo21787a(new CallCacheEntry(C13469d.m21782d(C13469d.this, this.f39093c), C13469d.this.f39087b.mo13819c(), "initiated", this.f39094d.getInitTtl(), null, 16, null));
            abstractC13465a.mo21787a(new CallCacheEntry(C13469d.m21782d(C13469d.this, this.f39093c), C13469d.this.f39087b.mo13819c(), "ended", this.f39094d.getEndTtl(), null, 16, null));
            return s.a;
        }
    }

    /* renamed from: e.a.e3.k.s.d$c */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/s/d$c.class */
    public static final class C13472c extends m implements l<AbstractC13465a, Boolean> {

        /* renamed from: c */
        public final /* synthetic */ Number f39096c;

        /* renamed from: d */
        public final /* synthetic */ String f39097d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13472c(Number number, String str) {
            super(1);
            C13469d.this = r4;
            this.f39096c = number;
            this.f39097d = str;
        }

        /* renamed from: d */
        public Object m21778d(Object obj) {
            Boolean bool;
            AbstractC13465a abstractC13465a = (AbstractC13465a) obj;
            s1.z.c.l.e(abstractC13465a, "$receiver");
            CallCacheEntry mo21786b = abstractC13465a.mo21786b(C13469d.m21782d(C13469d.this, this.f39096c), this.f39097d);
            if (mo21786b != null) {
                bool = Boolean.valueOf(TimeUnit.SECONDS.toMillis(mo21786b.getMaxAgeSeconds()) + mo21786b.getTimestamp() > C13469d.this.f39087b.mo13819c());
            } else {
                bool = null;
            }
            return bool;
        }
    }

    @Inject
    public C13469d(AbstractC13465a abstractC13465a, AbstractC19222c abstractC19222c) {
        s1.z.c.l.e(abstractC13465a, "callCacheDao");
        s1.z.c.l.e(abstractC19222c, "clock");
        this.f39086a = abstractC13465a;
        this.f39087b = abstractC19222c;
    }

    /* renamed from: d */
    public static final String m21782d(C13469d c13469d, Number number) {
        Objects.requireNonNull(c13469d);
        String m35479e = number.m35479e();
        if (m35479e == null) {
            m35479e = number.m35473l();
        }
        if (m35479e == null) {
            m35479e = "";
        }
        return m35479e;
    }

    @Override // p193e.p194a.p703e3.p710k.p711s.AbstractC13468c
    /* renamed from: a */
    public boolean mo21785a(Number number, String str) {
        s1.z.c.l.e(number, "number");
        s1.z.c.l.e(str, "callState");
        Boolean bool = (Boolean) m21781e(this.f39086a, new C13472c(number, str));
        return bool != null ? bool.booleanValue() : false;
    }

    @Override // p193e.p194a.p703e3.p710k.p711s.AbstractC13468c
    /* renamed from: b */
    public void mo21784b(Number number, CallNotificationResponse callNotificationResponse) {
        s1.z.c.l.e(number, "number");
        s1.z.c.l.e(callNotificationResponse, "response");
        m21781e(this.f39086a, new C13471b(number, callNotificationResponse));
    }

    @Override // p193e.p194a.p703e3.p710k.p711s.AbstractC13468c
    /* renamed from: c */
    public void mo21783c(Number number, String str, k0 k0Var) {
        s1.z.c.l.e(number, "number");
        s1.z.c.l.e(str, "callState");
        s1.z.c.l.e(k0Var, "response");
        s sVar = (s) m21781e(this.f39086a, new C13470a(k0Var.b().c, this, number, str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public final <T> T m21781e(AbstractC13465a abstractC13465a, l<? super AbstractC13465a, ? extends T> lVar) {
        T t;
        try {
            t = lVar.d(abstractC13465a);
        } catch (SQLiteException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            t = null;
        }
        return t;
    }
}
