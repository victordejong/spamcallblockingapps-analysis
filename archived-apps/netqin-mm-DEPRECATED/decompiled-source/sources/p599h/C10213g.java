package p599h;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import okio.ByteString;
import p599h.p600d0.C10109c;
import p599h.p600d0.p609m.AbstractC10207c;
/* renamed from: h.g */
/* loaded from: classes2-dex2jar.jar:h/g.class */
public final class C10213g {

    /* renamed from: c */
    public static final C10213g f37675c = new C10214a().m1051a();

    /* renamed from: a */
    public final Set<C10215b> f37676a;

    /* renamed from: b */
    public final AbstractC10207c f37677b;

    /* renamed from: h.g$a */
    /* loaded from: classes2-dex2jar.jar:h/g$a.class */
    public static final class C10214a {

        /* renamed from: a */
        public final List<C10215b> f37678a = new ArrayList();

        /* renamed from: a */
        public C10213g m1051a() {
            return new C10213g(new LinkedHashSet(this.f37678a), null);
        }
    }

    /* renamed from: h.g$b */
    /* loaded from: classes2-dex2jar.jar:h/g$b.class */
    public static final class C10215b {

        /* renamed from: a */
        public final String f37679a;

        /* renamed from: b */
        public final String f37680b;

        /* renamed from: c */
        public final String f37681c;

        /* renamed from: d */
        public final ByteString f37682d;

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
            if (r8.regionMatches(false, r0 + 1, r0, 0, r0.length()) != false) goto L_0x0049;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m1050a(java.lang.String r8) {
            /*
                r7 = this;
                r0 = r7
                java.lang.String r0 = r0.f37679a
                java.lang.String r1 = "*."
                boolean r0 = r0.startsWith(r1)
                if (r0 == 0) goto L_0x004c
                r0 = r8
                r1 = 46
                int r0 = r0.indexOf(r1)
                r9 = r0
                r0 = r8
                int r0 = r0.length()
                r10 = r0
                r0 = 1
                r11 = r0
                r0 = r10
                r1 = r9
                int r0 = r0 - r1
                r1 = 1
                int r0 = r0 - r1
                r1 = r7
                java.lang.String r1 = r1.f37680b
                int r1 = r1.length()
                if (r0 != r1) goto L_0x0046
                r0 = r7
                java.lang.String r0 = r0.f37680b
                r12 = r0
                r0 = r8
                r1 = 0
                r2 = r9
                r3 = 1
                int r2 = r2 + r3
                r3 = r12
                r4 = 0
                r5 = r12
                int r5 = r5.length()
                boolean r0 = r0.regionMatches(r1, r2, r3, r4, r5)
                if (r0 == 0) goto L_0x0046
                goto L_0x0049
            L_0x0046:
                r0 = 0
                r11 = r0
            L_0x0049:
                r0 = r11
                return r0
            L_0x004c:
                r0 = r8
                r1 = r7
                java.lang.String r1 = r1.f37680b
                boolean r0 = r0.equals(r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p599h.C10213g.C10215b.m1050a(java.lang.String):boolean");
        }

        public boolean equals(Object obj) {
            boolean z;
            if (obj instanceof C10215b) {
                C10215b bVar = (C10215b) obj;
                if (this.f37679a.equals(bVar.f37679a) && this.f37681c.equals(bVar.f37681c) && this.f37682d.equals(bVar.f37682d)) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        public int hashCode() {
            return ((((527 + this.f37679a.hashCode()) * 31) + this.f37681c.hashCode()) * 31) + this.f37682d.hashCode();
        }

        public String toString() {
            return this.f37681c + this.f37682d.base64();
        }
    }

    public C10213g(Set<C10215b> set, AbstractC10207c cVar) {
        this.f37676a = set;
        this.f37677b = cVar;
    }

    /* renamed from: a */
    public static String m1054a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + m1052b((X509Certificate) certificate).base64();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    /* renamed from: a */
    public static ByteString m1053a(X509Certificate x509Certificate) {
        return ByteString.m3of(x509Certificate.getPublicKey().getEncoded()).sha1();
    }

    /* renamed from: b */
    public static ByteString m1052b(X509Certificate x509Certificate) {
        return ByteString.m3of(x509Certificate.getPublicKey().getEncoded()).sha256();
    }

    /* renamed from: a */
    public C10213g m1057a(AbstractC10207c cVar) {
        return C10109c.m1461a(this.f37677b, cVar) ? this : new C10213g(this.f37676a, cVar);
    }

    /* renamed from: a */
    public List<C10215b> m1056a(String str) {
        List<C10215b> emptyList = Collections.emptyList();
        for (C10215b bVar : this.f37676a) {
            if (bVar.m1050a(str)) {
                List<C10215b> list = emptyList;
                if (emptyList.isEmpty()) {
                    list = new ArrayList<>();
                }
                list.add(bVar);
                emptyList = list;
            }
        }
        return emptyList;
    }

    /* renamed from: a */
    public void m1055a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<C10215b> a = m1056a(str);
        if (!a.isEmpty()) {
            AbstractC10207c cVar = this.f37677b;
            List<Certificate> list2 = list;
            if (cVar != null) {
                list2 = cVar.mo1068a(list, str);
            }
            int size = list2.size();
            for (int i = 0; i < size; i++) {
                X509Certificate x509Certificate = (X509Certificate) list2.get(i);
                int size2 = a.size();
                ByteString byteString = null;
                ByteString byteString2 = null;
                for (int i2 = 0; i2 < size2; i2++) {
                    C10215b bVar = a.get(i2);
                    if (bVar.f37681c.equals("sha256/")) {
                        ByteString byteString3 = byteString;
                        if (byteString == null) {
                            byteString3 = m1052b(x509Certificate);
                        }
                        byteString = byteString3;
                        if (bVar.f37682d.equals(byteString3)) {
                            return;
                        }
                    } else if (bVar.f37681c.equals("sha1/")) {
                        ByteString byteString4 = byteString2;
                        if (byteString2 == null) {
                            byteString4 = m1053a(x509Certificate);
                        }
                        byteString2 = byteString4;
                        if (bVar.f37682d.equals(byteString4)) {
                            return;
                        }
                    } else {
                        throw new AssertionError("unsupported hashAlgorithm: " + bVar.f37681c);
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
                sb.append(m1054a((Certificate) x509Certificate2));
                sb.append(": ");
                sb.append(x509Certificate2.getSubjectDN().getName());
            }
            sb.append("\n  Pinned certificates for ");
            sb.append(str);
            sb.append(":");
            int size4 = a.size();
            for (int i4 = 0; i4 < size4; i4++) {
                sb.append("\n    ");
                sb.append(a.get(i4));
            }
            throw new SSLPeerUnverifiedException(sb.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
        if (r3.f37676a.equals(r0.f37676a) != false) goto L_0x003a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
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
            boolean r0 = r0 instanceof p599h.C10213g
            if (r0 == 0) goto L_0x0038
            r0 = r3
            h.d0.m.c r0 = r0.f37677b
            r6 = r0
            r0 = r4
            h.g r0 = (p599h.C10213g) r0
            r4 = r0
            r0 = r6
            r1 = r4
            h.d0.m.c r1 = r1.f37677b
            boolean r0 = p599h.p600d0.C10109c.m1461a(r0, r1)
            if (r0 == 0) goto L_0x0038
            r0 = r3
            java.util.Set<h.g$b> r0 = r0.f37676a
            r1 = r4
            java.util.Set<h.g$b> r1 = r1.f37676a
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
        throw new UnsupportedOperationException("Method not decompiled: p599h.C10213g.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        AbstractC10207c cVar = this.f37677b;
        return ((cVar != null ? cVar.hashCode() : 0) * 31) + this.f37676a.hashCode();
    }
}
