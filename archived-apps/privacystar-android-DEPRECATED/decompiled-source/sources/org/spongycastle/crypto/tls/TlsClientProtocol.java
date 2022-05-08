package org.spongycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.crypto.tls.TlsProtocol;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsClientProtocol.class */
public class TlsClientProtocol extends TlsProtocol {
    protected TlsClient tlsClient = null;
    TlsClientContextImpl tlsClientContext = null;
    protected byte[] selectedSessionID = null;
    protected TlsKeyExchange keyExchange = null;
    protected TlsAuthentication authentication = null;
    protected CertificateStatus certificateStatus = null;
    protected CertificateRequest certificateRequest = null;

    public TlsClientProtocol(InputStream inputStream, OutputStream outputStream, SecureRandom secureRandom) {
        super(inputStream, outputStream, secureRandom);
    }

    public TlsClientProtocol(SecureRandom secureRandom) {
        super(secureRandom);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.crypto.tls.TlsProtocol
    public void cleanupHandshake() {
        super.cleanupHandshake();
        this.selectedSessionID = null;
        this.keyExchange = null;
        this.authentication = null;
        this.certificateStatus = null;
        this.certificateRequest = null;
    }

    public void connect(TlsClient tlsClient) throws IOException {
        SessionParameters exportSessionParameters;
        if (tlsClient == null) {
            throw new IllegalArgumentException("'tlsClient' cannot be null");
        } else if (this.tlsClient != null) {
            throw new IllegalStateException("'connect' can only be called once");
        } else {
            this.tlsClient = tlsClient;
            this.securityParameters = new SecurityParameters();
            this.securityParameters.entity = 1;
            this.tlsClientContext = new TlsClientContextImpl(this.secureRandom, this.securityParameters);
            this.securityParameters.clientRandom = createRandomBlock(tlsClient.shouldUseGMTUnixTime(), this.tlsClientContext.getNonceRandomGenerator());
            this.tlsClient.init(this.tlsClientContext);
            this.recordStream.init(this.tlsClientContext);
            TlsSession sessionToResume = tlsClient.getSessionToResume();
            if (!(sessionToResume == null || !sessionToResume.isResumable() || (exportSessionParameters = sessionToResume.exportSessionParameters()) == null)) {
                this.tlsSession = sessionToResume;
                this.sessionParameters = exportSessionParameters;
            }
            sendClientHelloMessage();
            this.connection_state = (short) 1;
            blockForHandshake();
        }
    }

    @Override // org.spongycastle.crypto.tls.TlsProtocol
    protected TlsContext getContext() {
        return this.tlsClientContext;
    }

    @Override // org.spongycastle.crypto.tls.TlsProtocol
    AbstractTlsContext getContextAdmin() {
        return this.tlsClientContext;
    }

    @Override // org.spongycastle.crypto.tls.TlsProtocol
    protected TlsPeer getPeer() {
        return this.tlsClient;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // org.spongycastle.crypto.tls.TlsProtocol
    protected void handleHandshakeMessage(short s, ByteArrayInputStream byteArrayInputStream) throws IOException {
        TlsCredentials tlsCredentials;
        if (this.resumedSession) {
            if (s == 20 && this.connection_state == 2) {
                processFinishedMessage(byteArrayInputStream);
                this.connection_state = (short) 15;
                sendFinishedMessage();
                this.connection_state = (short) 13;
                completeHandshake();
                return;
            }
            throw new TlsFatalAlert((short) 10);
        } else if (s == 0) {
            assertEmpty(byteArrayInputStream);
            if (this.connection_state == 16) {
                refuseRenegotiation();
            }
        } else if (s != 2) {
            if (s != 4) {
                if (s != 20) {
                    switch (s) {
                        case 11:
                            switch (this.connection_state) {
                                case 2:
                                    handleSupplementalData(null);
                                    break;
                                case 3:
                                    break;
                                default:
                                    throw new TlsFatalAlert((short) 10);
                            }
                            this.peerCertificate = Certificate.parse(byteArrayInputStream);
                            assertEmpty(byteArrayInputStream);
                            if (this.peerCertificate == null || this.peerCertificate.isEmpty()) {
                                this.allowCertificateStatus = false;
                            }
                            this.keyExchange.processServerCertificate(this.peerCertificate);
                            this.authentication = this.tlsClient.getAuthentication();
                            this.authentication.notifyServerCertificate(this.peerCertificate);
                            this.connection_state = (short) 4;
                            return;
                        case 12:
                            switch (this.connection_state) {
                                case 2:
                                    handleSupplementalData(null);
                                case 3:
                                    this.keyExchange.skipServerCredentials();
                                    this.authentication = null;
                                    break;
                                case 4:
                                case 5:
                                    break;
                                default:
                                    throw new TlsFatalAlert((short) 10);
                            }
                            this.keyExchange.processServerKeyExchange(byteArrayInputStream);
                            assertEmpty(byteArrayInputStream);
                            this.connection_state = (short) 6;
                            return;
                        case 13:
                            switch (this.connection_state) {
                                case 4:
                                case 5:
                                    this.keyExchange.skipServerKeyExchange();
                                    break;
                                case 6:
                                    break;
                                default:
                                    throw new TlsFatalAlert((short) 10);
                            }
                            if (this.authentication == null) {
                                throw new TlsFatalAlert((short) 40);
                            }
                            this.certificateRequest = CertificateRequest.parse(getContext(), byteArrayInputStream);
                            assertEmpty(byteArrayInputStream);
                            this.keyExchange.validateCertificateRequest(this.certificateRequest);
                            TlsUtils.trackHashAlgorithms(this.recordStream.getHandshakeHash(), this.certificateRequest.getSupportedSignatureAlgorithms());
                            this.connection_state = (short) 7;
                            return;
                        case 14:
                            switch (this.connection_state) {
                                case 2:
                                    handleSupplementalData(null);
                                case 3:
                                    this.keyExchange.skipServerCredentials();
                                    this.authentication = null;
                                case 4:
                                case 5:
                                    this.keyExchange.skipServerKeyExchange();
                                    break;
                                case 6:
                                case 7:
                                    break;
                                default:
                                    throw new TlsFatalAlert((short) 10);
                            }
                            assertEmpty(byteArrayInputStream);
                            this.connection_state = (short) 8;
                            this.recordStream.getHandshakeHash().sealHashAlgorithms();
                            Vector clientSupplementalData = this.tlsClient.getClientSupplementalData();
                            if (clientSupplementalData != null) {
                                sendSupplementalDataMessage(clientSupplementalData);
                            }
                            this.connection_state = (short) 9;
                            if (this.certificateRequest == null) {
                                this.keyExchange.skipClientCredentials();
                                tlsCredentials = null;
                            } else {
                                tlsCredentials = this.authentication.getClientCredentials(this.certificateRequest);
                                if (tlsCredentials == null) {
                                    this.keyExchange.skipClientCredentials();
                                    sendCertificateMessage(Certificate.EMPTY_CHAIN);
                                } else {
                                    this.keyExchange.processClientCredentials(tlsCredentials);
                                    sendCertificateMessage(tlsCredentials.getCertificate());
                                }
                            }
                            this.connection_state = (short) 10;
                            sendClientKeyExchangeMessage();
                            this.connection_state = (short) 11;
                            if (TlsUtils.isSSL(getContext())) {
                                establishMasterSecret(getContext(), this.keyExchange);
                            }
                            TlsHandshakeHash prepareToFinish = this.recordStream.prepareToFinish();
                            this.securityParameters.sessionHash = getCurrentPRFHash(getContext(), prepareToFinish, null);
                            if (!TlsUtils.isSSL(getContext())) {
                                establishMasterSecret(getContext(), this.keyExchange);
                            }
                            this.recordStream.setPendingConnectionState(getPeer().getCompression(), getPeer().getCipher());
                            if (tlsCredentials != null && (tlsCredentials instanceof TlsSignerCredentials)) {
                                TlsSignerCredentials tlsSignerCredentials = (TlsSignerCredentials) tlsCredentials;
                                SignatureAndHashAlgorithm signatureAndHashAlgorithm = TlsUtils.getSignatureAndHashAlgorithm(getContext(), tlsSignerCredentials);
                                sendCertificateVerifyMessage(new DigitallySigned(signatureAndHashAlgorithm, tlsSignerCredentials.generateCertificateSignature(signatureAndHashAlgorithm == null ? this.securityParameters.getSessionHash() : prepareToFinish.getFinalHash(signatureAndHashAlgorithm.getHash()))));
                                this.connection_state = (short) 12;
                            }
                            sendChangeCipherSpecMessage();
                            sendFinishedMessage();
                            this.connection_state = (short) 13;
                            return;
                        default:
                            switch (s) {
                                case 22:
                                    if (this.connection_state != 4) {
                                        throw new TlsFatalAlert((short) 10);
                                    } else if (!this.allowCertificateStatus) {
                                        throw new TlsFatalAlert((short) 10);
                                    } else {
                                        this.certificateStatus = CertificateStatus.parse(byteArrayInputStream);
                                        assertEmpty(byteArrayInputStream);
                                        this.connection_state = (short) 5;
                                        return;
                                    }
                                case 23:
                                    if (this.connection_state != 2) {
                                        throw new TlsFatalAlert((short) 10);
                                    }
                                    handleSupplementalData(readSupplementalDataMessage(byteArrayInputStream));
                                    return;
                                default:
                                    throw new TlsFatalAlert((short) 10);
                            }
                    }
                } else {
                    switch (this.connection_state) {
                        case 13:
                            if (this.expectSessionTicket) {
                                throw new TlsFatalAlert((short) 10);
                            }
                            break;
                        case 14:
                            break;
                        default:
                            throw new TlsFatalAlert((short) 10);
                    }
                    processFinishedMessage(byteArrayInputStream);
                    this.connection_state = (short) 15;
                    completeHandshake();
                }
            } else if (this.connection_state != 13) {
                throw new TlsFatalAlert((short) 10);
            } else if (!this.expectSessionTicket) {
                throw new TlsFatalAlert((short) 10);
            } else {
                invalidateSession();
                receiveNewSessionTicketMessage(byteArrayInputStream);
                this.connection_state = (short) 14;
            }
        } else if (this.connection_state != 1) {
            throw new TlsFatalAlert((short) 10);
        } else {
            receiveServerHelloMessage(byteArrayInputStream);
            this.connection_state = (short) 2;
            this.recordStream.notifyHelloComplete();
            applyMaxFragmentLengthExtension();
            if (this.resumedSession) {
                this.securityParameters.masterSecret = Arrays.clone(this.sessionParameters.getMasterSecret());
                this.recordStream.setPendingConnectionState(getPeer().getCompression(), getPeer().getCipher());
                sendChangeCipherSpecMessage();
                return;
            }
            invalidateSession();
            if (this.selectedSessionID.length > 0) {
                this.tlsSession = new TlsSessionImpl(this.selectedSessionID, null);
            }
        }
    }

    protected void handleSupplementalData(Vector vector) throws IOException {
        this.tlsClient.processServerSupplementalData(vector);
        this.connection_state = (short) 3;
        this.keyExchange = this.tlsClient.getKeyExchange();
        this.keyExchange.init(getContext());
    }

    protected void receiveNewSessionTicketMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        NewSessionTicket parse = NewSessionTicket.parse(byteArrayInputStream);
        assertEmpty(byteArrayInputStream);
        this.tlsClient.notifyNewSessionTicket(parse);
    }

    protected void receiveServerHelloMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        ProtocolVersion readVersion = TlsUtils.readVersion(byteArrayInputStream);
        if (readVersion.isDTLS()) {
            throw new TlsFatalAlert((short) 47);
        } else if (!readVersion.equals(this.recordStream.getReadVersion())) {
            throw new TlsFatalAlert((short) 47);
        } else if (!readVersion.isEqualOrEarlierVersionOf(getContext().getClientVersion())) {
            throw new TlsFatalAlert((short) 47);
        } else {
            this.recordStream.setWriteVersion(readVersion);
            getContextAdmin().setServerVersion(readVersion);
            this.tlsClient.notifyServerVersion(readVersion);
            this.securityParameters.serverRandom = TlsUtils.readFully(32, byteArrayInputStream);
            this.selectedSessionID = TlsUtils.readOpaque8(byteArrayInputStream);
            if (this.selectedSessionID.length > 32) {
                throw new TlsFatalAlert((short) 47);
            }
            this.tlsClient.notifySessionID(this.selectedSessionID);
            this.resumedSession = this.selectedSessionID.length > 0 && this.tlsSession != null && Arrays.areEqual(this.selectedSessionID, this.tlsSession.getSessionID());
            int readUint16 = TlsUtils.readUint16(byteArrayInputStream);
            if (!Arrays.contains(this.offeredCipherSuites, readUint16) || readUint16 == 0 || CipherSuite.isSCSV(readUint16) || !TlsUtils.isValidCipherSuiteForVersion(readUint16, getContext().getServerVersion())) {
                throw new TlsFatalAlert((short) 47);
            }
            this.tlsClient.notifySelectedCipherSuite(readUint16);
            short readUint8 = TlsUtils.readUint8(byteArrayInputStream);
            if (!Arrays.contains(this.offeredCompressionMethods, readUint8)) {
                throw new TlsFatalAlert((short) 47);
            }
            this.tlsClient.notifySelectedCompressionMethod(readUint8);
            this.serverExtensions = readExtensions(byteArrayInputStream);
            if (this.serverExtensions != null) {
                Enumeration keys = this.serverExtensions.keys();
                while (keys.hasMoreElements()) {
                    Integer num = (Integer) keys.nextElement();
                    if (!num.equals(EXT_RenegotiationInfo)) {
                        if (TlsUtils.getExtensionData(this.clientExtensions, num) == null) {
                            throw new TlsFatalAlert((short) 110);
                        }
                        boolean z = this.resumedSession;
                    }
                }
            }
            byte[] extensionData = TlsUtils.getExtensionData(this.serverExtensions, EXT_RenegotiationInfo);
            if (extensionData != null) {
                this.secure_renegotiation = true;
                if (!Arrays.constantTimeAreEqual(extensionData, createRenegotiationInfo(TlsUtils.EMPTY_BYTES))) {
                    throw new TlsFatalAlert((short) 40);
                }
            }
            this.tlsClient.notifySecureRenegotiation(this.secure_renegotiation);
            Hashtable hashtable = this.clientExtensions;
            Hashtable hashtable2 = this.serverExtensions;
            if (this.resumedSession) {
                if (readUint16 == this.sessionParameters.getCipherSuite() && readUint8 == this.sessionParameters.getCompressionAlgorithm()) {
                    hashtable = null;
                    hashtable2 = this.sessionParameters.readServerExtensions();
                } else {
                    throw new TlsFatalAlert((short) 47);
                }
            }
            this.securityParameters.cipherSuite = readUint16;
            this.securityParameters.compressionAlgorithm = readUint8;
            if (hashtable2 != null) {
                boolean hasEncryptThenMACExtension = TlsExtensionsUtils.hasEncryptThenMACExtension(hashtable2);
                if (!hasEncryptThenMACExtension || TlsUtils.isBlockCipherSuite(readUint16)) {
                    this.securityParameters.encryptThenMAC = hasEncryptThenMACExtension;
                    this.securityParameters.extendedMasterSecret = TlsExtensionsUtils.hasExtendedMasterSecretExtension(hashtable2);
                    this.securityParameters.maxFragmentLength = processMaxFragmentLengthExtension(hashtable, hashtable2, (short) 47);
                    this.securityParameters.truncatedHMac = TlsExtensionsUtils.hasTruncatedHMacExtension(hashtable2);
                    this.allowCertificateStatus = !this.resumedSession && TlsUtils.hasExpectedEmptyExtensionData(hashtable2, TlsExtensionsUtils.EXT_status_request, (short) 47);
                    boolean z2 = false;
                    if (!this.resumedSession) {
                        z2 = false;
                        if (TlsUtils.hasExpectedEmptyExtensionData(hashtable2, TlsProtocol.EXT_SessionTicket, (short) 47)) {
                            z2 = true;
                        }
                    }
                    this.expectSessionTicket = z2;
                } else {
                    throw new TlsFatalAlert((short) 47);
                }
            }
            if (hashtable != null) {
                this.tlsClient.processServerExtensions(hashtable2);
            }
            this.securityParameters.prfAlgorithm = getPRFAlgorithm(getContext(), this.securityParameters.getCipherSuite());
            this.securityParameters.verifyDataLength = 12;
        }
    }

    protected void sendCertificateVerifyMessage(DigitallySigned digitallySigned) throws IOException {
        TlsProtocol.HandshakeMessage handshakeMessage = new TlsProtocol.HandshakeMessage(this, (short) 15);
        digitallySigned.encode(handshakeMessage);
        handshakeMessage.writeToRecordStream();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0052, code lost:
        if (r0.length > 32) goto L_0x0055;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00af, code lost:
        if (org.spongycastle.util.Arrays.contains(r5.offeredCompressionMethods, r5.sessionParameters.getCompressionAlgorithm()) == false) goto L_0x00b2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void sendClientHelloMessage() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.tls.TlsClientProtocol.sendClientHelloMessage():void");
    }

    protected void sendClientKeyExchangeMessage() throws IOException {
        TlsProtocol.HandshakeMessage handshakeMessage = new TlsProtocol.HandshakeMessage(this, (short) 16);
        this.keyExchange.generateClientKeyExchange(handshakeMessage);
        handshakeMessage.writeToRecordStream();
    }
}
