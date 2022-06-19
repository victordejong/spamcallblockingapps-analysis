package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.insights.models.feedback.FeedbackType;
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
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p531c0.C10020g;
import p193e.p194a.p437c.p580r.p585f.C10536a;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
/* renamed from: e.a.c.c.d.v */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/v.class */
public final class C9957v implements AbstractC9956u {

    /* renamed from: a */
    public final AbstractC25677q f29714a;

    /* renamed from: b */
    public final AbstractC25663k<C10536a> f29715b;

    /* renamed from: c */
    public final C10020g f29716c = new C10020g();

    /* renamed from: d */
    public final AbstractC25646c0 f29717d;

    /* renamed from: e.a.c.c.d.v$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/v$a.class */
    public class CallableC9958a implements Callable<List<C10536a>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29718a;

        public CallableC9958a(C25686y c25686y) {
            C9957v.this = r4;
            this.f29718a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C10536a> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9957v.this.f29714a, this.f29718a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "feedback_type");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "feedback_value");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "entity_id");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.SENDER);
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "body");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "parser_output");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "categorizer_output");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "parent_id");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new C10536a(m3090b.getLong(m43237g0), C9957v.this.f29716c.m26907c(m3090b.isNull(m43237g02) ? null : Long.valueOf(m3090b.getLong(m43237g02))), C9957v.this.f29716c.m26902h(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03)), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.getLong(m43237g05), m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06), m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m3090b.getLong(m43237g010)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29718a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.v$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/v$b.class */
    public class CallableC9959b implements Callable<Integer> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29720a;

        public CallableC9959b(C25686y c25686y) {
            C9957v.this = r4;
            this.f29720a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9957v.this.f29714a, this.f29720a, false, null);
            Integer num = null;
            try {
                if (m3090b.moveToFirst()) {
                    num = m3090b.isNull(0) ? null : Integer.valueOf(m3090b.getInt(0));
                }
                m3090b.close();
                this.f29720a.m3057l();
                return num;
            } catch (Throwable th) {
                m3090b.close();
                this.f29720a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.v$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/v$c.class */
    public class C9960c extends AbstractC25663k<C10536a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9960c(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9957v.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C10536a c10536a) {
            C10536a c10536a2 = c10536a;
            abstractC26154f.mo2650l0(1, c10536a2.f31448a);
            Long m26909a = C9957v.this.f29716c.m26909a(c10536a2.f31449b);
            if (m26909a == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2650l0(2, m26909a.longValue());
            }
            String m26908b = C9957v.this.f29716c.m26908b(c10536a2.f31450c);
            if (m26908b == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, m26908b);
            }
            String str = c10536a2.f31451d;
            if (str == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, str);
            }
            abstractC26154f.mo2650l0(5, c10536a2.f31452e);
            String str2 = c10536a2.f31453f;
            if (str2 == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2651f0(6, str2);
            }
            String str3 = c10536a2.f31454g;
            if (str3 == null) {
                abstractC26154f.mo2648y0(7);
            } else {
                abstractC26154f.mo2651f0(7, str3);
            }
            String str4 = c10536a2.f31455h;
            if (str4 == null) {
                abstractC26154f.mo2648y0(8);
            } else {
                abstractC26154f.mo2651f0(8, str4);
            }
            String str5 = c10536a2.f31456i;
            if (str5 == null) {
                abstractC26154f.mo2648y0(9);
            } else {
                abstractC26154f.mo2651f0(9, str5);
            }
            abstractC26154f.mo2650l0(10, c10536a2.f31457j);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `feedback` (`id`,`created_at`,`feedback_type`,`feedback_value`,`entity_id`,`sender`,`body`,`parser_output`,`categorizer_output`,`parent_id`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.v$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/v$d.class */
    public class C9961d extends AbstractC25646c0 {
        public C9961d(C9957v c9957v, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "\n            UPDATE feedback SET feedback_value = ? \n            WHERE entity_id = ? \n            AND feedback_type = ?\n            ";
        }
    }

    /* renamed from: e.a.c.c.d.v$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/v$e.class */
    public class C9962e extends AbstractC25646c0 {
        public C9962e(C9957v c9957v, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "\n            UPDATE feedback SET feedback_value = ? \n            WHERE sender = ? \n            AND feedback_type = ?\n            ";
        }
    }

    /* renamed from: e.a.c.c.d.v$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/v$f.class */
    public class CallableC9963f implements Callable<Long> {

        /* renamed from: a */
        public final /* synthetic */ C10536a f29723a;

        public CallableC9963f(C10536a c10536a) {
            C9957v.this = r4;
            this.f29723a = c10536a;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Long call() throws Exception {
            C9957v.this.f29714a.beginTransaction();
            try {
                long insertAndReturnId = C9957v.this.f29715b.insertAndReturnId(this.f29723a);
                C9957v.this.f29714a.setTransactionSuccessful();
                C9957v.this.f29714a.endTransaction();
                return Long.valueOf(insertAndReturnId);
            } catch (Throwable th) {
                C9957v.this.f29714a.endTransaction();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.v$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/v$g.class */
    public class CallableC9964g implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ String f29725a;

        /* renamed from: b */
        public final /* synthetic */ long f29726b;

        /* renamed from: c */
        public final /* synthetic */ FeedbackType f29727c;

        public CallableC9964g(String str, long j, FeedbackType feedbackType) {
            C9957v.this = r5;
            this.f29725a = str;
            this.f29726b = j;
            this.f29727c = feedbackType;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C9957v.this.f29717d.acquire();
            String str = this.f29725a;
            if (str == null) {
                acquire.mo2648y0(1);
            } else {
                acquire.mo2651f0(1, str);
            }
            acquire.mo2650l0(2, this.f29726b);
            String m26908b = C9957v.this.f29716c.m26908b(this.f29727c);
            if (m26908b == null) {
                acquire.mo2648y0(3);
            } else {
                acquire.mo2651f0(3, m26908b);
            }
            C9957v.this.f29714a.beginTransaction();
            try {
                acquire.m2673A();
                C9957v.this.f29714a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9957v.this.f29714a.endTransaction();
                C9957v.this.f29717d.release(acquire);
            }
        }
    }

    /* renamed from: e.a.c.c.d.v$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/v$h.class */
    public class CallableC9965h implements Callable<List<C10536a>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29729a;

        public CallableC9965h(C25686y c25686y) {
            C9957v.this = r4;
            this.f29729a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C10536a> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9957v.this.f29714a, this.f29729a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "feedback_type");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "feedback_value");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "entity_id");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.SENDER);
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "body");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "parser_output");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "categorizer_output");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "parent_id");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new C10536a(m3090b.getLong(m43237g0), C9957v.this.f29716c.m26907c(m3090b.isNull(m43237g02) ? null : Long.valueOf(m3090b.getLong(m43237g02))), C9957v.this.f29716c.m26902h(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03)), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.getLong(m43237g05), m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06), m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m3090b.getLong(m43237g010)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29729a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.v$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/v$i.class */
    public class CallableC9966i implements Callable<List<C10536a>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29731a;

        public CallableC9966i(C25686y c25686y) {
            C9957v.this = r4;
            this.f29731a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C10536a> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9957v.this.f29714a, this.f29731a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "feedback_type");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "feedback_value");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "entity_id");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.SENDER);
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "body");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "parser_output");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "categorizer_output");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "parent_id");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new C10536a(m3090b.getLong(m43237g0), C9957v.this.f29716c.m26907c(m3090b.isNull(m43237g02) ? null : Long.valueOf(m3090b.getLong(m43237g02))), C9957v.this.f29716c.m26902h(m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03)), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.getLong(m43237g05), m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06), m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m3090b.getLong(m43237g010)));
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29731a.m3057l();
        }
    }

    public C9957v(AbstractC25677q abstractC25677q) {
        this.f29714a = abstractC25677q;
        this.f29715b = new C9960c(abstractC25677q);
        this.f29717d = new C9961d(this, abstractC25677q);
        new C9962e(this, abstractC25677q);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9956u
    /* renamed from: b */
    public Object mo27001b(long j, FeedbackType feedbackType, d<? super Integer> dVar) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT COUNT(*) \n        FROM feedback\n        WHERE entity_id = ?\n        AND feedback_type = ?\n        ", 2);
        m3059j.mo2650l0(1, j);
        String m26908b = this.f29716c.m26908b(feedbackType);
        if (m26908b == null) {
            m3059j.mo2648y0(2);
        } else {
            m3059j.mo2651f0(2, m26908b);
        }
        return C25650g.m3095b(this.f29714a, false, new CancellationSignal(), new CallableC9959b(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9956u
    /* renamed from: c */
    public Object mo27000c(long j, FeedbackType feedbackType, d<? super List<C10536a>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT * \n        FROM feedback \n        WHERE parent_id = ?\n        AND feedback_type = ?\n    ", 2);
        m3059j.mo2650l0(1, j);
        String m26908b = this.f29716c.m26908b(feedbackType);
        if (m26908b == null) {
            m3059j.mo2648y0(2);
        } else {
            m3059j.mo2651f0(2, m26908b);
        }
        return C25650g.m3095b(this.f29714a, false, new CancellationSignal(), new CallableC9958a(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9956u
    /* renamed from: d */
    public Object mo26999d(long j, String str, FeedbackType feedbackType, d<? super s> dVar) {
        return C25650g.m3094c(this.f29714a, true, new CallableC9964g(str, j, feedbackType), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9956u
    /* renamed from: e */
    public Object mo26998e(C10536a c10536a, d<? super Long> dVar) {
        return C25650g.m3094c(this.f29714a, true, new CallableC9963f(c10536a), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9956u
    /* renamed from: f */
    public f<List<C10536a>> mo26997f(List<Long> list, List<? extends FeedbackType> list2) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "        SELECT * ", StringConstant.NEW_LINE, "        FROM feedback ", StringConstant.NEW_LINE);
        m8688M.append("        WHERE entity_id IN (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(")");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("        AND feedback_type IN (");
        int size2 = list2.size();
        C25655d.m3086a(m8688M, size2);
        m8688M.append(")");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("    ");
        C25686y m3059j = C25686y.m3059j(m8688M.toString(), size + 0 + size2);
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, l.longValue());
            }
            i++;
        }
        int i2 = size + 1;
        for (FeedbackType feedbackType : list2) {
            String m26908b = this.f29716c.m26908b(feedbackType);
            if (m26908b == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2651f0(i2, m26908b);
            }
            i2++;
        }
        return C25650g.m3096a(this.f29714a, false, new String[]{"feedback"}, new CallableC9966i(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9956u
    /* renamed from: g */
    public Object mo26996g(List<Long> list, List<? extends FeedbackType> list2, d<? super List<C10536a>> dVar) {
        StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "        SELECT * ", StringConstant.NEW_LINE, "        FROM feedback ", StringConstant.NEW_LINE);
        m8688M.append("        WHERE entity_id IN (");
        int size = list.size();
        C25655d.m3086a(m8688M, size);
        m8688M.append(")");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("        AND feedback_type IN (");
        int size2 = list2.size();
        C25655d.m3086a(m8688M, size2);
        m8688M.append(")");
        m8688M.append(StringConstant.NEW_LINE);
        m8688M.append("    ");
        C25686y m3059j = C25686y.m3059j(m8688M.toString(), size + 0 + size2);
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, l.longValue());
            }
            i++;
        }
        int i2 = size + 1;
        for (FeedbackType feedbackType : list2) {
            String m26908b = this.f29716c.m26908b(feedbackType);
            if (m26908b == null) {
                m3059j.mo2648y0(i2);
            } else {
                m3059j.mo2651f0(i2, m26908b);
            }
            i2++;
        }
        return C25650g.m3095b(this.f29714a, false, new CancellationSignal(), new CallableC9965h(m3059j), dVar);
    }
}
