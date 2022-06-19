package p193e.p194a.p849h4.p850q;

import java.lang.annotation.Annotation;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.h4.q.a */
/* loaded from: classes11-dex2jar.jar:e/a/h4/q/a.class */
public final class C14925a implements Annotation {

    /* renamed from: c */
    public final String f42648c;

    public C14925a(String str) {
        Objects.requireNonNull(str, "Null channelKey");
        this.f42648c = str;
    }

    @Override // java.lang.annotation.Annotation
    public Class<? extends C14925a> annotationType() {
        return C14925a.class;
    }

    @Override // java.lang.annotation.Annotation
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C14925a)) {
            return false;
        }
        return this.f42648c.equals(((C14925a) obj).f42648c);
    }

    @Override // java.lang.annotation.Annotation
    public int hashCode() {
        return this.f42648c.hashCode() ^ (-402045020);
    }

    @Override // java.lang.annotation.Annotation
    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("@com.truecaller.notificationchannels.di.DynamicChannelId(", "channelKey=");
        String str = this.f42648c;
        m8704I.append('\"');
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\t') {
                m8704I.append("\\t");
            } else if (charAt == '\n') {
                m8704I.append("\\n");
            } else if (charAt == '\r') {
                m8704I.append("\\r");
            } else if (charAt == '\"' || charAt == '\'' || charAt == '\\') {
                m8704I.append('\\');
                m8704I.append(charAt);
            } else if (charAt < ' ') {
                m8704I.append('\\');
                String octalString = Integer.toOctalString(charAt);
                for (int length = 3 - octalString.length(); length > 0; length--) {
                    m8704I.append('0');
                }
                m8704I.append(octalString);
            } else if (charAt < 127 || Character.isLetter(charAt)) {
                m8704I.append(charAt);
            } else {
                m8704I.append("\\u");
                String hexString = Integer.toHexString(charAt);
                for (int length2 = 4 - hexString.length(); length2 > 0; length2--) {
                    m8704I.append('0');
                }
                m8704I.append(hexString);
            }
        }
        m8704I.append('\"');
        m8704I.append(')');
        return m8704I.toString();
    }
}
