package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcne.class */
public final class zzcne {

    /* renamed from: a */
    public List<Map<String, String>> f26289a = new ArrayList();

    /* renamed from: b */
    public boolean f26290b = false;

    /* renamed from: c */
    public boolean f26291c = false;

    /* renamed from: d */
    public String f26292d;

    /* renamed from: e */
    public zzcmz f26293e;

    public zzcne(String str, zzcmz zzcmzVar) {
        this.f26292d = str;
        this.f26293e = zzcmzVar;
    }

    /* renamed from: a */
    public final void m14031a() {
        synchronized (this) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23754V0)).booleanValue()) {
                if (!this.f26290b) {
                    Map<String, String> c = m14026c();
                    c.put("action", "init_started");
                    this.f26289a.add(c);
                    this.f26290b = true;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m14030a(String str) {
        synchronized (this) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23754V0)).booleanValue()) {
                Map<String, String> c = m14026c();
                c.put("action", "adapter_init_started");
                c.put("ancn", str);
                this.f26289a.add(c);
            }
        }
    }

    /* renamed from: a */
    public final void m14029a(String str, String str2) {
        synchronized (this) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23754V0)).booleanValue()) {
                Map<String, String> c = m14026c();
                c.put("action", "adapter_init_finished");
                c.put("ancn", str);
                c.put("rqe", str2);
                this.f26289a.add(c);
            }
        }
    }

    /* renamed from: b */
    public final void m14028b() {
        synchronized (this) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23754V0)).booleanValue()) {
                if (!this.f26291c) {
                    Map<String, String> c = m14026c();
                    c.put("action", "init_finished");
                    this.f26289a.add(c);
                    for (Map<String, String> map : this.f26289a) {
                        this.f26293e.m14035a(map);
                    }
                    this.f26291c = true;
                }
            }
        }
    }

    /* renamed from: b */
    public final void m14027b(String str) {
        synchronized (this) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23754V0)).booleanValue()) {
                Map<String, String> c = m14026c();
                c.put("action", "adapter_init_finished");
                c.put("ancn", str);
                this.f26289a.add(c);
            }
        }
    }

    /* renamed from: c */
    public final Map<String, String> m14026c() {
        Map<String, String> a = this.f26293e.m14037a();
        a.put("tms", Long.toString(zzp.m17962j().mo17092a(), 10));
        a.put("tid", this.f26292d);
        return a;
    }
}
