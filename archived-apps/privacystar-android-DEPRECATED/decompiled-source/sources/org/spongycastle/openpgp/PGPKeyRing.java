package org.spongycastle.openpgp;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.spongycastle.bcpg.BCPGInputStream;
import org.spongycastle.bcpg.Packet;
import org.spongycastle.bcpg.SignaturePacket;
import org.spongycastle.bcpg.TrustPacket;
import org.spongycastle.bcpg.UserAttributePacket;
import org.spongycastle.bcpg.UserIDPacket;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPKeyRing.class */
public abstract class PGPKeyRing {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static TrustPacket readOptionalTrustPacket(BCPGInputStream bCPGInputStream) throws IOException {
        return bCPGInputStream.nextPacketTag() == 12 ? (TrustPacket) bCPGInputStream.readPacket() : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List readSignaturesAndTrust(BCPGInputStream bCPGInputStream) throws IOException {
        try {
            ArrayList arrayList = new ArrayList();
            while (bCPGInputStream.nextPacketTag() == 2) {
                arrayList.add(new PGPSignature((SignaturePacket) bCPGInputStream.readPacket(), readOptionalTrustPacket(bCPGInputStream)));
            }
            return arrayList;
        } catch (PGPException e) {
            throw new IOException("can't create signature object: " + e.getMessage() + ", cause: " + e.getUnderlyingException().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void readUserIDs(BCPGInputStream bCPGInputStream, List list, List list2, List list3) throws IOException {
        while (true) {
            if (bCPGInputStream.nextPacketTag() == 13 || bCPGInputStream.nextPacketTag() == 17) {
                Packet readPacket = bCPGInputStream.readPacket();
                if (readPacket instanceof UserIDPacket) {
                    list.add((UserIDPacket) readPacket);
                } else {
                    list.add(new PGPUserAttributeSubpacketVector(((UserAttributePacket) readPacket).getSubpackets()));
                }
                list2.add(readOptionalTrustPacket(bCPGInputStream));
                list3.add(readSignaturesAndTrust(bCPGInputStream));
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BCPGInputStream wrap(InputStream inputStream) {
        return inputStream instanceof BCPGInputStream ? (BCPGInputStream) inputStream : new BCPGInputStream(inputStream);
    }

    public abstract void encode(OutputStream outputStream) throws IOException;

    public abstract byte[] getEncoded() throws IOException;

    public abstract PGPPublicKey getPublicKey();

    public abstract PGPPublicKey getPublicKey(long j);

    public abstract Iterator getPublicKeys();
}
