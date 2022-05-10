package p530d.p531a.p533w0.p534o;

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
/* renamed from: d.a.w0.o.c */
/* loaded from: classes2-dex2jar.jar:d/a/w0/o/c.class */
public final class C9595c implements HostnameVerifier {

    /* renamed from: a */
    public static final C9595c f36623a = new C9595c();

    /* renamed from: b */
    public static final Pattern f36624b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* renamed from: a */
    public static List<String> m2291a(X509Certificate x509Certificate, int i) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (!(list == null || list.size() < 2 || (num = (Integer) list.get(0)) == null || num.intValue() != i || (str = (String) list.get(1)) == null)) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException e) {
            return Collections.emptyList();
        }
    }

    /* renamed from: a */
    public static boolean m2294a(String str) {
        return f36624b.matcher(str).matches();
    }

    /* renamed from: a */
    public final boolean m2293a(String str, String str2) {
        if (str == null || str.length() == 0 || str.startsWith(".") || str.endsWith("..") || str2 == null || str2.length() == 0 || str2.startsWith(".") || str2.endsWith("..")) {
            return false;
        }
        String str3 = str;
        if (!str.endsWith(".")) {
            str3 = str + '.';
        }
        String str4 = str2;
        if (!str2.endsWith(".")) {
            str4 = str2 + '.';
        }
        String lowerCase = str4.toLowerCase(Locale.US);
        if (!lowerCase.contains("*")) {
            return str3.equals(lowerCase);
        }
        if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str3.length() < lowerCase.length() || "*.".equals(lowerCase)) {
            return false;
        }
        String substring = lowerCase.substring(1);
        if (!str3.endsWith(substring)) {
            return false;
        }
        int length = str3.length() - substring.length();
        return length <= 0 || str3.lastIndexOf(46, length - 1) == -1;
    }

    /* renamed from: a */
    public boolean m2292a(String str, X509Certificate x509Certificate) {
        return m2294a(str) ? m2289c(str, x509Certificate) : m2290b(str, x509Certificate);
    }

    /* renamed from: b */
    public final boolean m2290b(String str, X509Certificate x509Certificate) {
        String a;
        String lowerCase = str.toLowerCase(Locale.US);
        List<String> a2 = m2291a(x509Certificate, 2);
        int size = a2.size();
        int i = 0;
        boolean z = false;
        while (i < size) {
            if (m2293a(lowerCase, a2.get(i))) {
                return true;
            }
            i++;
            z = true;
        }
        if (z || (a = new C9594b(x509Certificate.getSubjectX500Principal()).m2300a("cn")) == null) {
            return false;
        }
        return m2293a(lowerCase, a);
    }

    /* renamed from: c */
    public final boolean m2289c(String str, X509Certificate x509Certificate) {
        List<String> a = m2291a(x509Certificate, 7);
        int size = a.size();
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(a.get(i))) {
                return true;
            }
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return m2292a(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException e) {
            return false;
        }
    }
}
