package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.insights.categorizer.KeywordMeta;
import com.truecaller.insights.models.categorizer.CategorizerWordProb;
import com.truecaller.insights.models.categorizer.ReclassifiedMessage;
import com.truecaller.insights.models.states.InsightState;
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
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p531c0.C10020g;
import s1.s;
import s1.w.d;
import s1.z.b.l;
/* renamed from: e.a.c.c.d.q */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/q.class */
public final class C9935q implements AbstractC9930p {

    /* renamed from: a */
    public final AbstractC25677q f29685a;

    /* renamed from: b */
    public final AbstractC25663k<CategorizerWordProb> f29686b;

    /* renamed from: c */
    public final AbstractC25663k<ReclassifiedMessage> f29687c;

    /* renamed from: d */
    public final C10020g f29688d = new C10020g();

    /* renamed from: e */
    public final AbstractC25663k<InsightState> f29689e;

    /* renamed from: f */
    public final AbstractC25646c0 f29690f;

    /* renamed from: e.a.c.c.d.q$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/q$a.class */
    public class C9936a extends AbstractC25663k<CategorizerWordProb> {
        public C9936a(C9935q c9935q, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, CategorizerWordProb categorizerWordProb) {
            CategorizerWordProb categorizerWordProb2 = categorizerWordProb;
            if (categorizerWordProb2.getWord() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, categorizerWordProb2.getWord());
            }
            KeywordMeta probability = categorizerWordProb2.getProbability();
            if (probability == null) {
                abstractC26154f.mo2648y0(2);
                abstractC26154f.mo2648y0(3);
                abstractC26154f.mo2648y0(4);
                abstractC26154f.mo2648y0(5);
                abstractC26154f.mo2648y0(6);
                abstractC26154f.mo2648y0(7);
                return;
            }
            if (probability.getProbHam() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2652T0(2, probability.getProbHam().doubleValue());
            }
            if (probability.getProbSpam() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2652T0(3, probability.getProbSpam().doubleValue());
            }
            if (probability.getTfHam() == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2652T0(4, probability.getTfHam().doubleValue());
            }
            if (probability.getTfSpam() == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2652T0(5, probability.getTfSpam().doubleValue());
            }
            if (probability.getIdfHam() == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2652T0(6, probability.getIdfHam().doubleValue());
            }
            if (probability.getIdfSpam() == null) {
                abstractC26154f.mo2648y0(7);
            } else {
                abstractC26154f.mo2652T0(7, probability.getIdfSpam().doubleValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `categorizer_probability` (`word`,`probHam`,`probSpam`,`tfHam`,`tfSpam`,`idfHam`,`idfSpam`) VALUES (?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.q$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/q$b.class */
    public class C9937b extends AbstractC25663k<ReclassifiedMessage> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9937b(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9935q.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, ReclassifiedMessage reclassifiedMessage) {
            ReclassifiedMessage reclassifiedMessage2 = reclassifiedMessage;
            if (reclassifiedMessage2.getMessageBody() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, reclassifiedMessage2.getMessageBody());
            }
            if (reclassifiedMessage2.getFromCategory() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, reclassifiedMessage2.getFromCategory());
            }
            if (reclassifiedMessage2.getToCategory() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, reclassifiedMessage2.getToCategory());
            }
            abstractC26154f.mo2650l0(4, reclassifiedMessage2.getReTrainModelVersion());
            abstractC26154f.mo2650l0(5, reclassifiedMessage2.getId());
            Long m26909a = C9935q.this.f29688d.m26909a(reclassifiedMessage2.getCreatedAt());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2650l0(6, m26909a.longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `reclassified_message` (`message_body`,`from_category`,`to_category`,`model_version`,`id`,`created_at`) VALUES (?,?,?,?,nullif(?, 0),?)";
        }
    }

    /* renamed from: e.a.c.c.d.q$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/q$c.class */
    public class C9938c extends AbstractC25663k<InsightState> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9938c(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9935q.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, InsightState insightState) {
            InsightState insightState2 = insightState;
            if (insightState2.getOwner() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, insightState2.getOwner());
            }
            Long m26909a = C9935q.this.f29688d.m26909a(insightState2.getLastUpdatedAt());
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
            Long m26909a2 = C9935q.this.f29688d.m26909a(insightState2.getCreatedAt());
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

    /* renamed from: e.a.c.c.d.q$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/q$d.class */
    public class C9939d extends AbstractC25646c0 {
        public C9939d(C9935q c9935q, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE from categorizer_probability";
        }
    }

    /* renamed from: e.a.c.c.d.q$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/q$e.class */
    public class CallableC9940e implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ List f29693a;

        public CallableC9940e(List list) {
            C9935q.this = r4;
            this.f29693a = list;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C9935q.this.f29685a.beginTransaction();
            try {
                C9935q.this.f29686b.insert(this.f29693a);
                C9935q.this.f29685a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9935q.this.f29685a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.c.c.d.q$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/q$f.class */
    public class CallableC9941f implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ List f29695a;

        public CallableC9941f(List list) {
            C9935q.this = r4;
            this.f29695a = list;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C9935q.this.f29685a.beginTransaction();
            try {
                C9935q.this.f29687c.insert(this.f29695a);
                C9935q.this.f29685a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9935q.this.f29685a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.c.c.d.q$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/q$g.class */
    public class C9942g implements l<d<? super s>, Object> {

        /* renamed from: a */
        public final /* synthetic */ List f29697a;

        /* renamed from: b */
        public final /* synthetic */ List f29698b;

        public C9942g(List list, List list2) {
            C9935q.this = r4;
            this.f29697a = list;
            this.f29698b = list2;
        }

        /* renamed from: d */
        public Object m27006d(Object obj) {
            return C17891a1.C17902k.m15670I1(C9935q.this, this.f29697a, this.f29698b, (d) obj);
        }
    }

    /* renamed from: e.a.c.c.d.q$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/q$h.class */
    public class CallableC9943h implements Callable<s> {
        public CallableC9943h() {
            C9935q.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C9935q.this.f29690f.acquire();
            C9935q.this.f29685a.beginTransaction();
            try {
                acquire.m2673A();
                C9935q.this.f29685a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9935q.this.f29685a.endTransaction();
                C9935q.this.f29690f.release(acquire);
            }
        }
    }

    public C9935q(AbstractC25677q abstractC25677q) {
        this.f29685a = abstractC25677q;
        this.f29686b = new C9936a(this, abstractC25677q);
        this.f29687c = new C9937b(abstractC25677q);
        this.f29689e = new C9938c(abstractC25677q);
        this.f29690f = new C9939d(this, abstractC25677q);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9930p
    /* renamed from: a */
    public Object mo27017a(List<CategorizerWordProb> list, d<? super s> dVar) {
        return C25650g.m3094c(this.f29685a, true, new CallableC9940e(list), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9930p
    /* renamed from: b */
    public List<ReclassifiedMessage> mo27016b(int i, int i2) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM reclassified_message WHERE model_version < ? LIMIT ?", 2);
        m3059j.mo2650l0(1, i);
        m3059j.mo2650l0(2, i2);
        this.f29685a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29685a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, RemoteMessageConst.MSGBODY);
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "from_category");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "to_category");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "model_version");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(new ReclassifiedMessage(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.getInt(m43237g04), m3090b.getLong(m43237g05), this.f29688d.m26907c(m3090b.isNull(m43237g06) ? null : Long.valueOf(m3090b.getLong(m43237g06)))));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9930p
    /* renamed from: c */
    public Cursor mo27015c() {
        return this.f29685a.query(C25686y.m3059j("SELECT * from categorizer_probability WHERE tfHam IS NOT NULL", 0));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9930p
    /* renamed from: d */
    public List<CategorizerWordProb> mo27014d() {
        KeywordMeta keywordMeta;
        C25686y m3059j = C25686y.m3059j("SELECT * from categorizer_probability", 0);
        this.f29685a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29685a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "word");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "probHam");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "probSpam");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "tfHam");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "tfSpam");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "idfHam");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "idfSpam");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                String string = m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0);
                if (m3090b.isNull(m43237g02) && m3090b.isNull(m43237g03) && m3090b.isNull(m43237g04) && m3090b.isNull(m43237g05) && m3090b.isNull(m43237g06) && m3090b.isNull(m43237g07)) {
                    keywordMeta = null;
                    arrayList.add(new CategorizerWordProb(string, keywordMeta));
                }
                keywordMeta = new KeywordMeta(m3090b.isNull(m43237g02) ? null : Double.valueOf(m3090b.getDouble(m43237g02)), m3090b.isNull(m43237g03) ? null : Double.valueOf(m3090b.getDouble(m43237g03)), m3090b.isNull(m43237g04) ? null : Double.valueOf(m3090b.getDouble(m43237g04)), m3090b.isNull(m43237g05) ? null : Double.valueOf(m3090b.getDouble(m43237g05)), m3090b.isNull(m43237g06) ? null : Double.valueOf(m3090b.getDouble(m43237g06)), m3090b.isNull(m43237g07) ? null : Double.valueOf(m3090b.getDouble(m43237g07)));
                arrayList.add(new CategorizerWordProb(string, keywordMeta));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9930p
    /* renamed from: e */
    public Object mo27013e(d<? super s> dVar) {
        return C25650g.m3094c(this.f29685a, true, new CallableC9943h(), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9930p
    /* renamed from: f */
    public Cursor mo27012f() {
        return this.f29685a.query(C25686y.m3059j("SELECT * from categorizer_probability WHERE tfSpam IS NOT NULL", 0));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9930p
    /* renamed from: g */
    public void mo27011g(List<InsightState> list) {
        this.f29685a.assertNotSuspendingTransaction();
        this.f29685a.beginTransaction();
        try {
            this.f29689e.insert(list);
            this.f29685a.setTransactionSuccessful();
        } finally {
            this.f29685a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9930p
    /* renamed from: h */
    public Object mo27010h(List<ReclassifiedMessage> list, d<? super s> dVar) {
        return C25650g.m3094c(this.f29685a, true, new CallableC9941f(list), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9930p
    /* renamed from: i */
    public void mo27009i(List<Long> list, int i) {
        this.f29685a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE reclassified_message SET model_version = ");
        sb.append("?");
        sb.append(" WHERE id IN (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        AbstractC26154f compileStatement = this.f29685a.compileStatement(sb.toString());
        compileStatement.mo2650l0(1, i);
        int i2 = 2;
        for (Long l : list) {
            if (l == null) {
                compileStatement.mo2648y0(i2);
            } else {
                compileStatement.mo2650l0(i2, l.longValue());
            }
            i2++;
        }
        this.f29685a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29685a.setTransactionSuccessful();
        } finally {
            this.f29685a.endTransaction();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9930p
    /* renamed from: j */
    public int mo27008j(int i) {
        C25686y m3059j = C25686y.m3059j("SELECT count(*) FROM reclassified_message WHERE model_version < ?", 1);
        m3059j.mo2650l0(1, i);
        this.f29685a.assertNotSuspendingTransaction();
        int i2 = 0;
        Cursor m3090b = C25653b.m3090b(this.f29685a, m3059j, false, null);
        try {
            if (m3090b.moveToFirst()) {
                i2 = m3090b.getInt(0);
            }
            m3090b.close();
            m3059j.m3057l();
            return i2;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9930p
    /* renamed from: k */
    public Object mo27007k(List<CategorizerWordProb> list, List<InsightState> list2, d<? super s> dVar) {
        return MediaSessionCompat.m43284M1(this.f29685a, new C9942g(list, list2), dVar);
    }
}
