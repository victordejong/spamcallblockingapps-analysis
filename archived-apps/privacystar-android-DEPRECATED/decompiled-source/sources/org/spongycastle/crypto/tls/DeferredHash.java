package org.spongycastle.crypto.tls;

import java.util.Enumeration;
import java.util.Hashtable;
import org.spongycastle.crypto.Digest;
import org.spongycastle.util.Shorts;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/DeferredHash.class */
public class DeferredHash implements TlsHandshakeHash {
    protected static final int BUFFERING_HASH_LIMIT = 4;
    private DigestInputBuffer buf;
    protected TlsContext context;
    private Hashtable hashes;
    private Short prfHashAlgorithm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeferredHash() {
        this.buf = new DigestInputBuffer();
        this.hashes = new Hashtable();
        this.prfHashAlgorithm = null;
    }

    private DeferredHash(Short sh, Digest digest) {
        this.buf = null;
        this.hashes = new Hashtable();
        this.prfHashAlgorithm = sh;
        this.hashes.put(sh, digest);
    }

    protected void checkStopBuffering() {
        if (this.buf != null && this.hashes.size() <= 4) {
            Enumeration elements = this.hashes.elements();
            while (elements.hasMoreElements()) {
                this.buf.updateDigest((Digest) elements.nextElement());
            }
            this.buf = null;
        }
    }

    protected void checkTrackingHash(Short sh) {
        if (!this.hashes.containsKey(sh)) {
            this.hashes.put(sh, TlsUtils.createHash(sh.shortValue()));
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        throw new IllegalStateException("Use fork() to get a definite Digest");
    }

    @Override // org.spongycastle.crypto.tls.TlsHandshakeHash
    public Digest forkPRFHash() {
        checkStopBuffering();
        if (this.buf == null) {
            return TlsUtils.cloneHash(this.prfHashAlgorithm.shortValue(), (Digest) this.hashes.get(this.prfHashAlgorithm));
        }
        Digest createHash = TlsUtils.createHash(this.prfHashAlgorithm.shortValue());
        this.buf.updateDigest(createHash);
        return createHash;
    }

    @Override // org.spongycastle.crypto.Digest
    public String getAlgorithmName() {
        throw new IllegalStateException("Use fork() to get a definite Digest");
    }

    @Override // org.spongycastle.crypto.Digest
    public int getDigestSize() {
        throw new IllegalStateException("Use fork() to get a definite Digest");
    }

    @Override // org.spongycastle.crypto.tls.TlsHandshakeHash
    public byte[] getFinalHash(short s) {
        Digest digest = (Digest) this.hashes.get(Shorts.valueOf(s));
        if (digest == null) {
            throw new IllegalStateException("HashAlgorithm." + HashAlgorithm.getText(s) + " is not being tracked");
        }
        Digest cloneHash = TlsUtils.cloneHash(s, digest);
        if (this.buf != null) {
            this.buf.updateDigest(cloneHash);
        }
        byte[] bArr = new byte[cloneHash.getDigestSize()];
        cloneHash.doFinal(bArr, 0);
        return bArr;
    }

    @Override // org.spongycastle.crypto.tls.TlsHandshakeHash
    public void init(TlsContext tlsContext) {
        this.context = tlsContext;
    }

    @Override // org.spongycastle.crypto.tls.TlsHandshakeHash
    public TlsHandshakeHash notifyPRFDetermined() {
        int prfAlgorithm = this.context.getSecurityParameters().getPrfAlgorithm();
        if (prfAlgorithm == 0) {
            CombinedHash combinedHash = new CombinedHash();
            combinedHash.init(this.context);
            this.buf.updateDigest(combinedHash);
            return combinedHash.notifyPRFDetermined();
        }
        this.prfHashAlgorithm = Shorts.valueOf(TlsUtils.getHashAlgorithmForPRFAlgorithm(prfAlgorithm));
        checkTrackingHash(this.prfHashAlgorithm);
        return this;
    }

    @Override // org.spongycastle.crypto.Digest
    public void reset() {
        if (this.buf != null) {
            this.buf.reset();
            return;
        }
        Enumeration elements = this.hashes.elements();
        while (elements.hasMoreElements()) {
            ((Digest) elements.nextElement()).reset();
        }
    }

    @Override // org.spongycastle.crypto.tls.TlsHandshakeHash
    public void sealHashAlgorithms() {
        checkStopBuffering();
    }

    @Override // org.spongycastle.crypto.tls.TlsHandshakeHash
    public TlsHandshakeHash stopTracking() {
        Digest cloneHash = TlsUtils.cloneHash(this.prfHashAlgorithm.shortValue(), (Digest) this.hashes.get(this.prfHashAlgorithm));
        if (this.buf != null) {
            this.buf.updateDigest(cloneHash);
        }
        DeferredHash deferredHash = new DeferredHash(this.prfHashAlgorithm, cloneHash);
        deferredHash.init(this.context);
        return deferredHash;
    }

    @Override // org.spongycastle.crypto.tls.TlsHandshakeHash
    public void trackHashAlgorithm(short s) {
        if (this.buf == null) {
            throw new IllegalStateException("Too late to track more hash algorithms");
        }
        checkTrackingHash(Shorts.valueOf(s));
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte b) {
        if (this.buf != null) {
            this.buf.write(b);
            return;
        }
        Enumeration elements = this.hashes.elements();
        while (elements.hasMoreElements()) {
            ((Digest) elements.nextElement()).update(b);
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        if (this.buf != null) {
            this.buf.write(bArr, i, i2);
            return;
        }
        Enumeration elements = this.hashes.elements();
        while (elements.hasMoreElements()) {
            ((Digest) elements.nextElement()).update(bArr, i, i2);
        }
    }
}
