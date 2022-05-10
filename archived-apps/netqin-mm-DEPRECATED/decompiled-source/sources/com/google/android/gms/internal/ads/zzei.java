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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzei.class */
public final class zzei {

    /* renamed from: a */
    public static Cipher f28042a;

    /* renamed from: b */
    public static final Object f28043b = new Object();

    /* renamed from: c */
    public static final Object f28044c = new Object();

    public zzei(SecureRandom secureRandom) {
    }

    /* renamed from: a */
    public static Cipher m12539a() throws NoSuchAlgorithmException, NoSuchPaddingException {
        Cipher cipher;
        synchronized (f28044c) {
            if (f28042a == null) {
                f28042a = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = f28042a;
        }
        return cipher;
    }

    /* renamed from: a */
    public final String m12536a(byte[] bArr, byte[] bArr2) throws zzeh {
        byte[] doFinal;
        byte[] iv;
        if (bArr.length == 16) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                synchronized (f28043b) {
                    m12539a().init(1, secretKeySpec, (SecureRandom) null);
                    doFinal = m12539a().doFinal(bArr2);
                    iv = m12539a().getIV();
                }
                int length = doFinal.length + iv.length;
                ByteBuffer allocate = ByteBuffer.allocate(length);
                allocate.put(iv).put(doFinal);
                allocate.flip();
                byte[] bArr3 = new byte[length];
                allocate.get(bArr3);
                return zzcv.m13832a(bArr3, false);
            } catch (InvalidKeyException e) {
                throw new zzeh(this, e);
            } catch (NoSuchAlgorithmException e2) {
                throw new zzeh(this, e2);
            } catch (BadPaddingException e3) {
                throw new zzeh(this, e3);
            } catch (IllegalBlockSizeException e4) {
                throw new zzeh(this, e4);
            } catch (NoSuchPaddingException e5) {
                throw new zzeh(this, e5);
            }
        } else {
            throw new zzeh(this);
        }
    }

    /* renamed from: a */
    public final byte[] m12538a(String str) throws zzeh {
        try {
            byte[] a = zzcv.m13833a(str, false);
            if (a.length == 32) {
                ByteBuffer wrap = ByteBuffer.wrap(a, 4, 16);
                byte[] bArr = new byte[16];
                wrap.get(bArr);
                for (int i = 0; i < 16; i++) {
                    bArr[i] = (byte) (bArr[i] ^ 68);
                }
                return bArr;
            }
            throw new zzeh(this);
        } catch (IllegalArgumentException e) {
            throw new zzeh(this, e);
        }
    }

    /* renamed from: a */
    public final byte[] m12537a(byte[] bArr, String str) throws zzeh {
        byte[] doFinal;
        if (bArr.length == 16) {
            try {
                byte[] a = zzcv.m13833a(str, false);
                if (a.length > 16) {
                    ByteBuffer allocate = ByteBuffer.allocate(a.length);
                    allocate.put(a);
                    allocate.flip();
                    byte[] bArr2 = new byte[16];
                    byte[] bArr3 = new byte[a.length - 16];
                    allocate.get(bArr2);
                    allocate.get(bArr3);
                    SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                    synchronized (f28043b) {
                        m12539a().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                        doFinal = m12539a().doFinal(bArr3);
                    }
                    return doFinal;
                }
                throw new zzeh(this);
            } catch (IllegalArgumentException e) {
                throw new zzeh(this, e);
            } catch (InvalidAlgorithmParameterException e2) {
                throw new zzeh(this, e2);
            } catch (InvalidKeyException e3) {
                throw new zzeh(this, e3);
            } catch (NoSuchAlgorithmException e4) {
                throw new zzeh(this, e4);
            } catch (BadPaddingException e5) {
                throw new zzeh(this, e5);
            } catch (IllegalBlockSizeException e6) {
                throw new zzeh(this, e6);
            } catch (NoSuchPaddingException e7) {
                throw new zzeh(this, e7);
            }
        } else {
            throw new zzeh(this);
        }
    }
}
