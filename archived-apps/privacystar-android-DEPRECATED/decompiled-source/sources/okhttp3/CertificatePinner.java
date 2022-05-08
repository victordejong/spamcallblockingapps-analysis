package okhttp3;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.internal.Util;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;
/* loaded from: classes2-dex2jar.jar:okhttp3/CertificatePinner.class */
public final class CertificatePinner {
    public static final CertificatePinner DEFAULT = new Builder().build();
    @Nullable
    private final CertificateChainCleaner certificateChainCleaner;
    private final Set<Pin> pins;

    /* loaded from: classes2-dex2jar.jar:okhttp3/CertificatePinner$Builder.class */
    public static final class Builder {
        private final List<Pin> pins = new ArrayList();

        public Builder add(String str, String... strArr) {
            if (str == null) {
                throw new NullPointerException("pattern == null");
            }
            for (String str2 : strArr) {
                this.pins.add(new Pin(str, str2));
            }
            return this;
        }

        public CertificatePinner build() {
            return new CertificatePinner(new LinkedHashSet(this.pins), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:okhttp3/CertificatePinner$Pin.class */
    public static final class Pin {
        private static final String WILDCARD = "*.";
        final String canonicalHostname;
        final ByteString hash;
        final String hashAlgorithm;
        final String pattern;

        Pin(String str, String str2) {
            String str3;
            this.pattern = str;
            if (str.startsWith(WILDCARD)) {
                str3 = HttpUrl.parse("http://" + str.substring(WILDCARD.length())).host();
            } else {
                str3 = HttpUrl.parse("http://" + str).host();
            }
            this.canonicalHostname = str3;
            if (str2.startsWith("sha1/")) {
                this.hashAlgorithm = "sha1/";
                this.hash = ByteString.decodeBase64(str2.substring("sha1/".length()));
            } else if (str2.startsWith("sha256/")) {
                this.hashAlgorithm = "sha256/";
                this.hash = ByteString.decodeBase64(str2.substring("sha256/".length()));
            } else {
                throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + str2);
            }
            if (this.hash == null) {
                throw new IllegalArgumentException("pins must be base64: " + str2);
            }
        }

        public boolean equals(Object obj) {
            boolean z;
            if (obj instanceof Pin) {
                Pin pin = (Pin) obj;
                if (this.pattern.equals(pin.pattern) && this.hashAlgorithm.equals(pin.hashAlgorithm) && this.hash.equals(pin.hash)) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        public int hashCode() {
            return ((((527 + this.pattern.hashCode()) * 31) + this.hashAlgorithm.hashCode()) * 31) + this.hash.hashCode();
        }

        boolean matches(String str) {
            if (!this.pattern.startsWith(WILDCARD)) {
                return str.equals(this.canonicalHostname);
            }
            int indexOf = str.indexOf(46);
            boolean z = true;
            if ((str.length() - indexOf) - 1 != this.canonicalHostname.length() || !str.regionMatches(false, indexOf + 1, this.canonicalHostname, 0, this.canonicalHostname.length())) {
                z = false;
            }
            return z;
        }

        public String toString() {
            return this.hashAlgorithm + this.hash.base64();
        }
    }

    CertificatePinner(Set<Pin> set, @Nullable CertificateChainCleaner certificateChainCleaner) {
        this.pins = set;
        this.certificateChainCleaner = certificateChainCleaner;
    }

    public static String pin(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + sha256((X509Certificate) certificate).base64();
    }

    static ByteString sha1(X509Certificate x509Certificate) {
        return ByteString.m231of(x509Certificate.getPublicKey().getEncoded()).sha1();
    }

    static ByteString sha256(X509Certificate x509Certificate) {
        return ByteString.m231of(x509Certificate.getPublicKey().getEncoded()).sha256();
    }

    public void check(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<Pin> findMatchingPins = findMatchingPins(str);
        if (!findMatchingPins.isEmpty()) {
            List<Certificate> list2 = list;
            if (this.certificateChainCleaner != null) {
                list2 = this.certificateChainCleaner.clean(list, str);
            }
            int size = list2.size();
            for (int i = 0; i < size; i++) {
                X509Certificate x509Certificate = (X509Certificate) list2.get(i);
                int size2 = findMatchingPins.size();
                ByteString byteString = null;
                ByteString byteString2 = null;
                for (int i2 = 0; i2 < size2; i2++) {
                    Pin pin = findMatchingPins.get(i2);
                    if (pin.hashAlgorithm.equals("sha256/")) {
                        ByteString byteString3 = byteString;
                        if (byteString == null) {
                            byteString3 = sha256(x509Certificate);
                        }
                        byteString = byteString3;
                        if (pin.hash.equals(byteString3)) {
                            return;
                        }
                    } else if (pin.hashAlgorithm.equals("sha1/")) {
                        ByteString byteString4 = byteString2;
                        if (byteString2 == null) {
                            byteString4 = sha1(x509Certificate);
                        }
                        byteString2 = byteString4;
                        if (pin.hash.equals(byteString4)) {
                            return;
                        }
                    } else {
                        throw new AssertionError("unsupported hashAlgorithm: " + pin.hashAlgorithm);
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Certificate pinning failure!");
            sb.append("\n  Peer certificate chain:");
            int size3 = list2.size();
            for (int i3 = 0; i3 < size3; i3++) {
                X509Certificate x509Certificate2 = (X509Certificate) list2.get(i3);
                sb.append("\n    ");
                sb.append(pin(x509Certificate2));
                sb.append(": ");
                sb.append(x509Certificate2.getSubjectDN().getName());
            }
            sb.append("\n  Pinned certificates for ");
            sb.append(str);
            sb.append(":");
            int size4 = findMatchingPins.size();
            for (int i4 = 0; i4 < size4; i4++) {
                sb.append("\n    ");
                sb.append(findMatchingPins.get(i4));
            }
            throw new SSLPeerUnverifiedException(sb.toString());
        }
    }

    public void check(String str, Certificate... certificateArr) throws SSLPeerUnverifiedException {
        check(str, Arrays.asList(certificateArr));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
        if (r3.pins.equals(r0.pins) != false) goto L_0x003a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@javax.annotation.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof okhttp3.CertificatePinner
            if (r0 == 0) goto L_0x0038
            r0 = r3
            okhttp3.internal.tls.CertificateChainCleaner r0 = r0.certificateChainCleaner
            r6 = r0
            r0 = r4
            okhttp3.CertificatePinner r0 = (okhttp3.CertificatePinner) r0
            r4 = r0
            r0 = r6
            r1 = r4
            okhttp3.internal.tls.CertificateChainCleaner r1 = r1.certificateChainCleaner
            boolean r0 = okhttp3.internal.Util.equal(r0, r1)
            if (r0 == 0) goto L_0x0038
            r0 = r3
            java.util.Set<okhttp3.CertificatePinner$Pin> r0 = r0.pins
            r1 = r4
            java.util.Set<okhttp3.CertificatePinner$Pin> r1 = r1.pins
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0038
            goto L_0x003a
        L_0x0038:
            r0 = 0
            r5 = r0
        L_0x003a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.CertificatePinner.equals(java.lang.Object):boolean");
    }

    List<Pin> findMatchingPins(String str) {
        List<Pin> emptyList = Collections.emptyList();
        for (Pin pin : this.pins) {
            if (pin.matches(str)) {
                List<Pin> list = emptyList;
                if (emptyList.isEmpty()) {
                    list = new ArrayList<>();
                }
                list.add(pin);
                emptyList = list;
            }
        }
        return emptyList;
    }

    public int hashCode() {
        return ((this.certificateChainCleaner != null ? this.certificateChainCleaner.hashCode() : 0) * 31) + this.pins.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CertificatePinner withCertificateChainCleaner(@Nullable CertificateChainCleaner certificateChainCleaner) {
        return Util.equal(this.certificateChainCleaner, certificateChainCleaner) ? this : new CertificatePinner(this.pins, certificateChainCleaner);
    }
}
