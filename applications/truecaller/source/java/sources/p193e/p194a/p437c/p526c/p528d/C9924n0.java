package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.insights.models.states.InsightState;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p531c0.C10020g;
import s1.s;
import s1.w.d;
/* renamed from: e.a.c.c.d.n0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/n0.class */
public final class C9924n0 implements AbstractC9921m0 {

    /* renamed from: a */
    public final AbstractC25677q f29663a;

    /* renamed from: b */
    public final AbstractC25663k<InsightState> f29664b;

    /* renamed from: c */
    public final C10020g f29665c = new C10020g();

    /* renamed from: e.a.c.c.d.n0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/n0$a.class */
    public class C9925a extends AbstractC25663k<InsightState> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9925a(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9924n0.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, InsightState insightState) {
            InsightState insightState2 = insightState;
            if (insightState2.getOwner() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, insightState2.getOwner());
            }
            Long m26909a = C9924n0.this.f29665c.m26909a(insightState2.getLastUpdatedAt());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2650l0(2, m26909a.longValue());
            }
            if (insightState2.getLastUpdatedData() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, insightState2.getLastUpdatedData());
            }
            Long m26909a2 = C9924n0.this.f29665c.m26909a(insightState2.getCreatedAt());
            if (m26909a2 == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2650l0(4, m26909a2.longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `states_table` (`owner`,`last_updated_at`,`last_updated_data`,`created_at`) VALUES (?,?,?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.n0$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/n0$b.class */
    public class CallableC9926b implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ List f29667a;

        public CallableC9926b(List list) {
            C9924n0.this = r4;
            this.f29667a = list;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            StringBuilder m8728C = C22128a.m8728C("DELETE FROM states_table where owner IN (");
            C25655d.m3086a(m8728C, this.f29667a.size());
            m8728C.append(")");
            AbstractC26154f compileStatement = C9924n0.this.f29663a.compileStatement(m8728C.toString());
            int i = 1;
            for (String str : this.f29667a) {
                if (str == null) {
                    compileStatement.mo2648y0(i);
                } else {
                    compileStatement.mo2651f0(i, str);
                }
                i++;
            }
            C9924n0.this.f29663a.beginTransaction();
            try {
                compileStatement.m2673A();
                C9924n0.this.f29663a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9924n0.this.f29663a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.c.c.d.n0$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/n0$c.class */
    public class CallableC9927c implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ List f29669a;

        public CallableC9927c(List list) {
            C9924n0.this = r4;
            this.f29669a = list;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            StringBuilder m8728C = C22128a.m8728C("DELETE FROM states_table WHERE owner IN (");
            C25655d.m3086a(m8728C, this.f29669a.size());
            m8728C.append(")");
            AbstractC26154f compileStatement = C9924n0.this.f29663a.compileStatement(m8728C.toString());
            int i = 1;
            for (String str : this.f29669a) {
                if (str == null) {
                    compileStatement.mo2648y0(i);
                } else {
                    compileStatement.mo2651f0(i, str);
                }
                i++;
            }
            C9924n0.this.f29663a.beginTransaction();
            try {
                compileStatement.m2673A();
                C9924n0.this.f29663a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9924n0.this.f29663a.endTransaction();
            }
        }
    }

    public C9924n0(AbstractC25677q abstractC25677q) {
        this.f29663a = abstractC25677q;
        this.f29664b = new C9925a(abstractC25677q);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9921m0
    /* renamed from: a */
    public Object mo27025a(List<String> list, d<? super s> dVar) {
        return C25650g.m3094c(this.f29663a, true, new CallableC9926b(list), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9921m0
    /* renamed from: b */
    public void mo27024b(InsightState insightState) {
        this.f29663a.assertNotSuspendingTransaction();
        this.f29663a.beginTransaction();
        try {
            this.f29664b.insert((AbstractC25663k<InsightState>) insightState);
            this.f29663a.setTransactionSuccessful();
        } finally {
            this.f29663a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9921m0
    /* renamed from: c */
    public Object mo27023c(List<String> list, d<? super s> dVar) {
        return C25650g.m3094c(this.f29663a, true, new CallableC9927c(list), dVar);
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9921m0
    /* renamed from: d */
    public InsightState mo27022d(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM states_table where owner is ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f29663a.assertNotSuspendingTransaction();
        InsightState insightState = null;
        Long l = null;
        Cursor m3090b = C25653b.m3090b(this.f29663a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "owner");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "last_updated_at");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "last_updated_data");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            if (m3090b.moveToFirst()) {
                String string = m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0);
                Date m26907c = this.f29665c.m26907c(m3090b.isNull(m43237g02) ? null : Long.valueOf(m3090b.getLong(m43237g02)));
                String string2 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                if (!m3090b.isNull(m43237g04)) {
                    l = Long.valueOf(m3090b.getLong(m43237g04));
                }
                insightState = new InsightState(string, m26907c, string2, this.f29665c.m26907c(l));
            }
            m3090b.close();
            m3059j.m3057l();
            return insightState;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }
}
