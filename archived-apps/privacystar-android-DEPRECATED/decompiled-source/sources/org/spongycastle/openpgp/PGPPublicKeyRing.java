package org.spongycastle.openpgp;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.spongycastle.bcpg.BCPGInputStream;
import org.spongycastle.bcpg.PublicKeyPacket;
import org.spongycastle.bcpg.TrustPacket;
import org.spongycastle.openpgp.operator.KeyFingerPrintCalculator;
import org.spongycastle.util.Iterable;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPPublicKeyRing.class */
public class PGPPublicKeyRing extends PGPKeyRing implements Iterable<PGPPublicKey> {
    List keys;

    public PGPPublicKeyRing(InputStream inputStream, KeyFingerPrintCalculator keyFingerPrintCalculator) throws IOException {
        this.keys = new ArrayList();
        BCPGInputStream wrap = wrap(inputStream);
        int nextPacketTag = wrap.nextPacketTag();
        if (nextPacketTag == 6 || nextPacketTag == 14) {
            PublicKeyPacket publicKeyPacket = (PublicKeyPacket) wrap.readPacket();
            TrustPacket readOptionalTrustPacket = readOptionalTrustPacket(wrap);
            List readSignaturesAndTrust = readSignaturesAndTrust(wrap);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            readUserIDs(wrap, arrayList, arrayList2, arrayList3);
            try {
                this.keys.add(new PGPPublicKey(publicKeyPacket, readOptionalTrustPacket, readSignaturesAndTrust, arrayList, arrayList2, arrayList3, keyFingerPrintCalculator));
                while (wrap.nextPacketTag() == 14) {
                    this.keys.add(readSubkey(wrap, keyFingerPrintCalculator));
                }
            } catch (PGPException e) {
                throw new IOException("processing exception: " + e.toString());
            }
        } else {
            throw new IOException("public key ring doesn't start with public key tag: tag 0x" + Integer.toHexString(nextPacketTag));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPPublicKeyRing(List list) {
        this.keys = list;
    }

    public PGPPublicKeyRing(byte[] bArr, KeyFingerPrintCalculator keyFingerPrintCalculator) throws IOException {
        this(new ByteArrayInputStream(bArr), keyFingerPrintCalculator);
    }

    public static PGPPublicKeyRing insertPublicKey(PGPPublicKeyRing pGPPublicKeyRing, PGPPublicKey pGPPublicKey) {
        ArrayList arrayList = new ArrayList(pGPPublicKeyRing.keys);
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i != arrayList.size(); i++) {
            PGPPublicKey pGPPublicKey2 = (PGPPublicKey) arrayList.get(i);
            if (pGPPublicKey2.getKeyID() == pGPPublicKey.getKeyID()) {
                arrayList.set(i, pGPPublicKey);
                z = true;
            }
            if (pGPPublicKey2.isMasterKey()) {
                z2 = true;
            }
        }
        if (!z) {
            if (!pGPPublicKey.isMasterKey()) {
                arrayList.add(pGPPublicKey);
            } else if (z2) {
                throw new IllegalArgumentException("cannot add a master key to a ring that already has one");
            } else {
                arrayList.add(0, pGPPublicKey);
            }
        }
        return new PGPPublicKeyRing(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PGPPublicKey readSubkey(BCPGInputStream bCPGInputStream, KeyFingerPrintCalculator keyFingerPrintCalculator) throws IOException, PGPException {
        return new PGPPublicKey((PublicKeyPacket) bCPGInputStream.readPacket(), readOptionalTrustPacket(bCPGInputStream), readSignaturesAndTrust(bCPGInputStream), keyFingerPrintCalculator);
    }

    public static PGPPublicKeyRing removePublicKey(PGPPublicKeyRing pGPPublicKeyRing, PGPPublicKey pGPPublicKey) {
        ArrayList arrayList = new ArrayList(pGPPublicKeyRing.keys);
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            if (((PGPPublicKey) arrayList.get(i)).getKeyID() == pGPPublicKey.getKeyID()) {
                arrayList.remove(i);
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        return new PGPPublicKeyRing(arrayList);
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public void encode(OutputStream outputStream) throws IOException {
        for (int i = 0; i != this.keys.size(); i++) {
            ((PGPPublicKey) this.keys.get(i)).encode(outputStream);
        }
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        encode(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public PGPPublicKey getPublicKey() {
        return (PGPPublicKey) this.keys.get(0);
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public PGPPublicKey getPublicKey(long j) {
        for (int i = 0; i != this.keys.size(); i++) {
            PGPPublicKey pGPPublicKey = (PGPPublicKey) this.keys.get(i);
            if (j == pGPPublicKey.getKeyID()) {
                return pGPPublicKey;
            }
        }
        return null;
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public Iterator<PGPPublicKey> getPublicKeys() {
        return Collections.unmodifiableList(this.keys).iterator();
    }

    @Override // org.spongycastle.util.Iterable, java.lang.Iterable
    public Iterator<PGPPublicKey> iterator() {
        return getPublicKeys();
    }
}
