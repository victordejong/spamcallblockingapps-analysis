package p131c.p161d.p282e.p352w.p353o;

import android.content.SharedPreferences;
import java.util.Date;
import p131c.p161d.p282e.p352w.AbstractC6071h;
import p131c.p161d.p282e.p352w.C6072i;
import p131c.p161d.p282e.p352w.p353o.C6102q;
/* renamed from: c.d.e.w.o.n */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/n.class */
public class C6098n {

    /* renamed from: d */
    public static final Date f19594d = new Date(-1);

    /* renamed from: e */
    public static final Date f19595e = new Date(-1);

    /* renamed from: a */
    public final SharedPreferences f19596a;

    /* renamed from: b */
    public final Object f19597b = new Object();

    /* renamed from: c */
    public final Object f19598c = new Object();

    /* renamed from: c.d.e.w.o.n$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/w/o/n$a.class */
    public static class C6099a {

        /* renamed from: a */
        public int f19599a;

        /* renamed from: b */
        public Date f19600b;

        public C6099a(int i, Date date) {
            this.f19599a = i;
            this.f19600b = date;
        }

        /* renamed from: a */
        public Date m22025a() {
            return this.f19600b;
        }

        /* renamed from: b */
        public int m22024b() {
            return this.f19599a;
        }
    }

    public C6098n(SharedPreferences sharedPreferences) {
        this.f19596a = sharedPreferences;
    }

    /* renamed from: a */
    public C6099a m22038a() {
        C6099a aVar;
        synchronized (this.f19598c) {
            aVar = new C6099a(this.f19596a.getInt("num_failed_fetches", 0), new Date(this.f19596a.getLong("backoff_end_time_in_millis", -1L)));
        }
        return aVar;
    }

    /* renamed from: a */
    public void m22037a(int i, Date date) {
        synchronized (this.f19598c) {
            this.f19596a.edit().putInt("num_failed_fetches", i).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    /* renamed from: a */
    public void m22036a(C6072i iVar) {
        synchronized (this.f19597b) {
            this.f19596a.edit().putLong("fetch_timeout_in_seconds", iVar.m22131a()).putLong("minimum_fetch_interval_in_seconds", iVar.m22130b()).commit();
        }
    }

    /* renamed from: a */
    public void m22035a(String str) {
        synchronized (this.f19597b) {
            this.f19596a.edit().putString("last_fetch_etag", str).apply();
        }
    }

    /* renamed from: a */
    public void m22034a(Date date) {
        synchronized (this.f19597b) {
            this.f19596a.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
        }
    }

    /* renamed from: b */
    public long m22033b() {
        return this.f19596a.getLong("fetch_timeout_in_seconds", 60L);
    }

    /* renamed from: c */
    public AbstractC6071h m22032c() {
        C6102q a;
        synchronized (this.f19597b) {
            long j = this.f19596a.getLong("last_fetch_time_in_millis", -1L);
            int i = this.f19596a.getInt("last_fetch_status", 0);
            C6072i.C6074b bVar = new C6072i.C6074b();
            bVar.m22128a(this.f19596a.getLong("fetch_timeout_in_seconds", 60L));
            bVar.m22126b(this.f19596a.getLong("minimum_fetch_interval_in_seconds", C6094k.f19571j));
            C6072i a2 = bVar.m22129a();
            C6102q.C6104b b = C6102q.m22016b();
            b.m22014a(i);
            b.m22013a(j);
            b.m22012a(a2);
            a = b.m22015a();
        }
        return a;
    }

    /* renamed from: d */
    public String m22031d() {
        return this.f19596a.getString("last_fetch_etag", null);
    }

    /* renamed from: e */
    public Date m22030e() {
        return new Date(this.f19596a.getLong("last_fetch_time_in_millis", -1L));
    }

    /* renamed from: f */
    public long m22029f() {
        return this.f19596a.getLong("minimum_fetch_interval_in_seconds", C6094k.f19571j);
    }

    /* renamed from: g */
    public void m22028g() {
        m22037a(0, f19595e);
    }

    /* renamed from: h */
    public void m22027h() {
        synchronized (this.f19597b) {
            this.f19596a.edit().putInt("last_fetch_status", 1).apply();
        }
    }

    /* renamed from: i */
    public void m22026i() {
        synchronized (this.f19597b) {
            this.f19596a.edit().putInt("last_fetch_status", 2).apply();
        }
    }
}
