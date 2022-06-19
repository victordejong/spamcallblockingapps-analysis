package p193e.p194a.p751f4.p762g;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.truecaller.TrueApp;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import e.m.f.a.o;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1114o5.C19017e1;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.AbstractC8616w;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p372b0.p430q.C8572b0;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p751f4.p764i.AbstractAsyncTaskC14042e;
import p193e.p194a.p751f4.p764i.AbstractC14045f;
import p193e.p194a.p751f4.p764i.AsyncTaskC14038b;
import p193e.p194a.p852i.p908w.C15248e;
import p193e.p194a.p937j4.p938a.AbstractC15558b;
import p193e.p194a.p937j4.p938a.AbstractC15561d;
import p193e.p194a.p997k3.AbstractC16452e;
import p193e.p194a.p997k3.p999k.C16489a;
import s1.z.b.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.f4.g.p */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/p.class */
public class C14022p implements AsyncTaskC14038b.AbstractC14039a<C14030t>, AbstractC14045f {

    /* renamed from: a */
    public final Context f40551a;

    /* renamed from: b */
    public final AbstractC8621z f40552b;

    /* renamed from: c */
    public final AbstractC8616w f40553c;

    /* renamed from: d */
    public final String f40554d;

    /* renamed from: e */
    public final UUID f40555e;

    /* renamed from: n */
    public AbstractC14024b f40564n;

    /* renamed from: p */
    public String f40566p;

    /* renamed from: q */
    public String f40567q;

    /* renamed from: r */
    public String f40568r;

    /* renamed from: s */
    public String f40569s;

    /* renamed from: t */
    public Double f40570t;

    /* renamed from: u */
    public Double f40571u;

    /* renamed from: v */
    public int f40572v;

    /* renamed from: w */
    public TimeUnit f40573w;

    /* renamed from: x */
    public final AbstractC14031u f40574x;

    /* renamed from: y */
    public final AbstractC16452e f40575y;

    /* renamed from: f */
    public List<CharSequence> f40556f = null;

    /* renamed from: g */
    public boolean f40557g = true;

    /* renamed from: h */
    public boolean f40558h = true;

    /* renamed from: i */
    public boolean f40559i = true;

    /* renamed from: j */
    public boolean f40560j = true;

    /* renamed from: k */
    public boolean f40561k = false;

    /* renamed from: l */
    public boolean f40562l = true;

    /* renamed from: m */
    public int f40563m = 5;

    /* renamed from: o */
    public int f40565o = 999;

    /* renamed from: e.a.f4.g.p$a */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/g/p$a.class */
    public static class C14023a implements AbstractC14025c {
        @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14025c
        /* renamed from: Aa */
        public void mo10096Aa(Throwable th, int i) {
        }

        @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14025c
        /* renamed from: p2 */
        public void mo10057p2(List<Contact> list, String str, String str2, String str3) {
        }
    }

    /* renamed from: e.a.f4.g.p$b */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/g/p$b.class */
    public interface AbstractC14024b {
        /* renamed from: a */
        C14030t mo10048a(C14030t c14030t, String str);
    }

    /* renamed from: e.a.f4.g.p$c */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/g/p$c.class */
    public interface AbstractC14025c {
        /* renamed from: Aa */
        void mo10096Aa(Throwable th, int i);

        /* renamed from: p2 */
        void mo10057p2(List<Contact> list, String str, String str2, String str3);
    }

    /* renamed from: e.a.f4.g.p$d */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/g/p$d.class */
    public static abstract class AbstractC14026d implements AbstractC14025c {
        @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14025c
        /* renamed from: Aa */
        public void mo10096Aa(Throwable th, int i) {
        }

        /* renamed from: a */
        public abstract void mo20841a(Contact contact);

        @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14025c
        /* renamed from: p2 */
        public void mo10057p2(List<Contact> list, String str, String str2, String str3) {
            mo20841a(list.get(0));
        }
    }

    public C14022p(Context context, UUID uuid, String str) {
        this.f40551a = context.getApplicationContext();
        this.f40554d = str;
        this.f40555e = uuid;
        AbstractC8412c m28549N = ((TrueApp) context.getApplicationContext()).m28549N();
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) context.getApplicationContext()).mo10154s();
        this.f40552b = m28549N.mo12296m();
        this.f40553c = m28549N.mo12334j0();
        m28549N.mo11648b();
        this.f40574x = mo10154s.mo12645M0();
        this.f40575y = mo10154s.mo12211s5();
    }

    @Override // p193e.p194a.p751f4.p764i.AbstractC14045f
    /* renamed from: a */
    public C14030t mo20821a() throws IOException {
        if (m20843e() instanceof AbstractC8371e.C8372a) {
            if (!this.f40574x.mo20833d()) {
                throw new AbstractAsyncTaskC14042e.C14043a(429);
            }
            return this.f40574x.mo20831f(m20846b().execute(), new l() { // from class: e.a.f4.g.a
                /* renamed from: d */
                public final Object m20874d(Object obj) {
                    C14022p c14022p = C14022p.this;
                    C14030t c14030t = (C14030t) obj;
                    Objects.requireNonNull(c14022p);
                    C16489a c16489a = c14030t.f40581b;
                    if (c16489a != null) {
                        Context context = c14022p.f40551a;
                        String str = c14022p.f40566p;
                        String str2 = c14022p.f40567q;
                        Contact m20837a = c14030t.m20837a();
                        int i = AsyncTaskC14027q.f40576f;
                        String str3 = null;
                        if (C19017e1.m14254b(str)) {
                            String str4 = null;
                            if (m20837a != null) {
                                Number m35493v = m20837a.m35493v();
                                str4 = null;
                                if (m35493v != null) {
                                    str4 = m35493v.m35479e();
                                }
                            }
                            str3 = str4;
                            if (str4 == null) {
                                str3 = C8572b0.m28373f(str, str2);
                            }
                        }
                        if (TextUtils.isEmpty(str3)) {
                            str3 = str;
                        }
                        C15248e.m19004a(context).m19008b(str3, c16489a);
                    }
                    C14022p.AbstractC14024b abstractC14024b = c14022p.f40564n;
                    C14030t c14030t2 = c14030t;
                    if (abstractC14024b != null) {
                        c14030t2 = abstractC14024b.mo10048a(c14030t, c14022p.f40566p);
                    }
                    return c14030t2;
                }
            });
        } else if (!this.f40574x.mo20834c()) {
            throw new AbstractAsyncTaskC14042e.C14043a(429);
        } else {
            return this.f40574x.mo20832e(m20846b().execute(), new l() { // from class: e.a.f4.g.a
                /* renamed from: d */
                public final Object m20874d(Object obj) {
                    C14022p c14022p = C14022p.this;
                    C14030t c14030t = (C14030t) obj;
                    Objects.requireNonNull(c14022p);
                    C16489a c16489a = c14030t.f40581b;
                    if (c16489a != null) {
                        Context context = c14022p.f40551a;
                        String str = c14022p.f40566p;
                        String str2 = c14022p.f40567q;
                        Contact m20837a = c14030t.m20837a();
                        int i = AsyncTaskC14027q.f40576f;
                        String str3 = null;
                        if (C19017e1.m14254b(str)) {
                            String str4 = null;
                            if (m20837a != null) {
                                Number m35493v = m20837a.m35493v();
                                str4 = null;
                                if (m35493v != null) {
                                    str4 = m35493v.m35479e();
                                }
                            }
                            str3 = str4;
                            if (str4 == null) {
                                str3 = C8572b0.m28373f(str, str2);
                            }
                        }
                        if (TextUtils.isEmpty(str3)) {
                            str3 = str;
                        }
                        C15248e.m19004a(context).m19008b(str3, c16489a);
                    }
                    C14022p.AbstractC14024b abstractC14024b = c14022p.f40564n;
                    C14030t c14030t2 = c14030t;
                    if (abstractC14024b != null) {
                        c14030t2 = abstractC14024b.mo10048a(c14030t, c14022p.f40566p);
                    }
                    return c14030t2;
                }
            });
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a5, code lost:
        if (r0 != 7) goto L32;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0229  */
    /* JADX WARN: Type inference failed for: r0v81, types: [e.a.f4.g.d] */
    /* JADX WARN: Type inference failed for: r0v85, types: [e.a.f4.g.m] */
    /* JADX WARN: Type inference failed for: r0v86, types: [e.a.f4.g.c] */
    /* JADX WARN: Type inference failed for: r0v87, types: [e.a.f4.g.k] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public x3.b<p193e.p194a.p751f4.p762g.C14030t> m20846b() {
        /*
            Method dump skipped, instructions count: 746
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p751f4.p762g.C14022p.m20846b():x3.b");
    }

    /* renamed from: c */
    public C14022p m20845c(String str) {
        if (TextUtils.isEmpty(str)) {
            m20844d();
            return this;
        }
        this.f40567q = h.z(str, Locale.ENGLISH);
        return this;
    }

    /* renamed from: d */
    public C14022p m20844d() {
        this.f40567q = h.z(AbstractApplicationC8442a.m28551L().m28543T(), Locale.ENGLISH);
        return this;
    }

    /* renamed from: e */
    public final AbstractC8371e m20843e() {
        AbstractC8371e.C8372a c8372a = AbstractC8371e.C8372a.f25732a;
        o mo28185f = this.f40552b.mo28185f(this.f40566p);
        if (mo28185f != null) {
            c8372a = this.f40553c.mo28192b(mo28185f);
        }
        StringBuilder m8728C = C22128a.m8728C("Target domain for ");
        m8728C.append(this.f40566p);
        m8728C.append(": ");
        m8728C.append(c8372a);
        m8728C.toString();
        return c8372a;
    }

    /* renamed from: f */
    public AsyncTask<?, ?, ?> m20842f(AbstractC15561d abstractC15561d, boolean z, boolean z2, AbstractC14025c abstractC14025c) {
        AsyncTaskC14027q asyncTaskC14027q = new AsyncTaskC14027q(this.f40551a, abstractC15561d, z, z2, this, this.f40566p, this.f40567q, abstractC14025c, this.f40564n, this);
        asyncTaskC14027q.executeOnExecutor(AbstractC15558b.f44018e, new Void[0]);
        return asyncTaskC14027q;
    }
}
