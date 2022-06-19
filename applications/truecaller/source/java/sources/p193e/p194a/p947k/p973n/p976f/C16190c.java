package p193e.p194a.p947k.p973n.p976f;

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
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import s1.s;
import s1.w.d;
/* renamed from: e.a.k.n.f.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/f/c.class */
public final class C16190c implements AbstractC16189b {

    /* renamed from: a */
    public final AbstractC25677q f45669a;

    /* renamed from: b */
    public final AbstractC25663k<C16188a> f45670b;

    /* renamed from: c */
    public final AbstractC25646c0 f45671c;

    /* renamed from: e.a.k.n.f.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/f/c$a.class */
    public class C16191a extends AbstractC25663k<C16188a> {
        public C16191a(C16190c c16190c, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C16188a c16188a) {
            C16188a c16188a2 = c16188a;
            String str = c16188a2.f45661a;
            if (str == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, str);
            }
            String str2 = c16188a2.f45662b;
            if (str2 == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, str2);
            }
            String str3 = c16188a2.f45663c;
            if (str3 == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, str3);
            }
            String str4 = c16188a2.f45664d;
            if (str4 == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, str4);
            }
            abstractC26154f.mo2650l0(5, c16188a2.f45665e);
            abstractC26154f.mo2650l0(6, c16188a2.f45666f);
            abstractC26154f.mo2650l0(7, c16188a2.f45667g);
            abstractC26154f.mo2650l0(8, c16188a2.f45668h ? 1L : 0L);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `incoming_video` (`phone_number`,`_id`,`video_url`,`call_id`,`received_at`,`size_bytes`,`duration_millis`,`mirror_playback`) VALUES (?,?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.k.n.f.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/f/c$b.class */
    public class C16192b extends AbstractC25646c0 {
        public C16192b(C16190c c16190c, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM incoming_video WHERE phone_number = ?";
        }
    }

    /* renamed from: e.a.k.n.f.c$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/f/c$c.class */
    public class CallableC16193c implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ C16188a f45672a;

        public CallableC16193c(C16188a c16188a) {
            C16190c.this = r4;
            this.f45672a = c16188a;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C16190c.this.f45669a.beginTransaction();
            try {
                C16190c.this.f45670b.insert((AbstractC25663k<C16188a>) this.f45672a);
                C16190c.this.f45669a.setTransactionSuccessful();
                return s.a;
            } finally {
                C16190c.this.f45669a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.k.n.f.c$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/f/c$d.class */
    public class CallableC16194d implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ String f45674a;

        public CallableC16194d(String str) {
            C16190c.this = r4;
            this.f45674a = str;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C16190c.this.f45671c.acquire();
            String str = this.f45674a;
            if (str == null) {
                acquire.mo2648y0(1);
            } else {
                acquire.mo2651f0(1, str);
            }
            C16190c.this.f45669a.beginTransaction();
            try {
                acquire.m2673A();
                C16190c.this.f45669a.setTransactionSuccessful();
                return s.a;
            } finally {
                C16190c.this.f45669a.endTransaction();
                C16190c.this.f45671c.release(acquire);
            }
        }
    }

    /* renamed from: e.a.k.n.f.c$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/f/c$e.class */
    public class CallableC16195e implements Callable<C16188a> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f45676a;

        public CallableC16195e(C25686y c25686y) {
            C16190c.this = r4;
            this.f45676a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public C16188a call() throws Exception {
            boolean z = false;
            C16188a c16188a = null;
            String str = null;
            Cursor m3090b = C25653b.m3090b(C16190c.this.f45669a, this.f45676a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "phone_number");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "video_url");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "call_id");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "received_at");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "size_bytes");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "duration_millis");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "mirror_playback");
                if (m3090b.moveToFirst()) {
                    String string = m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0);
                    String string2 = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                    String string3 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                    if (!m3090b.isNull(m43237g04)) {
                        str = m3090b.getString(m43237g04);
                    }
                    long j = m3090b.getLong(m43237g05);
                    long j2 = m3090b.getLong(m43237g06);
                    long j3 = m3090b.getLong(m43237g07);
                    if (m3090b.getInt(m43237g08) != 0) {
                        z = true;
                    }
                    c16188a = new C16188a(string, string2, string3, str, j, j2, j3, z);
                }
                m3090b.close();
                this.f45676a.m3057l();
                return c16188a;
            } catch (Throwable th) {
                m3090b.close();
                this.f45676a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.k.n.f.c$f */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/f/c$f.class */
    public class CallableC16196f implements Callable<C16188a> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f45678a;

        public CallableC16196f(C25686y c25686y) {
            C16190c.this = r4;
            this.f45678a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public C16188a call() throws Exception {
            boolean z = false;
            C16188a c16188a = null;
            String str = null;
            Cursor m3090b = C25653b.m3090b(C16190c.this.f45669a, this.f45678a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "phone_number");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "video_url");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "call_id");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "received_at");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "size_bytes");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "duration_millis");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "mirror_playback");
                if (m3090b.moveToFirst()) {
                    String string = m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0);
                    String string2 = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                    String string3 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                    if (!m3090b.isNull(m43237g04)) {
                        str = m3090b.getString(m43237g04);
                    }
                    long j = m3090b.getLong(m43237g05);
                    long j2 = m3090b.getLong(m43237g06);
                    long j3 = m3090b.getLong(m43237g07);
                    if (m3090b.getInt(m43237g08) != 0) {
                        z = true;
                    }
                    c16188a = new C16188a(string, string2, string3, str, j, j2, j3, z);
                }
                m3090b.close();
                this.f45678a.m3057l();
                return c16188a;
            } catch (Throwable th) {
                m3090b.close();
                this.f45678a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.k.n.f.c$g */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/f/c$g.class */
    public class CallableC16197g implements Callable<List<C16188a>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f45680a;

        public CallableC16197g(C25686y c25686y) {
            C16190c.this = r4;
            this.f45680a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C16188a> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C16190c.this.f45669a, this.f45680a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "phone_number");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "video_url");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "call_id");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "received_at");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "size_bytes");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "duration_millis");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "mirror_playback");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new C16188a(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.getLong(m43237g05), m3090b.getLong(m43237g06), m3090b.getLong(m43237g07), m3090b.getInt(m43237g08) != 0));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f45680a.m3057l();
            }
        }
    }

    /* renamed from: e.a.k.n.f.c$h */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/f/c$h.class */
    public class CallableC16198h implements Callable<List<C16188a>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f45682a;

        public CallableC16198h(C25686y c25686y) {
            C16190c.this = r4;
            this.f45682a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C16188a> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C16190c.this.f45669a, this.f45682a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "phone_number");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "video_url");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "call_id");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "received_at");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "size_bytes");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "duration_millis");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "mirror_playback");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new C16188a(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.getLong(m43237g05), m3090b.getLong(m43237g06), m3090b.getLong(m43237g07), m3090b.getInt(m43237g08) != 0));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f45682a.m3057l();
            }
        }
    }

    public C16190c(AbstractC25677q abstractC25677q) {
        this.f45669a = abstractC25677q;
        this.f45670b = new C16191a(this, abstractC25677q);
        this.f45671c = new C16192b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p947k.p973n.p976f.AbstractC16189b
    /* renamed from: a */
    public Object mo17754a(d<? super List<C16188a>> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM incoming_video", 0);
        return C25650g.m3095b(this.f45669a, false, new CancellationSignal(), new CallableC16198h(m3059j), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p976f.AbstractC16189b
    /* renamed from: b */
    public Object mo17753b(List<String> list, d<? super List<C16188a>> dVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM incoming_video WHERE phone_number IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2651f0(i, str);
            }
            i++;
        }
        return C25650g.m3095b(this.f45669a, false, new CancellationSignal(), new CallableC16197g(m3059j), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p976f.AbstractC16189b
    /* renamed from: c */
    public Object mo17752c(String str, d<? super C16188a> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM incoming_video WHERE phone_number = ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        return C25650g.m3095b(this.f45669a, false, new CancellationSignal(), new CallableC16195e(m3059j), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p976f.AbstractC16189b
    /* renamed from: d */
    public Object mo17751d(C16188a c16188a, d<? super s> dVar) {
        return C25650g.m3094c(this.f45669a, true, new CallableC16193c(c16188a), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p976f.AbstractC16189b
    /* renamed from: e */
    public Object mo17750e(String str, d<? super C16188a> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM incoming_video WHERE video_url = ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        return C25650g.m3095b(this.f45669a, false, new CancellationSignal(), new CallableC16196f(m3059j), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p976f.AbstractC16189b
    /* renamed from: f */
    public Object mo17749f(String str, d<? super s> dVar) {
        return C25650g.m3094c(this.f45669a, true, new CallableC16194d(str), dVar);
    }
}
