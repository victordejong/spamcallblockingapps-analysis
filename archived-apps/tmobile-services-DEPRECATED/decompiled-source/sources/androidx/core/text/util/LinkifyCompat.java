package androidx.core.text.util;

import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/core/text/util/LinkifyCompat.class */
public final class LinkifyCompat {

    /* renamed from: androidx.core.text.util.LinkifyCompat$1 */
    /* loaded from: classes-dex2jar.jar:androidx/core/text/util/LinkifyCompat$1.class */
    class C02251 implements Comparator<LinkSpec> {
        C02251() {
        }

        /* renamed from: a */
        public int compare(LinkSpec linkSpec, LinkSpec linkSpec2) {
            int i;
            int i2;
            int i3 = linkSpec.f3200a;
            int i4 = linkSpec2.f3200a;
            if (i3 < i4) {
                return -1;
            }
            if (i3 <= i4 && (i = linkSpec.f3201b) >= (i2 = linkSpec2.f3201b)) {
                return i > i2 ? -1 : 0;
            }
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/text/util/LinkifyCompat$LinkSpec.class */
    public static class LinkSpec {

        /* renamed from: a */
        int f3200a;

        /* renamed from: b */
        int f3201b;

        LinkSpec() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/text/util/LinkifyCompat$LinkifyMask.class */
    public @interface LinkifyMask {
    }

    private LinkifyCompat() {
    }
}
