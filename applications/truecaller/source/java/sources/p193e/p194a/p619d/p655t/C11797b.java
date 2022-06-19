package p193e.p194a.p619d.p655t;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.p189db.VoipAvailability;
import com.truecaller.voip.p189db.VoipIdCache;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25662j;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.d.t.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/t/b.class */
public final class C11797b implements AbstractC11796a {

    /* renamed from: a */
    public final AbstractC25677q f34688a;

    /* renamed from: b */
    public final AbstractC25663k<VoipAvailability> f34689b;

    /* renamed from: c */
    public final AbstractC25663k<VoipIdCache> f34690c;

    /* renamed from: d */
    public final AbstractC25662j<VoipIdCache> f34691d;

    /* renamed from: e */
    public final AbstractC25646c0 f34692e;

    /* renamed from: e.a.d.t.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/t/b$a.class */
    public class C11798a extends AbstractC25663k<VoipAvailability> {
        public C11798a(C11797b c11797b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, VoipAvailability voipAvailability) {
            VoipAvailability voipAvailability2 = voipAvailability;
            if (voipAvailability2.getId() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2650l0(1, voipAvailability2.getId().longValue());
            }
            if (voipAvailability2.getPhone() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, voipAvailability2.getPhone());
            }
            abstractC26154f.mo2650l0(3, voipAvailability2.getEnabled());
            abstractC26154f.mo2650l0(4, voipAvailability2.getVersion());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `voip_availability` (`_id`,`phone`,`voip_enabled`,`version`) VALUES (?,?,?,?)";
        }
    }

    /* renamed from: e.a.d.t.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/t/b$b.class */
    public class C11799b extends AbstractC25663k<VoipIdCache> {
        public C11799b(C11797b c11797b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, VoipIdCache voipIdCache) {
            VoipIdCache voipIdCache2 = voipIdCache;
            if (voipIdCache2.getId() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2650l0(1, voipIdCache2.getId().longValue());
            }
            if (voipIdCache2.getVoipId() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, voipIdCache2.getVoipId());
            }
            if (voipIdCache2.getNumber() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, voipIdCache2.getNumber());
            }
            abstractC26154f.mo2650l0(4, voipIdCache2.getExpiryEpochSeconds());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `voip_id_cache` (`_id`,`voip_id`,`number`,`expiry_epoch_seconds`) VALUES (?,?,?,?)";
        }
    }

    /* renamed from: e.a.d.t.b$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/t/b$c.class */
    public class C11800c extends AbstractC25662j<VoipIdCache> {
        public C11800c(C11797b c11797b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25662j
        public void bind(AbstractC26154f abstractC26154f, VoipIdCache voipIdCache) {
            VoipIdCache voipIdCache2 = voipIdCache;
            if (voipIdCache2.getId() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2650l0(1, voipIdCache2.getId().longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM `voip_id_cache` WHERE `_id` = ?";
        }
    }

    /* renamed from: e.a.d.t.b$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/t/b$d.class */
    public class C11801d extends AbstractC25646c0 {
        public C11801d(C11797b c11797b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM voip_id_cache";
        }
    }

    public C11797b(AbstractC25677q abstractC25677q) {
        this.f34688a = abstractC25677q;
        this.f34689b = new C11798a(this, abstractC25677q);
        this.f34690c = new C11799b(this, abstractC25677q);
        this.f34691d = new C11800c(this, abstractC25677q);
        this.f34692e = new C11801d(this, abstractC25677q);
    }

    @Override // p193e.p194a.p619d.p655t.AbstractC11796a
    /* renamed from: a */
    public List<VoipAvailability> mo23994a(String str) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT * FROM voip_availability \n        WHERE voip_enabled = 1 AND\n        version >= 4 AND\n        phone != ?\n        ", 1);
        m3059j.mo2651f0(1, str);
        this.f34688a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f34688a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.PHONE);
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "voip_enabled");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "version");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                VoipAvailability voipAvailability = new VoipAvailability(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.getInt(m43237g03), m3090b.getInt(m43237g04));
                voipAvailability.setId(m3090b.isNull(m43237g0) ? null : Long.valueOf(m3090b.getLong(m43237g0)));
                arrayList.add(voipAvailability);
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p619d.p655t.AbstractC11796a
    /* renamed from: b */
    public VoipIdCache mo23993b(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM voip_id_cache WHERE voip_id=?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f34688a.assertNotSuspendingTransaction();
        VoipIdCache voipIdCache = null;
        Cursor m3090b = C25653b.m3090b(this.f34688a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "voip_id");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "number");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "expiry_epoch_seconds");
            if (m3090b.moveToFirst()) {
                VoipIdCache voipIdCache2 = new VoipIdCache(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.getLong(m43237g04));
                voipIdCache2.setId(m3090b.isNull(m43237g0) ? null : Long.valueOf(m3090b.getLong(m43237g0)));
                voipIdCache = voipIdCache2;
            }
            m3090b.close();
            m3059j.m3057l();
            return voipIdCache;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    @Override // p193e.p194a.p619d.p655t.AbstractC11796a
    /* renamed from: c */
    public void mo23992c() {
        this.f34688a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f34692e.acquire();
        this.f34688a.beginTransaction();
        try {
            acquire.m2673A();
            this.f34688a.setTransactionSuccessful();
        } finally {
            this.f34688a.endTransaction();
            this.f34692e.release(acquire);
        }
    }

    @Override // p193e.p194a.p619d.p655t.AbstractC11796a
    /* renamed from: d */
    public void mo23991d(List<VoipAvailability> list) {
        this.f34688a.assertNotSuspendingTransaction();
        this.f34688a.beginTransaction();
        try {
            this.f34689b.insert(list);
            this.f34688a.setTransactionSuccessful();
        } finally {
            this.f34688a.endTransaction();
        }
    }

    @Override // p193e.p194a.p619d.p655t.AbstractC11796a
    /* renamed from: e */
    public List<VoipIdCache> mo23990e(Set<String> set) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM voip_id_cache WHERE number IN (");
        int size = set.size();
        C25655d.m3086a(sb, size);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0);
        int i = 1;
        for (String str : set) {
            if (str == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2651f0(i, str);
            }
            i++;
        }
        this.f34688a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f34688a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "voip_id");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "number");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "expiry_epoch_seconds");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                VoipIdCache voipIdCache = new VoipIdCache(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.getLong(m43237g04));
                voipIdCache.setId(m3090b.isNull(m43237g0) ? null : Long.valueOf(m3090b.getLong(m43237g0)));
                arrayList.add(voipIdCache);
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p619d.p655t.AbstractC11796a
    /* renamed from: f */
    public VoipAvailability mo23989f(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM voip_availability WHERE phone=?", 1);
        m3059j.mo2651f0(1, str);
        this.f34688a.assertNotSuspendingTransaction();
        VoipAvailability voipAvailability = null;
        Cursor m3090b = C25653b.m3090b(this.f34688a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.PHONE);
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "voip_enabled");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "version");
            if (m3090b.moveToFirst()) {
                VoipAvailability voipAvailability2 = new VoipAvailability(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.getInt(m43237g03), m3090b.getInt(m43237g04));
                voipAvailability2.setId(m3090b.isNull(m43237g0) ? null : Long.valueOf(m3090b.getLong(m43237g0)));
                voipAvailability = voipAvailability2;
            }
            m3090b.close();
            m3059j.m3057l();
            return voipAvailability;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    @Override // p193e.p194a.p619d.p655t.AbstractC11796a
    /* renamed from: g */
    public void mo23988g(List<VoipIdCache> list) {
        this.f34688a.assertNotSuspendingTransaction();
        this.f34688a.beginTransaction();
        try {
            this.f34690c.insert(list);
            this.f34688a.setTransactionSuccessful();
        } finally {
            this.f34688a.endTransaction();
        }
    }

    @Override // p193e.p194a.p619d.p655t.AbstractC11796a
    /* renamed from: h */
    public List<VoipAvailability> mo23987h() {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM voip_availability WHERE voip_enabled = 1", 0);
        this.f34688a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f34688a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.PHONE);
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "voip_enabled");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "version");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                VoipAvailability voipAvailability = new VoipAvailability(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.getInt(m43237g03), m3090b.getInt(m43237g04));
                voipAvailability.setId(m3090b.isNull(m43237g0) ? null : Long.valueOf(m3090b.getLong(m43237g0)));
                arrayList.add(voipAvailability);
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p619d.p655t.AbstractC11796a
    /* renamed from: i */
    public void mo23986i(VoipIdCache voipIdCache) {
        this.f34688a.assertNotSuspendingTransaction();
        this.f34688a.beginTransaction();
        try {
            this.f34690c.insert((AbstractC25663k<VoipIdCache>) voipIdCache);
            this.f34688a.setTransactionSuccessful();
        } finally {
            this.f34688a.endTransaction();
        }
    }

    @Override // p193e.p194a.p619d.p655t.AbstractC11796a
    /* renamed from: j */
    public void mo23985j(VoipIdCache voipIdCache) {
        this.f34688a.assertNotSuspendingTransaction();
        this.f34688a.beginTransaction();
        try {
            this.f34691d.m3081a(voipIdCache);
            this.f34688a.setTransactionSuccessful();
        } finally {
            this.f34688a.endTransaction();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p619d.p655t.AbstractC11796a
    /* renamed from: k */
    public VoipIdCache mo23984k(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM voip_id_cache WHERE number=?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f34688a.assertNotSuspendingTransaction();
        VoipIdCache voipIdCache = null;
        Cursor m3090b = C25653b.m3090b(this.f34688a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "voip_id");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "number");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "expiry_epoch_seconds");
            if (m3090b.moveToFirst()) {
                VoipIdCache voipIdCache2 = new VoipIdCache(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.getLong(m43237g04));
                voipIdCache2.setId(m3090b.isNull(m43237g0) ? null : Long.valueOf(m3090b.getLong(m43237g0)));
                voipIdCache = voipIdCache2;
            }
            m3090b.close();
            m3059j.m3057l();
            return voipIdCache;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    @Override // p193e.p194a.p619d.p655t.AbstractC11796a
    /* renamed from: l */
    public List<VoipAvailability> mo23983l(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM voip_availability WHERE phone IN (");
        int length = strArr.length;
        C25655d.m3086a(sb, length);
        sb.append(") AND voip_enabled = 1");
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
        this.f34688a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f34688a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.PHONE);
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "voip_enabled");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "version");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                VoipAvailability voipAvailability = new VoipAvailability(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.getInt(m43237g03), m3090b.getInt(m43237g04));
                voipAvailability.setId(m3090b.isNull(m43237g0) ? null : Long.valueOf(m3090b.getLong(m43237g0)));
                arrayList.add(voipAvailability);
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }
}
