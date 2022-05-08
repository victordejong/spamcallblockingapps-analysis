package com.apptentive.android.sdk.encryption;

import android.support.annotation.Nullable;
import android.support.p001v4.util.AtomicFile;
import com.apptentive.android.sdk.util.Util;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/Encryptor.class */
public class Encryptor {
    private static final int IV_SIZE = 16;

    @Nullable
    public static byte[] decrypt(EncryptionKey encryptionKey, @Nullable byte[] bArr) throws NoSuchPaddingException, InvalidKeyException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, InvalidAlgorithmParameterException {
        if (encryptionKey == null) {
            throw new IllegalArgumentException("Encryption key is null");
        } else if (bArr == null || encryptionKey.isNull()) {
            return bArr;
        } else {
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[bArr.length - 16];
            System.arraycopy(bArr, 0, bArr2, 0, 16);
            System.arraycopy(bArr, 16, bArr3, 0, bArr.length - 16);
            return decrypt(encryptionKey, bArr3, bArr2);
        }
    }

    private static byte[] decrypt(EncryptionKey encryptionKey, byte[] bArr, byte[] bArr2) throws NoSuchPaddingException, NoSuchAlgorithmException, BadPaddingException, IllegalBlockSizeException, InvalidAlgorithmParameterException, InvalidKeyException {
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
        Cipher instance = Cipher.getInstance(encryptionKey.getTransformation());
        instance.init(2, encryptionKey.getSecretKey(), ivParameterSpec);
        return instance.doFinal(bArr);
    }

    @Nullable
    public static String decryptString(EncryptionKey encryptionKey, @Nullable byte[] bArr) throws NoSuchPaddingException, InvalidAlgorithmParameterException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, InvalidKeyException {
        byte[] decrypt = decrypt(encryptionKey, bArr);
        return decrypt != null ? new String(decrypt) : null;
    }

    @Nullable
    public static byte[] encrypt(EncryptionKey encryptionKey, @Nullable String str) throws NoSuchPaddingException, InvalidKeyException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, InvalidAlgorithmParameterException {
        return str != null ? encrypt(encryptionKey, str.getBytes()) : null;
    }

    @Nullable
    public static byte[] encrypt(EncryptionKey encryptionKey, @Nullable byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, InvalidAlgorithmParameterException, InvalidKeyException {
        if (encryptionKey == null) {
            throw new IllegalArgumentException("Encryption key is null");
        } else if (bArr == null || encryptionKey.isNull()) {
            return bArr;
        } else {
            byte[] bArr2 = new byte[16];
            new SecureRandom().nextBytes(bArr2);
            byte[] encrypt = encrypt(encryptionKey, bArr, bArr2);
            byte[] bArr3 = new byte[bArr2.length + encrypt.length];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            System.arraycopy(encrypt, 0, bArr3, bArr2.length, encrypt.length);
            return bArr3;
        }
    }

    private static byte[] encrypt(EncryptionKey encryptionKey, byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidAlgorithmParameterException, InvalidKeyException, BadPaddingException, IllegalBlockSizeException {
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
        Cipher instance = Cipher.getInstance(encryptionKey.getTransformation());
        instance.init(1, encryptionKey.getSecretKey(), ivParameterSpec);
        return instance.doFinal(bArr);
    }

    public static byte[] readFromEncryptedFile(EncryptionKey encryptionKey, File file) throws IOException, NoSuchPaddingException, InvalidKeyException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, InvalidAlgorithmParameterException {
        return decrypt(encryptionKey, Util.readBytes(file));
    }

    public static void writeToEncryptedFile(EncryptionKey encryptionKey, File file, byte[] bArr) throws IOException, NoSuchPaddingException, InvalidAlgorithmParameterException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, InvalidKeyException {
        Throwable th;
        FileOutputStream fileOutputStream;
        AtomicFile atomicFile = new AtomicFile(file);
        try {
            FileOutputStream startWrite = atomicFile.startWrite();
            try {
                startWrite.write(encrypt(encryptionKey, bArr));
                atomicFile.finishWrite(startWrite);
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = startWrite;
                atomicFile.failWrite(fileOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }
}
