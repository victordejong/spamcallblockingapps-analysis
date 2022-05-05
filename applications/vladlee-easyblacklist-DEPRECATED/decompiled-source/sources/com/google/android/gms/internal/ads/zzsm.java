package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.internal.ads.zzso;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsm.class */
public final class zzsm {

    /* renamed from: a */
    private final zzsr f15454a;

    /* renamed from: b */
    private final zztu f15455b;

    /* renamed from: c */
    private final boolean f15456c;

    private zzsm() {
        this.f15456c = false;
        this.f15454a = new zzsr();
        this.f15455b = new zztu();
        m3072a();
    }

    public zzsm(zzsr zzsrVar) {
        this.f15454a = zzsrVar;
        this.f15456c = ((Boolean) zzve.zzoy().zzd(zzzn.zzcnw)).booleanValue();
        this.f15455b = new zztu();
        m3072a();
    }

    /* renamed from: a */
    private final void m3072a() {
        synchronized (this) {
            this.f15455b.zzcay = new zztq();
            this.f15455b.zzcay.zzbzw = new zztp();
            this.f15455b.zzcav = new zzts();
        }
    }

    /* renamed from: a */
    private final void m3071a(zzso.zza.EnumC3503zza zzaVar) {
        synchronized (this) {
            this.f15455b.zzcau = m3070b();
            this.f15454a.zzf(zzdvt.zza(this.f15455b)).zzbr(zzaVar.zzae()).zzdn();
            String valueOf = String.valueOf(Integer.toString(zzaVar.zzae(), 10));
            zzavs.zzed(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
        }
    }

    /* renamed from: b */
    private final void m3069b(zzso.zza.EnumC3503zza zzaVar) {
        synchronized (this) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory != null) {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
                    try {
                        try {
                            fileOutputStream.write(m3068c(zzaVar).getBytes());
                            try {
                                fileOutputStream.close();
                            } catch (IOException e) {
                                zzavs.zzed("Could not close Clearcut output stream.");
                            }
                        } catch (IOException e2) {
                            zzavs.zzed("Could not write Clearcut to file.");
                            try {
                                fileOutputStream.close();
                            } catch (IOException e3) {
                                zzavs.zzed("Could not close Clearcut output stream.");
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e4) {
                            zzavs.zzed("Could not close Clearcut output stream.");
                        }
                        throw th;
                    }
                } catch (FileNotFoundException e5) {
                    zzavs.zzed("Could not find file for Clearcut");
                }
            }
        }
    }

    /* renamed from: b */
    private static long[] m3070b() {
        int i;
        List<String> zzqh = zzzn.zzqh();
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = zzqh.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            for (String str : it.next().split(",")) {
                try {
                    arrayList.add(Long.valueOf(str));
                } catch (NumberFormatException e) {
                    zzavs.zzed("Experiment ID is not a number");
                }
            }
        }
        long[] jArr = new long[arrayList.size()];
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            jArr[i2] = ((Long) obj).longValue();
            i2++;
        }
        return jArr;
    }

    /* renamed from: c */
    private final String m3068c(zzso.zza.EnumC3503zza zzaVar) {
        String format;
        synchronized (this) {
            format = String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.f15455b.zzcaq, Long.valueOf(zzq.zzkx().elapsedRealtime()), Integer.valueOf(zzaVar.zzae()), Base64.encodeToString(zzdvt.zza(this.f15455b), 3));
        }
        return format;
    }

    public static zzsm zzmt() {
        return new zzsm();
    }

    public final void zza(zzso.zza.EnumC3503zza zzaVar) {
        synchronized (this) {
            if (this.f15456c) {
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzcnx)).booleanValue()) {
                    m3069b(zzaVar);
                } else {
                    m3071a(zzaVar);
                }
            }
        }
    }

    public final void zza(zzsp zzspVar) {
        synchronized (this) {
            if (this.f15456c) {
                try {
                    zzspVar.zza(this.f15455b);
                } catch (NullPointerException e) {
                    zzq.zzku().zza(e, "AdMobClearcutLogger.modify");
                }
            }
        }
    }
}
