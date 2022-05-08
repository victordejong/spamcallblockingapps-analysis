package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ti */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ti.class */
public final class C2249ti {

    /* renamed from: b */
    private static boolean f10501b = false;

    /* renamed from: c */
    private static MessageDigest f10502c;

    /* renamed from: d */
    private static final Object f10503d = new Object();

    /* renamed from: e */
    private static final Object f10504e = new Object();

    /* renamed from: a */
    static CountDownLatch f10500a = new CountDownLatch(1);

    /* renamed from: a */
    private static zzbs.zza m4472a(zzbs.zza.zzd zzdVar) {
        zzbs.zza.zzb zzan = zzbs.zza.zzan();
        zzan.zzau(zzdVar.zzae());
        return (zzbs.zza) ((zzdrt) zzan.zzbaf());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m4471a(zzbs.zza zzaVar, String str) {
        byte[] bArr;
        zzdte zzbaf;
        byte[] byteArray = zzaVar.toByteArray();
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzclj)).booleanValue()) {
            Vector<byte[]> b = m4466b(byteArray);
            if (b == null || b.size() == 0) {
                bArr = m4468a(m4472a(zzbs.zza.zzd.PSN_ENCODE_SIZE_FAIL).toByteArray(), str, true);
                return zzci.zza(bArr, true);
            }
            zzbs.zzf.zza zzbi = zzbs.zzf.zzbi();
            Iterator<byte[]> it = b.iterator();
            while (it.hasNext()) {
                zzbi.zzi(zzdqk.zzu(m4468a(it.next(), str, false)));
            }
            zzbi.zzj(zzdqk.zzu(m4469a(byteArray)));
            zzbaf = zzbi.zzbaf();
        } else if (alw.f7588a != null) {
            zzbaf = zzbs.zzf.zzbi().zzi(zzdqk.zzu(alw.f7588a.zzc(byteArray, str != null ? str.getBytes() : new byte[0]))).zza(zzbz.TINK_HYBRID).zzbaf();
        } else {
            throw new GeneralSecurityException();
        }
        bArr = ((zzbs.zzf) ((zzdrt) zzbaf)).toByteArray();
        return zzci.zza(bArr, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m4473a() {
        synchronized (f10504e) {
            if (!f10501b) {
                f10501b = true;
                new Thread(new RunnableC2269ub((byte) 0)).start();
            }
        }
    }

    /* renamed from: a */
    public static byte[] m4469a(byte[] bArr) {
        byte[] digest;
        synchronized (f10503d) {
            MessageDigest b = m4467b();
            if (b != null) {
                b.reset();
                b.update(bArr);
                digest = f10502c.digest();
            } else {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
        }
        return digest;
    }

    /* renamed from: a */
    private static byte[] m4468a(byte[] bArr, String str, boolean z) {
        ByteBuffer byteBuffer;
        int i = z ? 239 : 255;
        byte[] bArr2 = bArr;
        if (bArr.length > i) {
            bArr2 = m4472a(zzbs.zza.zzd.PSN_ENCODE_SIZE_FAIL).toByteArray();
        }
        if (bArr2.length < i) {
            byte[] bArr3 = new byte[i - bArr2.length];
            new SecureRandom().nextBytes(bArr3);
            byteBuffer = ByteBuffer.allocate(i + 1).put((byte) bArr2.length).put(bArr2).put(bArr3);
        } else {
            byteBuffer = ByteBuffer.allocate(i + 1).put((byte) bArr2.length).put(bArr2);
        }
        byte[] array = byteBuffer.array();
        byte[] bArr4 = array;
        if (z) {
            bArr4 = ByteBuffer.allocate(256).put(m4469a(array)).put(array).array();
        }
        byte[] bArr5 = new byte[256];
        for (AbstractC2317vw vwVar : new zzcp().f13636cN) {
            vwVar.mo4447a(bArr4, bArr5);
        }
        if (str != null && str.length() > 0) {
            String str2 = str;
            if (str.length() > 32) {
                str2 = str.substring(0, 32);
            }
            new zzdpx(str2.getBytes("UTF-8")).zzt(bArr5);
        }
        return bArr5;
    }

    /* renamed from: b */
    private static MessageDigest m4467b() {
        boolean z;
        MessageDigest messageDigest;
        m4473a();
        try {
            z = f10500a.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            z = false;
        }
        if (z && (messageDigest = f10502c) != null) {
            return messageDigest;
        }
        return null;
    }

    /* renamed from: b */
    private static Vector<byte[]> m4466b(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + 255) - 1) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i = 0; i < length; i++) {
            int i2 = i * 255;
            try {
                vector.add(Arrays.copyOfRange(bArr, i2, bArr.length - i2 > 255 ? i2 + 255 : bArr.length));
            } catch (IndexOutOfBoundsException e) {
                return null;
            }
        }
        return vector;
    }
}
