package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzds.class */
public final class zzds {

    /* renamed from: b */
    private static Cipher f14566b;

    /* renamed from: c */
    private static final Object f14567c = new Object();

    /* renamed from: d */
    private static final Object f14568d = new Object();

    /* renamed from: a */
    private final SecureRandom f14569a = null;

    public zzds(SecureRandom secureRandom) {
    }

    /* renamed from: a */
    private static Cipher m3348a() {
        Cipher cipher;
        synchronized (f14568d) {
            if (f14566b == null) {
                f14566b = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = f14566b;
        }
        return cipher;
    }

    public final byte[] zza(byte[] bArr, String str) {
        byte[] doFinal;
        if (bArr.length == 16) {
            try {
                byte[] zza = zzci.zza(str, false);
                if (zza.length > 16) {
                    ByteBuffer allocate = ByteBuffer.allocate(zza.length);
                    allocate.put(zza);
                    allocate.flip();
                    byte[] bArr2 = new byte[16];
                    byte[] bArr3 = new byte[zza.length - 16];
                    allocate.get(bArr2);
                    allocate.get(bArr3);
                    SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                    synchronized (f14567c) {
                        m3348a().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                        doFinal = m3348a().doFinal(bArr3);
                    }
                    return doFinal;
                }
                throw new zzdv(this);
            } catch (IllegalArgumentException e) {
                throw new zzdv(this, e);
            } catch (InvalidAlgorithmParameterException e2) {
                throw new zzdv(this, e2);
            } catch (InvalidKeyException e3) {
                throw new zzdv(this, e3);
            } catch (NoSuchAlgorithmException e4) {
                throw new zzdv(this, e4);
            } catch (BadPaddingException e5) {
                throw new zzdv(this, e5);
            } catch (IllegalBlockSizeException e6) {
                throw new zzdv(this, e6);
            } catch (NoSuchPaddingException e7) {
                throw new zzdv(this, e7);
            }
        } else {
            throw new zzdv(this);
        }
    }

    public final byte[] zzar(String str) {
        try {
            byte[] zza = zzci.zza(str, false);
            if (zza.length == 32) {
                ByteBuffer wrap = ByteBuffer.wrap(zza, 4, 16);
                byte[] bArr = new byte[16];
                wrap.get(bArr);
                for (int i = 0; i < 16; i++) {
                    bArr[i] = (byte) (bArr[i] ^ 68);
                }
                return bArr;
            }
            throw new zzdv(this);
        } catch (IllegalArgumentException e) {
            throw new zzdv(this, e);
        }
    }

    public final String zzb(byte[] bArr, byte[] bArr2) {
        byte[] doFinal;
        byte[] iv;
        if (bArr.length == 16) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                synchronized (f14567c) {
                    m3348a().init(1, secretKeySpec, (SecureRandom) null);
                    doFinal = m3348a().doFinal(bArr2);
                    iv = m3348a().getIV();
                }
                int length = doFinal.length + iv.length;
                ByteBuffer allocate = ByteBuffer.allocate(length);
                allocate.put(iv).put(doFinal);
                allocate.flip();
                byte[] bArr3 = new byte[length];
                allocate.get(bArr3);
                return zzci.zza(bArr3, false);
            } catch (InvalidKeyException e) {
                throw new zzdv(this, e);
            } catch (NoSuchAlgorithmException e2) {
                throw new zzdv(this, e2);
            } catch (BadPaddingException e3) {
                throw new zzdv(this, e3);
            } catch (IllegalBlockSizeException e4) {
                throw new zzdv(this, e4);
            } catch (NoSuchPaddingException e5) {
                throw new zzdv(this, e5);
            }
        } else {
            throw new zzdv(this);
        }
    }
}
