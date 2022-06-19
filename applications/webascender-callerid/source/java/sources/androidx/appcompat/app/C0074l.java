package androidx.appcompat.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.core.content.C0205b;
import java.util.Calendar;
/* renamed from: androidx.appcompat.app.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l.class */
class C0074l {

    /* renamed from: d */
    private static C0074l f261d;

    /* renamed from: a */
    private final Context f262a;

    /* renamed from: b */
    private final LocationManager f263b;

    /* renamed from: c */
    private final C0075a f264c = new C0075a();

    /* renamed from: androidx.appcompat.app.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l$a.class */
    public static class C0075a {

        /* renamed from: a */
        boolean f265a;

        /* renamed from: b */
        long f266b;

        /* renamed from: c */
        long f267c;

        /* renamed from: d */
        long f268d;

        /* renamed from: e */
        long f269e;

        /* renamed from: f */
        long f270f;

        C0075a() {
        }
    }

    C0074l(Context context, LocationManager locationManager) {
        this.f262a = context;
        this.f263b = locationManager;
    }

    /* renamed from: a */
    static C0074l m6796a(Context context) {
        if (f261d == null) {
            Context applicationContext = context.getApplicationContext();
            f261d = new C0074l(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f261d;
    }

    /* renamed from: b */
    private Location m6795b() {
        Location location = null;
        Location m6794c = C0205b.m6045b(this.f262a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? m6794c("network") : null;
        if (C0205b.m6045b(this.f262a, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location = m6794c("gps");
        }
        if (location == null || m6794c == null) {
            if (location != null) {
                m6794c = location;
            }
            return m6794c;
        }
        Location location2 = m6794c;
        if (location.getTime() > m6794c.getTime()) {
            location2 = location;
        }
        return location2;
    }

    /* renamed from: c */
    private Location m6794c(String str) {
        try {
            if (!this.f263b.isProviderEnabled(str)) {
                return null;
            }
            return this.f263b.getLastKnownLocation(str);
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
            return null;
        }
    }

    /* renamed from: e */
    private boolean m6792e() {
        return this.f264c.f270f > System.currentTimeMillis();
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* renamed from: f */
    private void m6791f(Location location) {
        char c;
        C0075a c0075a = this.f264c;
        long currentTimeMillis = System.currentTimeMillis();
        C0073k m6797b = C0073k.m6797b();
        m6797b.m6798a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j = m6797b.f258a;
        m6797b.m6798a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = m6797b.f260c == 1;
        long j2 = m6797b.f259b;
        long j3 = m6797b.f258a;
        m6797b.m6798a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j4 = m6797b.f259b;
        if (j2 == -1 || j3 == -1) {
            c = 43200000 + currentTimeMillis;
        } else {
            c = (currentTimeMillis > j3 ? 0 + j4 : currentTimeMillis > j2 ? 0 + j3 : 0 + j2) + 60000;
        }
        c0075a.f265a = z;
        c0075a.f266b = j;
        c0075a.f267c = j2;
        c0075a.f268d = j3;
        c0075a.f269e = j4;
        c0075a.f270f = c;
    }

    /* renamed from: d */
    boolean m6793d() {
        C0075a c0075a = this.f264c;
        if (m6792e()) {
            return c0075a.f265a;
        }
        Location m6795b = m6795b();
        if (m6795b != null) {
            m6791f(m6795b);
            return c0075a.f265a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }
}
