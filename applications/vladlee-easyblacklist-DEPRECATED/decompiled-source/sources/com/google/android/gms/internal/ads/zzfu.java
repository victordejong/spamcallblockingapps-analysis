package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfu.class */
public class zzfu {

    /* renamed from: a */
    private static final String f14785a = zzfu.class.getSimpleName();

    /* renamed from: b */
    private final zzei f14786b;

    /* renamed from: c */
    private final String f14787c;

    /* renamed from: d */
    private final String f14788d;

    /* renamed from: g */
    private final Class<?>[] f14791g;

    /* renamed from: e */
    private final int f14789e = 2;

    /* renamed from: f */
    private volatile Method f14790f = null;

    /* renamed from: h */
    private CountDownLatch f14792h = new CountDownLatch(1);

    public zzfu(zzei zzeiVar, String str, String str2, Class<?>... clsArr) {
        this.f14786b = zzeiVar;
        this.f14787c = str;
        this.f14788d = str2;
        this.f14791g = clsArr;
        this.f14786b.zzbx().submit(new amb(this));
    }

    /* renamed from: a */
    private final String m3268a(byte[] bArr, String str) {
        return new String(this.f14786b.zzbz().zza(bArr, str), "UTF-8");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m3269a(zzfu zzfuVar) {
        try {
            Class loadClass = zzfuVar.f14786b.zzby().loadClass(zzfuVar.m3268a(zzfuVar.f14786b.zzca(), zzfuVar.f14787c));
            if (loadClass != null) {
                zzfuVar.f14790f = loadClass.getMethod(zzfuVar.m3268a(zzfuVar.f14786b.zzca(), zzfuVar.f14788d), zzfuVar.f14791g);
                Method method = zzfuVar.f14790f;
            }
        } catch (zzdv | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException e) {
        } catch (Throwable th) {
            zzfuVar.f14792h.countDown();
            throw th;
        }
        zzfuVar.f14792h.countDown();
    }

    public final Method zzcs() {
        if (this.f14790f != null) {
            return this.f14790f;
        }
        try {
            if (!this.f14792h.await(2L, TimeUnit.SECONDS)) {
                return null;
            }
            return this.f14790f;
        } catch (InterruptedException e) {
            return null;
        }
    }
}
