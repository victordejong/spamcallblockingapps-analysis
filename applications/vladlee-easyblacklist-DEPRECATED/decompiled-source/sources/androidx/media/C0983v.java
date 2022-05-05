package androidx.media;

import android.text.TextUtils;
import androidx.core.p036f.C0681c;
import androidx.media.C0976s;
/* renamed from: androidx.media.v */
/* loaded from: classes-dex2jar.jar:androidx/media/v.class */
class C0983v {

    /* renamed from: a */
    private static final boolean f4018a = C0976s.f4010a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/v$a.class */
    public static final class C0984a implements C0976s.AbstractC0978b {

        /* renamed from: a */
        private String f4019a;

        /* renamed from: b */
        private int f4020b;

        /* renamed from: c */
        private int f4021c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0984a(String str, int i, int i2) {
            this.f4019a = str;
            this.f4020b = i;
            this.f4021c = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0984a)) {
                return false;
            }
            C0984a aVar = (C0984a) obj;
            return TextUtils.equals(this.f4019a, aVar.f4019a) && this.f4020b == aVar.f4020b && this.f4021c == aVar.f4021c;
        }

        public final int hashCode() {
            return C0681c.m8553a(this.f4019a, Integer.valueOf(this.f4020b), Integer.valueOf(this.f4021c));
        }
    }
}
