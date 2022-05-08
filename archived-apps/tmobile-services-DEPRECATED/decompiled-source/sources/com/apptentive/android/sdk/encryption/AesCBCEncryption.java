package com.apptentive.android.sdk.encryption;

import androidx.annotation.NonNull;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.util.ObjectUtils;
import com.apptentive.android.sdk.util.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.security.Key;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.spec.IvParameterSpec;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/AesCBCEncryption.class */
class AesCBCEncryption implements Encryption {
    private final Key key;
    private final SecureRandom secureRandom = new SecureRandom();
    private final String transformation;

    public AesCBCEncryption(Key key, String str) {
        if (key == null) {
            throw new IllegalArgumentException("Key is null");
        } else if (!StringUtils.isNullOrEmpty(str)) {
            this.key = key;
            this.transformation = str;
        } else {
            throw new IllegalArgumentException("Transformation is null or empty");
        }
    }

    @Override // com.apptentive.android.sdk.Encryption
    @NonNull
    public byte[] decrypt(@NonNull byte[] bArr) throws EncryptionException {
        Throwable th;
        try {
            if (ObjectUtils.isNullOrEmpty(bArr)) {
                return bArr;
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            byte[] bArr2 = new byte[16];
            if (byteArrayInputStream.read(bArr2) == 16) {
                Cipher instance = Cipher.getInstance(this.transformation);
                instance.init(2, this.key, new IvParameterSpec(bArr2));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                CipherInputStream cipherInputStream = null;
                try {
                    cipherInputStream = new CipherInputStream(byteArrayInputStream, instance);
                    try {
                        byte[] bArr3 = new byte[512];
                        while (true) {
                            int read = cipherInputStream.read(bArr3);
                            if (read != -1) {
                                byteArrayOutputStream.write(bArr3, 0, read);
                            } else {
                                cipherInputStream.close();
                                return byteArrayOutputStream.toByteArray();
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cipherInputStream != null) {
                            cipherInputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } else {
                throw new EncryptionException("Unable to read initialization vector");
            }
        } catch (Exception e) {
            throw new EncryptionException(e);
        }
    }

    @Override // com.apptentive.android.sdk.Encryption
    @NonNull
    public byte[] encrypt(@NonNull byte[] bArr) throws EncryptionException {
        Throwable th;
        try {
            if (ObjectUtils.isNullOrEmpty(bArr)) {
                return bArr;
            }
            Cipher instance = Cipher.getInstance(this.transformation);
            byte[] bArr2 = new byte[16];
            this.secureRandom.nextBytes(bArr2);
            instance.init(1, this.key, new IvParameterSpec(bArr2));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(bArr2);
            CipherOutputStream cipherOutputStream = null;
            try {
                CipherOutputStream cipherOutputStream2 = new CipherOutputStream(byteArrayOutputStream, instance);
                int i = 0;
                while (i < bArr.length) {
                    try {
                        int min = Math.min(512, bArr.length - i);
                        cipherOutputStream2.write(bArr, i, min);
                        i += min;
                    } catch (Throwable th2) {
                        th = th2;
                        cipherOutputStream = cipherOutputStream2;
                        if (cipherOutputStream != null) {
                            cipherOutputStream.close();
                        }
                        throw th;
                    }
                }
                cipherOutputStream2.close();
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e) {
            throw new EncryptionException(e);
        }
    }
}
