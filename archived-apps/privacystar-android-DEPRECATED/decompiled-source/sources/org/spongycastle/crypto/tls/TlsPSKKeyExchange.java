package org.spongycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.spongycastle.asn1.x509.Certificate;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPrivateKeyParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.util.PublicKeyFactory;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.p039io.Streams;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsPSKKeyExchange.class */
public class TlsPSKKeyExchange extends AbstractTlsKeyExchange {
    protected short[] clientECPointFormats;
    protected DHParameters dhParameters;
    protected int[] namedCurves;
    protected byte[] premasterSecret;
    protected TlsPSKIdentity pskIdentity;
    protected TlsPSKIdentityManager pskIdentityManager;
    protected short[] serverECPointFormats;
    protected byte[] psk_identity_hint = null;
    protected byte[] psk = null;
    protected DHPrivateKeyParameters dhAgreePrivateKey = null;
    protected DHPublicKeyParameters dhAgreePublicKey = null;
    protected ECPrivateKeyParameters ecAgreePrivateKey = null;
    protected ECPublicKeyParameters ecAgreePublicKey = null;
    protected AsymmetricKeyParameter serverPublicKey = null;
    protected RSAKeyParameters rsaServerPublicKey = null;
    protected TlsEncryptionCredentials serverCredentials = null;

    public TlsPSKKeyExchange(int i, Vector vector, TlsPSKIdentity tlsPSKIdentity, TlsPSKIdentityManager tlsPSKIdentityManager, DHParameters dHParameters, int[] iArr, short[] sArr, short[] sArr2) {
        super(i, vector);
        if (i != 24) {
            switch (i) {
                case 13:
                case 14:
                case 15:
                    break;
                default:
                    throw new IllegalArgumentException("unsupported key exchange algorithm");
            }
        }
        this.pskIdentity = tlsPSKIdentity;
        this.pskIdentityManager = tlsPSKIdentityManager;
        this.dhParameters = dHParameters;
        this.namedCurves = iArr;
        this.clientECPointFormats = sArr;
        this.serverECPointFormats = sArr2;
    }

    @Override // org.spongycastle.crypto.tls.TlsKeyExchange
    public void generateClientKeyExchange(OutputStream outputStream) throws IOException {
        if (this.psk_identity_hint == null) {
            this.pskIdentity.skipIdentityHint();
        } else {
            this.pskIdentity.notifyIdentityHint(this.psk_identity_hint);
        }
        byte[] pSKIdentity = this.pskIdentity.getPSKIdentity();
        if (pSKIdentity == null) {
            throw new TlsFatalAlert((short) 80);
        }
        this.psk = this.pskIdentity.getPSK();
        if (this.psk == null) {
            throw new TlsFatalAlert((short) 80);
        }
        TlsUtils.writeOpaque16(pSKIdentity, outputStream);
        this.context.getSecurityParameters().pskIdentity = Arrays.clone(pSKIdentity);
        if (this.keyExchange == 14) {
            this.dhAgreePrivateKey = TlsDHUtils.generateEphemeralClientKeyExchange(this.context.getSecureRandom(), this.dhParameters, outputStream);
        } else if (this.keyExchange == 24) {
            this.ecAgreePrivateKey = TlsECCUtils.generateEphemeralClientKeyExchange(this.context.getSecureRandom(), this.serverECPointFormats, this.ecAgreePublicKey.getParameters(), outputStream);
        } else if (this.keyExchange == 15) {
            this.premasterSecret = TlsRSAUtils.generateEncryptedPreMasterSecret(this.context, this.rsaServerPublicKey, outputStream);
        }
    }

    protected byte[] generateOtherSecret(int i) throws IOException {
        if (this.keyExchange == 14) {
            if (this.dhAgreePrivateKey != null) {
                return TlsDHUtils.calculateDHBasicAgreement(this.dhAgreePublicKey, this.dhAgreePrivateKey);
            }
            throw new TlsFatalAlert((short) 80);
        } else if (this.keyExchange != 24) {
            return this.keyExchange == 15 ? this.premasterSecret : new byte[i];
        } else {
            if (this.ecAgreePrivateKey != null) {
                return TlsECCUtils.calculateECDHBasicAgreement(this.ecAgreePublicKey, this.ecAgreePrivateKey);
            }
            throw new TlsFatalAlert((short) 80);
        }
    }

    @Override // org.spongycastle.crypto.tls.TlsKeyExchange
    public byte[] generatePremasterSecret() throws IOException {
        byte[] generateOtherSecret = generateOtherSecret(this.psk.length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(generateOtherSecret.length + 4 + this.psk.length);
        TlsUtils.writeOpaque16(generateOtherSecret, byteArrayOutputStream);
        TlsUtils.writeOpaque16(this.psk, byteArrayOutputStream);
        Arrays.fill(this.psk, (byte) 0);
        this.psk = null;
        return byteArrayOutputStream.toByteArray();
    }

    @Override // org.spongycastle.crypto.tls.AbstractTlsKeyExchange, org.spongycastle.crypto.tls.TlsKeyExchange
    public byte[] generateServerKeyExchange() throws IOException {
        this.psk_identity_hint = this.pskIdentityManager.getHint();
        if (this.psk_identity_hint == null && !requiresServerKeyExchange()) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (this.psk_identity_hint == null) {
            TlsUtils.writeOpaque16(TlsUtils.EMPTY_BYTES, byteArrayOutputStream);
        } else {
            TlsUtils.writeOpaque16(this.psk_identity_hint, byteArrayOutputStream);
        }
        if (this.keyExchange == 14) {
            if (this.dhParameters == null) {
                throw new TlsFatalAlert((short) 80);
            }
            this.dhAgreePrivateKey = TlsDHUtils.generateEphemeralServerKeyExchange(this.context.getSecureRandom(), this.dhParameters, byteArrayOutputStream);
        } else if (this.keyExchange == 24) {
            this.ecAgreePrivateKey = TlsECCUtils.generateEphemeralServerKeyExchange(this.context.getSecureRandom(), this.namedCurves, this.clientECPointFormats, byteArrayOutputStream);
        }
        return byteArrayOutputStream.toByteArray();
    }

    @Override // org.spongycastle.crypto.tls.TlsKeyExchange
    public void processClientCredentials(TlsCredentials tlsCredentials) throws IOException {
        throw new TlsFatalAlert((short) 80);
    }

    @Override // org.spongycastle.crypto.tls.AbstractTlsKeyExchange, org.spongycastle.crypto.tls.TlsKeyExchange
    public void processClientKeyExchange(InputStream inputStream) throws IOException {
        byte[] readOpaque16 = TlsUtils.readOpaque16(inputStream);
        this.psk = this.pskIdentityManager.getPSK(readOpaque16);
        if (this.psk == null) {
            throw new TlsFatalAlert((short) 115);
        }
        this.context.getSecurityParameters().pskIdentity = readOpaque16;
        if (this.keyExchange == 14) {
            this.dhAgreePublicKey = TlsDHUtils.validateDHPublicKey(new DHPublicKeyParameters(TlsDHUtils.readDHParameter(inputStream), this.dhParameters));
        } else if (this.keyExchange == 24) {
            this.ecAgreePublicKey = TlsECCUtils.validateECPublicKey(TlsECCUtils.deserializeECPublicKey(this.serverECPointFormats, this.ecAgreePrivateKey.getParameters(), TlsUtils.readOpaque8(inputStream)));
        } else if (this.keyExchange == 15) {
            this.premasterSecret = this.serverCredentials.decryptPreMasterSecret(TlsUtils.isSSL(this.context) ? Streams.readAll(inputStream) : TlsUtils.readOpaque16(inputStream));
        }
    }

    @Override // org.spongycastle.crypto.tls.AbstractTlsKeyExchange, org.spongycastle.crypto.tls.TlsKeyExchange
    public void processServerCertificate(Certificate certificate) throws IOException {
        if (this.keyExchange != 15) {
            throw new TlsFatalAlert((short) 10);
        } else if (certificate.isEmpty()) {
            throw new TlsFatalAlert((short) 42);
        } else {
            Certificate certificateAt = certificate.getCertificateAt(0);
            try {
                this.serverPublicKey = PublicKeyFactory.createKey(certificateAt.getSubjectPublicKeyInfo());
                if (this.serverPublicKey.isPrivate()) {
                    throw new TlsFatalAlert((short) 80);
                }
                this.rsaServerPublicKey = validateRSAPublicKey((RSAKeyParameters) this.serverPublicKey);
                TlsUtils.validateKeyUsage(certificateAt, 32);
                super.processServerCertificate(certificate);
            } catch (RuntimeException e) {
                throw new TlsFatalAlert((short) 43, e);
            }
        }
    }

    @Override // org.spongycastle.crypto.tls.AbstractTlsKeyExchange, org.spongycastle.crypto.tls.TlsKeyExchange
    public void processServerCredentials(TlsCredentials tlsCredentials) throws IOException {
        if (!(tlsCredentials instanceof TlsEncryptionCredentials)) {
            throw new TlsFatalAlert((short) 80);
        }
        processServerCertificate(tlsCredentials.getCertificate());
        this.serverCredentials = (TlsEncryptionCredentials) tlsCredentials;
    }

    @Override // org.spongycastle.crypto.tls.AbstractTlsKeyExchange, org.spongycastle.crypto.tls.TlsKeyExchange
    public void processServerKeyExchange(InputStream inputStream) throws IOException {
        this.psk_identity_hint = TlsUtils.readOpaque16(inputStream);
        if (this.keyExchange == 14) {
            this.dhAgreePublicKey = TlsDHUtils.validateDHPublicKey(ServerDHParams.parse(inputStream).getPublicKey());
            this.dhParameters = this.dhAgreePublicKey.getParameters();
        } else if (this.keyExchange == 24) {
            this.ecAgreePublicKey = TlsECCUtils.validateECPublicKey(TlsECCUtils.deserializeECPublicKey(this.clientECPointFormats, TlsECCUtils.readECParameters(this.namedCurves, this.clientECPointFormats, inputStream), TlsUtils.readOpaque8(inputStream)));
        }
    }

    @Override // org.spongycastle.crypto.tls.AbstractTlsKeyExchange, org.spongycastle.crypto.tls.TlsKeyExchange
    public boolean requiresServerKeyExchange() {
        int i = this.keyExchange;
        return i == 14 || i == 24;
    }

    @Override // org.spongycastle.crypto.tls.TlsKeyExchange
    public void skipServerCredentials() throws IOException {
        if (this.keyExchange == 15) {
            throw new TlsFatalAlert((short) 10);
        }
    }

    @Override // org.spongycastle.crypto.tls.TlsKeyExchange
    public void validateCertificateRequest(CertificateRequest certificateRequest) throws IOException {
        throw new TlsFatalAlert((short) 10);
    }

    protected RSAKeyParameters validateRSAPublicKey(RSAKeyParameters rSAKeyParameters) throws IOException {
        if (rSAKeyParameters.getExponent().isProbablePrime(2)) {
            return rSAKeyParameters;
        }
        throw new TlsFatalAlert((short) 47);
    }
}
