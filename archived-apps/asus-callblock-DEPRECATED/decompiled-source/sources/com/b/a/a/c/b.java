package com.b.a.a.c;

import com.asus.updatesdk.BuildConfig;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
/* loaded from: classes-dex2jar.jar:com/b/a/a/c/b.class */
public final class b implements HostnameVerifier {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3288a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3289b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    private b() {
    }

    public static List<String> a(X509Certificate x509Certificate) {
        List<String> a2 = a(x509Certificate, 7);
        List<String> a3 = a(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(a2.size() + a3.size());
        arrayList.addAll(a2);
        arrayList.addAll(a3);
        return arrayList;
    }

    private static List<String> a(X509Certificate x509Certificate, int i) {
        List<String> emptyList;
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                emptyList = Collections.emptyList();
            } else {
                for (List<?> list : subjectAlternativeNames) {
                    if (!(list == null || list.size() < 2 || (num = (Integer) list.get(0)) == null || num.intValue() != i || (str = (String) list.get(1)) == null)) {
                        arrayList.add(str);
                    }
                }
                emptyList = arrayList;
            }
        } catch (CertificateParsingException e) {
            emptyList = Collections.emptyList();
        }
        return emptyList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x010a, code lost:
        if (r9.lastIndexOf(46, r0 - 1) == (-1)) goto L_0x010d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(java.lang.String r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.c.b.a(java.lang.String, java.lang.String):boolean");
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        boolean z;
        String str2;
        try {
            X509Certificate x509Certificate = (X509Certificate) sSLSession.getPeerCertificates()[0];
            if (f3289b.matcher(str).matches()) {
                List<String> a2 = a(x509Certificate, 7);
                int size = a2.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        z = false;
                        break;
                    } else if (str.equalsIgnoreCase(a2.get(i))) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                String lowerCase = str.toLowerCase(Locale.US);
                List<String> a3 = a(x509Certificate, 2);
                int size2 = a3.size();
                int i2 = 0;
                boolean z2 = false;
                while (true) {
                    if (i2 >= size2) {
                        if (!z2) {
                            a aVar = new a(x509Certificate.getSubjectX500Principal());
                            aVar.c = 0;
                            aVar.d = 0;
                            aVar.e = 0;
                            aVar.f = 0;
                            aVar.g = aVar.f3286a.toCharArray();
                            String a4 = aVar.a();
                            if (a4 == null) {
                                str2 = null;
                            } else {
                                do {
                                    str2 = BuildConfig.FLAVOR;
                                    if (aVar.c == aVar.f3287b) {
                                        str2 = null;
                                    } else {
                                        switch (aVar.g[aVar.c]) {
                                            case '\"':
                                                aVar.c++;
                                                aVar.d = aVar.c;
                                                aVar.e = aVar.d;
                                                while (aVar.c != aVar.f3287b) {
                                                    if (aVar.g[aVar.c] == '\"') {
                                                        aVar.c++;
                                                        while (aVar.c < aVar.f3287b && aVar.g[aVar.c] == ' ') {
                                                            aVar.c++;
                                                        }
                                                        str2 = new String(aVar.g, aVar.d, aVar.e - aVar.d);
                                                        break;
                                                    } else {
                                                        if (aVar.g[aVar.c] == '\\') {
                                                            aVar.g[aVar.e] = aVar.d();
                                                        } else {
                                                            aVar.g[aVar.e] = aVar.g[aVar.c];
                                                        }
                                                        aVar.c++;
                                                        aVar.e++;
                                                    }
                                                }
                                                throw new IllegalStateException("Unexpected end of DN: " + aVar.f3286a);
                                            case '#':
                                                str2 = aVar.b();
                                                break;
                                            case '+':
                                            case ',':
                                            case ';':
                                                break;
                                            default:
                                                str2 = aVar.c();
                                                break;
                                        }
                                        if (!"cn".equalsIgnoreCase(a4)) {
                                            if (aVar.c >= aVar.f3287b) {
                                                str2 = null;
                                            } else if (aVar.g[aVar.c] == ',' || aVar.g[aVar.c] == ';' || aVar.g[aVar.c] == '+') {
                                                aVar.c++;
                                                a4 = aVar.a();
                                            } else {
                                                throw new IllegalStateException("Malformed DN: " + aVar.f3286a);
                                            }
                                        }
                                    }
                                } while (a4 != null);
                                throw new IllegalStateException("Malformed DN: " + aVar.f3286a);
                            }
                            if (str2 != null) {
                                z = a(lowerCase, str2);
                            }
                        }
                        z = false;
                    } else if (a(lowerCase, a3.get(i2))) {
                        z = true;
                        break;
                    } else {
                        i2++;
                        z2 = true;
                    }
                }
            }
        } catch (SSLException e) {
            z = false;
        }
        return z;
    }
}
