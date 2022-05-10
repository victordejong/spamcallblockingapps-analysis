package p599h;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: h.u */
/* loaded from: classes2-dex2jar.jar:h/u.class */
public final class C10240u {

    /* renamed from: d */
    public static final Pattern f37771d = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: e */
    public static final Pattern f37772e = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: a */
    public final String f37773a;

    /* renamed from: b */
    public final String f37774b;

    /* renamed from: c */
    public final String f37775c;

    public C10240u(String str, String str2, String str3, String str4) {
        this.f37773a = str;
        this.f37774b = str2;
        this.f37775c = str4;
    }

    /* renamed from: a */
    public static C10240u m895a(String str) {
        Matcher matcher = f37771d.matcher(str);
        if (matcher.lookingAt()) {
            String lowerCase = matcher.group(1).toLowerCase(Locale.US);
            String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
            String str2 = null;
            Matcher matcher2 = f37772e.matcher(str);
            for (int end = matcher.end(); end < str.length(); end = matcher2.end()) {
                matcher2.region(end, str.length());
                if (matcher2.lookingAt()) {
                    String group = matcher2.group(1);
                    str2 = str2;
                    if (group != null) {
                        if (!group.equalsIgnoreCase("charset")) {
                            str2 = str2;
                        } else {
                            String group2 = matcher2.group(2);
                            if (group2 != null) {
                                str2 = group2;
                                if (group2.startsWith("'")) {
                                    str2 = group2;
                                    if (group2.endsWith("'")) {
                                        str2 = group2;
                                        if (group2.length() > 2) {
                                            str2 = group2.substring(1, group2.length() - 1);
                                        }
                                    }
                                }
                            } else {
                                str2 = matcher2.group(3);
                            }
                            if (str2 != null && !str2.equalsIgnoreCase(str2)) {
                                throw new IllegalArgumentException("Multiple charsets defined: \"" + str2 + "\" and: \"" + str2 + "\" for: \"" + str + '\"');
                            }
                        }
                    }
                } else {
                    throw new IllegalArgumentException("Parameter is not formatted correctly: \"" + str.substring(end) + "\" for: \"" + str + '\"');
                }
            }
            return new C10240u(str, lowerCase, lowerCase2, str2);
        }
        throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
    }

    /* renamed from: b */
    public static C10240u m892b(String str) {
        try {
            return m895a(str);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    /* renamed from: a */
    public Charset m896a() {
        return m894a((Charset) null);
    }

    /* renamed from: a */
    public Charset m894a(Charset charset) {
        Charset charset2 = charset;
        try {
            if (this.f37775c != null) {
                charset2 = Charset.forName(this.f37775c);
            }
        } catch (IllegalArgumentException e) {
            charset2 = charset;
        }
        return charset2;
    }

    /* renamed from: b */
    public String m893b() {
        return this.f37774b;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C10240u) && ((C10240u) obj).f37773a.equals(this.f37773a);
    }

    public int hashCode() {
        return this.f37773a.hashCode();
    }

    public String toString() {
        return this.f37773a;
    }
}
