package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.insights.models.InsightsReminder;
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
import p193e.p194a.p437c.p531c0.C10020g;
import q3.a.x2.f;
/* renamed from: e.a.c.c.d.z */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/z.class */
public final class C9973z implements AbstractC9972y {

    /* renamed from: a */
    public final AbstractC25677q f29740a;

    /* renamed from: b */
    public final AbstractC25663k<InsightsReminder> f29741b;

    /* renamed from: c */
    public final C10020g f29742c = new C10020g();

    /* renamed from: d */
    public final AbstractC25646c0 f29743d;

    /* renamed from: e */
    public final AbstractC25646c0 f29744e;

    /* renamed from: f */
    public final AbstractC25646c0 f29745f;

    /* renamed from: g */
    public final AbstractC25646c0 f29746g;

    /* renamed from: e.a.c.c.d.z$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/z$a.class */
    public class C9974a extends AbstractC25663k<InsightsReminder> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9974a(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9973z.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, InsightsReminder insightsReminder) {
            InsightsReminder insightsReminder2 = insightsReminder;
            if (insightsReminder2.getUniqueRefId() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, insightsReminder2.getUniqueRefId());
            }
            if (insightsReminder2.getVendorName() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, insightsReminder2.getVendorName());
            }
            Long m26909a = C9973z.this.f29742c.m26909a(insightsReminder2.getDueDate());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2650l0(3, m26909a.longValue());
            }
            Long m26909a2 = C9973z.this.f29742c.m26909a(insightsReminder2.getGeneratedDate());
            if (m26909a2 == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2650l0(4, m26909a2.longValue());
            }
            if (insightsReminder2.getImageUrl() == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2651f0(5, insightsReminder2.getImageUrl());
            }
            abstractC26154f.mo2650l0(6, insightsReminder2.getTimesNotified());
            abstractC26154f.mo2650l0(7, insightsReminder2.getDismissed() ? 1L : 0L);
            if (insightsReminder2.getCategory() == null) {
                abstractC26154f.mo2648y0(8);
            } else {
                abstractC26154f.mo2651f0(8, insightsReminder2.getCategory());
            }
            if (insightsReminder2.getMetaJsonString() == null) {
                abstractC26154f.mo2648y0(9);
            } else {
                abstractC26154f.mo2651f0(9, insightsReminder2.getMetaJsonString());
            }
            Long m26909a3 = C9973z.this.f29742c.m26909a(insightsReminder2.getCreatedAt());
            if (m26909a3 == null) {
                abstractC26154f.mo2648y0(10);
            } else {
                abstractC26154f.mo2650l0(10, m26909a3.longValue());
            }
            abstractC26154f.mo2650l0(11, insightsReminder2.getPendingNotification() ? 1L : 0L);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `insights_reminders` (`uniqueRefId`,`vendorName`,`due_date`,`generated_date`,`image_url`,`times_notified`,`is_dismissed`,`category`,`meta`,`created_at`,`is_notification_pending`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.z$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/z$b.class */
    public class C9975b extends AbstractC25646c0 {
        public C9975b(C9973z c9973z, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "\n            UPDATE insights_reminders SET uniqueRefId = ?\n            WHERE uniqueRefId = ?\n        ";
        }
    }

    /* renamed from: e.a.c.c.d.z$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/z$c.class */
    public class C9976c extends AbstractC25646c0 {
        public C9976c(C9973z c9973z, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM insights_reminders";
        }
    }

    /* renamed from: e.a.c.c.d.z$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/z$d.class */
    public class C9977d extends AbstractC25646c0 {
        public C9977d(C9973z c9973z, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE insights_reminders SET times_notified = times_notified + ? WHERE uniqueRefId = ?";
        }
    }

    /* renamed from: e.a.c.c.d.z$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/z$e.class */
    public class C9978e extends AbstractC25646c0 {
        public C9978e(C9973z c9973z, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE insights_reminders SET is_dismissed = 1, is_notification_pending = 0 WHERE uniqueRefId = ?";
        }
    }

    /* renamed from: e.a.c.c.d.z$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/z$f.class */
    public class CallableC9979f implements Callable<List<InsightsReminder>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29748a;

        public CallableC9979f(C25686y c25686y) {
            C9973z.this = r4;
            this.f29748a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<InsightsReminder> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9973z.this.f29740a, this.f29748a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "uniqueRefId");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "vendorName");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "due_date");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "generated_date");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "image_url");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "times_notified");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "is_dismissed");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "category");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "meta");
                int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "is_notification_pending");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new InsightsReminder(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), C9973z.this.f29742c.m26907c(m3090b.isNull(m43237g03) ? null : Long.valueOf(m3090b.getLong(m43237g03))), C9973z.this.f29742c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), m3090b.getInt(m43237g06), m3090b.getInt(m43237g07) != 0, m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), C9973z.this.f29742c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))), m3090b.getInt(m43237g011) != 0));
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29748a.m3057l();
        }
    }

    public C9973z(AbstractC25677q abstractC25677q) {
        this.f29740a = abstractC25677q;
        this.f29741b = new C9974a(abstractC25677q);
        this.f29743d = new C9975b(this, abstractC25677q);
        this.f29744e = new C9976c(this, abstractC25677q);
        this.f29745f = new C9977d(this, abstractC25677q);
        this.f29746g = new C9978e(this, abstractC25677q);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9972y
    /* renamed from: a */
    public f<List<InsightsReminder>> mo26992a() {
        return C25650g.m3096a(this.f29740a, false, new String[]{"insights_reminders"}, new CallableC9979f(C25686y.m3059j("SELECT * FROM insights_reminders", 0)));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9972y
    /* renamed from: b */
    public void mo26991b(String[] strArr) {
        this.f29740a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE insights_reminders SET is_notification_pending = 0 WHERE uniqueRefId IN (");
        C25655d.m3086a(sb, strArr.length);
        sb.append(")");
        AbstractC26154f compileStatement = this.f29740a.compileStatement(sb.toString());
        int i = 1;
        for (String str : strArr) {
            if (str == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2651f0(i, str);
            }
            i++;
        }
        this.f29740a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29740a.setTransactionSuccessful();
        } finally {
            this.f29740a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9972y
    /* renamed from: c */
    public List<InsightsReminder> mo26990c() {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM insights_reminders WHERE is_dismissed = 0", 0);
        this.f29740a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29740a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "uniqueRefId");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "vendorName");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "due_date");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "generated_date");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "image_url");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "times_notified");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "is_dismissed");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "category");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "meta");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "is_notification_pending");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(new InsightsReminder(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), this.f29742c.m26907c(m3090b.isNull(m43237g03) ? null : Long.valueOf(m3090b.getLong(m43237g03))), this.f29742c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), m3090b.getInt(m43237g06), m3090b.getInt(m43237g07) != 0, m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), this.f29742c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))), m3090b.getInt(m43237g011) != 0));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9972y
    /* renamed from: d */
    public void mo26989d() {
        this.f29740a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f29744e.acquire();
        this.f29740a.beginTransaction();
        try {
            acquire.m2673A();
            this.f29740a.setTransactionSuccessful();
        } finally {
            this.f29740a.endTransaction();
            this.f29744e.release(acquire);
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9972y
    /* renamed from: e */
    public long mo26988e(InsightsReminder insightsReminder) {
        this.f29740a.assertNotSuspendingTransaction();
        this.f29740a.beginTransaction();
        try {
            long insertAndReturnId = this.f29741b.insertAndReturnId(insightsReminder);
            this.f29740a.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f29740a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9972y
    /* renamed from: f */
    public List<InsightsReminder> mo26987f(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM insights_reminders WHERE is_dismissed = 0 AND uniqueRefId IN (");
        int length = strArr.length;
        C25655d.m3086a(sb, length);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), length + 0);
        int i = 1;
        for (String str : strArr) {
            if (str == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2651f0(i, str);
            }
            i++;
        }
        this.f29740a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29740a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "uniqueRefId");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "vendorName");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "due_date");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "generated_date");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "image_url");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "times_notified");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "is_dismissed");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "category");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "meta");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "is_notification_pending");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(new InsightsReminder(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), this.f29742c.m26907c(m3090b.isNull(m43237g03) ? null : Long.valueOf(m3090b.getLong(m43237g03))), this.f29742c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), m3090b.getInt(m43237g06), m3090b.getInt(m43237g07) != 0, m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), this.f29742c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))), m3090b.getInt(m43237g011) != 0));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9972y
    /* renamed from: g */
    public void mo26986g(String str, int i) {
        this.f29740a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f29745f.acquire();
        acquire.mo2650l0(1, i);
        if (str == null) {
            acquire.mo2648y0(2);
        } else {
            acquire.mo2651f0(2, str);
        }
        this.f29740a.beginTransaction();
        try {
            acquire.m2673A();
            this.f29740a.setTransactionSuccessful();
        } finally {
            this.f29740a.endTransaction();
            this.f29745f.release(acquire);
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9972y
    /* renamed from: h */
    public List<InsightsReminder> mo26985h(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM insights_reminders \n        WHERE vendorName = ?\n        ", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f29740a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29740a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "uniqueRefId");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "vendorName");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "due_date");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "generated_date");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "image_url");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "times_notified");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "is_dismissed");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "category");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "meta");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "is_notification_pending");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(new InsightsReminder(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), this.f29742c.m26907c(m3090b.isNull(m43237g03) ? null : Long.valueOf(m3090b.getLong(m43237g03))), this.f29742c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), m3090b.getInt(m43237g06), m3090b.getInt(m43237g07) != 0, m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), this.f29742c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))), m3090b.getInt(m43237g011) != 0));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9972y
    /* renamed from: i */
    public List<InsightsReminder> mo26984i() {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM insights_reminders", 0);
        this.f29740a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29740a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "uniqueRefId");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "vendorName");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "due_date");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "generated_date");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "image_url");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "times_notified");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "is_dismissed");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "category");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "meta");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "is_notification_pending");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(new InsightsReminder(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), this.f29742c.m26907c(m3090b.isNull(m43237g03) ? null : Long.valueOf(m3090b.getLong(m43237g03))), this.f29742c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), m3090b.getInt(m43237g06), m3090b.getInt(m43237g07) != 0, m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), this.f29742c.m26907c(m3090b.isNull(m43237g010) ? null : Long.valueOf(m3090b.getLong(m43237g010))), m3090b.getInt(m43237g011) != 0));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9972y
    /* renamed from: j */
    public void mo26983j(String str) {
        this.f29740a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f29746g.acquire();
        acquire.mo2651f0(1, str);
        this.f29740a.beginTransaction();
        try {
            acquire.m2673A();
            this.f29740a.setTransactionSuccessful();
        } finally {
            this.f29740a.endTransaction();
            this.f29746g.release(acquire);
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9972y
    /* renamed from: k */
    public void mo26982k(String str, String str2) {
        this.f29740a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f29743d.acquire();
        if (str2 == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, str2);
        }
        if (str == null) {
            acquire.mo2648y0(2);
        } else {
            acquire.mo2651f0(2, str);
        }
        this.f29740a.beginTransaction();
        try {
            acquire.m2673A();
            this.f29740a.setTransactionSuccessful();
        } finally {
            this.f29740a.endTransaction();
            this.f29743d.release(acquire);
        }
    }
}
