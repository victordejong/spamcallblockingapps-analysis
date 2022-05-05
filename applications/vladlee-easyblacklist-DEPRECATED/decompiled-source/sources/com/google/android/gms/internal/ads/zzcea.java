package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcea.class */
public final class zzcea {

    /* renamed from: a */
    private List<Map<String, String>> f13013a = new ArrayList();

    /* renamed from: b */
    private boolean f13014b = false;

    /* renamed from: c */
    private boolean f13015c = false;

    /* renamed from: d */
    private String f13016d;

    /* renamed from: e */
    private zzcdv f13017e;

    public zzcea(String str, zzcdv zzcdvVar) {
        this.f13016d = str;
        this.f13017e = zzcdvVar;
    }

    /* renamed from: a */
    private final Map<String, String> m3804a() {
        Map<String, String> zzalg = this.f13017e.zzalg();
        zzalg.put("tms", Long.toString(zzq.zzkx().elapsedRealtime(), 10));
        zzalg.put("tid", this.f13016d);
        return zzalg;
    }

    public final void zzali() {
        synchronized (this) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcku)).booleanValue()) {
                if (!this.f13014b) {
                    Map<String, String> a = m3804a();
                    a.put("action", "init_started");
                    this.f13013a.add(a);
                    this.f13014b = true;
                }
            }
        }
    }

    public final void zzalj() {
        synchronized (this) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcku)).booleanValue()) {
                if (!this.f13015c) {
                    Map<String, String> a = m3804a();
                    a.put("action", "init_finished");
                    this.f13013a.add(a);
                    for (Map<String, String> map : this.f13013a) {
                        this.f13017e.m3805a(map);
                    }
                    this.f13015c = true;
                }
            }
        }
    }

    public final void zzgd(String str) {
        synchronized (this) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcku)).booleanValue()) {
                Map<String, String> a = m3804a();
                a.put("action", "adapter_init_started");
                a.put("ancn", str);
                this.f13013a.add(a);
            }
        }
    }

    public final void zzge(String str) {
        synchronized (this) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcku)).booleanValue()) {
                Map<String, String> a = m3804a();
                a.put("action", "adapter_init_finished");
                a.put("ancn", str);
                this.f13013a.add(a);
            }
        }
    }

    public final void zzq(String str, String str2) {
        synchronized (this) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcku)).booleanValue()) {
                Map<String, String> a = m3804a();
                a.put("action", "adapter_init_finished");
                a.put("ancn", str);
                a.put("rqe", str2);
                this.f13013a.add(a);
            }
        }
    }
}
