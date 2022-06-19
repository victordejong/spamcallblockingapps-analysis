package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.AggregatedAnalyticsEventModel;
import com.truecaller.insights.models.analytics.AggregratedAnalyticsEvent;
import com.truecaller.insights.models.analytics.AnalyticsPropertyMapsModel;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.ArrayList;
import java.util.Date;
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
import s1.w.d;
/* renamed from: e.a.c.c.d.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j.class */
public final class C9877j extends AbstractC9869i {

    /* renamed from: a */
    public final AbstractC25677q f29584a;

    /* renamed from: b */
    public final AbstractC25663k<SimpleAnalyticsModel> f29585b;

    /* renamed from: c */
    public final C10020g f29586c = new C10020g();

    /* renamed from: d */
    public final AbstractC25663k<AnalyticsPropertyMapsModel> f29587d;

    /* renamed from: e */
    public final AbstractC25663k<AggregatedAnalyticsEventModel> f29588e;

    /* renamed from: f */
    public final AbstractC25646c0 f29589f;

    /* renamed from: g */
    public final AbstractC25646c0 f29590g;

    /* renamed from: h */
    public final AbstractC25646c0 f29591h;

    /* renamed from: e.a.c.c.d.j$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$a.class */
    public class CallableC9878a implements Callable<Long[]> {

        /* renamed from: a */
        public final /* synthetic */ List f29592a;

        public CallableC9878a(List list) {
            C9877j.this = r4;
            this.f29592a = list;
        }

        @Override // java.util.concurrent.Callable
        public Long[] call() throws Exception {
            C9877j.this.f29584a.beginTransaction();
            try {
                Long[] insertAndReturnIdsArrayBox = C9877j.this.f29588e.insertAndReturnIdsArrayBox(this.f29592a);
                C9877j.this.f29584a.setTransactionSuccessful();
                return insertAndReturnIdsArrayBox;
            } finally {
                C9877j.this.f29584a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.c.c.d.j$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$b.class */
    public class CallableC9879b implements Callable<Long[]> {

        /* renamed from: a */
        public final /* synthetic */ List f29594a;

        public CallableC9879b(List list) {
            C9877j.this = r4;
            this.f29594a = list;
        }

        @Override // java.util.concurrent.Callable
        public Long[] call() throws Exception {
            C9877j.this.f29584a.beginTransaction();
            try {
                Long[] insertAndReturnIdsArrayBox = C9877j.this.f29587d.insertAndReturnIdsArrayBox(this.f29594a);
                C9877j.this.f29584a.setTransactionSuccessful();
                return insertAndReturnIdsArrayBox;
            } finally {
                C9877j.this.f29584a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.c.c.d.j$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$c.class */
    public class CallableC9880c implements Callable<Integer> {

        /* renamed from: a */
        public final /* synthetic */ Date f29596a;

        public CallableC9880c(Date date) {
            C9877j.this = r4;
            this.f29596a = date;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            AbstractC26154f acquire = C9877j.this.f29589f.acquire();
            Long m26909a = C9877j.this.f29586c.m26909a(this.f29596a);
            if (m26909a == null) {
                acquire.mo2648y0(1);
            } else {
                acquire.mo2650l0(1, m26909a.longValue());
            }
            C9877j.this.f29584a.beginTransaction();
            try {
                int m2673A = acquire.m2673A();
                C9877j.this.f29584a.setTransactionSuccessful();
                C9877j.this.f29584a.endTransaction();
                C9877j.this.f29589f.release(acquire);
                return Integer.valueOf(m2673A);
            } catch (Throwable th) {
                C9877j.this.f29584a.endTransaction();
                C9877j.this.f29589f.release(acquire);
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.j$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$d.class */
    public class CallableC9881d implements Callable<Integer> {
        public CallableC9881d() {
            C9877j.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            AbstractC26154f acquire = C9877j.this.f29590g.acquire();
            C9877j.this.f29584a.beginTransaction();
            try {
                int m2673A = acquire.m2673A();
                C9877j.this.f29584a.setTransactionSuccessful();
                C9877j.this.f29584a.endTransaction();
                C9877j.this.f29590g.release(acquire);
                return Integer.valueOf(m2673A);
            } catch (Throwable th) {
                C9877j.this.f29584a.endTransaction();
                C9877j.this.f29590g.release(acquire);
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.j$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$e.class */
    public class CallableC9882e implements Callable<Integer> {
        public CallableC9882e() {
            C9877j.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            AbstractC26154f acquire = C9877j.this.f29591h.acquire();
            C9877j.this.f29584a.beginTransaction();
            try {
                int m2673A = acquire.m2673A();
                C9877j.this.f29584a.setTransactionSuccessful();
                C9877j.this.f29584a.endTransaction();
                C9877j.this.f29591h.release(acquire);
                return Integer.valueOf(m2673A);
            } catch (Throwable th) {
                C9877j.this.f29584a.endTransaction();
                C9877j.this.f29591h.release(acquire);
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.j$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$f.class */
    public class CallableC9883f implements Callable<SimpleAnalyticsModel> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29600a;

        public CallableC9883f(C25686y c25686y) {
            C9877j.this = r4;
            this.f29600a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public SimpleAnalyticsModel call() throws Exception {
            boolean z = false;
            SimpleAnalyticsModel simpleAnalyticsModel = null;
            Long l = null;
            Cursor m3090b = C25653b.m3090b(C9877j.this.f29584a, this.f29600a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "feature");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "event_category");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "event_info");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.CONTEXT);
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "action_type");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "action_info");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "event_id");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "consumed");
                if (m3090b.moveToFirst()) {
                    String string = m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0);
                    String string2 = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                    String string3 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                    String string4 = m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04);
                    String string5 = m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05);
                    String string6 = m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06);
                    long j = m3090b.getLong(m43237g07);
                    if (!m3090b.isNull(m43237g08)) {
                        l = Long.valueOf(m3090b.getLong(m43237g08));
                    }
                    Date m26907c = C9877j.this.f29586c.m26907c(l);
                    if (m3090b.getInt(m43237g09) != 0) {
                        z = true;
                    }
                    simpleAnalyticsModel = new SimpleAnalyticsModel(string, string2, string3, string4, string5, string6, j, m26907c, z);
                }
                m3090b.close();
                this.f29600a.m3057l();
                return simpleAnalyticsModel;
            } catch (Throwable th) {
                m3090b.close();
                this.f29600a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.j$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$g.class */
    public class C9884g extends AbstractC25663k<SimpleAnalyticsModel> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9884g(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9877j.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, SimpleAnalyticsModel simpleAnalyticsModel) {
            SimpleAnalyticsModel simpleAnalyticsModel2 = simpleAnalyticsModel;
            if (simpleAnalyticsModel2.getFeature() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, simpleAnalyticsModel2.getFeature());
            }
            if (simpleAnalyticsModel2.getEventCategory() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, simpleAnalyticsModel2.getEventCategory());
            }
            if (simpleAnalyticsModel2.getEventInfo() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, simpleAnalyticsModel2.getEventInfo());
            }
            if (simpleAnalyticsModel2.getContext() == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, simpleAnalyticsModel2.getContext());
            }
            if (simpleAnalyticsModel2.getActionType() == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2651f0(5, simpleAnalyticsModel2.getActionType());
            }
            if (simpleAnalyticsModel2.getActionInfo() == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2651f0(6, simpleAnalyticsModel2.getActionInfo());
            }
            abstractC26154f.mo2650l0(7, simpleAnalyticsModel2.getEventId());
            Long m26909a = C9877j.this.f29586c.m26909a(simpleAnalyticsModel2.getCreatedAt());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(8);
            } else {
                abstractC26154f.mo2650l0(8, m26909a.longValue());
            }
            abstractC26154f.mo2650l0(9, simpleAnalyticsModel2.getConsumed() ? 1L : 0L);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR ABORT INTO `analytics_events` (`feature`,`event_category`,`event_info`,`context`,`action_type`,`action_info`,`event_id`,`created_at`,`consumed`) VALUES (?,?,?,?,?,?,nullif(?, 0),?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.j$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$h.class */
    public class CallableC9885h implements Callable<List<AggregratedAnalyticsEvent>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29603a;

        public CallableC9885h(C25686y c25686y) {
            C9877j.this = r4;
            this.f29603a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<AggregratedAnalyticsEvent> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9877j.this.f29584a, this.f29603a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "feature");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "event_category");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "event_info");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.CONTEXT);
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "action_type");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "action_info");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "event_date");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "counts");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new AggregratedAnalyticsEvent(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06), C9877j.this.f29586c.m26907c(m3090b.isNull(m43237g07) ? null : Long.valueOf(m3090b.getLong(m43237g07))), m3090b.getInt(m43237g08)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29603a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.j$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$i.class */
    public class CallableC9886i implements Callable<Integer> {

        /* renamed from: a */
        public final /* synthetic */ List f29605a;

        public CallableC9886i(List list) {
            C9877j.this = r4;
            this.f29605a = list;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            StringBuilder m8728C = C22128a.m8728C(" UPDATE aggregate_analytics_events SET consumed = 1 WHERE agg_event_id IN (");
            C25655d.m3086a(m8728C, this.f29605a.size());
            m8728C.append(")");
            AbstractC26154f compileStatement = C9877j.this.f29584a.compileStatement(m8728C.toString());
            int i = 1;
            for (Long l : this.f29605a) {
                if (l == null) {
                    compileStatement.mo2648y0(i);
                } else {
                    compileStatement.mo2650l0(i, l.longValue());
                }
                i++;
            }
            C9877j.this.f29584a.beginTransaction();
            try {
                int m2673A = compileStatement.m2673A();
                C9877j.this.f29584a.setTransactionSuccessful();
                C9877j.this.f29584a.endTransaction();
                return Integer.valueOf(m2673A);
            } catch (Throwable th) {
                C9877j.this.f29584a.endTransaction();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.j$j */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$j.class */
    public class C9887j extends AbstractC25663k<AnalyticsPropertyMapsModel> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9887j(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9877j.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, AnalyticsPropertyMapsModel analyticsPropertyMapsModel) {
            AnalyticsPropertyMapsModel analyticsPropertyMapsModel2 = analyticsPropertyMapsModel;
            abstractC26154f.mo2650l0(1, analyticsPropertyMapsModel2.getParentEventId());
            if (analyticsPropertyMapsModel2.getKey() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, analyticsPropertyMapsModel2.getKey());
            }
            if (analyticsPropertyMapsModel2.getValue() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, analyticsPropertyMapsModel2.getValue());
            }
            abstractC26154f.mo2650l0(4, analyticsPropertyMapsModel2.getPropertyId());
            Long m26909a = C9877j.this.f29586c.m26909a(analyticsPropertyMapsModel2.getCreatedAt());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2650l0(5, m26909a.longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR ABORT INTO `analytics_property_maps` (`parent_event_id`,`key`,`value`,`property_id`,`created_at`) VALUES (?,?,?,nullif(?, 0),?)";
        }
    }

    /* renamed from: e.a.c.c.d.j$k */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$k.class */
    public class C9888k extends AbstractC25663k<AggregatedAnalyticsEventModel> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9888k(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9877j.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, AggregatedAnalyticsEventModel aggregatedAnalyticsEventModel) {
            AggregatedAnalyticsEventModel aggregatedAnalyticsEventModel2 = aggregatedAnalyticsEventModel;
            if (aggregatedAnalyticsEventModel2.getFeature() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, aggregatedAnalyticsEventModel2.getFeature());
            }
            if (aggregatedAnalyticsEventModel2.getEventCategory() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, aggregatedAnalyticsEventModel2.getEventCategory());
            }
            if (aggregatedAnalyticsEventModel2.getEventInfo() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, aggregatedAnalyticsEventModel2.getEventInfo());
            }
            if (aggregatedAnalyticsEventModel2.getContext() == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, aggregatedAnalyticsEventModel2.getContext());
            }
            if (aggregatedAnalyticsEventModel2.getActionType() == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2651f0(5, aggregatedAnalyticsEventModel2.getActionType());
            }
            if (aggregatedAnalyticsEventModel2.getActionInfo() == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2651f0(6, aggregatedAnalyticsEventModel2.getActionInfo());
            }
            Long m26909a = C9877j.this.f29586c.m26909a(aggregatedAnalyticsEventModel2.getEventDate());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(7);
            } else {
                abstractC26154f.mo2650l0(7, m26909a.longValue());
            }
            abstractC26154f.mo2650l0(8, aggregatedAnalyticsEventModel2.getCounts());
            abstractC26154f.mo2650l0(9, aggregatedAnalyticsEventModel2.getAggEventId());
            Long m26909a2 = C9877j.this.f29586c.m26909a(aggregatedAnalyticsEventModel2.getCreatedAt());
            if (m26909a2 == null) {
                abstractC26154f.mo2648y0(10);
            } else {
                abstractC26154f.mo2650l0(10, m26909a2.longValue());
            }
            abstractC26154f.mo2650l0(11, aggregatedAnalyticsEventModel2.getConsumed() ? 1L : 0L);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR ABORT INTO `aggregate_analytics_events` (`feature`,`event_category`,`event_info`,`context`,`action_type`,`action_info`,`event_date`,`counts`,`agg_event_id`,`created_at`,`consumed`) VALUES (?,?,?,?,?,?,?,?,nullif(?, 0),?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.j$l */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$l.class */
    public class C9889l extends AbstractC25646c0 {
        public C9889l(C9877j c9877j, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return " UPDATE analytics_events SET consumed = 1 WHERE consumed = 0 AND created_at <= ?";
        }
    }

    /* renamed from: e.a.c.c.d.j$m */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$m.class */
    public class C9890m extends AbstractC25646c0 {
        public C9890m(C9877j c9877j, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM analytics_events WHERE consumed = 1";
        }
    }

    /* renamed from: e.a.c.c.d.j$n */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$n.class */
    public class C9891n extends AbstractC25646c0 {
        public C9891n(C9877j c9877j, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM aggregate_analytics_events WHERE consumed = 1";
        }
    }

    /* renamed from: e.a.c.c.d.j$o */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/j$o.class */
    public class CallableC9892o implements Callable<Long[]> {

        /* renamed from: a */
        public final /* synthetic */ List f29609a;

        public CallableC9892o(List list) {
            C9877j.this = r4;
            this.f29609a = list;
        }

        @Override // java.util.concurrent.Callable
        public Long[] call() throws Exception {
            C9877j.this.f29584a.beginTransaction();
            try {
                Long[] insertAndReturnIdsArrayBox = C9877j.this.f29585b.insertAndReturnIdsArrayBox(this.f29609a);
                C9877j.this.f29584a.setTransactionSuccessful();
                return insertAndReturnIdsArrayBox;
            } finally {
                C9877j.this.f29584a.endTransaction();
            }
        }
    }

    public C9877j(AbstractC25677q abstractC25677q) {
        this.f29584a = abstractC25677q;
        this.f29585b = new C9884g(abstractC25677q);
        this.f29587d = new C9887j(abstractC25677q);
        this.f29588e = new C9888k(abstractC25677q);
        this.f29589f = new C9889l(this, abstractC25677q);
        this.f29590g = new C9890m(this, abstractC25677q);
        this.f29591h = new C9891n(this, abstractC25677q);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9869i
    /* renamed from: a */
    public Object mo27057a(d<? super Integer> dVar) {
        return C25650g.m3094c(this.f29584a, true, new CallableC9882e(), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9869i
    /* renamed from: b */
    public Object mo27056b(d<? super Integer> dVar) {
        return C25650g.m3094c(this.f29584a, true, new CallableC9881d(), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9869i
    /* renamed from: c */
    public Object mo27055c(Date date, d<? super Integer> dVar) {
        return C25650g.m3094c(this.f29584a, true, new CallableC9880c(date), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9869i
    /* renamed from: d */
    public Object mo27054d(List<AggregatedAnalyticsEventModel> list, d<? super Long[]> dVar) {
        return C25650g.m3094c(this.f29584a, true, new CallableC9878a(list), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9869i
    /* renamed from: e */
    public Object mo27053e(List<SimpleAnalyticsModel> list, d<? super Long[]> dVar) {
        return C25650g.m3094c(this.f29584a, true, new CallableC9892o(list), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9869i
    /* renamed from: f */
    public Object mo27052f(List<AnalyticsPropertyMapsModel> list, d<? super Long[]> dVar) {
        return C25650g.m3094c(this.f29584a, true, new CallableC9879b(list), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9869i
    /* renamed from: g */
    public Object mo27051g(Date date, d<? super List<AggregratedAnalyticsEvent>> dVar) {
        C25686y m3059j = C25686y.m3059j(" SELECT feature, event_category, event_info, context, action_type,\n                    action_info,strftime('%s',date(created_at/1000,'unixepoch')) * 1000 as event_date,\n                    count(*) AS counts FROM analytics_events WHERE consumed = 0 AND created_at <= ?  \n                    GROUP BY feature, event_category, event_info, context, action_type,\n                    action_info, date(created_at/1000,'unixepoch')", 1);
        Long m26909a = this.f29586c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2650l0(1, m26909a.longValue());
        }
        return C25650g.m3095b(this.f29584a, false, new CancellationSignal(), new CallableC9885h(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9869i
    /* renamed from: h */
    public Object mo27050h(d<? super SimpleAnalyticsModel> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM analytics_events WHERE consumed = 0 ORDER BY created_at DESC LIMIT 1", 0);
        return C25650g.m3095b(this.f29584a, false, new CancellationSignal(), new CallableC9883f(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9869i
    /* renamed from: i */
    public Object mo27049i(List<Long> list, d<? super Integer> dVar) {
        return C25650g.m3094c(this.f29584a, true, new CallableC9886i(list), dVar);
    }
}
