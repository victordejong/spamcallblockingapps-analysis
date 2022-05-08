package org.spongycastle.openpgp;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.spongycastle.bcpg.PublicSubkeyPacket;
import org.spongycastle.openpgp.operator.PBESecretKeyEncryptor;
import org.spongycastle.openpgp.operator.PGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPKeyRingGenerator.class */
public class PGPKeyRingGenerator {
    private PGPDigestCalculator checksumCalculator;
    private PGPSignatureSubpacketVector hashedPcks;
    private PBESecretKeyEncryptor keyEncryptor;
    private PGPContentSignerBuilder keySignerBuilder;
    List keys = new ArrayList();
    private PGPKeyPair masterKey;
    private PGPSignatureSubpacketVector unhashedPcks;

    public PGPKeyRingGenerator(int i, PGPKeyPair pGPKeyPair, String str, PGPDigestCalculator pGPDigestCalculator, PGPSignatureSubpacketVector pGPSignatureSubpacketVector, PGPSignatureSubpacketVector pGPSignatureSubpacketVector2, PGPContentSignerBuilder pGPContentSignerBuilder, PBESecretKeyEncryptor pBESecretKeyEncryptor) throws PGPException {
        this.masterKey = pGPKeyPair;
        this.keyEncryptor = pBESecretKeyEncryptor;
        this.checksumCalculator = pGPDigestCalculator;
        this.keySignerBuilder = pGPContentSignerBuilder;
        this.hashedPcks = pGPSignatureSubpacketVector;
        this.unhashedPcks = pGPSignatureSubpacketVector2;
        this.keys.add(new PGPSecretKey(i, pGPKeyPair, str, pGPDigestCalculator, pGPSignatureSubpacketVector, pGPSignatureSubpacketVector2, pGPContentSignerBuilder, pBESecretKeyEncryptor));
    }

    public void addSubKey(PGPKeyPair pGPKeyPair) throws PGPException {
        addSubKey(pGPKeyPair, this.hashedPcks, this.unhashedPcks);
    }

    public void addSubKey(PGPKeyPair pGPKeyPair, PGPSignatureSubpacketVector pGPSignatureSubpacketVector, PGPSignatureSubpacketVector pGPSignatureSubpacketVector2) throws PGPException {
        try {
            PGPSignatureGenerator pGPSignatureGenerator = new PGPSignatureGenerator(this.keySignerBuilder);
            pGPSignatureGenerator.init(24, this.masterKey.getPrivateKey());
            pGPSignatureGenerator.setHashedSubpackets(pGPSignatureSubpacketVector);
            pGPSignatureGenerator.setUnhashedSubpackets(pGPSignatureSubpacketVector2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(pGPSignatureGenerator.generateCertification(this.masterKey.getPublicKey(), pGPKeyPair.getPublicKey()));
            this.keys.add(new PGPSecretKey(pGPKeyPair.getPrivateKey(), new PGPPublicKey(pGPKeyPair.getPublicKey(), null, arrayList), this.checksumCalculator, this.keyEncryptor));
        } catch (PGPException e) {
            throw e;
        } catch (Exception e2) {
            throw new PGPException("exception adding subkey: ", e2);
        }
    }

    public PGPPublicKeyRing generatePublicKeyRing() {
        Iterator it = this.keys.iterator();
        ArrayList arrayList = new ArrayList();
        arrayList.add(((PGPSecretKey) it.next()).getPublicKey());
        while (it.hasNext()) {
            PGPPublicKey pGPPublicKey = new PGPPublicKey(((PGPSecretKey) it.next()).getPublicKey());
            pGPPublicKey.publicPk = new PublicSubkeyPacket(pGPPublicKey.getAlgorithm(), pGPPublicKey.getCreationTime(), pGPPublicKey.publicPk.getKey());
            arrayList.add(pGPPublicKey);
        }
        return new PGPPublicKeyRing(arrayList);
    }

    public PGPSecretKeyRing generateSecretKeyRing() {
        return new PGPSecretKeyRing(this.keys);
    }
}
