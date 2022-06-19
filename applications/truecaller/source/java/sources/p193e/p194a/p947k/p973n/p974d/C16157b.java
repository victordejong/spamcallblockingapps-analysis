package p193e.p194a.p947k.p973n.p974d;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import s1.s;
import s1.w.d;
/* renamed from: e.a.k.n.d.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/d/b.class */
public final class C16157b implements AbstractC16156a {

    /* renamed from: a */
    public final AbstractC25677q f45600a;

    /* renamed from: b */
    public final AbstractC25663k<C16161c> f45601b;

    /* renamed from: e.a.k.n.d.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/d/b$a.class */
    public class C16158a extends AbstractC25663k<C16161c> {
        public C16158a(C16157b c16157b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C16161c c16161c) {
            C16161c c16161c2 = c16161c;
            String str = c16161c2.f45606a;
            if (str == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, str);
            }
            abstractC26154f.mo2650l0(2, c16161c2.f45607b);
            abstractC26154f.mo2650l0(3, c16161c2.f45608c);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `video_id_availability` (`number`,`enabled`,`version`) VALUES (?,?,?)";
        }
    }

    /* renamed from: e.a.k.n.d.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/d/b$b.class */
    public class CallableC16159b implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ List f45602a;

        public CallableC16159b(List list) {
            C16157b.this = r4;
            this.f45602a = list;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C16157b.this.f45600a.beginTransaction();
            try {
                C16157b.this.f45601b.insert(this.f45602a);
                C16157b.this.f45600a.setTransactionSuccessful();
                return s.a;
            } finally {
                C16157b.this.f45600a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.k.n.d.b$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/d/b$c.class */
    public class CallableC16160c implements Callable<C16161c> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f45604a;

        public CallableC16160c(C25686y c25686y) {
            C16157b.this = r4;
            this.f45604a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public C16161c call() throws Exception {
            C16161c c16161c = null;
            Cursor m3090b = C25653b.m3090b(C16157b.this.f45600a, this.f45604a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "number");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "enabled");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "version");
                if (m3090b.moveToFirst()) {
                    c16161c = new C16161c(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.getInt(m43237g02), m3090b.getInt(m43237g03));
                }
                m3090b.close();
                this.f45604a.m3057l();
                return c16161c;
            } catch (Throwable th) {
                m3090b.close();
                this.f45604a.m3057l();
                throw th;
            }
        }
    }

    public C16157b(AbstractC25677q abstractC25677q) {
        this.f45600a = abstractC25677q;
        this.f45601b = new C16158a(this, abstractC25677q);
    }

    @Override // p193e.p194a.p947k.p973n.p974d.AbstractC16156a
    /* renamed from: a */
    public Object mo17793a(String str, d<? super C16161c> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM video_id_availability WHERE number = ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        return C25650g.m3095b(this.f45600a, false, new CancellationSignal(), new CallableC16160c(m3059j), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p974d.AbstractC16156a
    /* renamed from: b */
    public Object mo17792b(List<C16161c> list, d<? super s> dVar) {
        return C25650g.m3094c(this.f45600a, true, new CallableC16159b(list), dVar);
    }
}
