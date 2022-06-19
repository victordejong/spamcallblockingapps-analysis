package p193e.p194a.p849h4.p850q;

import com.truecaller.featuretoggles.FeatureKey;
import java.lang.annotation.Annotation;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.h4.q.c */
/* loaded from: classes11-dex2jar.jar:e/a/h4/q/c.class */
public final class C14927c implements Annotation {

    /* renamed from: c */
    public final String f42650c;

    /* renamed from: d */
    public final boolean f42651d;

    /* renamed from: e */
    public final FeatureKey f42652e;

    /* renamed from: f */
    public final int f42653f;

    public C14927c(String str, boolean z, FeatureKey featureKey, int i) {
        Objects.requireNonNull(str, "Null channelKey");
        this.f42650c = str;
        this.f42651d = z;
        Objects.requireNonNull(featureKey, "Null featureKey");
        this.f42652e = featureKey;
        this.f42653f = i;
    }

    @Override // java.lang.annotation.Annotation
    public Class<? extends C14927c> annotationType() {
        return C14927c.class;
    }

    @Override // java.lang.annotation.Annotation
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C14927c)) {
            return false;
        }
        C14927c c14927c = (C14927c) obj;
        if (!this.f42650c.equals(c14927c.f42650c) || this.f42651d != c14927c.f42651d || !this.f42652e.equals(c14927c.f42652e) || this.f42653f != c14927c.f42653f) {
            z = false;
        }
        return z;
    }

    @Override // java.lang.annotation.Annotation
    public int hashCode() {
        return (this.f42650c.hashCode() ^ (-402045020)) + ((this.f42651d ? 1231 : 1237) ^ 1676154753) + ((-1961130761) ^ this.f42652e.hashCode()) + (1704546088 ^ this.f42653f);
    }

    @Override // java.lang.annotation.Annotation
    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("@com.truecaller.notificationchannels.di.NotificationChannelSpec(", "channelKey=");
        String str = this.f42650c;
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
        m8704I.append(", ");
        m8704I.append("dynamicChannelId=");
        m8704I.append(this.f42651d);
        m8704I.append(", ");
        m8704I.append("featureKey=");
        m8704I.append(this.f42652e);
        m8704I.append(", ");
        m8704I.append("version=");
        return C22128a.m8701I2(m8704I, this.f42653f, ')');
    }
}
