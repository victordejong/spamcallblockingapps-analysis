package org.spongycastle.bcpg;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/SecretKeyPacket.class */
public class SecretKeyPacket extends ContainedPacket implements PublicKeyAlgorithmTags {
    public static final int USAGE_CHECKSUM = 255;
    public static final int USAGE_NONE = 0;
    public static final int USAGE_SHA1 = 254;
    private int encAlgorithm;

    /* renamed from: iv */
    private byte[] f990iv;
    private PublicKeyPacket pubKeyPacket;
    private S2K s2k;
    private int s2kUsage;
    private byte[] secKeyData;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SecretKeyPacket(BCPGInputStream bCPGInputStream) throws IOException {
        if (this instanceof SecretSubkeyPacket) {
            this.pubKeyPacket = new PublicSubkeyPacket(bCPGInputStream);
        } else {
            this.pubKeyPacket = new PublicKeyPacket(bCPGInputStream);
        }
        this.s2kUsage = bCPGInputStream.read();
        if (this.s2kUsage == 255 || this.s2kUsage == 254) {
            this.encAlgorithm = bCPGInputStream.read();
            this.s2k = new S2K(bCPGInputStream);
        } else {
            this.encAlgorithm = this.s2kUsage;
        }
        if (!((this.s2k != null && this.s2k.getType() == 101 && this.s2k.getProtectionMode() == 1) || this.s2kUsage == 0)) {
            if (this.encAlgorithm < 7) {
                this.f990iv = new byte[8];
            } else {
                this.f990iv = new byte[16];
            }
            bCPGInputStream.readFully(this.f990iv, 0, this.f990iv.length);
        }
        this.secKeyData = bCPGInputStream.readAll();
    }

    public SecretKeyPacket(PublicKeyPacket publicKeyPacket, int i, int i2, S2K s2k, byte[] bArr, byte[] bArr2) {
        this.pubKeyPacket = publicKeyPacket;
        this.encAlgorithm = i;
        this.s2kUsage = i2;
        this.s2k = s2k;
        this.f990iv = bArr;
        this.secKeyData = bArr2;
    }

    public SecretKeyPacket(PublicKeyPacket publicKeyPacket, int i, S2K s2k, byte[] bArr, byte[] bArr2) {
        this.pubKeyPacket = publicKeyPacket;
        this.encAlgorithm = i;
        if (i != 0) {
            this.s2kUsage = 255;
        } else {
            this.s2kUsage = 0;
        }
        this.s2k = s2k;
        this.f990iv = bArr;
        this.secKeyData = bArr2;
    }

    @Override // org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writePacket(5, getEncodedContents(), true);
    }

    public int getEncAlgorithm() {
        return this.encAlgorithm;
    }

    public byte[] getEncodedContents() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BCPGOutputStream bCPGOutputStream = new BCPGOutputStream(byteArrayOutputStream);
        bCPGOutputStream.write(this.pubKeyPacket.getEncodedContents());
        bCPGOutputStream.write(this.s2kUsage);
        if (this.s2kUsage == 255 || this.s2kUsage == 254) {
            bCPGOutputStream.write(this.encAlgorithm);
            bCPGOutputStream.writeObject(this.s2k);
        }
        if (this.f990iv != null) {
            bCPGOutputStream.write(this.f990iv);
        }
        if (this.secKeyData != null && this.secKeyData.length > 0) {
            bCPGOutputStream.write(this.secKeyData);
        }
        bCPGOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public byte[] getIV() {
        return this.f990iv;
    }

    public PublicKeyPacket getPublicKeyPacket() {
        return this.pubKeyPacket;
    }

    public S2K getS2K() {
        return this.s2k;
    }

    public int getS2KUsage() {
        return this.s2kUsage;
    }

    public byte[] getSecretKeyData() {
        return this.secKeyData;
    }
}
