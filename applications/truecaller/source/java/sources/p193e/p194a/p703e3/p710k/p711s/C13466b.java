package p193e.p194a.p703e3.p710k.p711s;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.network.util.calling_cache.CallCacheEntry;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: e.a.e3.k.s.b */
/* loaded from: classes6-dex2jar.jar:e/a/e3/k/s/b.class */
public final class C13466b implements AbstractC13465a {

    /* renamed from: a */
    public final AbstractC25677q f39084a;

    /* renamed from: b */
    public final AbstractC25663k<CallCacheEntry> f39085b;

    /* renamed from: e.a.e3.k.s.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/s/b$a.class */
    public class C13467a extends AbstractC25663k<CallCacheEntry> {
        public C13467a(C13466b c13466b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, CallCacheEntry callCacheEntry) {
            CallCacheEntry callCacheEntry2 = callCacheEntry;
            if (callCacheEntry2.getNumber() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, callCacheEntry2.getNumber());
            }
            abstractC26154f.mo2650l0(2, callCacheEntry2.getTimestamp());
            if (callCacheEntry2.getState() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, callCacheEntry2.getState());
            }
            abstractC26154f.mo2650l0(4, callCacheEntry2.getMaxAgeSeconds());
            if (callCacheEntry2.getId() == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2650l0(5, callCacheEntry2.getId().longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `call_cache` (`number`,`timestamp`,`state`,`maxAgeSeconds`,`_id`) VALUES (?,?,?,?,?)";
        }
    }

    public C13466b(AbstractC25677q abstractC25677q) {
        this.f39084a = abstractC25677q;
        this.f39085b = new C13467a(this, abstractC25677q);
    }

    @Override // p193e.p194a.p703e3.p710k.p711s.AbstractC13465a
    /* renamed from: a */
    public void mo21787a(CallCacheEntry callCacheEntry) {
        this.f39084a.assertNotSuspendingTransaction();
        this.f39084a.beginTransaction();
        try {
            this.f39085b.insert((AbstractC25663k<CallCacheEntry>) callCacheEntry);
            this.f39084a.setTransactionSuccessful();
        } finally {
            this.f39084a.endTransaction();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p703e3.p710k.p711s.AbstractC13465a
    /* renamed from: b */
    public CallCacheEntry mo21786b(String str, String str2) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM call_cache WHERE number = ? AND state = ? LIMIT 1", 2);
        m3059j.mo2651f0(1, str);
        if (str2 == null) {
            m3059j.mo2648y0(2);
        } else {
            m3059j.mo2651f0(2, str2);
        }
        this.f39084a.assertNotSuspendingTransaction();
        CallCacheEntry callCacheEntry = null;
        Long l = null;
        Cursor m3090b = C25653b.m3090b(this.f39084a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "number");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "timestamp");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "state");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "maxAgeSeconds");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "_id");
            if (m3090b.moveToFirst()) {
                String string = m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0);
                long j = m3090b.getLong(m43237g02);
                String string2 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                long j2 = m3090b.getLong(m43237g04);
                if (!m3090b.isNull(m43237g05)) {
                    l = Long.valueOf(m3090b.getLong(m43237g05));
                }
                callCacheEntry = new CallCacheEntry(string, j, string2, j2, l);
            }
            m3090b.close();
            m3059j.m3057l();
            return callCacheEntry;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }
}
