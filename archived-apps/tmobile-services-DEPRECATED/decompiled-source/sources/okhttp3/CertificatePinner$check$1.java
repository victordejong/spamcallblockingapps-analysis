package okhttp3;

import java.security.cert.X509Certificate;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Ljava/security/cert/X509Certificate;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/CertificatePinner$check$1.class */
public final class CertificatePinner$check$1 extends Lambda implements Function0<List<? extends X509Certificate>> {
    final /* synthetic */ String $hostname;
    final /* synthetic */ List $peerCertificates;
    final /* synthetic */ CertificatePinner this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificatePinner$check$1(CertificatePinner certificatePinner, List list, String str) {
        super(0);
        this.this$0 = certificatePinner;
        this.$peerCertificates = list;
        this.$hostname = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r6 != null) goto L_0x0025;
     */
    @Override // kotlin.jvm.functions.Function0
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<? extends java.security.cert.X509Certificate> invoke() {
        /*
            r5 = this;
            r0 = r5
            okhttp3.CertificatePinner r0 = r0.this$0
            okhttp3.internal.tls.CertificateChainCleaner r0 = r0.getCertificateChainCleaner$okhttp()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0020
            r0 = r6
            r1 = r5
            java.util.List r1 = r1.$peerCertificates
            r2 = r5
            java.lang.String r2 = r2.$hostname
            java.util.List r0 = r0.clean(r1, r2)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0020
            goto L_0x0025
        L_0x0020:
            r0 = r5
            java.util.List r0 = r0.$peerCertificates
            r6 = r0
        L_0x0025:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r6
            r3 = 10
            int r2 = kotlin.collections.CollectionsKt.m2187p(r2, r3)
            r1.<init>(r2)
            r7 = r0
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L_0x003a:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0069
            r0 = r8
            java.lang.Object r0 = r0.next()
            java.security.cert.Certificate r0 = (java.security.cert.Certificate) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x005f
            r0 = r7
            r1 = r6
            java.security.cert.X509Certificate r1 = (java.security.cert.X509Certificate) r1
            boolean r0 = r0.add(r1)
            goto L_0x003a
        L_0x005f:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
            java.lang.String r2 = "null cannot be cast to non-null type java.security.cert.X509Certificate"
            r1.<init>(r2)
            throw r0
        L_0x0069:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.CertificatePinner$check$1.invoke():java.util.List");
    }
}
