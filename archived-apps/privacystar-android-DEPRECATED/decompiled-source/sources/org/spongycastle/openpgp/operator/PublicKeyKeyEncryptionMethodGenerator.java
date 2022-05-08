package org.spongycastle.openpgp.operator;

import java.io.IOException;
import java.math.BigInteger;
import org.spongycastle.bcpg.ContainedPacket;
import org.spongycastle.bcpg.MPInteger;
import org.spongycastle.bcpg.PublicKeyEncSessionPacket;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPublicKey;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator.class */
public abstract class PublicKeyKeyEncryptionMethodGenerator extends PGPKeyEncryptionMethodGenerator {
    private PGPPublicKey pubKey;

    /* JADX INFO: Access modifiers changed from: protected */
    public PublicKeyKeyEncryptionMethodGenerator(PGPPublicKey pGPPublicKey) {
        this.pubKey = pGPPublicKey;
        int algorithm = pGPPublicKey.getAlgorithm();
        switch (algorithm) {
            case 1:
            case 2:
                return;
            case 3:
                throw new IllegalArgumentException("Can't use an RSA_SIGN key for encryption.");
            default:
                switch (algorithm) {
                    case 16:
                    case 18:
                    case 20:
                        return;
                    case 17:
                        throw new IllegalArgumentException("Can't use DSA for encryption.");
                    case 19:
                        throw new IllegalArgumentException("Can't use ECDSA for encryption.");
                    default:
                        throw new IllegalArgumentException("unknown asymmetric algorithm: " + pGPPublicKey.getAlgorithm());
                }
        }
    }

    private byte[] convertToEncodedMPI(byte[] bArr) throws PGPException {
        try {
            return new MPInteger(new BigInteger(1, bArr)).getEncoded();
        } catch (IOException e) {
            throw new PGPException("Invalid MPI encoding: " + e.getMessage(), e);
        }
    }

    protected abstract byte[] encryptSessionInfo(PGPPublicKey pGPPublicKey, byte[] bArr) throws PGPException;

    @Override // org.spongycastle.openpgp.operator.PGPKeyEncryptionMethodGenerator
    public ContainedPacket generate(int i, byte[] bArr) throws PGPException {
        return new PublicKeyEncSessionPacket(this.pubKey.getKeyID(), this.pubKey.getAlgorithm(), processSessionInfo(encryptSessionInfo(this.pubKey, bArr)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public byte[][] processSessionInfo(byte[] bArr) throws PGPException {
        byte[][] bArr2;
        int algorithm = this.pubKey.getAlgorithm();
        if (algorithm != 16) {
            if (algorithm == 18) {
                bArr2 = new byte[]{bArr};
            } else if (algorithm != 20) {
                switch (algorithm) {
                    case 1:
                    case 2:
                        bArr2 = new byte[]{convertToEncodedMPI(bArr)};
                        break;
                    default:
                        throw new PGPException("unknown asymmetric algorithm: " + this.pubKey.getAlgorithm());
                }
            }
            return bArr2;
        }
        byte[] bArr3 = new byte[bArr.length / 2];
        byte[] bArr4 = new byte[bArr.length / 2];
        System.arraycopy(bArr, 0, bArr3, 0, bArr3.length);
        System.arraycopy(bArr, bArr3.length, bArr4, 0, bArr4.length);
        bArr2 = new byte[]{convertToEncodedMPI(bArr3), convertToEncodedMPI(bArr4)};
        return bArr2;
    }
}
