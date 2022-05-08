package com.flurry.sdk;

import android.os.Build;
import android.text.TextUtils;
import com.flurry.sdk.C3316iw;
import com.flurry.sdk.C3340ji;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.util.Locale;
import java.util.UUID;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: com.flurry.sdk.ix */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ix.class */
public class C3320ix {

    /* renamed from: a */
    public static final String f5639a = "ix";

    /* renamed from: b */
    public C3322iy f5640b;

    /* renamed from: d */
    public byte[] f5641d = null;

    /* renamed from: e */
    public final C3340ji<byte[]> f5642e = new C3340ji<>(new C3411kh());

    /* renamed from: f */
    public C3342jj<C3316iw> f5643f;

    public C3320ix() {
        this.f5640b = null;
        this.f5643f = null;
        this.f5643f = new C3342jj<>(m32695b(), "installationNum", 1, new AbstractC3422ko<C3316iw>(this) { // from class: com.flurry.sdk.ix.1
            @Override // com.flurry.sdk.AbstractC3422ko
            /* renamed from: a */
            public final AbstractC3417kl<C3316iw> mo32339a(int i) {
                return new C3316iw.C3317a();
            }
        });
        this.f5640b = new C3322iy();
        byte[] a = m32697a(m32694c());
        if (a != null && Build.VERSION.SDK_INT >= 23) {
            C3443kz.m32476b(m32695b());
            m32696a(a, C3340ji.EnumC3341a.CRYPTO_ALGO_PADDING_7);
        }
        m32698a();
    }

    /* renamed from: b */
    public static File m32695b() {
        return new File(C3443kz.m32477b().getPath() + File.separator + "installationNum");
    }

    /* renamed from: c */
    public static SecretKey m32694c() {
        String str = C3331jb.m32681a().f5682d;
        String a = C3441kx.m32489a(C3331jb.m32681a().f5679a);
        try {
            return new SecretKeySpec(SecretKeyFactory.getInstance("PBEWithSHA256And256BitAES-CBC-BC").generateSecret(new PBEKeySpec(str.toCharArray(), ByteBuffer.allocate(8).putLong(!TextUtils.isEmpty(a) ? C3445la.m32449i(a) : Long.MIN_VALUE).array(), 1000, 256)).getEncoded(), "AES");
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            C3356jq.m32614a(4, f5639a, "Error in generate secret key", e);
            return null;
        }
    }

    /* renamed from: d */
    public static byte[] m32693d() {
        try {
            byte[] bArr = new byte[16];
            SecureRandom.getInstance("SHA1PRNG").nextBytes(bArr);
            return bArr;
        } catch (NoSuchAlgorithmException e) {
            C3356jq.m32614a(4, f5639a, "Error in generating iv", e);
            return null;
        }
    }

    /* renamed from: a */
    public final boolean m32696a(byte[] bArr, C3340ji.EnumC3341a aVar) {
        C3316iw iwVar;
        boolean z = true;
        try {
            C3443kz.m32476b(m32695b());
            byte[] d = m32693d();
            byte[] a = this.f5642e.m32644a((C3340ji<byte[]>) bArr, m32692e(), new IvParameterSpec(d), aVar);
            if (a != null) {
                iwVar = new C3316iw(a, d, true, aVar.ordinal());
            } else {
                iwVar = new C3316iw(bArr, new byte[0], false, aVar.ordinal());
            }
            this.f5643f.m32640a(iwVar);
        } catch (IOException e) {
            String str = f5639a;
            C3356jq.m32614a(5, str, "Error while generating UUID" + e.getMessage(), e);
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final byte[] m32698a() {
        byte[] bArr = this.f5641d;
        byte[] bArr2 = bArr;
        if (bArr == null) {
            C3340ji.EnumC3341a aVar = Build.VERSION.SDK_INT < 23 ? C3340ji.EnumC3341a.CRYPTO_ALGO_PADDING_5 : C3340ji.EnumC3341a.CRYPTO_ALGO_PADDING_7;
            bArr2 = m32697a(m32692e());
            if (bArr2 == null) {
                String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.ENGLISH);
                bArr2 = null;
                if (!TextUtils.isEmpty(lowerCase)) {
                    String replaceAll = lowerCase.replaceAll("[^a-f0-9]+", "");
                    if (replaceAll.length() % 2 != 0) {
                        String str = f5639a;
                        C3356jq.m32615a(4, str, "Input string must contain an even number of characters " + replaceAll);
                    } else {
                        bArr2 = C3445la.m32453e(replaceAll);
                    }
                }
                m32696a(bArr2, aVar);
            }
            this.f5641d = bArr2;
        }
        return bArr2;
    }

    /* renamed from: a */
    public final byte[] m32697a(Key key) {
        byte[] bArr;
        try {
            C3316iw a = this.f5643f.m32641a();
            bArr = null;
            if (a != null) {
                if (a.f5635a) {
                    byte[] bArr2 = a.f5636b;
                    byte[] bArr3 = a.f5637c;
                    C3340ji.EnumC3341a a2 = C3340ji.EnumC3341a.m32642a(a.f5638d);
                    bArr = null;
                    if (bArr2 != null) {
                        bArr = null;
                        if (bArr3 != null) {
                            bArr = this.f5642e.m32643a(bArr3, key, new IvParameterSpec(bArr2), a2);
                        }
                    }
                } else {
                    bArr = a.f5637c;
                }
            }
        } catch (IOException e) {
            C3356jq.m32615a(5, f5639a, "Error while reading Android Install Id. Deleting file.");
            bArr = null;
        }
        return bArr;
    }

    /* renamed from: e */
    public final Key m32692e() {
        return Build.VERSION.SDK_INT < 23 ? m32694c() : this.f5640b.m32691a();
    }
}
