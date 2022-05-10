package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zztu;
import com.google.android.gms.internal.ads.zzua;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzts.class */
public final class zzts {

    /* renamed from: a */
    public final zztx f28981a;

    /* renamed from: b */
    public final zzua.zzi.zza f28982b;

    /* renamed from: c */
    public final boolean f28983c;

    public zzts() {
        this.f28982b = zzua.zzi.m11321q();
        this.f28983c = false;
        this.f28981a = new zztx();
    }

    public zzts(zztx zztxVar) {
        this.f28982b = zzua.zzi.m11321q();
        this.f28981a = zztxVar;
        this.f28983c = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23865o2)).booleanValue();
    }

    /* renamed from: a */
    public static zzts m11426a() {
        return new zzts();
    }

    /* renamed from: b */
    public static List<Long> m11423b() {
        List<String> b = zzabb.m16914b();
        ArrayList arrayList = new ArrayList();
        for (String str : b) {
            for (String str2 : str.split(",")) {
                try {
                    arrayList.add(Long.valueOf(str2));
                } catch (NumberFormatException e) {
                    zzayp.m16153g("Experiment ID is not a number");
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m11425a(zztr zztrVar) {
        synchronized (this) {
            if (this.f28983c) {
                try {
                    zztrVar.mo11427a(this.f28982b);
                } catch (NullPointerException e) {
                    zzp.m17965g().m16188a(e, "AdMobClearcutLogger.modify");
                }
            }
        }
    }

    /* renamed from: a */
    public final void m11424a(zztu.zza.zzb zzbVar) {
        synchronized (this) {
            if (this.f28983c) {
                if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23871p2)).booleanValue()) {
                    m11421c(zzbVar);
                } else {
                    m11422b(zzbVar);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m11422b(zztu.zza.zzb zzbVar) {
        synchronized (this) {
            zzua.zzi.zza zzaVar = this.f28982b;
            zzaVar.m11311q();
            zzaVar.m11314a(m11423b());
            zzub a = this.f28981a.m11418a(((zzua.zzi) ((zzejz) this.f28982b.mo12342K())).mo12349c());
            a.m11208b(zzbVar.zzv());
            a.m11210a();
            String valueOf = String.valueOf(Integer.toString(zzbVar.zzv(), 10));
            zzayp.m16153g(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
        }
    }

    /* renamed from: c */
    public final void m11421c(zztu.zza.zzb zzbVar) {
        synchronized (this) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory != null) {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
                    try {
                        try {
                            fileOutputStream.write(m11420d(zzbVar).getBytes());
                            try {
                                fileOutputStream.close();
                            } catch (IOException e) {
                                zzayp.m16153g("Could not close Clearcut output stream.");
                            }
                        } catch (IOException e2) {
                            zzayp.m16153g("Could not write Clearcut to file.");
                            try {
                                fileOutputStream.close();
                            } catch (IOException e3) {
                                zzayp.m16153g("Could not close Clearcut output stream.");
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e4) {
                            zzayp.m16153g("Could not close Clearcut output stream.");
                        }
                        throw th;
                    }
                } catch (FileNotFoundException e5) {
                    zzayp.m16153g("Could not find file for Clearcut");
                }
            }
        }
    }

    /* renamed from: d */
    public final String m11420d(zztu.zza.zzb zzbVar) {
        String format;
        synchronized (this) {
            format = String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.f28982b.m11312p(), Long.valueOf(zzp.m17962j().mo17092a()), Integer.valueOf(zzbVar.zzv()), Base64.encodeToString(((zzua.zzi) ((zzejz) this.f28982b.mo12342K())).mo12349c(), 3));
        }
        return format;
    }
}
