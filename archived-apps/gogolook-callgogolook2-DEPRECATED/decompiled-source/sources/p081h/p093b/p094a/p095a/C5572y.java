package p081h.p093b.p094a.p095a;

import android.text.TextUtils;
import androidx.annotation.Nullable;
/* renamed from: h.b.a.a.y */
/* loaded from: classes-dex2jar.jar:h/b/a/a/y.class */
public class C5572y {

    /* renamed from: a */
    public final String f13916a;
    @Nullable

    /* renamed from: b */
    public final String f13917b;

    /* renamed from: h.b.a.a.y$a */
    /* loaded from: classes-dex2jar.jar:h/b/a/a/y$a.class */
    public static final class C5573a {

        /* renamed from: a */
        public String f13918a;

        public C5573a() {
        }

        /* renamed from: a */
        public final C5573a m25121a(String str) {
            this.f13918a = str;
            return this;
        }

        /* renamed from: a */
        public final C5572y m25122a() {
            if (!TextUtils.isEmpty(this.f13918a)) {
                return new C5572y(this.f13918a);
            }
            throw new IllegalArgumentException("SKU must be set.");
        }
    }

    public C5572y(String str, @Nullable String str2) {
        this.f13916a = str;
        this.f13917b = null;
    }

    /* renamed from: a */
    public final String m25124a() {
        return this.f13916a;
    }

    @Nullable
    /* renamed from: b */
    public final String m25123b() {
        return this.f13917b;
    }
}
