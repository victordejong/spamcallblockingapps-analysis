package org.spongycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.tls.TlsProtocol;
import org.spongycastle.crypto.util.PublicKeyFactory;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsServerProtocol.class */
public class TlsServerProtocol extends TlsProtocol {
    protected TlsServer tlsServer = null;
    TlsServerContextImpl tlsServerContext = null;
    protected TlsKeyExchange keyExchange = null;
    protected TlsCredentials serverCredentials = null;
    protected CertificateRequest certificateRequest = null;
    protected short clientCertificateType = (short) (-1);
    protected TlsHandshakeHash prepareFinishHash = null;

    public TlsServerProtocol(InputStream inputStream, OutputStream outputStream, SecureRandom secureRandom) {
        super(inputStream, outputStream, secureRandom);
    }

    public TlsServerProtocol(SecureRandom secureRandom) {
        super(secureRandom);
    }

    public void accept(TlsServer tlsServer) throws IOException {
        if (tlsServer == null) {
            throw new IllegalArgumentException("'tlsServer' cannot be null");
        } else if (this.tlsServer != null) {
            throw new IllegalStateException("'accept' can only be called once");
        } else {
            this.tlsServer = tlsServer;
            this.securityParameters = new SecurityParameters();
            this.securityParameters.entity = 0;
            this.tlsServerContext = new TlsServerContextImpl(this.secureRandom, this.securityParameters);
            this.securityParameters.serverRandom = createRandomBlock(tlsServer.shouldUseGMTUnixTime(), this.tlsServerContext.getNonceRandomGenerator());
            this.tlsServer.init(this.tlsServerContext);
            this.recordStream.init(this.tlsServerContext);
            this.recordStream.setRestrictReadVersion(false);
            blockForHandshake();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.crypto.tls.TlsProtocol
    public void cleanupHandshake() {
        super.cleanupHandshake();
        this.keyExchange = null;
        this.serverCredentials = null;
        this.certificateRequest = null;
        this.prepareFinishHash = null;
    }

    protected boolean expectCertificateVerifyMessage() {
        return this.clientCertificateType >= 0 && TlsUtils.hasSigningCapability(this.clientCertificateType);
    }

    @Override // org.spongycastle.crypto.tls.TlsProtocol
    protected TlsContext getContext() {
        return this.tlsServerContext;
    }

    @Override // org.spongycastle.crypto.tls.TlsProtocol
    AbstractTlsContext getContextAdmin() {
        return this.tlsServerContext;
    }

    @Override // org.spongycastle.crypto.tls.TlsProtocol
    protected TlsPeer getPeer() {
        return this.tlsServer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.crypto.tls.TlsProtocol
    public void handleAlertWarningMessage(short s) throws IOException {
        super.handleAlertWarningMessage(s);
        if (s == 41) {
            if (TlsUtils.isSSL(getContext()) && this.certificateRequest != null) {
                switch (this.connection_state) {
                    case 8:
                        this.tlsServer.processClientSupplementalData(null);
                        notifyClientCertificate(Certificate.EMPTY_CHAIN);
                        this.connection_state = (short) 10;
                        return;
                    case 9:
                        notifyClientCertificate(Certificate.EMPTY_CHAIN);
                        this.connection_state = (short) 10;
                        return;
                }
            }
            throw new TlsFatalAlert((short) 10);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007f  */
    @Override // org.spongycastle.crypto.tls.TlsProtocol
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void handleHandshakeMessage(short r5, java.io.ByteArrayInputStream r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 875
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.tls.TlsServerProtocol.handleHandshakeMessage(short, java.io.ByteArrayInputStream):void");
    }

    protected void notifyClientCertificate(Certificate certificate) throws IOException {
        if (this.certificateRequest == null) {
            throw new IllegalStateException();
        } else if (this.peerCertificate != null) {
            throw new TlsFatalAlert((short) 10);
        } else {
            this.peerCertificate = certificate;
            if (certificate.isEmpty()) {
                this.keyExchange.skipClientCredentials();
            } else {
                this.clientCertificateType = TlsUtils.getClientCertificateType(certificate, this.serverCredentials.getCertificate());
                this.keyExchange.processClientCertificate(certificate);
            }
            this.tlsServer.notifyClientCertificate(certificate);
        }
    }

    protected void receiveCertificateMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        Certificate parse = Certificate.parse(byteArrayInputStream);
        assertEmpty(byteArrayInputStream);
        notifyClientCertificate(parse);
    }

    protected void receiveCertificateVerifyMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        byte[] bArr;
        if (this.certificateRequest == null) {
            throw new IllegalStateException();
        }
        DigitallySigned parse = DigitallySigned.parse(getContext(), byteArrayInputStream);
        assertEmpty(byteArrayInputStream);
        try {
            SignatureAndHashAlgorithm algorithm = parse.getAlgorithm();
            if (TlsUtils.isTLSv12(getContext())) {
                TlsUtils.verifySupportedSignatureAlgorithm(this.certificateRequest.getSupportedSignatureAlgorithms(), algorithm);
                bArr = this.prepareFinishHash.getFinalHash(algorithm.getHash());
            } else {
                bArr = this.securityParameters.getSessionHash();
            }
            AsymmetricKeyParameter createKey = PublicKeyFactory.createKey(this.peerCertificate.getCertificateAt(0).getSubjectPublicKeyInfo());
            TlsSigner createTlsSigner = TlsUtils.createTlsSigner(this.clientCertificateType);
            createTlsSigner.init(getContext());
            if (!createTlsSigner.verifyRawSignature(algorithm, parse.getSignature(), createKey, bArr)) {
                throw new TlsFatalAlert((short) 51);
            }
        } catch (TlsFatalAlert e) {
            throw e;
        } catch (Exception e2) {
            throw new TlsFatalAlert((short) 51, e2);
        }
    }

    protected void receiveClientHelloMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        ProtocolVersion readVersion = TlsUtils.readVersion(byteArrayInputStream);
        this.recordStream.setWriteVersion(readVersion);
        if (readVersion.isDTLS()) {
            throw new TlsFatalAlert((short) 47);
        }
        byte[] readFully = TlsUtils.readFully(32, byteArrayInputStream);
        if (TlsUtils.readOpaque8(byteArrayInputStream).length > 32) {
            throw new TlsFatalAlert((short) 47);
        }
        int readUint16 = TlsUtils.readUint16(byteArrayInputStream);
        if (readUint16 < 2 || (readUint16 & 1) != 0) {
            throw new TlsFatalAlert((short) 50);
        }
        this.offeredCipherSuites = TlsUtils.readUint16Array(readUint16 / 2, byteArrayInputStream);
        short readUint8 = TlsUtils.readUint8(byteArrayInputStream);
        if (readUint8 < 1) {
            throw new TlsFatalAlert((short) 47);
        }
        this.offeredCompressionMethods = TlsUtils.readUint8Array(readUint8, byteArrayInputStream);
        this.clientExtensions = readExtensions(byteArrayInputStream);
        this.securityParameters.extendedMasterSecret = TlsExtensionsUtils.hasExtendedMasterSecretExtension(this.clientExtensions);
        getContextAdmin().setClientVersion(readVersion);
        this.tlsServer.notifyClientVersion(readVersion);
        this.tlsServer.notifyFallback(Arrays.contains(this.offeredCipherSuites, (int) CipherSuite.TLS_FALLBACK_SCSV));
        this.securityParameters.clientRandom = readFully;
        this.tlsServer.notifyOfferedCipherSuites(this.offeredCipherSuites);
        this.tlsServer.notifyOfferedCompressionMethods(this.offeredCompressionMethods);
        if (Arrays.contains(this.offeredCipherSuites, 255)) {
            this.secure_renegotiation = true;
        }
        byte[] extensionData = TlsUtils.getExtensionData(this.clientExtensions, EXT_RenegotiationInfo);
        if (extensionData != null) {
            this.secure_renegotiation = true;
            if (!Arrays.constantTimeAreEqual(extensionData, createRenegotiationInfo(TlsUtils.EMPTY_BYTES))) {
                throw new TlsFatalAlert((short) 40);
            }
        }
        this.tlsServer.notifySecureRenegotiation(this.secure_renegotiation);
        if (this.clientExtensions != null) {
            TlsExtensionsUtils.getPaddingExtension(this.clientExtensions);
            this.tlsServer.processClientExtensions(this.clientExtensions);
        }
    }

    protected void receiveClientKeyExchangeMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        this.keyExchange.processClientKeyExchange(byteArrayInputStream);
        assertEmpty(byteArrayInputStream);
        if (TlsUtils.isSSL(getContext())) {
            establishMasterSecret(getContext(), this.keyExchange);
        }
        this.prepareFinishHash = this.recordStream.prepareToFinish();
        this.securityParameters.sessionHash = getCurrentPRFHash(getContext(), this.prepareFinishHash, null);
        if (!TlsUtils.isSSL(getContext())) {
            establishMasterSecret(getContext(), this.keyExchange);
        }
        this.recordStream.setPendingConnectionState(getPeer().getCompression(), getPeer().getCipher());
        if (!this.expectSessionTicket) {
            sendChangeCipherSpecMessage();
        }
    }

    protected void sendCertificateRequestMessage(CertificateRequest certificateRequest) throws IOException {
        TlsProtocol.HandshakeMessage handshakeMessage = new TlsProtocol.HandshakeMessage(this, (short) 13);
        certificateRequest.encode(handshakeMessage);
        handshakeMessage.writeToRecordStream();
    }

    protected void sendCertificateStatusMessage(CertificateStatus certificateStatus) throws IOException {
        TlsProtocol.HandshakeMessage handshakeMessage = new TlsProtocol.HandshakeMessage(this, (short) 22);
        certificateStatus.encode(handshakeMessage);
        handshakeMessage.writeToRecordStream();
    }

    protected void sendNewSessionTicketMessage(NewSessionTicket newSessionTicket) throws IOException {
        if (newSessionTicket == null) {
            throw new TlsFatalAlert((short) 80);
        }
        TlsProtocol.HandshakeMessage handshakeMessage = new TlsProtocol.HandshakeMessage(this, (short) 4);
        newSessionTicket.encode(handshakeMessage);
        handshakeMessage.writeToRecordStream();
    }

    protected void sendServerHelloDoneMessage() throws IOException {
        byte[] bArr = new byte[4];
        TlsUtils.writeUint8((short) 14, bArr, 0);
        TlsUtils.writeUint24(0, bArr, 1);
        writeHandshakeMessage(bArr, 0, bArr.length);
    }

    protected void sendServerHelloMessage() throws IOException {
        TlsProtocol.HandshakeMessage handshakeMessage = new TlsProtocol.HandshakeMessage(this, (short) 2);
        ProtocolVersion serverVersion = this.tlsServer.getServerVersion();
        if (!serverVersion.isEqualOrEarlierVersionOf(getContext().getClientVersion())) {
            throw new TlsFatalAlert((short) 80);
        }
        this.recordStream.setReadVersion(serverVersion);
        this.recordStream.setWriteVersion(serverVersion);
        this.recordStream.setRestrictReadVersion(true);
        getContextAdmin().setServerVersion(serverVersion);
        TlsUtils.writeVersion(serverVersion, handshakeMessage);
        handshakeMessage.write(this.securityParameters.serverRandom);
        TlsUtils.writeOpaque8(TlsUtils.EMPTY_BYTES, handshakeMessage);
        int selectedCipherSuite = this.tlsServer.getSelectedCipherSuite();
        if (!Arrays.contains(this.offeredCipherSuites, selectedCipherSuite) || selectedCipherSuite == 0 || CipherSuite.isSCSV(selectedCipherSuite) || !TlsUtils.isValidCipherSuiteForVersion(selectedCipherSuite, getContext().getServerVersion())) {
            throw new TlsFatalAlert((short) 80);
        }
        this.securityParameters.cipherSuite = selectedCipherSuite;
        short selectedCompressionMethod = this.tlsServer.getSelectedCompressionMethod();
        if (!Arrays.contains(this.offeredCompressionMethods, selectedCompressionMethod)) {
            throw new TlsFatalAlert((short) 80);
        }
        this.securityParameters.compressionAlgorithm = selectedCompressionMethod;
        TlsUtils.writeUint16(selectedCipherSuite, handshakeMessage);
        TlsUtils.writeUint8(selectedCompressionMethod, (OutputStream) handshakeMessage);
        this.serverExtensions = this.tlsServer.getServerExtensions();
        if (this.secure_renegotiation) {
            if (TlsUtils.getExtensionData(this.serverExtensions, EXT_RenegotiationInfo) == null) {
                this.serverExtensions = TlsExtensionsUtils.ensureExtensionsInitialised(this.serverExtensions);
                this.serverExtensions.put(EXT_RenegotiationInfo, createRenegotiationInfo(TlsUtils.EMPTY_BYTES));
            }
        }
        if (this.securityParameters.extendedMasterSecret) {
            this.serverExtensions = TlsExtensionsUtils.ensureExtensionsInitialised(this.serverExtensions);
            TlsExtensionsUtils.addExtendedMasterSecretExtension(this.serverExtensions);
        }
        if (this.serverExtensions != null) {
            this.securityParameters.encryptThenMAC = TlsExtensionsUtils.hasEncryptThenMACExtension(this.serverExtensions);
            this.securityParameters.maxFragmentLength = processMaxFragmentLengthExtension(this.clientExtensions, this.serverExtensions, (short) 80);
            this.securityParameters.truncatedHMac = TlsExtensionsUtils.hasTruncatedHMacExtension(this.serverExtensions);
            this.allowCertificateStatus = !this.resumedSession && TlsUtils.hasExpectedEmptyExtensionData(this.serverExtensions, TlsExtensionsUtils.EXT_status_request, (short) 80);
            boolean z = false;
            if (!this.resumedSession) {
                z = false;
                if (TlsUtils.hasExpectedEmptyExtensionData(this.serverExtensions, TlsProtocol.EXT_SessionTicket, (short) 80)) {
                    z = true;
                }
            }
            this.expectSessionTicket = z;
            writeExtensions(handshakeMessage, this.serverExtensions);
        }
        this.securityParameters.prfAlgorithm = getPRFAlgorithm(getContext(), this.securityParameters.getCipherSuite());
        this.securityParameters.verifyDataLength = 12;
        applyMaxFragmentLengthExtension();
        handshakeMessage.writeToRecordStream();
    }

    protected void sendServerKeyExchangeMessage(byte[] bArr) throws IOException {
        TlsProtocol.HandshakeMessage handshakeMessage = new TlsProtocol.HandshakeMessage((short) 12, bArr.length);
        handshakeMessage.write(bArr);
        handshakeMessage.writeToRecordStream();
    }
}
