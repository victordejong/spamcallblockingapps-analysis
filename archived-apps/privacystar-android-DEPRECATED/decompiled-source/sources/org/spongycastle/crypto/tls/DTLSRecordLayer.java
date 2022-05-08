package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/DTLSRecordLayer.class */
class DTLSRecordLayer implements DatagramTransport {
    private static final int MAX_FRAGMENT_LENGTH = 16384;
    private static final int RECORD_HEADER_LENGTH = 13;
    private static final long RETRANSMIT_TIMEOUT = 240000;
    private static final long TCP_MSL = 120000;
    private final TlsContext context;
    private DTLSEpoch currentEpoch;
    private final TlsPeer peer;
    private volatile int plaintextLimit;
    private DTLSEpoch readEpoch;
    private final DatagramTransport transport;
    private DTLSEpoch writeEpoch;
    private final ByteQueue recordQueue = new ByteQueue();
    private volatile boolean closed = false;
    private volatile boolean failed = false;
    private volatile ProtocolVersion readVersion = null;
    private volatile ProtocolVersion writeVersion = null;
    private DTLSHandshakeRetransmit retransmit = null;
    private DTLSEpoch retransmitEpoch = null;
    private long retransmitExpiry = 0;
    private volatile boolean inHandshake = true;
    private DTLSEpoch pendingEpoch = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTLSRecordLayer(DatagramTransport datagramTransport, TlsContext tlsContext, TlsPeer tlsPeer, short s) {
        this.transport = datagramTransport;
        this.context = tlsContext;
        this.peer = tlsPeer;
        this.currentEpoch = new DTLSEpoch(0, new TlsNullCipher(tlsContext));
        this.readEpoch = this.currentEpoch;
        this.writeEpoch = this.currentEpoch;
        setPlaintextLimit(16384);
    }

    private void closeTransport() {
        if (!this.closed) {
            try {
                if (!this.failed) {
                    warn((short) 0, null);
                }
                this.transport.close();
            } catch (Exception e) {
            }
            this.closed = true;
        }
    }

    private static long getMacSequenceNumber(int i, long j) {
        return ((i & BodyPartID.bodyIdMax) << 48) | j;
    }

    private void raiseAlert(short s, short s2, String str, Throwable th) throws IOException {
        this.peer.notifyAlertRaised(s, s2, str, th);
        sendRecord((short) 21, new byte[]{(byte) s, (byte) s2}, 0, 2);
    }

    private int receiveRecord(byte[] bArr, int i, int i2, int i3) throws IOException {
        int i4;
        if (this.recordQueue.available() > 0) {
            if (this.recordQueue.available() >= 13) {
                byte[] bArr2 = new byte[2];
                this.recordQueue.read(bArr2, 0, 2, 11);
                i4 = TlsUtils.readUint16(bArr2, 0);
            } else {
                i4 = 0;
            }
            int min = Math.min(this.recordQueue.available(), i4 + 13);
            this.recordQueue.removeData(bArr, i, min, 0);
            return min;
        }
        int receive = this.transport.receive(bArr, i, i2, i3);
        int i5 = receive;
        if (receive >= 13) {
            int readUint16 = TlsUtils.readUint16(bArr, i + 11) + 13;
            i5 = receive;
            if (receive > readUint16) {
                this.recordQueue.addData(bArr, i + readUint16, receive - readUint16);
                i5 = readUint16;
            }
        }
        return i5;
    }

    private void sendRecord(short s, byte[] bArr, int i, int i2) throws IOException {
        if (this.writeVersion != null) {
            if (i2 > this.plaintextLimit) {
                throw new TlsFatalAlert((short) 80);
            } else if (i2 >= 1 || s == 23) {
                int epoch = this.writeEpoch.getEpoch();
                long allocateSequenceNumber = this.writeEpoch.allocateSequenceNumber();
                byte[] encodePlaintext = this.writeEpoch.getCipher().encodePlaintext(getMacSequenceNumber(epoch, allocateSequenceNumber), s, bArr, i, i2);
                byte[] bArr2 = new byte[encodePlaintext.length + 13];
                TlsUtils.writeUint8(s, bArr2, 0);
                TlsUtils.writeVersion(this.writeVersion, bArr2, 1);
                TlsUtils.writeUint16(epoch, bArr2, 3);
                TlsUtils.writeUint48(allocateSequenceNumber, bArr2, 5);
                TlsUtils.writeUint16(encodePlaintext.length, bArr2, 11);
                System.arraycopy(encodePlaintext, 0, bArr2, 13, encodePlaintext.length);
                this.transport.send(bArr2, 0, bArr2.length);
            } else {
                throw new TlsFatalAlert((short) 80);
            }
        }
    }

    @Override // org.spongycastle.crypto.tls.DatagramTransport
    public void close() throws IOException {
        if (!this.closed) {
            if (this.inHandshake) {
                warn((short) 90, "User canceled handshake");
            }
            closeTransport();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fail(short s) {
        if (!this.closed) {
            try {
                raiseAlert((short) 2, s, null, null);
            } catch (Exception e) {
            }
            this.failed = true;
            closeTransport();
        }
    }

    void failed() {
        if (!this.closed) {
            this.failed = true;
            closeTransport();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getReadEpoch() {
        return this.readEpoch.getEpoch();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProtocolVersion getReadVersion() {
        return this.readVersion;
    }

    @Override // org.spongycastle.crypto.tls.DatagramTransport
    public int getReceiveLimit() throws IOException {
        return Math.min(this.plaintextLimit, this.readEpoch.getCipher().getPlaintextLimit(this.transport.getReceiveLimit() - 13));
    }

    @Override // org.spongycastle.crypto.tls.DatagramTransport
    public int getSendLimit() throws IOException {
        return Math.min(this.plaintextLimit, this.writeEpoch.getCipher().getPlaintextLimit(this.transport.getSendLimit() - 13));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handshakeSuccessful(DTLSHandshakeRetransmit dTLSHandshakeRetransmit) {
        if (this.readEpoch == this.currentEpoch || this.writeEpoch == this.currentEpoch) {
            throw new IllegalStateException();
        }
        if (dTLSHandshakeRetransmit != null) {
            this.retransmit = dTLSHandshakeRetransmit;
            this.retransmitEpoch = this.currentEpoch;
            this.retransmitExpiry = System.currentTimeMillis() + RETRANSMIT_TIMEOUT;
        }
        this.inHandshake = false;
        this.currentEpoch = this.pendingEpoch;
        this.pendingEpoch = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initPendingEpoch(TlsCipher tlsCipher) {
        if (this.pendingEpoch != null) {
            throw new IllegalStateException();
        }
        this.pendingEpoch = new DTLSEpoch(this.writeEpoch.getEpoch() + 1, tlsCipher);
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x026a, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
        if (r0.length < r0) goto L_0x0024;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x026a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f3 A[Catch: IOException -> 0x0271, TRY_ENTER, TryCatch #0 {IOException -> 0x0271, blocks: (B:8:0x002a, B:10:0x0031, B:12:0x003c, B:14:0x0049, B:20:0x0067, B:23:0x0079, B:25:0x00a7, B:27:0x00bb, B:31:0x00cb, B:33:0x00d2, B:35:0x00de, B:39:0x00f3, B:42:0x010b, B:45:0x011e, B:47:0x0125, B:50:0x0134, B:54:0x016f, B:56:0x0176, B:59:0x01a3, B:62:0x01ad, B:64:0x01b4, B:66:0x01bb, B:67:0x01cf, B:71:0x01e4, B:74:0x01f7, B:75:0x0206, B:78:0x020c, B:80:0x0216, B:82:0x021e, B:85:0x022c, B:87:0x0233, B:88:0x023b, B:89:0x0241, B:91:0x0248, B:93:0x024f, B:95:0x025b), top: B:101:0x002a }] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [org.spongycastle.crypto.tls.DTLSHandshakeRetransmit, org.spongycastle.crypto.tls.DTLSEpoch] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // org.spongycastle.crypto.tls.DatagramTransport
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int receive(byte[] r10, int r11, int r12, int r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 628
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.tls.DTLSRecordLayer.receive(byte[], int, int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetWriteEpoch() {
        if (this.retransmitEpoch != null) {
            this.writeEpoch = this.retransmitEpoch;
        } else {
            this.writeEpoch = this.currentEpoch;
        }
    }

    @Override // org.spongycastle.crypto.tls.DatagramTransport
    public void send(byte[] bArr, int i, int i2) throws IOException {
        short s;
        if (this.inHandshake || this.writeEpoch == this.retransmitEpoch) {
            s = 22;
            if (TlsUtils.readUint8(bArr, i) == 20) {
                DTLSEpoch dTLSEpoch = null;
                if (this.inHandshake) {
                    dTLSEpoch = this.pendingEpoch;
                } else if (this.writeEpoch == this.retransmitEpoch) {
                    dTLSEpoch = this.currentEpoch;
                }
                if (dTLSEpoch == null) {
                    throw new IllegalStateException();
                }
                byte[] bArr2 = {(byte) 1};
                sendRecord((short) 20, bArr2, 0, bArr2.length);
                this.writeEpoch = dTLSEpoch;
                s = 22;
            }
        } else {
            s = 23;
        }
        sendRecord(s, bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlaintextLimit(int i) {
        this.plaintextLimit = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setReadVersion(ProtocolVersion protocolVersion) {
        this.readVersion = protocolVersion;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setWriteVersion(ProtocolVersion protocolVersion) {
        this.writeVersion = protocolVersion;
    }

    void warn(short s, String str) throws IOException {
        raiseAlert((short) 1, s, str, null);
    }
}
