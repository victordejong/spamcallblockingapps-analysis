package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzal.class */
public final class zzal implements zza {

    /* renamed from: a */
    private final Map<String, C1794cm> f11023a;

    /* renamed from: b */
    private long f11024b;

    /* renamed from: c */
    private final zzap f11025c;

    /* renamed from: d */
    private final int f11026d;

    public zzal(zzap zzapVar) {
        this(zzapVar, (byte) 0);
    }

    private zzal(zzap zzapVar, byte b) {
        this.f11023a = new LinkedHashMap(16, 0.75f, true);
        this.f11024b = 0L;
        this.f11025c = zzapVar;
        this.f11026d = 5242880;
    }

    public zzal(File file, int i) {
        this.f11023a = new LinkedHashMap(16, 0.75f, true);
        this.f11024b = 0L;
        this.f11025c = new C1802cu(file);
        this.f11026d = 20971520;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m4361a(InputStream inputStream) {
        return (m4352c(inputStream) << 24) | m4352c(inputStream) | 0 | (m4352c(inputStream) << 8) | (m4352c(inputStream) << 16);
    }

    /* renamed from: a */
    private static InputStream m4362a(File file) {
        return new FileInputStream(file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m4364a(C1816dh dhVar) {
        return new String(m4363a(dhVar, m4354b((InputStream) dhVar)), "UTF-8");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m4360a(OutputStream outputStream, int i) {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write(i >>> 24);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m4359a(OutputStream outputStream, long j) {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m4358a(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        m4359a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    /* renamed from: a */
    private final void m4357a(String str) {
        synchronized (this) {
            boolean delete = m4351c(str).delete();
            m4350d(str);
            if (!delete) {
                zzag.m4412d("Could not delete cache entry for key=%s, filename=%s", str, m4353b(str));
            }
        }
    }

    /* renamed from: a */
    private final void m4356a(String str, C1794cm cmVar) {
        if (!this.f11023a.containsKey(str)) {
            this.f11024b += cmVar.f8339a;
        } else {
            this.f11024b += cmVar.f8339a - this.f11023a.get(str).f8339a;
        }
        this.f11023a.put(str, cmVar);
    }

    /* renamed from: a */
    private static byte[] m4363a(C1816dh dhVar, long j) {
        long a = dhVar.m4736a();
        if (j >= 0 && j <= a) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(dhVar).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder(73);
        sb.append("streamToBytes length=");
        sb.append(j);
        sb.append(", maxLength=");
        sb.append(a);
        throw new IOException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static long m4354b(InputStream inputStream) {
        return (m4352c(inputStream) & 255) | 0 | ((m4352c(inputStream) & 255) << 8) | ((m4352c(inputStream) & 255) << 16) | ((m4352c(inputStream) & 255) << 24) | ((m4352c(inputStream) & 255) << 32) | ((m4352c(inputStream) & 255) << 40) | ((m4352c(inputStream) & 255) << 48) | ((255 & m4352c(inputStream)) << 56);
    }

    /* renamed from: b */
    private static String m4353b(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String valueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static List<zzk> m4355b(C1816dh dhVar) {
        int a = m4361a((InputStream) dhVar);
        if (a >= 0) {
            List<zzk> emptyList = a == 0 ? Collections.emptyList() : new ArrayList<>();
            for (int i = 0; i < a; i++) {
                emptyList.add(new zzk(m4364a(dhVar).intern(), m4364a(dhVar).intern()));
            }
            return emptyList;
        }
        StringBuilder sb = new StringBuilder(31);
        sb.append("readHeaderList size=");
        sb.append(a);
        throw new IOException(sb.toString());
    }

    /* renamed from: c */
    private static int m4352c(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* renamed from: c */
    private final File m4351c(String str) {
        return new File(this.f11025c.zzn(), m4353b(str));
    }

    /* renamed from: d */
    private final void m4350d(String str) {
        C1794cm remove = this.f11023a.remove(str);
        if (remove != null) {
            this.f11024b -= remove.f8339a;
        }
    }

    @Override // com.google.android.gms.internal.ads.zza
    public final void initialize() {
        synchronized (this) {
            File zzn = this.f11025c.zzn();
            if (!zzn.exists()) {
                if (!zzn.mkdirs()) {
                    zzag.m4411e("Unable to create cache dir %s", zzn.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = zzn.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    try {
                        long length = file.length();
                        C1816dh dhVar = new C1816dh(new BufferedInputStream(m4362a(file)), length);
                        try {
                            C1794cm a = C1794cm.m4742a(dhVar);
                            a.f8339a = length;
                            m4356a(a.f8340b, a);
                            dhVar.close();
                        } catch (Throwable th) {
                            dhVar.close();
                            throw th;
                            break;
                        }
                    } catch (IOException e) {
                        file.delete();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zza
    public final zzd zza(String str) {
        synchronized (this) {
            C1794cm cmVar = this.f11023a.get(str);
            if (cmVar == null) {
                return null;
            }
            File c = m4351c(str);
            try {
                C1816dh dhVar = new C1816dh(new BufferedInputStream(m4362a(c)), c.length());
                try {
                    C1794cm a = C1794cm.m4742a(dhVar);
                    if (!TextUtils.equals(str, a.f8340b)) {
                        zzag.m4412d("%s: key=%s, found=%s", c.getAbsolutePath(), str, a.f8340b);
                        m4350d(str);
                        return null;
                    }
                    byte[] a2 = m4363a(dhVar, dhVar.m4736a());
                    zzd zzdVar = new zzd();
                    zzdVar.data = a2;
                    zzdVar.zzg = cmVar.f8341c;
                    zzdVar.zzh = cmVar.f8342d;
                    zzdVar.zzi = cmVar.f8343e;
                    zzdVar.zzj = cmVar.f8344f;
                    zzdVar.zzk = cmVar.f8345g;
                    List<zzk> list = cmVar.f8346h;
                    TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                    for (zzk zzkVar : list) {
                        treeMap.put(zzkVar.getName(), zzkVar.getValue());
                    }
                    zzdVar.zzl = treeMap;
                    zzdVar.zzm = Collections.unmodifiableList(cmVar.f8346h);
                    return zzdVar;
                } finally {
                    dhVar.close();
                }
            } catch (IOException e) {
                zzag.m4412d("%s: %s", c.getAbsolutePath(), e.toString());
                m4357a(str);
                return null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zza
    public final void zza(String str, zzd zzdVar) {
        int i;
        synchronized (this) {
            if (this.f11024b + zzdVar.data.length <= this.f11026d || zzdVar.data.length <= this.f11026d * 0.9f) {
                File c = m4351c(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(c));
                    C1794cm cmVar = new C1794cm(str, zzdVar);
                    if (cmVar.m4741a(bufferedOutputStream)) {
                        bufferedOutputStream.write(zzdVar.data);
                        bufferedOutputStream.close();
                        cmVar.f8339a = c.length();
                        m4356a(str, cmVar);
                        if (this.f11024b >= this.f11026d) {
                            if (zzag.DEBUG) {
                                zzag.m4410v("Pruning old cache entries.", new Object[0]);
                            }
                            long j = this.f11024b;
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            Iterator<Map.Entry<String, C1794cm>> it = this.f11023a.entrySet().iterator();
                            int i2 = 0;
                            while (true) {
                                i = i2;
                                if (!it.hasNext()) {
                                    break;
                                }
                                C1794cm value = it.next().getValue();
                                if (m4351c(value.f8340b).delete()) {
                                    this.f11024b -= value.f8339a;
                                } else {
                                    zzag.m4412d("Could not delete cache entry for key=%s, filename=%s", value.f8340b, m4353b(value.f8340b));
                                }
                                it.remove();
                                i2++;
                                if (((float) this.f11024b) < this.f11026d * 0.9f) {
                                    i = i2;
                                    break;
                                }
                            }
                            if (zzag.DEBUG) {
                                zzag.m4410v("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f11024b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                            }
                        }
                        return;
                    }
                    bufferedOutputStream.close();
                    zzag.m4412d("Failed to write header for %s", c.getAbsolutePath());
                    throw new IOException();
                } catch (IOException e) {
                    if (!c.delete()) {
                        zzag.m4412d("Could not clean up file %s", c.getAbsolutePath());
                    }
                }
            }
        }
    }
}
