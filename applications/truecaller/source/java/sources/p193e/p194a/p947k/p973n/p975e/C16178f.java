package p193e.p194a.p947k.p973n.p975e;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.videocallerid.p186db.hiddencontacts.HiddenContact;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25662j;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.s;
import s1.w.d;
/* renamed from: e.a.k.n.e.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/e/f.class */
public final class C16178f implements AbstractC16177e {

    /* renamed from: a */
    public final AbstractC25677q f45645a;

    /* renamed from: b */
    public final AbstractC25663k<HiddenContact> f45646b;

    /* renamed from: c */
    public final AbstractC25662j<HiddenContact> f45647c;

    /* renamed from: e.a.k.n.e.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/f$a.class */
    public class C16179a extends AbstractC25663k<HiddenContact> {
        public C16179a(C16178f c16178f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, HiddenContact hiddenContact) {
            HiddenContact hiddenContact2 = hiddenContact;
            if (hiddenContact2.getContactNumber() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, hiddenContact2.getContactNumber());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR IGNORE INTO `hidden_contact` (`number`) VALUES (?)";
        }
    }

    /* renamed from: e.a.k.n.e.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/f$b.class */
    public class C16180b extends AbstractC25662j<HiddenContact> {
        public C16180b(C16178f c16178f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25662j
        public void bind(AbstractC26154f abstractC26154f, HiddenContact hiddenContact) {
            HiddenContact hiddenContact2 = hiddenContact;
            if (hiddenContact2.getContactNumber() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, hiddenContact2.getContactNumber());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM `hidden_contact` WHERE `number` = ?";
        }
    }

    /* renamed from: e.a.k.n.e.f$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/f$c.class */
    public class CallableC16181c implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ Set f45648a;

        public CallableC16181c(Set set) {
            C16178f.this = r4;
            this.f45648a = set;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C16178f.this.f45645a.beginTransaction();
            try {
                C16178f.this.f45646b.insert(this.f45648a);
                C16178f.this.f45645a.setTransactionSuccessful();
                return s.a;
            } finally {
                C16178f.this.f45645a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.k.n.e.f$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/f$d.class */
    public class CallableC16182d implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ HiddenContact f45650a;

        public CallableC16182d(HiddenContact hiddenContact) {
            C16178f.this = r4;
            this.f45650a = hiddenContact;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C16178f.this.f45645a.beginTransaction();
            try {
                C16178f.this.f45647c.m3081a(this.f45650a);
                C16178f.this.f45645a.setTransactionSuccessful();
                return s.a;
            } finally {
                C16178f.this.f45645a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.k.n.e.f$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/f$e.class */
    public class CallableC16183e implements Callable<HiddenContact> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f45652a;

        public CallableC16183e(C25686y c25686y) {
            C16178f.this = r4;
            this.f45652a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public HiddenContact call() throws Exception {
            HiddenContact hiddenContact = null;
            Cursor m3090b = C25653b.m3090b(C16178f.this.f45645a, this.f45652a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "number");
                if (m3090b.moveToFirst()) {
                    hiddenContact = new HiddenContact(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0));
                }
                m3090b.close();
                this.f45652a.m3057l();
                return hiddenContact;
            } catch (Throwable th) {
                m3090b.close();
                this.f45652a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.k.n.e.f$f */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/f$f.class */
    public class CallableC16184f implements Callable<HiddenContact> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f45654a;

        public CallableC16184f(C25686y c25686y) {
            C16178f.this = r4;
            this.f45654a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public HiddenContact call() throws Exception {
            HiddenContact hiddenContact = null;
            Cursor m3090b = C25653b.m3090b(C16178f.this.f45645a, this.f45654a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "number");
                if (m3090b.moveToFirst()) {
                    hiddenContact = new HiddenContact(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0));
                }
                m3090b.close();
                this.f45654a.m3057l();
                return hiddenContact;
            } catch (Throwable th) {
                m3090b.close();
                this.f45654a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.k.n.e.f$g */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/f$g.class */
    public class CallableC16185g implements Callable<List<HiddenContact>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f45656a;

        public CallableC16185g(C25686y c25686y) {
            C16178f.this = r4;
            this.f45656a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<HiddenContact> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C16178f.this.f45645a, this.f45656a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "number");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new HiddenContact(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f45656a.m3057l();
            }
        }
    }

    /* renamed from: e.a.k.n.e.f$h */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/f$h.class */
    public class CallableC16186h implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ List f45658a;

        public CallableC16186h(List list) {
            C16178f.this = r4;
            this.f45658a = list;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            StringBuilder m8728C = C22128a.m8728C("DELETE FROM hidden_contact WHERE number IN (");
            C25655d.m3086a(m8728C, this.f45658a.size());
            m8728C.append(")");
            AbstractC26154f compileStatement = C16178f.this.f45645a.compileStatement(m8728C.toString());
            int i = 1;
            for (String str : this.f45658a) {
                if (str == null) {
                    compileStatement.mo2648y0(i);
                } else {
                    compileStatement.mo2651f0(i, str);
                }
                i++;
            }
            C16178f.this.f45645a.beginTransaction();
            try {
                compileStatement.m2673A();
                C16178f.this.f45645a.setTransactionSuccessful();
                return s.a;
            } finally {
                C16178f.this.f45645a.endTransaction();
            }
        }
    }

    public C16178f(AbstractC25677q abstractC25677q) {
        this.f45645a = abstractC25677q;
        this.f45646b = new C16179a(this, abstractC25677q);
        this.f45647c = new C16180b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p947k.p973n.p975e.AbstractC16177e
    /* renamed from: a */
    public Object mo17760a(HiddenContact hiddenContact, d<? super s> dVar) {
        return C25650g.m3094c(this.f45645a, true, new CallableC16182d(hiddenContact), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p975e.AbstractC16177e
    /* renamed from: b */
    public Object mo17759b(List<String> list, d<? super s> dVar) {
        return C25650g.m3094c(this.f45645a, true, new CallableC16186h(list), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p975e.AbstractC16177e
    /* renamed from: c */
    public Object mo17758c(String str, d<? super HiddenContact> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM hidden_contact WHERE number = ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        return C25650g.m3095b(this.f45645a, false, new CancellationSignal(), new CallableC16184f(m3059j), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p975e.AbstractC16177e
    /* renamed from: d */
    public Object mo17757d(d<? super List<HiddenContact>> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM hidden_contact", 0);
        return C25650g.m3095b(this.f45645a, false, new CancellationSignal(), new CallableC16185g(m3059j), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p975e.AbstractC16177e
    /* renamed from: e */
    public Object mo17756e(List<String> list, d<? super HiddenContact> dVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM hidden_contact WHERE number IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(") LIMIT 1");
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
        return C25650g.m3095b(this.f45645a, false, new CancellationSignal(), new CallableC16183e(m3059j), dVar);
    }

    @Override // p193e.p194a.p947k.p973n.p975e.AbstractC16177e
    /* renamed from: f */
    public Object mo17755f(Set<HiddenContact> set, d<? super s> dVar) {
        return C25650g.m3094c(this.f45645a, true, new CallableC16181c(set), dVar);
    }
}
