package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.core.senderresolution.model.SenderResolutionBatchEntity;
import com.truecaller.insights.models.senders.resolution.SenderResolutionEntity;
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
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p437c.p531c0.C10020g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.z.b.l;
/* renamed from: e.a.c.c.d.i0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/i0.class */
public final class C9870i0 extends AbstractC9868h0 {

    /* renamed from: a */
    public final AbstractC25677q f29571a;

    /* renamed from: b */
    public final AbstractC25663k<SenderResolutionEntity> f29572b;

    /* renamed from: c */
    public final C10020g f29573c = new C10020g();

    /* renamed from: d */
    public final AbstractC25646c0 f29574d;

    /* renamed from: e.a.c.c.d.i0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/i0$a.class */
    public class C9871a extends AbstractC25663k<SenderResolutionEntity> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9871a(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9870i0.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, SenderResolutionEntity senderResolutionEntity) {
            SenderResolutionEntity senderResolutionEntity2 = senderResolutionEntity;
            if (senderResolutionEntity2.getSender() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, senderResolutionEntity2.getSender());
            }
            if (senderResolutionEntity2.getSenderName() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, senderResolutionEntity2.getSenderName());
            }
            if (senderResolutionEntity2.getSenderIconUri() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, senderResolutionEntity2.getSenderIconUri());
            }
            Long m26909a = C9870i0.this.f29573c.m26909a(senderResolutionEntity2.getCreatedAt());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2650l0(4, m26909a.longValue());
            }
            Long m26909a2 = C9870i0.this.f29573c.m26909a(senderResolutionEntity2.getUpdatedAt());
            if (m26909a2 == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2650l0(5, m26909a2.longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `sender_resolution_table` (`sender`,`sender_name`,`sender_icon_uri`,`created_at`,`last_updated_at`) VALUES (?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.i0$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/i0$b.class */
    public class C9872b extends AbstractC25646c0 {
        public C9872b(C9870i0 c9870i0, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "\n        UPDATE sender_resolution_table\n        SET sender_name = ?, sender_icon_uri = ?\n        WHERE sender = ?\n        ";
        }
    }

    /* renamed from: e.a.c.c.d.i0$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/i0$c.class */
    public class CallableC9873c implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ List f29576a;

        public CallableC9873c(List list) {
            C9870i0.this = r4;
            this.f29576a = list;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C9870i0.this.f29571a.beginTransaction();
            try {
                C9870i0.this.f29572b.insert(this.f29576a);
                C9870i0.this.f29571a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9870i0.this.f29571a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.c.c.d.i0$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/i0$d.class */
    public class CallableC9874d implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ SenderResolutionEntity f29578a;

        public CallableC9874d(SenderResolutionEntity senderResolutionEntity) {
            C9870i0.this = r4;
            this.f29578a = senderResolutionEntity;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C9870i0.this.f29571a.beginTransaction();
            try {
                C9870i0.this.f29572b.insert((AbstractC25663k<SenderResolutionEntity>) this.f29578a);
                C9870i0.this.f29571a.setTransactionSuccessful();
                return s.a;
            } finally {
                C9870i0.this.f29571a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.c.c.d.i0$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/i0$e.class */
    public class C9875e implements l<d<? super s>, Object> {

        /* renamed from: a */
        public final /* synthetic */ List f29580a;

        public C9875e(List list) {
            C9870i0.this = r4;
            this.f29580a = list;
        }

        /* renamed from: d */
        public Object m27058d(Object obj) {
            s mo27061d = C9870i0.this.mo27061d(this.f29580a, (d) obj);
            if (mo27061d != a.a) {
                mo27061d = s.a;
            }
            return mo27061d;
        }
    }

    /* renamed from: e.a.c.c.d.i0$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/i0$f.class */
    public class CallableC9876f implements Callable<List<SenderResolutionBatchEntity>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29582a;

        public CallableC9876f(C25686y c25686y) {
            C9870i0.this = r4;
            this.f29582a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<SenderResolutionBatchEntity> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9870i0.this.f29571a, this.f29582a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "msg_date");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new SenderResolutionBatchEntity(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), C9870i0.this.f29573c.m26907c(m3090b.isNull(m43237g02) ? null : Long.valueOf(m3090b.getLong(m43237g02)))));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f29582a.m3057l();
            }
        }
    }

    public C9870i0(AbstractC25677q abstractC25677q) {
        this.f29571a = abstractC25677q;
        this.f29572b = new C9871a(abstractC25677q);
        this.f29574d = new C9872b(this, abstractC25677q);
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9868h0
    /* renamed from: a */
    public SenderResolutionEntity mo27064a(String str) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT * FROM sender_resolution_table WHERE sender = ?\n        ", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f29571a.assertNotSuspendingTransaction();
        SenderResolutionEntity senderResolutionEntity = null;
        Cursor m3090b = C25653b.m3090b(this.f29571a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.SENDER);
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "sender_name");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "sender_icon_uri");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "last_updated_at");
            if (m3090b.moveToFirst()) {
                senderResolutionEntity = new SenderResolutionEntity(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), this.f29573c.m26907c(m3090b.isNull(m43237g04) ? null : Long.valueOf(m3090b.getLong(m43237g04))), this.f29573c.m26907c(m3090b.isNull(m43237g05) ? null : Long.valueOf(m3090b.getLong(m43237g05))));
            }
            m3090b.close();
            m3059j.m3057l();
            return senderResolutionEntity;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9868h0
    /* renamed from: b */
    public Object mo27063b(Date date, Date date2, int i, d<? super List<SenderResolutionBatchEntity>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n            SELECT pdo.address, pdo.msg_date\n            FROM parsed_data_object_table pdo LEFT JOIN sender_resolution_table srt ON pdo.address = srt.sender\n            WHERE pdo.msg_date < ? AND pdo.spam_category != 4 AND (\n                srt.sender_name IS NULL OR srt.sender_name = ''\n                OR srt.last_updated_at < ?\n            )\n            GROUP BY pdo.address\n            ORDER BY pdo.msg_date DESC\n            LIMIT ?\n        ", 3);
        Long m26909a = this.f29573c.m26909a(date);
        if (m26909a == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2650l0(1, m26909a.longValue());
        }
        Long m26909a2 = this.f29573c.m26909a(date2);
        if (m26909a2 == null) {
            m3059j.mo2648y0(2);
        } else {
            m3059j.mo2650l0(2, m26909a2.longValue());
        }
        m3059j.mo2650l0(3, i);
        return C25650g.m3095b(this.f29571a, false, new CancellationSignal(), new CallableC9876f(m3059j), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9868h0
    /* renamed from: c */
    public Object mo27062c(SenderResolutionEntity senderResolutionEntity, d<? super s> dVar) {
        return C25650g.m3094c(this.f29571a, true, new CallableC9874d(senderResolutionEntity), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9868h0
    /* renamed from: d */
    public Object mo27061d(List<SenderResolutionEntity> list, d<? super s> dVar) {
        return C25650g.m3094c(this.f29571a, true, new CallableC9873c(list), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9868h0
    /* renamed from: e */
    public Object mo27060e(List<SenderResolutionEntity> list, d<? super s> dVar) {
        return MediaSessionCompat.m43284M1(this.f29571a, new C9875e(list), dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9868h0
    /* renamed from: f */
    public void mo27059f(String str, String str2, String str3) {
        this.f29571a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f29574d.acquire();
        if (str2 == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, str2);
        }
        if (str3 == null) {
            acquire.mo2648y0(2);
        } else {
            acquire.mo2651f0(2, str3);
        }
        if (str == null) {
            acquire.mo2648y0(3);
        } else {
            acquire.mo2651f0(3, str);
        }
        this.f29571a.beginTransaction();
        try {
            acquire.m2673A();
            this.f29571a.setTransactionSuccessful();
        } finally {
            this.f29571a.endTransaction();
            this.f29574d.release(acquire);
        }
    }
}
