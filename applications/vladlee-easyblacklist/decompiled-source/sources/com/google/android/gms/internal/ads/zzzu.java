package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzu.class */
public final class zzzu {

    /* renamed from: d */
    private String f15773d;

    /* renamed from: e */
    private Context f15774e;

    /* renamed from: f */
    private String f15775f;

    /* renamed from: h */
    private AtomicBoolean f15777h;

    /* renamed from: i */
    private File f15778i;

    /* renamed from: a */
    private BlockingQueue<zzaae> f15770a = new ArrayBlockingQueue(100);

    /* renamed from: b */
    private LinkedHashMap<String, String> f15771b = new LinkedHashMap<>();

    /* renamed from: c */
    private Map<String, zzzy> f15772c = new HashMap();

    /* renamed from: g */
    private final HashSet<String> f15776g = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    /* renamed from: a */
    private final void m2941a(Map<String, String> map, String str) {
        Throwable th;
        IOException e;
        Uri.Builder buildUpon = Uri.parse(this.f15773d).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        StringBuilder sb = new StringBuilder(buildUpon.build().toString());
        if (!TextUtils.isEmpty(str)) {
            sb.append("&it=");
            sb.append(str);
        }
        String sb2 = sb.toString();
        if (this.f15777h.get()) {
            File file = this.f15778i;
            if (file != null) {
                FileOutputStream fileOutputStream = null;
                FileOutputStream fileOutputStream2 = null;
                try {
                    try {
                        fileOutputStream = new FileOutputStream(file, true);
                    } catch (IOException e2) {
                        e = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    fileOutputStream.write(sb2.getBytes());
                    fileOutputStream.write(10);
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                        zzavs.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e3);
                    }
                } catch (IOException e4) {
                    e = e4;
                    fileOutputStream2 = fileOutputStream;
                    zzavs.zzd("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e5) {
                            zzavs.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e5);
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e6) {
                            zzavs.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e6);
                        }
                    }
                    throw th;
                }
            } else {
                zzavs.zzez("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
            }
        } else {
            zzq.zzkq();
            zzawb.zzb(this.f15774e, this.f15775f, sb2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Map<String, String> m2940a(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, zzcq(key).zzg((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m2942a() {
        while (true) {
            try {
                zzaae take = this.f15770a.take();
                String zzqt = take.zzqt();
                if (!TextUtils.isEmpty(zzqt)) {
                    m2941a(m2940a(this.f15771b, take.m4437a()), zzqt);
                }
            } catch (InterruptedException e) {
                zzavs.zzd("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    public final void zza(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.f15774e = context;
        this.f15775f = str;
        this.f15773d = str2;
        this.f15777h = new AtomicBoolean(false);
        this.f15777h.set(zzaay.zzcth.get().booleanValue());
        if (this.f15777h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.f15778i = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f15771b.put(entry.getKey(), entry.getValue());
        }
        zzazd.zzdwe.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ast

            /* renamed from: a */
            private final zzzu f8265a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8265a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8265a.m2942a();
            }
        });
        this.f15772c.put("action", zzzy.zzcrs);
        this.f15772c.put("ad_format", zzzy.zzcrs);
        this.f15772c.put("e", zzzy.zzcrt);
    }

    public final boolean zza(zzaae zzaaeVar) {
        return this.f15770a.offer(zzaaeVar);
    }

    public final zzzy zzcq(String str) {
        zzzy zzzyVar = this.f15772c.get(str);
        return zzzyVar != null ? zzzyVar : zzzy.zzcrr;
    }

    public final void zzcr(String str) {
        if (!this.f15776g.contains(str)) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("sdkVersion", this.f15775f);
            linkedHashMap.put("ue", str);
            m2941a(m2940a(this.f15771b, linkedHashMap), "");
        }
    }
}
