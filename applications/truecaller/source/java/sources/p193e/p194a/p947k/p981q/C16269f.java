package p193e.p194a.p947k.p981q;

import android.content.Context;
import android.net.ConnectivityManager;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.scheduler.Requirements;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1618j1.C24485f;
import p193e.p1577m.p1578a.p1596c.p1618j1.C24486g;
import p193e.p1577m.p1578a.p1596c.p1618j1.C24492h;
import p193e.p1577m.p1578a.p1596c.p1619k1.C24504b;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import p193e.p194a.p947k.p981q.AbstractC16262b;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import s1.z.c.h0;
import s1.z.c.l;
/* renamed from: e.a.k.q.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/q/f.class */
public final class C16269f implements AbstractC16268e {

    /* renamed from: a */
    public final Map<String, a1<AbstractC16262b>> f45832a = new LinkedHashMap();

    /* renamed from: b */
    public final AbstractC16044q f45833b;

    /* renamed from: e.a.k.q.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/q/f$a.class */
    public static final class C16270a implements C24486g.AbstractC24490d {

        /* renamed from: b */
        public final /* synthetic */ C16261a f45835b;

        public C16270a(C16261a c16261a, DownloadRequest downloadRequest) {
            C16269f.this = r4;
            this.f45835b = c16261a;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1618j1.C24486g.AbstractC24490d
        /* renamed from: a */
        public /* synthetic */ void mo5013a(C24486g c24486g, boolean z) {
            C24492h.m5005a(this, c24486g, z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1618j1.C24486g.AbstractC24490d
        /* renamed from: b */
        public /* synthetic */ void mo5012b(C24486g c24486g, Requirements requirements, int i) {
            C24492h.m5002d(this, c24486g, requirements, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1618j1.C24486g.AbstractC24490d
        /* renamed from: c */
        public /* synthetic */ void mo5011c(C24486g c24486g) {
            C24492h.m5004b(this, c24486g);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1618j1.C24486g.AbstractC24490d
        /* renamed from: d */
        public /* synthetic */ void mo5010d(C24486g c24486g) {
            C24492h.m5003c(this, c24486g);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
            if (r0 != 4) goto L20;
         */
        @Override // p193e.p1577m.p1578a.p1596c.p1618j1.C24486g.AbstractC24490d
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo5009e(p193e.p1577m.p1578a.p1596c.p1618j1.C24486g r7, p193e.p1577m.p1578a.p1596c.p1618j1.C24485f r8) {
            /*
                Method dump skipped, instructions count: 275
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p981q.C16269f.C16270a.mo5009e(e.m.a.c.j1.g, e.m.a.c.j1.f):void");
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1618j1.C24486g.AbstractC24490d
        /* renamed from: f */
        public /* synthetic */ void mo5008f(C24486g c24486g, boolean z) {
            C24492h.m5001e(this, c24486g, z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1618j1.C24486g.AbstractC24490d
        /* renamed from: g */
        public void mo5007g(C24486g c24486g, C24485f c24485f) {
            l.e(c24486g, "downloadManager");
            l.e(c24485f, "download");
            C16269f.this.mo17654b(this.f45835b.f45813b);
        }
    }

    @Inject
    public C16269f(AbstractC16044q abstractC16044q) {
        l.e(abstractC16044q, "exoPlayerUtil");
        this.f45833b = abstractC16044q;
    }

    @Override // p193e.p194a.p947k.p981q.AbstractC16268e
    /* renamed from: a */
    public i1<AbstractC16262b> mo17655a(C16261a c16261a) {
        l.e(c16261a, "downloadRequestData");
        AbstractC16044q abstractC16044q = this.f45833b;
        String str = c16261a.f45812a;
        String str2 = c16261a.f45813b;
        if (str2 == null) {
            str2 = "";
        }
        DownloadRequest mo17959d = abstractC16044q.mo17959d(str, str2);
        Map<String, a1<AbstractC16262b>> map = this.f45832a;
        String str3 = mo17959d.f4989a;
        l.d(str3, "downloadRequest.id");
        String str4 = mo17959d.f4989a;
        l.d(str4, "downloadRequest.id");
        i1<AbstractC16262b> m17653c = m17653c(map, str3, new AbstractC16262b.C16265c(str4), true);
        C24486g mo17954i = this.f45833b.mo17954i();
        mo17954i.f68367d.add(new C16270a(c16261a, mo17959d));
        C26232y.m2310r(true);
        if (mo17954i.f68371h != 3) {
            mo17954i.f68371h = 3;
            mo17954i.f68368e++;
            mo17954i.f68365b.obtainMessage(4, 3, 0).sendToTarget();
        }
        C26232y.m2310r(true);
        if (mo17954i.f68372i != 0) {
            mo17954i.f68372i = 0;
            mo17954i.f68368e++;
            mo17954i.f68365b.obtainMessage(5, 0, 0).sendToTarget();
        }
        Requirements requirements = new Requirements(0);
        if (!requirements.equals(mo17954i.f68376m.f68425c)) {
            C24504b c24504b = mo17954i.f68376m;
            Context context = c24504b.f68423a;
            C24504b.C24506b c24506b = c24504b.f68427e;
            Objects.requireNonNull(c24506b);
            context.unregisterReceiver(c24506b);
            c24504b.f68427e = null;
            if (C24773d0.f69427a >= 24 && c24504b.f68429g != null) {
                ConnectivityManager connectivityManager = (ConnectivityManager) c24504b.f68423a.getSystemService("connectivity");
                C24504b.C24508d c24508d = c24504b.f68429g;
                Objects.requireNonNull(c24508d);
                connectivityManager.unregisterNetworkCallback(c24508d);
                c24504b.f68429g = null;
            }
            C24504b c24504b2 = new C24504b(mo17954i.f68364a, mo17954i.f68366c, requirements);
            mo17954i.f68376m = c24504b2;
            mo17954i.m5022b(mo17954i.f68376m, c24504b2.m4997b());
        }
        mo17954i.f68368e++;
        mo17954i.f68365b.obtainMessage(6, 0, 0, mo17959d).sendToTarget();
        if (mo17954i.f68370g) {
            mo17954i.f68370g = false;
            mo17954i.f68368e++;
            mo17954i.f68365b.obtainMessage(1, 0, 0).sendToTarget();
            boolean m5021c = mo17954i.m5021c();
            Iterator<C24486g.AbstractC24490d> it = mo17954i.f68367d.iterator();
            while (it.hasNext()) {
                it.next().mo5013a(mo17954i, false);
            }
            if (m5021c) {
                mo17954i.m5023a();
            }
        }
        return m17653c;
    }

    @Override // p193e.p194a.p947k.p981q.AbstractC16268e
    /* renamed from: b */
    public void mo17654b(String str) {
        synchronized (this) {
            Map<String, a1<AbstractC16262b>> map = this.f45832a;
            if (map == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>");
            }
            h0.b(map).remove(str);
        }
    }

    /* renamed from: c */
    public final i1<AbstractC16262b> m17653c(Map<String, a1<AbstractC16262b>> map, String str, AbstractC16262b abstractC16262b, boolean z) {
        a1<AbstractC16262b> a1Var;
        a1<AbstractC16262b> a1Var2 = map.get(str);
        if (a1Var2 != null) {
            a1Var2.g(abstractC16262b);
            a1<AbstractC16262b> a1Var3 = map.get(str);
            if (a1Var3 != null) {
                a1Var = a1Var3;
                return a1Var;
            }
        }
        if (!z) {
            return null;
        }
        a1<AbstractC16262b> a = k1.a(new AbstractC16262b.C16265c(str));
        map.put(str, a);
        a1Var = a;
        return a1Var;
    }
}
