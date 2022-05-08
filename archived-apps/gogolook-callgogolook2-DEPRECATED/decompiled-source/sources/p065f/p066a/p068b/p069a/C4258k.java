package p065f.p066a.p068b.p069a;

import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.p003v7.mms.DownloadRequest;
import android.support.p003v7.mms.MmsService;
import android.support.p003v7.mms.SendRequest;
import android.util.SparseArray;
/* renamed from: f.a.b.a.k */
/* loaded from: classes-dex2jar.jar:f/a/b/a/k.class */
public class C4258k {

    /* renamed from: a */
    public static volatile boolean f10314a = false;

    /* renamed from: b */
    public static SparseArray<Bundle> f10315b = new SparseArray<>();

    /* renamed from: a */
    public static Bundle m29208a(int i) {
        Bundle bundle;
        if (!C4266q.m29170a()) {
            return null;
        }
        synchronized (f10315b) {
            Bundle bundle2 = f10315b.get(i);
            bundle = bundle2;
            if (bundle2 == null) {
                bundle = new Bundle();
                f10315b.put(i, bundle);
                m29205a(i, bundle);
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public static void m29207a(int i, Context context, Uri uri, String str, PendingIntent pendingIntent) {
        if (!C4266q.m29170a() || f10314a) {
            MmsService.m37548a(context, new SendRequest(str, uri, pendingIntent));
            return;
        }
        int a = C4266q.m29169a(i);
        C4266q.m29165b(a).sendMultimediaMessage(context, uri, str, m29208a(a), pendingIntent);
    }

    /* renamed from: a */
    public static void m29206a(int i, Context context, String str, Uri uri, PendingIntent pendingIntent) {
        if (!C4266q.m29170a() || f10314a) {
            MmsService.m37548a(context, new DownloadRequest(str, uri, pendingIntent));
            return;
        }
        int a = C4266q.m29169a(i);
        C4266q.m29165b(a).downloadMultimediaMessage(context, str, uri, m29208a(a), pendingIntent);
    }

    /* renamed from: a */
    public static void m29205a(int i, Bundle bundle) {
        AbstractC4246d g = MmsService.m37530g();
        if (g != null && !(g instanceof C4253g)) {
            Bundle carrierConfigValues = C4266q.m29165b(i).getCarrierConfigValues();
            Bundle bundle2 = MmsService.m37530g().get(i);
            if (carrierConfigValues != null && bundle2 != null) {
                m29204a(carrierConfigValues, bundle2, bundle);
            } else if (carrierConfigValues == null && bundle2 != null) {
                bundle.putAll(bundle2);
            }
        }
        AbstractC4265p i2 = MmsService.m37528i();
        if (i2 != null && !(i2 instanceof C4255h)) {
            bundle.putString("userAgent", i2.mo8198a());
            bundle.putString("uaProfUrl", i2.mo8197b());
        }
    }

    /* renamed from: a */
    public static void m29204a(Bundle bundle, Bundle bundle2, Bundle bundle3) {
        for (String str : bundle2.keySet()) {
            Object obj = bundle2.get(str);
            Object obj2 = bundle.get(str);
            if (!(obj == null || obj2 == null || obj.equals(obj2)) || ((obj != null && obj2 == null) || (obj == null && obj2 != null))) {
                if (obj == null || (obj instanceof String)) {
                    bundle3.putString(str, (String) obj);
                } else if (obj instanceof Integer) {
                    bundle3.putInt(str, ((Integer) obj).intValue());
                } else if (obj instanceof Boolean) {
                    bundle3.putBoolean(str, ((Boolean) obj).booleanValue());
                }
            }
        }
    }

    /* renamed from: a */
    public static void m29203a(AbstractC4242b bVar) {
        if (bVar != null) {
            MmsService.m37543a(bVar);
            return;
        }
        throw new IllegalArgumentException("APN settings loader can not be empty");
    }

    /* renamed from: a */
    public static void m29202a(AbstractC4246d dVar) {
        if (dVar != null) {
            synchronized (f10315b) {
                MmsService.m37542a(dVar);
                f10315b.clear();
            }
            return;
        }
        throw new IllegalArgumentException("Carrier configuration loader can not be empty");
    }

    /* renamed from: a */
    public static void m29201a(AbstractC4265p pVar) {
        if (pVar != null) {
            synchronized (f10315b) {
                MmsService.m37541a(pVar);
                f10315b.clear();
            }
            return;
        }
        throw new IllegalArgumentException("User agent info loader can not be empty");
    }

    /* renamed from: a */
    public static void m29200a(boolean z) {
        f10314a = z;
    }

    /* renamed from: b */
    public static void m29199b(boolean z) {
        MmsService.m37539a(z);
    }
}
