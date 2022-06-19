package androidx.appcompat.app;

import android.content.res.Configuration;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$p.class */
class f$p {
    /* renamed from: a */
    static void m6831a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        int i = configuration.colorMode;
        int i2 = configuration2.colorMode;
        if ((i & 3) != (i2 & 3)) {
            configuration3.colorMode |= i2 & 3;
        }
        int i3 = configuration.colorMode;
        int i4 = configuration2.colorMode;
        if ((i3 & 12) != (i4 & 12)) {
            configuration3.colorMode |= i4 & 12;
        }
    }
}
