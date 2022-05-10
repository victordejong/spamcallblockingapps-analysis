package p012b.p016b.p017k;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.mopub.common.privacy.AdvertisingId;
import java.util.Calendar;
import p012b.p042i.p044i.C0871b;
/* renamed from: b.b.k.h */
/* loaded from: classes-dex2jar.jar:b/b/k/h.class */
public class C0594h {

    /* renamed from: d */
    public static C0594h f2952d;

    /* renamed from: a */
    public final Context f2953a;

    /* renamed from: b */
    public final LocationManager f2954b;

    /* renamed from: c */
    public final C0595a f2955c = new C0595a();

    /* renamed from: b.b.k.h$a */
    /* loaded from: classes-dex2jar.jar:b/b/k/h$a.class */
    public static class C0595a {

        /* renamed from: a */
        public boolean f2956a;

        /* renamed from: b */
        public long f2957b;

        /* renamed from: c */
        public long f2958c;

        /* renamed from: d */
        public long f2959d;

        /* renamed from: e */
        public long f2960e;

        /* renamed from: f */
        public long f2961f;
    }

    public C0594h(Context context, LocationManager locationManager) {
        this.f2953a = context;
        this.f2954b = locationManager;
    }

    /* renamed from: a */
    public static C0594h m36820a(Context context) {
        if (f2952d == null) {
            Context applicationContext = context.getApplicationContext();
            f2952d = new C0594h(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f2952d;
    }

    /* renamed from: a */
    public final Location m36821a() {
        Location location = null;
        Location a = C0871b.m35681b(this.f2953a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? m36818a("network") : null;
        if (C0871b.m35681b(this.f2953a, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location = m36818a("gps");
        }
        if (location == null || a == null) {
            if (location != null) {
                a = location;
            }
            return a;
        }
        Location location2 = a;
        if (location.getTime() > a.getTime()) {
            location2 = location;
        }
        return location2;
    }

    /* renamed from: a */
    public final Location m36818a(String str) {
        try {
            if (this.f2954b.isProviderEnabled(str)) {
                return this.f2954b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
            return null;
        }
    }

    /* renamed from: a */
    public final void m36819a(Location location) {
        long j;
        C0595a aVar = this.f2955c;
        long currentTimeMillis = System.currentTimeMillis();
        C0593g a = C0593g.m36823a();
        a.m36822a(currentTimeMillis - AdvertisingId.ONE_DAY_MS, location.getLatitude(), location.getLongitude());
        long j2 = a.f2949a;
        a.m36822a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = a.f2951c == 1;
        long j3 = a.f2950b;
        long j4 = a.f2949a;
        a.m36822a(AdvertisingId.ONE_DAY_MS + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j5 = a.f2950b;
        if (j3 == -1 || j4 == -1) {
            j = 43200000 + currentTimeMillis;
        } else {
            j = (currentTimeMillis > j4 ? 0 + j5 : currentTimeMillis > j3 ? 0 + j4 : 0 + j3) + 60000;
        }
        aVar.f2956a = z;
        aVar.f2957b = j2;
        aVar.f2958c = j3;
        aVar.f2959d = j4;
        aVar.f2960e = j5;
        aVar.f2961f = j;
    }

    /* renamed from: b */
    public boolean m36817b() {
        C0595a aVar = this.f2955c;
        if (m36816c()) {
            return aVar.f2956a;
        }
        Location a = m36821a();
        if (a != null) {
            m36819a(a);
            return aVar.f2956a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }

    /* renamed from: c */
    public final boolean m36816c() {
        return this.f2955c.f2961f > System.currentTimeMillis();
    }
}
