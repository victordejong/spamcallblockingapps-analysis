package org.spongycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.util.Integers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/DTLSReliableHandshake.class */
class DTLSReliableHandshake {
    private static final int MAX_RECEIVE_AHEAD = 16;
    private static final int MESSAGE_HEADER_LENGTH = 12;
    private DTLSRecordLayer recordLayer;
    private Hashtable currentInboundFlight = new Hashtable();
    private Hashtable previousInboundFlight = null;
    private Vector outboundFlight = new Vector();
    private boolean sending = true;
    private int message_seq = 0;
    private int next_receive_seq = 0;
    private TlsHandshakeHash handshakeHash = new DeferredHash();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/DTLSReliableHandshake$Message.class */
    public static class Message {
        private final byte[] body;
        private final int message_seq;
        private final short msg_type;

        private Message(int i, short s, byte[] bArr) {
            this.message_seq = i;
            this.msg_type = s;
            this.body = bArr;
        }

        public byte[] getBody() {
            return this.body;
        }

        public int getSeq() {
            return this.message_seq;
        }

        public short getType() {
            return this.msg_type;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer.class */
    public static class RecordLayerBuffer extends ByteArrayOutputStream {
        RecordLayerBuffer(int i) {
            super(i);
        }

        void sendToRecordLayer(DTLSRecordLayer dTLSRecordLayer) throws IOException {
            dTLSRecordLayer.send(this.buf, 0, this.count);
            this.buf = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTLSReliableHandshake(TlsContext tlsContext, DTLSRecordLayer dTLSRecordLayer) {
        this.recordLayer = dTLSRecordLayer;
        this.handshakeHash.init(tlsContext);
    }

    private int backOff(int i) {
        return Math.min(i * 2, 60000);
    }

    private static boolean checkAll(Hashtable hashtable) {
        Enumeration elements = hashtable.elements();
        while (elements.hasMoreElements()) {
            if (((DTLSReassembler) elements.nextElement()).getBodyIfComplete() == null) {
                return false;
            }
        }
        return true;
    }

    private void checkInboundFlight() {
        Enumeration keys = this.currentInboundFlight.keys();
        while (keys.hasMoreElements()) {
            ((Integer) keys.nextElement()).intValue();
            int i = this.next_receive_seq;
        }
    }

    private Message getPendingMessage() throws IOException {
        byte[] bodyIfComplete;
        DTLSReassembler dTLSReassembler = (DTLSReassembler) this.currentInboundFlight.get(Integers.valueOf(this.next_receive_seq));
        if (dTLSReassembler == null || (bodyIfComplete = dTLSReassembler.getBodyIfComplete()) == null) {
            return null;
        }
        this.previousInboundFlight = null;
        int i = this.next_receive_seq;
        this.next_receive_seq = i + 1;
        return updateHandshakeMessagesDigest(new Message(i, dTLSReassembler.getMsgType(), bodyIfComplete));
    }

    private void prepareInboundFlight(Hashtable hashtable) {
        resetAll(this.currentInboundFlight);
        this.previousInboundFlight = this.currentInboundFlight;
        this.currentInboundFlight = hashtable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean processRecord(int i, int i2, byte[] bArr, int i3, int i4) throws IOException {
        int readUint24;
        int readUint242;
        int i5 = i4;
        boolean z = false;
        int i6 = i3;
        while (i5 >= 12 && i5 >= (readUint242 = (readUint24 = TlsUtils.readUint24(bArr, i6 + 9)) + 12)) {
            int readUint243 = TlsUtils.readUint24(bArr, i6 + 1);
            int readUint244 = TlsUtils.readUint24(bArr, i6 + 6);
            if (readUint244 + readUint24 > readUint243) {
                break;
            }
            short readUint8 = TlsUtils.readUint8(bArr, i6 + 0);
            if (i2 != (readUint8 == 20 ? 1 : 0)) {
                break;
            }
            int readUint16 = TlsUtils.readUint16(bArr, i6 + 4);
            if (readUint16 >= this.next_receive_seq + i) {
                z = z;
            } else if (readUint16 >= this.next_receive_seq) {
                DTLSReassembler dTLSReassembler = (DTLSReassembler) this.currentInboundFlight.get(Integers.valueOf(readUint16));
                DTLSReassembler dTLSReassembler2 = dTLSReassembler;
                if (dTLSReassembler == null) {
                    dTLSReassembler2 = new DTLSReassembler(readUint8, readUint243);
                    this.currentInboundFlight.put(Integers.valueOf(readUint16), dTLSReassembler2);
                }
                dTLSReassembler2.contributeFragment(readUint8, readUint243, bArr, i6 + 12, readUint244, readUint24);
                z = z;
            } else {
                z = z;
                if (this.previousInboundFlight != null) {
                    DTLSReassembler dTLSReassembler3 = (DTLSReassembler) this.previousInboundFlight.get(Integers.valueOf(readUint16));
                    z = z;
                    if (dTLSReassembler3 != null) {
                        dTLSReassembler3.contributeFragment(readUint8, readUint243, bArr, i6 + 12, readUint244, readUint24);
                        z = true;
                    }
                }
            }
            i6 += readUint242;
            i5 -= readUint242;
        }
        boolean z2 = false;
        if (z) {
            z2 = false;
            if (checkAll(this.previousInboundFlight)) {
                z2 = true;
            }
        }
        if (z2) {
            resendOutboundFlight();
            resetAll(this.previousInboundFlight);
        }
        return z2;
    }

    private void resendOutboundFlight() throws IOException {
        this.recordLayer.resetWriteEpoch();
        for (int i = 0; i < this.outboundFlight.size(); i++) {
            writeMessage((Message) this.outboundFlight.elementAt(i));
        }
    }

    private static void resetAll(Hashtable hashtable) {
        Enumeration elements = hashtable.elements();
        while (elements.hasMoreElements()) {
            ((DTLSReassembler) elements.nextElement()).reset();
        }
    }

    private Message updateHandshakeMessagesDigest(Message message) throws IOException {
        if (message.getType() != 0) {
            byte[] body = message.getBody();
            byte[] bArr = new byte[12];
            TlsUtils.writeUint8(message.getType(), bArr, 0);
            TlsUtils.writeUint24(body.length, bArr, 1);
            TlsUtils.writeUint16(message.getSeq(), bArr, 4);
            TlsUtils.writeUint24(0, bArr, 6);
            TlsUtils.writeUint24(body.length, bArr, 9);
            this.handshakeHash.update(bArr, 0, bArr.length);
            this.handshakeHash.update(body, 0, body.length);
        }
        return message;
    }

    private void writeHandshakeFragment(Message message, int i, int i2) throws IOException {
        RecordLayerBuffer recordLayerBuffer = new RecordLayerBuffer(i2 + 12);
        TlsUtils.writeUint8(message.getType(), (OutputStream) recordLayerBuffer);
        TlsUtils.writeUint24(message.getBody().length, recordLayerBuffer);
        TlsUtils.writeUint16(message.getSeq(), recordLayerBuffer);
        TlsUtils.writeUint24(i, recordLayerBuffer);
        TlsUtils.writeUint24(i2, recordLayerBuffer);
        recordLayerBuffer.write(message.getBody(), i, i2);
        recordLayerBuffer.sendToRecordLayer(this.recordLayer);
    }

    private void writeMessage(Message message) throws IOException {
        int i;
        int sendLimit = this.recordLayer.getSendLimit() - 12;
        if (sendLimit < 1) {
            throw new TlsFatalAlert((short) 80);
        }
        int length = message.getBody().length;
        int i2 = 0;
        do {
            int min = Math.min(length - i2, sendLimit);
            writeHandshakeFragment(message, i2, min);
            i = i2 + min;
            i2 = i;
        } while (i < length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void finish() {
        DTLSHandshakeRetransmit dTLSHandshakeRetransmit = null;
        if (!this.sending) {
            checkInboundFlight();
        } else {
            prepareInboundFlight(null);
            if (this.previousInboundFlight != null) {
                dTLSHandshakeRetransmit = new DTLSHandshakeRetransmit() { // from class: org.spongycastle.crypto.tls.DTLSReliableHandshake.1
                    @Override // org.spongycastle.crypto.tls.DTLSHandshakeRetransmit
                    public void receivedHandshakeRecord(int i, byte[] bArr, int i2, int i3) throws IOException {
                        DTLSReliableHandshake.this.processRecord(0, i, bArr, i2, i3);
                    }
                };
            }
        }
        this.recordLayer.handshakeSuccessful(dTLSHandshakeRetransmit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TlsHandshakeHash getHandshakeHash() {
        return this.handshakeHash;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyHelloComplete() {
        this.handshakeHash = this.handshakeHash.notifyPRFDetermined();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TlsHandshakeHash prepareToFinish() {
        TlsHandshakeHash tlsHandshakeHash = this.handshakeHash;
        this.handshakeHash = this.handshakeHash.stopTracking();
        return tlsHandshakeHash;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0045, code lost:
        if (r8.length < r0) goto L_0x0048;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.crypto.tls.DTLSReliableHandshake.Message receiveMessage() throws java.io.IOException {
        /*
            r7 = this;
            r0 = r7
            boolean r0 = r0.sending
            if (r0 == 0) goto L_0x0017
            r0 = r7
            r1 = 0
            r0.sending = r1
            r0 = r7
            java.util.Hashtable r1 = new java.util.Hashtable
            r2 = r1
            r2.<init>()
            r0.prepareInboundFlight(r1)
        L_0x0017:
            r0 = 0
            r8 = r0
            r0 = 1000(0x3e8, float:1.401E-42)
            r9 = r0
        L_0x001d:
            r0 = r8
            r10 = r0
            r0 = r7
            org.spongycastle.crypto.tls.DTLSReliableHandshake$Message r0 = r0.getPendingMessage()     // Catch: IOException -> 0x00a8
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x002d
            r0 = r11
            return r0
        L_0x002d:
            r0 = r8
            r10 = r0
            r0 = r7
            org.spongycastle.crypto.tls.DTLSRecordLayer r0 = r0.recordLayer     // Catch: IOException -> 0x00a8
            int r0 = r0.getReceiveLimit()     // Catch: IOException -> 0x00a8
            r12 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0048
            r0 = r8
            r11 = r0
            r0 = r8
            r10 = r0
            r0 = r8
            int r0 = r0.length     // Catch: IOException -> 0x00a8
            r1 = r12
            if (r0 >= r1) goto L_0x0050
        L_0x0048:
            r0 = r8
            r10 = r0
            r0 = r12
            byte[] r0 = new byte[r0]     // Catch: IOException -> 0x00a8
            r11 = r0
        L_0x0050:
            r0 = r11
            r10 = r0
            r0 = r7
            org.spongycastle.crypto.tls.DTLSRecordLayer r0 = r0.recordLayer     // Catch: IOException -> 0x00a8
            r1 = r11
            r2 = 0
            r3 = r12
            r4 = r9
            int r0 = r0.receive(r1, r2, r3, r4)     // Catch: IOException -> 0x00a8
            r12 = r0
            r0 = r12
            if (r0 >= 0) goto L_0x006d
            r0 = r11
            r8 = r0
            goto L_0x009b
        L_0x006d:
            r0 = r11
            r8 = r0
            r0 = r11
            r10 = r0
            r0 = r7
            r1 = 16
            r2 = r7
            org.spongycastle.crypto.tls.DTLSRecordLayer r2 = r2.recordLayer     // Catch: IOException -> 0x00a8
            int r2 = r2.getReadEpoch()     // Catch: IOException -> 0x00a8
            r3 = r11
            r4 = 0
            r5 = r12
            boolean r0 = r0.processRecord(r1, r2, r3, r4, r5)     // Catch: IOException -> 0x00a8
            if (r0 == 0) goto L_0x001d
            r0 = r11
            r10 = r0
            r0 = r7
            r1 = r9
            int r0 = r0.backOff(r1)     // Catch: IOException -> 0x00a8
            r12 = r0
            r0 = r12
            r9 = r0
            r0 = r11
            r8 = r0
            goto L_0x001d
        L_0x009b:
            r0 = r7
            r0.resendOutboundFlight()
            r0 = r7
            r1 = r9
            int r0 = r0.backOff(r1)
            r9 = r0
            goto L_0x001d
        L_0x00a8:
            r8 = move-exception
            r0 = r10
            r8 = r0
            goto L_0x009b
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.tls.DTLSReliableHandshake.receiveMessage():org.spongycastle.crypto.tls.DTLSReliableHandshake$Message");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] receiveMessageBody(short s) throws IOException {
        Message receiveMessage = receiveMessage();
        if (receiveMessage.getType() == s) {
            return receiveMessage.getBody();
        }
        throw new TlsFatalAlert((short) 10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetHandshakeMessagesDigest() {
        this.handshakeHash.reset();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendMessage(short s, byte[] bArr) throws IOException {
        TlsUtils.checkUint24(bArr.length);
        if (!this.sending) {
            checkInboundFlight();
            this.sending = true;
            this.outboundFlight.removeAllElements();
        }
        int i = this.message_seq;
        this.message_seq = i + 1;
        Message message = new Message(i, s, bArr);
        this.outboundFlight.addElement(message);
        writeMessage(message);
        updateHandshakeMessagesDigest(message);
    }
}
