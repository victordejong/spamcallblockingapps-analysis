package p193e.p194a.p947k.p973n.p977g;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.s;
import s1.w.d;
import s1.z.b.l;
/* renamed from: e.a.k.n.g.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/g/d.class */
public final class C16212d implements AbstractC16211c {

    /* renamed from: a */
    public final AbstractC25677q f45720a;

    /* renamed from: b */
    public final AbstractC25663k<C16209a> f45721b;

    /* renamed from: c */
    public final AbstractC25646c0 f45722c;

    /* renamed from: e.a.k.n.g.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/d$a.class */
    public class CallableC16213a implements Callable<C16209a> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f45723a;

        public CallableC16213a(C25686y c25686y) {
            C16212d.this = r4;
            this.f45723a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public C16209a call() throws Exception {
            boolean z = false;
            C16209a c16209a = null;
            String str = null;
            Cursor m3090b = C25653b.m3090b(C16212d.this.f45720a, this.f45723a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "raw_video_path");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "video_url");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "size_bytes");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "duration_millis");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "mirror_playback");
                if (m3090b.moveToFirst()) {
                    String string = m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0);
                    String string2 = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                    if (!m3090b.isNull(m43237g03)) {
                        str = m3090b.getString(m43237g03);
                    }
                    long j = m3090b.getLong(m43237g04);
                    long j2 = m3090b.getLong(m43237g05);
                    if (m3090b.getInt(m43237g06) != 0) {
                        z = true;
                    }
                    c16209a = new C16209a(string, string2, str, j, j2, z);
                }
                m3090b.close();
                this.f45723a.m3057l();
                return c16209a;
            } catch (Throwable th) {
                m3090b.close();
                this.f45723a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.k.n.g.d$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/d$b.class */
    public class CallableC16214b implements Callable<Integer> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f45725a;

        public CallableC16214b(C25686y c25686y) {
            C16212d.this = r4;
            this.f45725a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C16212d.this.f45720a, this.f45725a, false, null);
            Integer num = null;
            try {
                if (m3090b.moveToFirst()) {
                    num = m3090b.isNull(0) ? null : Integer.valueOf(m3090b.getInt(0));
                }
                m3090b.close();
                this.f45725a.m3057l();
                return num;
            } catch (Throwable th) {
                m3090b.close();
                this.f45725a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.k.n.g.d$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/d$c.class */
    public class C16215c extends AbstractC25663k<C16209a> {
        public C16215c(C16212d c16212d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C16209a c16209a) {
            C16209a c16209a2 = c16209a;
            String str = c16209a2.f45709a;
            if (str == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, str);
            }
            String str2 = c16209a2.f45710b;
            if (str2 == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, str2);
            }
            String str3 = c16209a2.f45711c;
            if (str3 == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, str3);
            }
            abstractC26154f.mo2650l0(4, c16209a2.f45712d);
            abstractC26154f.mo2650l0(5, c16209a2.f45713e);
            abstractC26154f.mo2650l0(6, c16209a2.f45714f ? 1L : 0L);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `outgoing_video` (`_id`,`raw_video_path`,`video_url`,`size_bytes`,`duration_millis`,`mirror_playback`) VALUES (?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.k.n.g.d$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/d$d.class */
    public class C16216d extends AbstractC25646c0 {
        public C16216d(C16212d c16212d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM outgoing_video WHERE _id = ?";
        }
    }

    /* renamed from: e.a.k.n.g.d$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/d$e.class */
    public class C16217e extends AbstractC25646c0 {
        public C16217e(C16212d c16212d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM outgoing_video";
        }
    }

    /* renamed from: e.a.k.n.g.d$f */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/d$f.class */
    public class CallableC16218f implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ C16209a f45727a;

        public CallableC16218f(C16209a c16209a) {
            C16212d.this = r4;
            this.f45727a = c16209a;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C16212d.this.f45720a.beginTransaction();
            try {
                C16212d.this.f45721b.insert((AbstractC25663k<C16209a>) this.f45727a);
                C16212d.this.f45720a.setTransactionSuccessful();
                return s.a;
            } finally {
                C16212d.this.f45720a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.k.n.g.d$g */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/d$g.class */
    public class C16219g implements l<d<? super s>, Object> {

        /* renamed from: a */
        public final /* synthetic */ C16209a f45729a;

        public C16219g(C16209a c16209a) {
            C16212d.this = r4;
            this.f45729a = c16209a;
        }

        /* renamed from: d */
        public Object m17717d(Object obj) {
            return C19291g.m13551g(C16212d.this, this.f45729a, (d) obj);
        }
    }

    /* renamed from: e.a.k.n.g.d$h */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/d$h.class */
    public class CallableC16220h implements Callable<s> {
        public CallableC16220h() {
            C16212d.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C16212d.this.f45722c.acquire();
            C16212d.this.f45720a.beginTransaction();
            try {
                acquire.m2673A();
                C16212d.this.f45720a.setTransactionSuccessful();
                return s.a;
            } finally {
                C16212d.this.f45720a.endTransaction();
                C16212d.this.f45722c.release(acquire);
            }
        }
    }

    /* renamed from: e.a.k.n.g.d$i */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/d$i.class */
    public class CallableC16221i implements Callable<C16209a> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f45732a;

        public CallableC16221i(C25686y c25686y) {
            C16212d.this = r4;
            this.f45732a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public C16209a call() throws Exception {
            boolean z = false;
            C16209a c16209a = null;
            String str = null;
            Cursor m3090b = C25653b.m3090b(C16212d.this.f45720a, this.f45732a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "raw_video_path");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "video_url");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "size_bytes");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "duration_millis");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "mirror_playback");
                if (m3090b.moveToFirst()) {
                    String string = m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0);
                    String string2 = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                    if (!m3090b.isNull(m43237g03)) {
                        str = m3090b.getString(m43237g03);
                    }
                    long j = m3090b.getLong(m43237g04);
                    long j2 = m3090b.getLong(m43237g05);
                    if (m3090b.getInt(m43237g06) != 0) {
                        z = true;
                    }
                    c16209a = new C16209a(string, string2, str, j, j2, z);
                }
                m3090b.close();
                this.f45732a.m3057l();
                return c16209a;
            } catch (Throwable th) {
                m3090b.close();
                this.f45732a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.k.n.g.d$j */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/d$j.class */
    public class CallableC16222j implements Callable<List<C16209a>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f45734a;

        public CallableC16222j(C25686y c25686y) {
            C16212d.this = r4;
            this.f45734a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C16209a> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C16212d.this.f45720a, this.f45734a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "raw_video_path");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "video_url");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "size_bytes");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "duration_millis");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "mirror_playback");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new C16209a(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.getLong(m43237g04), m3090b.getLong(m43237g05), m3090b.getInt(m43237g06) != 0));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f45734a.m3057l();
            }
        }
    }

    public C16212d(AbstractC25677q abstractC25677q) {
        this.f45720a = abstractC25677q;
        this.f45721b = new C16215c(this, abstractC25677q);
        new C16216d(this, abstractC25677q);
        this.f45722c = new C16217e(this, abstractC25677q);
    }

    @Override // p193e.p194a.p947k.p973n.p977g.AbstractC16211c
    /* renamed from: a */
    public Object mo17724a(d<? super Integer> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT COUNT(*) FROM outgoing_video", 0);
        return C25650g.m3095b(this.f45720a, false, new CancellationSignal(), new CallableC16214b(m3059j), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p977g.AbstractC16211c
    /* renamed from: b */
    public Object mo17723b(C16209a c16209a, d<? super s> dVar) {
        return MediaSessionCompat.m43284M1(this.f45720a, new C16219g(c16209a), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p977g.AbstractC16211c
    /* renamed from: c */
    public Object mo17722c(d<? super List<C16209a>> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM outgoing_video", 0);
        return C25650g.m3095b(this.f45720a, false, new CancellationSignal(), new CallableC16222j(m3059j), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p977g.AbstractC16211c
    /* renamed from: d */
    public Object mo17721d(d<? super s> dVar) {
        return C25650g.m3094c(this.f45720a, true, new CallableC16220h(), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p977g.AbstractC16211c
    /* renamed from: e */
    public Object mo17720e(C16209a c16209a, d<? super s> dVar) {
        return C25650g.m3094c(this.f45720a, true, new CallableC16218f(c16209a), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p977g.AbstractC16211c
    /* renamed from: f */
    public Object mo17719f(d<? super C16209a> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM outgoing_video", 0);
        return C25650g.m3095b(this.f45720a, false, new CancellationSignal(), new CallableC16213a(m3059j), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p977g.AbstractC16211c
    /* renamed from: g */
    public Object mo17718g(String str, d<? super C16209a> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM outgoing_video WHERE video_url = ? ", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        return C25650g.m3095b(this.f45720a, false, new CancellationSignal(), new CallableC16221i(m3059j), dVar);
    }
}
