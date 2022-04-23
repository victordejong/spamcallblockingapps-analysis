package androidx.appcompat.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
/* renamed from: androidx.appcompat.app.ah */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ah.class */
final class C0289ah {

    /* renamed from: a */
    private static C0289ah f1247a;

    /* renamed from: b */
    private final Context f1248b;

    /* renamed from: c */
    private final LocationManager f1249c;

    /* renamed from: d */
    private final C0290a f1250d = new C0290a();

    /* renamed from: androidx.appcompat.app.ah$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ah$a.class */
    private static final class C0290a {

        /* renamed from: a */
        boolean f1251a;

        /* renamed from: b */
        long f1252b;

        /* renamed from: c */
        long f1253c;

        /* renamed from: d */
        long f1254d;

        /* renamed from: e */
        long f1255e;

        /* renamed from: f */
        long f1256f;

        C0290a() {
        }
    }

    private C0289ah(Context context, LocationManager locationManager) {
        this.f1248b = context;
        this.f1249c = locationManager;
    }

    /* renamed from: a */
    private Location m9841a(String str) {
        try {
            if (this.f1249c.isProviderEnabled(str)) {
                return this.f1249c.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0289ah m9842a(Context context) {
        if (f1247a == null) {
            Context applicationContext = context.getApplicationContext();
            f1247a = new C0289ah(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f1247a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007a, code lost:
        if (r16.getTime() > r17.getTime()) goto L_0x0089;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0086, code lost:
        if (r16 != null) goto L_0x0089;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0089, code lost:
        r18 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008f, code lost:
        if (r18 == null) goto L_0x017f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0092, code lost:
        r0 = r8.f1250d;
        r0 = java.lang.System.currentTimeMillis();
        r0 = androidx.appcompat.app.C0288ag.m9845a();
        r0.m9844a(r0 - 86400000, r18.getLatitude(), r18.getLongitude());
        r0 = r0.f1244a;
        r0.m9844a(r0, r18.getLatitude(), r18.getLongitude());
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d5, code lost:
        if (r0.f1246c != 1) goto L_0x00db;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d8, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00db, code lost:
        r0 = r0.f1245b;
        r0 = r0.f1244a;
        r0.m9844a(r0 + 86400000, r18.getLatitude(), r18.getLongitude());
        r0 = r0.f1245b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0109, code lost:
        if (r0 == (-1)) goto L_0x0149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0112, code lost:
        if (r0 != (-1)) goto L_0x0118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x011d, code lost:
        if (r0 <= r0) goto L_0x0129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0120, code lost:
        r12 = 0 + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x012d, code lost:
        if (r0 <= r0) goto L_0x0139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0130, code lost:
        r12 = 0 + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0139, code lost:
        r12 = 0 + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x013e, code lost:
        r12 = r12 + 60000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0149, code lost:
        r12 = r0 + 43200000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0151, code lost:
        r0.f1251a = r14;
        r0.f1252b = r0;
        r0.f1253c = r0;
        r0.f1254d = r0;
        r0.f1255e = r0;
        r0.f1256f = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x017e, code lost:
        return r0.f1251a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x017f, code lost:
        android.util.Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        r0 = java.util.Calendar.getInstance().get(11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0195, code lost:
        if (r0 < 6) goto L_0x01a4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x019c, code lost:
        if (r0 < 22) goto L_0x01a2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01a2, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01a4, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:?, code lost:
        return true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m9843a() {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.C0289ah.m9843a():boolean");
    }
}
