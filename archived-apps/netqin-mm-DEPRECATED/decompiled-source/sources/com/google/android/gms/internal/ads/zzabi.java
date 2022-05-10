package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzabi;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabi.class */
public final class zzabi {
    @VisibleForTesting

    /* renamed from: d */
    public String f23931d;
    @VisibleForTesting

    /* renamed from: e */
    public Context f23932e;
    @VisibleForTesting

    /* renamed from: f */
    public String f23933f;

    /* renamed from: h */
    public AtomicBoolean f23935h;

    /* renamed from: i */
    public File f23936i;
    @VisibleForTesting

    /* renamed from: a */
    public BlockingQueue<zzabs> f23928a = new ArrayBlockingQueue(100);
    @VisibleForTesting

    /* renamed from: b */
    public LinkedHashMap<String, String> f23929b = new LinkedHashMap<>();
    @VisibleForTesting

    /* renamed from: c */
    public Map<String, zzabm> f23930c = new HashMap();

    /* renamed from: g */
    public final HashSet<String> f23934g = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    /* renamed from: a */
    public final zzabm m16900a(String str) {
        zzabm zzabmVar = this.f23930c.get(str);
        return zzabmVar != null ? zzabmVar : zzabm.f23937a;
    }

    /* renamed from: a */
    public final Map<String, String> m16898a(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, m16900a(key).mo16893a((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    /* renamed from: a */
    public final /* synthetic */ void m16903a() {
        while (true) {
            try {
                zzabs take = this.f23928a.take();
                String a = take.m16886a();
                if (!TextUtils.isEmpty(a)) {
                    m16899a(m16898a(this.f23929b, take.m16881b()), a);
                }
            } catch (InterruptedException e) {
                zzbbq.m15853c("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m16902a(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.f23932e = context;
        this.f23933f = str;
        this.f23931d = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f23935h = atomicBoolean;
        atomicBoolean.set(zzacs.f23979c.mo16862a().booleanValue());
        if (this.f23935h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.f23936i = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f23929b.put(entry.getKey(), entry.getValue());
        }
        zzbbz.f24764a.execute(new Runnable(this) { // from class: c.d.b.d.g.a.m

            /* renamed from: a */
            public final zzabi f14007a;

            {
                this.f14007a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f14007a.m16903a();
            }
        });
        this.f23930c.put("action", zzabm.f23938b);
        this.f23930c.put("ad_format", zzabm.f23938b);
        this.f23930c.put("e", zzabm.f23939c);
    }

    /* renamed from: a */
    public final void m16899a(Map<String, String> map, String str) {
        Throwable th;
        IOException e;
        Uri.Builder buildUpon = Uri.parse(this.f23931d).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        StringBuilder sb = new StringBuilder(buildUpon.build().toString());
        if (!TextUtils.isEmpty(str)) {
            sb.append("&it=");
            sb.append(str);
        }
        String sb2 = sb.toString();
        if (this.f23935h.get()) {
            File file = this.f23936i;
            if (file != null) {
                r6 = null;
                FileOutputStream fileOutputStream = null;
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
                        zzbbq.m15853c("CsiReporter: Cannot close file: sdk_csi_data.txt.", e3);
                    }
                } catch (IOException e4) {
                    e = e4;
                    fileOutputStream = fileOutputStream;
                    zzbbq.m15853c("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e5) {
                            zzbbq.m15853c("CsiReporter: Cannot close file: sdk_csi_data.txt.", e5);
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e6) {
                            zzbbq.m15853c("CsiReporter: Cannot close file: sdk_csi_data.txt.", e6);
                        }
                    }
                    throw th;
                }
            } else {
                zzbbq.m15852d("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
            }
        } else {
            zzp.m17969c();
            zzayu.m16139a(this.f23932e, this.f23933f, sb2);
        }
    }

    /* renamed from: a */
    public final boolean m16901a(zzabs zzabsVar) {
        return this.f23928a.offer(zzabsVar);
    }

    /* renamed from: b */
    public final void m16897b(String str) {
        if (!this.f23934g.contains(str)) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("sdkVersion", this.f23933f);
            linkedHashMap.put("ue", str);
            m16899a(m16898a(this.f23929b, linkedHashMap), "");
        }
    }
}
