package com.moat.analytics.mobile.inm;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p012b.p042i.p044i.C0869a;
/* renamed from: com.moat.analytics.mobile.inm.o */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/o.class */
public class C8568o implements LocationListener {

    /* renamed from: a */
    public static C8568o f33326a;

    /* renamed from: b */
    public ScheduledExecutorService f33327b;

    /* renamed from: c */
    public ScheduledFuture<?> f33328c;

    /* renamed from: d */
    public ScheduledFuture<?> f33329d;

    /* renamed from: e */
    public LocationManager f33330e;

    /* renamed from: f */
    public boolean f33331f;

    /* renamed from: g */
    public Location f33332g;

    /* renamed from: h */
    public boolean f33333h;

    public C8568o() {
        try {
            boolean z = ((C8560k) MoatAnalytics.getInstance()).f33303c;
            this.f33331f = z;
            if (z) {
                C8571p.m5104a(3, "LocationManager", this, "Moat location services disabled");
                return;
            }
            this.f33327b = Executors.newScheduledThreadPool(1);
            LocationManager locationManager = (LocationManager) C8531a.m5253a().getSystemService("location");
            this.f33330e = locationManager;
            if (locationManager.getAllProviders().size() == 0) {
                C8571p.m5104a(3, "LocationManager", this, "Device has no location providers");
            } else {
                m5114e();
            }
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }

    /* renamed from: a */
    public static C8568o m5126a() {
        if (f33326a == null) {
            f33326a = new C8568o();
        }
        return f33326a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5120a(boolean z) {
        try {
            C8571p.m5104a(3, "LocationManager", this, "stopping location fetch");
            m5111h();
            m5110i();
            if (z) {
                m5108k();
            } else {
                m5109j();
            }
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }

    /* renamed from: a */
    public static boolean m5125a(Location location) {
        boolean z = false;
        if (location != null && (!(location.getLatitude() == 0.0d && location.getLongitude() == 0.0d) && location.getAccuracy() >= 0.0f && m5118b(location) < 600.0f)) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m5124a(Location location, Location location2) {
        if (location == location2) {
            return true;
        }
        return (location == null || location2 == null || location.getTime() != location2.getTime()) ? false : true;
    }

    /* renamed from: a */
    public static boolean m5121a(String str) {
        return C0869a.m35690a(C8531a.m5253a().getApplicationContext(), str) == 0;
    }

    /* renamed from: b */
    public static float m5118b(Location location) {
        return (float) ((System.currentTimeMillis() - location.getTime()) / 1000);
    }

    /* renamed from: b */
    public static Location m5117b(Location location, Location location2) {
        boolean a = m5125a(location);
        boolean a2 = m5125a(location2);
        if (a) {
            if (a2 && location.getAccuracy() >= location.getAccuracy()) {
                return location2;
            }
            return location;
        } else if (!a2) {
            return null;
        } else {
            return location2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m5114e() {
        try {
            if (!this.f33331f && this.f33330e != null) {
                if (this.f33333h) {
                    C8571p.m5104a(3, "LocationManager", this, "already updating location");
                }
                C8571p.m5104a(3, "LocationManager", this, "starting location fetch");
                Location b = m5117b(this.f33332g, m5113f());
                this.f33332g = b;
                if (b != null) {
                    C8571p.m5104a(3, "LocationManager", this, "Have a valid location, won't fetch = " + this.f33332g.toString());
                    m5108k();
                    return;
                }
                m5112g();
            }
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }

    /* renamed from: f */
    private Location m5113f() {
        Location location;
        try {
            boolean l = m5107l();
            boolean m = m5106m();
            if (l && m) {
                location = m5117b(this.f33330e.getLastKnownLocation("gps"), this.f33330e.getLastKnownLocation("network"));
            } else if (l) {
                location = this.f33330e.getLastKnownLocation("gps");
            } else {
                location = null;
                if (m) {
                    location = this.f33330e.getLastKnownLocation("network");
                }
            }
        } catch (SecurityException e) {
            C8562m.m5135a(e);
            location = null;
        }
        return location;
    }

    /* renamed from: g */
    private void m5112g() {
        try {
            if (!this.f33333h) {
                C8571p.m5104a(3, "LocationManager", this, "Attempting to start update");
                if (m5107l()) {
                    C8571p.m5104a(3, "LocationManager", this, "start updating gps location");
                    this.f33330e.requestLocationUpdates("gps", 0L, 0.0f, this, Looper.getMainLooper());
                    this.f33333h = true;
                }
                if (m5106m()) {
                    C8571p.m5104a(3, "LocationManager", this, "start updating network location");
                    this.f33330e.requestLocationUpdates("network", 0L, 0.0f, this, Looper.getMainLooper());
                    this.f33333h = true;
                }
                if (this.f33333h) {
                    m5110i();
                    this.f33329d = this.f33327b.schedule(new Runnable() { // from class: com.moat.analytics.mobile.inm.o.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                C8571p.m5104a(3, "LocationManager", this, "fetchTimedOut");
                                C8568o.this.m5120a(true);
                            } catch (Exception e) {
                                C8562m.m5135a(e);
                            }
                        }
                    }, 60L, TimeUnit.SECONDS);
                }
            }
        } catch (SecurityException e) {
            C8562m.m5135a(e);
        }
    }

    /* renamed from: h */
    private void m5111h() {
        try {
            C8571p.m5104a(3, "LocationManager", this, "Stopping to update location");
            if (m5105n() && this.f33330e != null) {
                this.f33330e.removeUpdates(this);
                this.f33333h = false;
            }
        } catch (SecurityException e) {
            C8562m.m5135a(e);
        }
    }

    /* renamed from: i */
    private void m5110i() {
        ScheduledFuture<?> scheduledFuture = this.f33329d;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f33329d.cancel(true);
            this.f33329d = null;
        }
    }

    /* renamed from: j */
    private void m5109j() {
        ScheduledFuture<?> scheduledFuture = this.f33328c;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f33328c.cancel(true);
            this.f33328c = null;
        }
    }

    /* renamed from: k */
    private void m5108k() {
        C8571p.m5104a(3, "LocationManager", this, "Resetting fetch timer");
        m5109j();
        Location location = this.f33332g;
        float f = 600.0f;
        if (location != null) {
            f = Math.max(600.0f - m5118b(location), 0.0f);
        }
        this.f33328c = this.f33327b.schedule(new Runnable() { // from class: com.moat.analytics.mobile.inm.o.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    C8571p.m5104a(3, "LocationManager", this, "fetchTimerCompleted");
                    C8568o.this.m5114e();
                } catch (Exception e) {
                    C8562m.m5135a(e);
                }
            }
        }, f, TimeUnit.SECONDS);
    }

    /* renamed from: l */
    private boolean m5107l() {
        return m5121a("android.permission.ACCESS_FINE_LOCATION") && this.f33330e.getProvider("gps") != null && this.f33330e.isProviderEnabled("gps");
    }

    /* renamed from: m */
    private boolean m5106m() {
        return m5105n() && this.f33330e.getProvider("network") != null && this.f33330e.isProviderEnabled("network");
    }

    /* renamed from: n */
    public static boolean m5105n() {
        return m5121a("android.permission.ACCESS_FINE_LOCATION") || m5121a("android.permission.ACCESS_COARSE_LOCATION");
    }

    /* renamed from: b */
    public Location m5119b() {
        if (this.f33331f || this.f33330e == null) {
            return null;
        }
        return this.f33332g;
    }

    /* renamed from: c */
    public void m5116c() {
        m5114e();
    }

    /* renamed from: d */
    public void m5115d() {
        m5120a(false);
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        try {
            C8571p.m5104a(3, "LocationManager", this, "Received an updated location = " + location.toString());
            float b = m5118b(location);
            if (location.hasAccuracy() && location.getAccuracy() <= 100.0f && b < 600.0f) {
                this.f33332g = m5117b(this.f33332g, location);
                C8571p.m5104a(3, "LocationManager", this, "fetchCompleted");
                m5120a(true);
            }
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
