package p193e.p194a.p918j.p930c.p931d;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import com.truecaller.surveys.data.local.SurveyEntity;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25662j;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p1049l4.C17422k;
import s1.s;
import s1.w.d;
import s1.z.b.l;
/* renamed from: e.a.j.c.d.c */
/* loaded from: classes14-dex2jar.jar:e/a/j/c/d/c.class */
public final class C15454c implements AbstractC15453b {

    /* renamed from: a */
    public final AbstractC25677q f43823a;

    /* renamed from: b */
    public final AbstractC25663k<SurveyEntity> f43824b;

    /* renamed from: c */
    public final AbstractC25662j<SurveyEntity> f43825c;

    /* renamed from: d */
    public final AbstractC25646c0 f43826d;

    /* renamed from: e.a.j.c.d.c$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/d/c$a.class */
    public class C15455a extends AbstractC25663k<SurveyEntity> {
        public C15455a(C15454c c15454c, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, SurveyEntity surveyEntity) {
            SurveyEntity surveyEntity2 = surveyEntity;
            if (surveyEntity2.getId() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, surveyEntity2.getId());
            }
            if (surveyEntity2.getFlow() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, surveyEntity2.getFlow());
            }
            if (surveyEntity2.getQuestions() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, surveyEntity2.getQuestions());
            }
            if (surveyEntity2.getBottomSheetQuestionsIds() == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, surveyEntity2.getBottomSheetQuestionsIds());
            }
            abstractC26154f.mo2650l0(5, surveyEntity2.getLastTimeSeen());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `surveys` (`_id`,`flow`,`content`,`questionIds`,`lastTimeSeen`) VALUES (?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.j.c.d.c$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/d/c$b.class */
    public class C15456b extends AbstractC25662j<SurveyEntity> {
        public C15456b(C15454c c15454c, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25662j
        public void bind(AbstractC26154f abstractC26154f, SurveyEntity surveyEntity) {
            SurveyEntity surveyEntity2 = surveyEntity;
            if (surveyEntity2.getId() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, surveyEntity2.getId());
            }
            if (surveyEntity2.getFlow() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, surveyEntity2.getFlow());
            }
            if (surveyEntity2.getQuestions() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, surveyEntity2.getQuestions());
            }
            if (surveyEntity2.getBottomSheetQuestionsIds() == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, surveyEntity2.getBottomSheetQuestionsIds());
            }
            abstractC26154f.mo2650l0(5, surveyEntity2.getLastTimeSeen());
            if (surveyEntity2.getId() == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2651f0(6, surveyEntity2.getId());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE OR REPLACE `surveys` SET `_id` = ?,`flow` = ?,`content` = ?,`questionIds` = ?,`lastTimeSeen` = ? WHERE `_id` = ?";
        }
    }

    /* renamed from: e.a.j.c.d.c$c */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/d/c$c.class */
    public class C15457c extends AbstractC25646c0 {
        public C15457c(C15454c c15454c, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM surveys";
        }
    }

    /* renamed from: e.a.j.c.d.c$d */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/d/c$d.class */
    public class CallableC15458d implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ List f43827a;

        public CallableC15458d(List list) {
            C15454c.this = r4;
            this.f43827a = list;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C15454c.this.f43823a.beginTransaction();
            try {
                C15454c.this.f43824b.insert(this.f43827a);
                C15454c.this.f43823a.setTransactionSuccessful();
                return s.a;
            } finally {
                C15454c.this.f43823a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.j.c.d.c$e */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/d/c$e.class */
    public class CallableC15459e implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ SurveyEntity f43829a;

        public CallableC15459e(SurveyEntity surveyEntity) {
            C15454c.this = r4;
            this.f43829a = surveyEntity;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C15454c.this.f43823a.beginTransaction();
            try {
                C15454c.this.f43825c.m3081a(this.f43829a);
                C15454c.this.f43823a.setTransactionSuccessful();
                return s.a;
            } finally {
                C15454c.this.f43823a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.j.c.d.c$f */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/d/c$f.class */
    public class C15460f implements l<d<? super s>, Object> {

        /* renamed from: a */
        public final /* synthetic */ List f43831a;

        public C15460f(List list) {
            C15454c.this = r4;
            this.f43831a = list;
        }

        /* renamed from: d */
        public Object m18784d(Object obj) {
            return C17422k.m16043y(C15454c.this, this.f43831a, (d) obj);
        }
    }

    /* renamed from: e.a.j.c.d.c$g */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/d/c$g.class */
    public class CallableC15461g implements Callable<List<SurveyEntity>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f43833a;

        public CallableC15461g(C25686y c25686y) {
            C15454c.this = r4;
            this.f43833a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<SurveyEntity> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C15454c.this.f43823a, this.f43833a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.FLOW);
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "content");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "questionIds");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "lastTimeSeen");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new SurveyEntity(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.getLong(m43237g05)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f43833a.m3057l();
            }
        }
    }

    /* renamed from: e.a.j.c.d.c$h */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/d/c$h.class */
    public class CallableC15462h implements Callable<SurveyEntity> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f43835a;

        public CallableC15462h(C25686y c25686y) {
            C15454c.this = r4;
            this.f43835a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public SurveyEntity call() throws Exception {
            SurveyEntity surveyEntity = null;
            String str = null;
            Cursor m3090b = C25653b.m3090b(C15454c.this.f43823a, this.f43835a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.FLOW);
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "content");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "questionIds");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "lastTimeSeen");
                if (m3090b.moveToFirst()) {
                    String string = m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0);
                    String string2 = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                    String string3 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                    if (!m3090b.isNull(m43237g04)) {
                        str = m3090b.getString(m43237g04);
                    }
                    surveyEntity = new SurveyEntity(string, string2, string3, str, m3090b.getLong(m43237g05));
                }
                m3090b.close();
                this.f43835a.m3057l();
                return surveyEntity;
            } catch (Throwable th) {
                m3090b.close();
                this.f43835a.m3057l();
                throw th;
            }
        }
    }

    public C15454c(AbstractC25677q abstractC25677q) {
        this.f43823a = abstractC25677q;
        this.f43824b = new C15455a(this, abstractC25677q);
        this.f43825c = new C15456b(this, abstractC25677q);
        this.f43826d = new C15457c(this, abstractC25677q);
    }

    @Override // p193e.p194a.p918j.p930c.p931d.AbstractC15453b
    /* renamed from: a */
    public Object mo18789a(d<? super List<SurveyEntity>> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM surveys", 0);
        return C25650g.m3095b(this.f43823a, false, new CancellationSignal(), new CallableC15461g(m3059j), dVar);
    }

    @Override // p193e.p194a.p918j.p930c.p931d.AbstractC15453b
    /* renamed from: b */
    public Object mo18788b(List<SurveyEntity> list, d<? super s> dVar) {
        return C25650g.m3094c(this.f43823a, true, new CallableC15458d(list), dVar);
    }

    @Override // p193e.p194a.p918j.p930c.p931d.AbstractC15453b
    /* renamed from: c */
    public Object mo18787c(List<SurveyEntity> list, d<? super s> dVar) {
        return MediaSessionCompat.m43284M1(this.f43823a, new C15460f(list), dVar);
    }

    @Override // p193e.p194a.p918j.p930c.p931d.AbstractC15453b
    /* renamed from: d */
    public Object mo18786d(String str, d<? super SurveyEntity> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM surveys WHERE _id = ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        return C25650g.m3095b(this.f43823a, false, new CancellationSignal(), new CallableC15462h(m3059j), dVar);
    }

    @Override // p193e.p194a.p918j.p930c.p931d.AbstractC15453b
    /* renamed from: e */
    public Object mo18785e(SurveyEntity surveyEntity, d<? super s> dVar) {
        return C25650g.m3094c(this.f43823a, true, new CallableC15459e(surveyEntity), dVar);
    }
}
