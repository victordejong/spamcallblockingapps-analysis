package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.insights.models.smartcards.ActionStateEntity;
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
import p193e.p194a.p437c.p531c0.C10020g;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
/* renamed from: e.a.c.c.d.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/h.class */
public final class C9858h implements AbstractC9846g {

    /* renamed from: a */
    public final AbstractC25677q f29553a;

    /* renamed from: b */
    public final AbstractC25663k<ActionStateEntity> f29554b;

    /* renamed from: c */
    public final C10020g f29555c = new C10020g();

    /* renamed from: d */
    public final AbstractC25646c0 f29556d;

    /* renamed from: e.a.c.c.d.h$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/h$a.class */
    public class C9859a extends AbstractC25663k<ActionStateEntity> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9859a(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9858h.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, ActionStateEntity actionStateEntity) {
            ActionStateEntity actionStateEntity2 = actionStateEntity;
            abstractC26154f.mo2650l0(1, actionStateEntity2.getId());
            abstractC26154f.mo2650l0(2, actionStateEntity2.getEntityId());
            if (actionStateEntity2.getDomain() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, actionStateEntity2.getDomain());
            }
            abstractC26154f.mo2650l0(4, actionStateEntity2.getState());
            if (actionStateEntity2.getOrigin() == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2651f0(5, actionStateEntity2.getOrigin());
            }
            Long m26909a = C9858h.this.f29555c.m26909a(actionStateEntity2.getCreatedAt());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2650l0(6, m26909a.longValue());
            }
            Long m26909a2 = C9858h.this.f29555c.m26909a(actionStateEntity2.getUpdatesAt());
            if (m26909a2 == null) {
                abstractC26154f.mo2648y0(7);
            } else {
                abstractC26154f.mo2650l0(7, m26909a2.longValue());
            }
            if (actionStateEntity2.getExtra() == null) {
                abstractC26154f.mo2648y0(8);
            } else {
                abstractC26154f.mo2651f0(8, actionStateEntity2.getExtra());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `action_state` (`id`,`message_id`,`domain`,`state`,`origin`,`created_at`,`last_updated_at`,`extra`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.h$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/h$b.class */
    public class C9860b extends AbstractC25646c0 {
        public C9860b(C9858h c9858h, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM action_state";
        }
    }

    /* renamed from: e.a.c.c.d.h$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/h$c.class */
    public class CallableC9861c implements Callable<Long> {

        /* renamed from: a */
        public final /* synthetic */ ActionStateEntity f29558a;

        public CallableC9861c(ActionStateEntity actionStateEntity) {
            C9858h.this = r4;
            this.f29558a = actionStateEntity;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Long call() throws Exception {
            C9858h.this.f29553a.beginTransaction();
            try {
                long insertAndReturnId = C9858h.this.f29554b.insertAndReturnId(this.f29558a);
                C9858h.this.f29553a.setTransactionSuccessful();
                C9858h.this.f29553a.endTransaction();
                return Long.valueOf(insertAndReturnId);
            } catch (Throwable th) {
                C9858h.this.f29553a.endTransaction();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.h$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/h$d.class */
    public class CallableC9862d implements Callable<List<Long>> {

        /* renamed from: a */
        public final /* synthetic */ List f29560a;

        public CallableC9862d(List list) {
            C9858h.this = r4;
            this.f29560a = list;
        }

        @Override // java.util.concurrent.Callable
        public List<Long> call() throws Exception {
            C9858h.this.f29553a.beginTransaction();
            try {
                List<Long> insertAndReturnIdsList = C9858h.this.f29554b.insertAndReturnIdsList(this.f29560a);
                C9858h.this.f29553a.setTransactionSuccessful();
                return insertAndReturnIdsList;
            } finally {
                C9858h.this.f29553a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.c.c.d.h$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/h$e.class */
    public class CallableC9863e implements Callable<s> {
        public CallableC9863e() {
            C9858h.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C9858h.this.f29556d.acquire();
            C9858h.this.f29553a.beginTransaction();
            try {
                acquire.m2673A();
                C9858h.this.f29553a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9858h.this.f29553a.endTransaction();
                C9858h.this.f29556d.release(acquire);
            }
        }
    }

    /* renamed from: e.a.c.c.d.h$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/h$f.class */
    public class CallableC9864f implements Callable<List<ActionStateEntity>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29563a;

        public CallableC9864f(C25686y c25686y) {
            C9858h.this = r4;
            this.f29563a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ActionStateEntity> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9858h.this.f29553a, this.f29563a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "message_id");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "domain");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "origin");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "last_updated_at");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "extra");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new ActionStateEntity(m3090b.getLong(m43237g0), m3090b.getLong(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.getInt(m43237g04), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), C9858h.this.f29555c.m26907c(m3090b.isNull(m43237g06) ? null : Long.valueOf(m3090b.getLong(m43237g06))), C9858h.this.f29555c.m26907c(m3090b.isNull(m43237g07) ? null : Long.valueOf(m3090b.getLong(m43237g07))), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08)));
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29563a.m3057l();
        }
    }

    /* renamed from: e.a.c.c.d.h$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/h$g.class */
    public class CallableC9865g implements Callable<ActionStateEntity> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29565a;

        public CallableC9865g(C25686y c25686y) {
            C9858h.this = r4;
            this.f29565a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public ActionStateEntity call() throws Exception {
            ActionStateEntity actionStateEntity = null;
            Cursor m3090b = C25653b.m3090b(C9858h.this.f29553a, this.f29565a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "message_id");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "domain");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "origin");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "last_updated_at");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "extra");
                if (m3090b.moveToFirst()) {
                    actionStateEntity = new ActionStateEntity(m3090b.getLong(m43237g0), m3090b.getLong(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.getInt(m43237g04), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), C9858h.this.f29555c.m26907c(m3090b.isNull(m43237g06) ? null : Long.valueOf(m3090b.getLong(m43237g06))), C9858h.this.f29555c.m26907c(m3090b.isNull(m43237g07) ? null : Long.valueOf(m3090b.getLong(m43237g07))), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08));
                }
                m3090b.close();
                this.f29565a.m3057l();
                return actionStateEntity;
            } catch (Throwable th) {
                m3090b.close();
                this.f29565a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.c.c.d.h$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/h$h.class */
    public class CallableC9866h implements Callable<List<ActionStateEntity>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29567a;

        public CallableC9866h(C25686y c25686y) {
            C9858h.this = r4;
            this.f29567a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ActionStateEntity> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9858h.this.f29553a, this.f29567a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "message_id");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "domain");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "origin");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "last_updated_at");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "extra");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new ActionStateEntity(m3090b.getLong(m43237g0), m3090b.getLong(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.getInt(m43237g04), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), C9858h.this.f29555c.m26907c(m3090b.isNull(m43237g06) ? null : Long.valueOf(m3090b.getLong(m43237g06))), C9858h.this.f29555c.m26907c(m3090b.isNull(m43237g07) ? null : Long.valueOf(m3090b.getLong(m43237g07))), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29567a.m3057l();
            }
        }
    }

    /* renamed from: e.a.c.c.d.h$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/h$i.class */
    public class CallableC9867i implements Callable<List<ActionStateEntity>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29569a;

        public CallableC9867i(C25686y c25686y) {
            C9858h.this = r4;
            this.f29569a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ActionStateEntity> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9858h.this.f29553a, this.f29569a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "message_id");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "domain");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "state");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "origin");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "last_updated_at");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "extra");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new ActionStateEntity(m3090b.getLong(m43237g0), m3090b.getLong(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.getInt(m43237g04), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), C9858h.this.f29555c.m26907c(m3090b.isNull(m43237g06) ? null : Long.valueOf(m3090b.getLong(m43237g06))), C9858h.this.f29555c.m26907c(m3090b.isNull(m43237g07) ? null : Long.valueOf(m3090b.getLong(m43237g07))), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08)));
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29569a.m3057l();
        }
    }

    public C9858h(AbstractC25677q abstractC25677q) {
        this.f29553a = abstractC25677q;
        this.f29554b = new C9859a(abstractC25677q);
        this.f29556d = new C9860b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9846g
    /* renamed from: a */
    public Object mo27072a(long j, String str, d<? super ActionStateEntity> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM action_state WHERE message_id = ? AND origin = ?", 2);
        m3059j.mo2650l0(1, j);
        if (str == null) {
            m3059j.mo2648y0(2);
        } else {
            m3059j.mo2651f0(2, str);
        }
        return C25650g.m3095b(this.f29553a, false, new CancellationSignal(), new CallableC9865g(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9846g
    /* renamed from: b */
    public f<List<ActionStateEntity>> mo27071b(Date date, String str, String str2) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT * FROM action_state\n        WHERE last_updated_at >= ?\n        AND origin = ?\n        AND domain = ?\n    ", 3);
        Long m26909a = this.f29555c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2650l0(1, m26909a.longValue());
        }
        if (str == null) {
            m3059j.mo2648y0(2);
        } else {
            m3059j.mo2651f0(2, str);
        }
        m3059j.mo2651f0(3, str2);
        return C25650g.m3096a(this.f29553a, false, new String[]{"action_state"}, new CallableC9867i(m3059j));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9846g
    /* renamed from: c */
    public Object mo27070c(List<ActionStateEntity> list, d<? super List<Long>> dVar) {
        return C25650g.m3094c(this.f29553a, true, new CallableC9862d(list), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9846g
    /* renamed from: d */
    public Object mo27069d(d<? super s> dVar) {
        return C25650g.m3094c(this.f29553a, true, new CallableC9863e(), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9846g
    /* renamed from: e */
    public Object mo27068e(List<Long> list, d<? super List<ActionStateEntity>> dVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM action_state WHERE message_id in (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0);
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, l.longValue());
            }
            i++;
        }
        return C25650g.m3095b(this.f29553a, false, new CancellationSignal(), new CallableC9866h(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9846g
    /* renamed from: f */
    public List<ActionStateEntity> mo27067f(Date date, String str) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM action_state WHERE last_updated_at >= ? AND origin = ?", 2);
        Long m26909a = this.f29555c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2650l0(1, m26909a.longValue());
        }
        if (str == null) {
            m3059j.mo2648y0(2);
        } else {
            m3059j.mo2651f0(2, str);
        }
        this.f29553a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29553a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "message_id");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "domain");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "state");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "origin");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "last_updated_at");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "extra");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(new ActionStateEntity(m3090b.getLong(m43237g0), m3090b.getLong(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.getInt(m43237g04), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), this.f29555c.m26907c(m3090b.isNull(m43237g06) ? null : Long.valueOf(m3090b.getLong(m43237g06))), this.f29555c.m26907c(m3090b.isNull(m43237g07) ? null : Long.valueOf(m3090b.getLong(m43237g07))), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08)));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9846g
    /* renamed from: g */
    public Object mo27066g(ActionStateEntity actionStateEntity, d<? super Long> dVar) {
        return C25650g.m3094c(this.f29553a, true, new CallableC9861c(actionStateEntity), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9846g
    /* renamed from: h */
    public f<List<ActionStateEntity>> mo27065h(List<Long> list, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM action_state WHERE message_id in (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(") AND origin = ");
        sb.append("?");
        int i = 1;
        int i2 = size + 1;
        C25686y m3059j = C25686y.m3059j(sb.toString(), i2);
        for (Long l : list) {
            if (l == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2650l0(i, l.longValue());
            }
            i++;
        }
        if (str == null) {
            m3059j.mo2648y0(i2);
        } else {
            m3059j.mo2651f0(i2, str);
        }
        return C25650g.m3096a(this.f29553a, false, new String[]{"action_state"}, new CallableC9864f(m3059j));
    }
}
