package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.gass.zzc;
import com.google.android.gms.internal.ads.zzbs;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzei.class */
public class zzei {

    /* renamed from: b */
    private static final String f14726b = zzei.class.getSimpleName();

    /* renamed from: a */
    protected Context f14727a;

    /* renamed from: c */
    private ExecutorService f14728c;

    /* renamed from: d */
    private DexClassLoader f14729d;

    /* renamed from: e */
    private zzds f14730e;

    /* renamed from: f */
    private byte[] f14731f;

    /* renamed from: j */
    private boolean f14735j;

    /* renamed from: m */
    private zzde f14738m;

    /* renamed from: p */
    private Map<Pair<String, String>, zzfu> f14741p;

    /* renamed from: g */
    private volatile AdvertisingIdClient f14732g = null;

    /* renamed from: h */
    private volatile boolean f14733h = false;

    /* renamed from: i */
    private Future f14734i = null;

    /* renamed from: k */
    private volatile zzbs.zza f14736k = null;

    /* renamed from: l */
    private Future f14737l = null;

    /* renamed from: n */
    private boolean f14739n = false;

    /* renamed from: o */
    private boolean f14740o = false;

    /* renamed from: q */
    private boolean f14742q = false;

    /* renamed from: r */
    private boolean f14743r = true;

    /* renamed from: s */
    private boolean f14744s = false;

    /* renamed from: com.google.android.gms.internal.ads.zzei$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzei$a.class */
    final class C2450a extends BroadcastReceiver {
        private C2450a() {
        }

        /* synthetic */ C2450a(zzei zzeiVar, byte b) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                zzei.this.f14743r = true;
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                zzei.this.f14743r = false;
            }
        }
    }

    private zzei(Context context) {
        boolean z = true;
        Context applicationContext = context.getApplicationContext();
        this.f14735j = applicationContext == null ? false : z;
        this.f14727a = this.f14735j ? applicationContext : context;
        this.f14741p = new HashMap();
    }

    /* renamed from: a */
    private final zzbs.zza m3293a() {
        zzbs.zza zzaVar;
        try {
            zzaVar = zzc.zzj(this.f14727a, this.f14727a.getPackageName(), Integer.toString(this.f14727a.getPackageManager().getPackageInfo(this.f14727a.getPackageName(), 0).versionCode));
        } catch (Throwable th) {
            zzaVar = null;
        }
        return zzaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m3290a(zzei zzeiVar) {
        try {
            if (zzeiVar.f14732g == null && zzeiVar.f14735j) {
                AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(zzeiVar.f14727a);
                advertisingIdClient.start();
                zzeiVar.f14732g = advertisingIdClient;
            }
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            zzeiVar.f14732g = null;
        }
    }

    /* renamed from: a */
    private static void m3287a(File file) {
        if (!file.exists()) {
            Log.d(f14726b, String.format("File %s not found. No need for deletion", file.getAbsolutePath()));
        } else {
            file.delete();
        }
    }

    /* renamed from: a */
    private final void m3286a(File file, String str) {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        Throwable th;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (!file2.exists()) {
            File file3 = new File(String.format("%s/%s.dex", file, str));
            if (file3.exists()) {
                long length = file3.length();
                if (length > 0) {
                    byte[] bArr = new byte[(int) length];
                    try {
                        fileInputStream = new FileInputStream(file3);
                        try {
                            if (fileInputStream.read(bArr) <= 0) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e) {
                                }
                                m3287a(file3);
                                return;
                            }
                            System.out.print("test");
                            System.out.print("test");
                            System.out.print("test");
                            zzbs.zzc.zza zzg = zzbs.zzc.zzbb().zzh(zzdqk.zzu(Build.VERSION.SDK.getBytes())).zzg(zzdqk.zzu(str.getBytes()));
                            byte[] bytes = this.f14730e.zzb(this.f14731f, bArr).getBytes();
                            zzg.zze(zzdqk.zzu(bytes)).zzf(zzdqk.zzu(C2249ti.m4469a(bytes)));
                            file2.createNewFile();
                            fileOutputStream = new FileOutputStream(file2);
                            try {
                                byte[] byteArray = ((zzbs.zzc) ((zzdrt) zzg.zzbaf())).toByteArray();
                                fileOutputStream.write(byteArray, 0, byteArray.length);
                                fileOutputStream.close();
                                try {
                                    fileInputStream.close();
                                } catch (IOException e2) {
                                }
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e3) {
                                }
                                m3287a(file3);
                            } catch (zzdv | IOException | NoSuchAlgorithmException e4) {
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e5) {
                                    }
                                }
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e6) {
                                    }
                                }
                                m3287a(file3);
                            } catch (Throwable th2) {
                                th = th2;
                                fileInputStream2 = fileInputStream;
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                    } catch (IOException e7) {
                                    }
                                }
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e8) {
                                    }
                                }
                                m3287a(file3);
                                throw th;
                            }
                        } catch (zzdv | IOException | NoSuchAlgorithmException e9) {
                            fileOutputStream = null;
                        } catch (Throwable th3) {
                            th = th3;
                            fileOutputStream = null;
                            fileInputStream2 = fileInputStream;
                        }
                    } catch (zzdv | IOException | NoSuchAlgorithmException e10) {
                        fileInputStream = null;
                        fileOutputStream = null;
                    } catch (Throwable th4) {
                        th = th4;
                        fileInputStream2 = null;
                        fileOutputStream = null;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private static void m3285a(String str) {
        m3287a(new File(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ boolean m3292a(int i, zzbs.zza zzaVar) {
        if (i < 4) {
            return zzaVar == null || !zzaVar.zzaj() || zzaVar.zzag().equals("0000000000000000000000000000000000000000000000000000000000000000") || !zzaVar.zzal() || !zzaVar.zzam().zzbd() || zzaVar.zzam().zzbe() == -2;
        }
        return false;
    }

    /* renamed from: b */
    private final boolean m3283b(File file, String str) {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream2;
        FileInputStream fileInputStream2;
        Throwable th;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (!file2.exists()) {
            return false;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (file3.exists()) {
            return false;
        }
        try {
            long length = file2.length();
            if (length <= 0) {
                m3287a(file2);
                return false;
            }
            byte[] bArr = new byte[(int) length];
            fileInputStream = new FileInputStream(file2);
            try {
                if (fileInputStream.read(bArr) <= 0) {
                    Log.d(f14726b, "Cannot read the cache data.");
                    m3287a(file2);
                    try {
                        fileInputStream.close();
                        return false;
                    } catch (IOException e) {
                        return false;
                    }
                } else {
                    zzbs.zzc zzb = zzbs.zzc.zzb(bArr, zzdrg.zzazi());
                    if (str.equals(new String(zzb.zzaz().toByteArray())) && Arrays.equals(zzb.zzay().toByteArray(), C2249ti.m4469a(zzb.zzax().toByteArray())) && Arrays.equals(zzb.zzba().toByteArray(), Build.VERSION.SDK.getBytes())) {
                        byte[] zza = this.f14730e.zza(this.f14731f, new String(zzb.zzax().toByteArray()));
                        file3.createNewFile();
                        fileOutputStream = new FileOutputStream(file3);
                        try {
                            fileOutputStream.write(zza, 0, zza.length);
                            try {
                                fileInputStream.close();
                            } catch (IOException e2) {
                            }
                            try {
                                fileOutputStream.close();
                                return true;
                            } catch (IOException e3) {
                                return true;
                            }
                        } catch (zzdv | IOException | NoSuchAlgorithmException e4) {
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e5) {
                                }
                            }
                            if (fileOutputStream == null) {
                                return false;
                            }
                            try {
                                fileOutputStream.close();
                                return false;
                            } catch (IOException e6) {
                                return false;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream2 = fileOutputStream;
                            fileInputStream2 = fileInputStream;
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e7) {
                                }
                            }
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e8) {
                                }
                            }
                            throw th;
                        }
                    }
                    m3287a(file2);
                    try {
                        fileInputStream.close();
                        return false;
                    } catch (IOException e9) {
                        return false;
                    }
                }
            } catch (zzdv | IOException | NoSuchAlgorithmException e10) {
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream2 = fileInputStream;
                fileOutputStream2 = null;
            }
        } catch (zzdv | IOException | NoSuchAlgorithmException e11) {
            fileInputStream = null;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream2 = null;
            fileOutputStream2 = null;
        }
    }

    public static zzei zza(Context context, String str, String str2, boolean z) {
        zzei zzeiVar = new zzei(context);
        try {
            zzeiVar.f14728c = Executors.newCachedThreadPool(new alt());
            zzeiVar.f14733h = z;
            if (z) {
                zzeiVar.f14734i = zzeiVar.f14728c.submit(new als(zzeiVar));
            }
            zzeiVar.f14728c.execute(new alu(zzeiVar));
            try {
                GoogleApiAvailabilityLight instance = GoogleApiAvailabilityLight.getInstance();
                zzeiVar.f14739n = instance.getApkVersion(zzeiVar.f14727a) > 0;
                zzeiVar.f14740o = instance.isGooglePlayServicesAvailable(zzeiVar.f14727a) == 0;
            } catch (Throwable th) {
            }
            zzeiVar.m3291a(0, true);
            if (zzep.isMainThread() && ((Boolean) zzve.zzoy().zzd(zzzn.zzclk)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            zzeiVar.f14730e = new zzds(null);
            try {
                zzeiVar.f14731f = zzeiVar.f14730e.zzar(str);
            } catch (zzdv e) {
                throw new zzeh(e);
            }
        } catch (zzeh e2) {
        }
        try {
            try {
                try {
                    try {
                        File cacheDir = zzeiVar.f14727a.getCacheDir();
                        File file = cacheDir;
                        if (cacheDir == null) {
                            file = zzeiVar.f14727a.getDir("dex", 0);
                            if (file == null) {
                                throw new zzeh();
                            }
                        }
                        File file2 = new File(String.format("%s/%s.jar", file, "1570054248636"));
                        if (!file2.exists()) {
                            byte[] zza = zzeiVar.f14730e.zza(zzeiVar.f14731f, str2);
                            file2.createNewFile();
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            fileOutputStream.write(zza, 0, zza.length);
                            fileOutputStream.close();
                        }
                        zzeiVar.m3283b(file, "1570054248636");
                        try {
                            zzeiVar.f14729d = new DexClassLoader(file2.getAbsolutePath(), file.getAbsolutePath(), null, zzeiVar.f14727a.getClassLoader());
                            m3287a(file2);
                            zzeiVar.m3286a(file, "1570054248636");
                            m3285a(String.format("%s/%s.dex", file, "1570054248636"));
                            if (!zzeiVar.f14744s) {
                                IntentFilter intentFilter = new IntentFilter();
                                intentFilter.addAction("android.intent.action.USER_PRESENT");
                                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                                zzeiVar.f14727a.registerReceiver(new C2450a(zzeiVar, (byte) 0), intentFilter);
                                zzeiVar.f14744s = true;
                            }
                            zzeiVar.f14738m = new zzde(zzeiVar);
                            zzeiVar.f14742q = true;
                            return zzeiVar;
                        } catch (Throwable th2) {
                            m3287a(file2);
                            zzeiVar.m3286a(file, "1570054248636");
                            m3285a(String.format("%s/%s.dex", file, "1570054248636"));
                            throw th2;
                        }
                    } catch (zzdv e3) {
                        throw new zzeh(e3);
                    }
                } catch (FileNotFoundException e4) {
                    throw new zzeh(e4);
                }
            } catch (NullPointerException e5) {
                throw new zzeh(e5);
            }
        } catch (IOException e6) {
            throw new zzeh(e6);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3291a(int i, boolean z) {
        if (this.f14740o) {
            Future<?> submit = this.f14728c.submit(new alv(this, i, z));
            if (i == 0) {
                this.f14737l = submit;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final zzbs.zza m3284b(int i, boolean z) {
        if (i > 0 && z) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException e) {
            }
        }
        return m3293a();
    }

    public final Context getContext() {
        return this.f14727a;
    }

    public final boolean isInitialized() {
        return this.f14742q;
    }

    public final Method zza(String str, String str2) {
        zzfu zzfuVar = this.f14741p.get(new Pair(str, str2));
        if (zzfuVar == null) {
            return null;
        }
        return zzfuVar.zzcs();
    }

    public final boolean zza(String str, String str2, Class<?>... clsArr) {
        if (this.f14741p.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.f14741p.put(new Pair<>(str, str2), new zzfu(this, str, str2, clsArr));
        return true;
    }

    public final int zzbr() {
        return this.f14738m != null ? zzde.zzbr() : Integer.MIN_VALUE;
    }

    public final ExecutorService zzbx() {
        return this.f14728c;
    }

    public final DexClassLoader zzby() {
        return this.f14729d;
    }

    public final zzds zzbz() {
        return this.f14730e;
    }

    public final byte[] zzca() {
        return this.f14731f;
    }

    public final boolean zzcb() {
        return this.f14739n;
    }

    public final zzde zzcc() {
        return this.f14738m;
    }

    public final boolean zzcd() {
        return this.f14740o;
    }

    public final boolean zzce() {
        return this.f14743r;
    }

    public final zzbs.zza zzcf() {
        return this.f14736k;
    }

    public final Future zzcg() {
        return this.f14737l;
    }

    public final AdvertisingIdClient zzcj() {
        if (!this.f14733h) {
            return null;
        }
        if (this.f14732g != null) {
            return this.f14732g;
        }
        Future future = this.f14734i;
        if (future != null) {
            try {
                future.get(2000L, TimeUnit.MILLISECONDS);
                this.f14734i = null;
            } catch (InterruptedException | ExecutionException e) {
            } catch (TimeoutException e2) {
                this.f14734i.cancel(true);
            }
        }
        return this.f14732g;
    }
}
