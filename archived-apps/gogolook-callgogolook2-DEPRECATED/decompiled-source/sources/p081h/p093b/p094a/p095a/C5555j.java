package p081h.p093b.p094a.p095a;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.b.a.a.j */
/* loaded from: classes-dex2jar.jar:h/b/a/a/j.class */
public class C5555j {

    /* renamed from: a */
    public String f13872a;

    /* renamed from: b */
    public String f13873b;

    /* renamed from: c */
    public List<String> f13874c;

    /* renamed from: d */
    public List<C5572y> f13875d;

    /* renamed from: h.b.a.a.j$a */
    /* loaded from: classes-dex2jar.jar:h/b/a/a/j$a.class */
    public static class C5556a {

        /* renamed from: a */
        public String f13876a;

        /* renamed from: b */
        public List<String> f13877b;

        public C5556a() {
        }

        @NonNull
        /* renamed from: a */
        public C5556a m25128a(@NonNull String str) {
            this.f13876a = str;
            return this;
        }

        @NonNull
        /* renamed from: a */
        public C5556a m25127a(@NonNull List<String> list) {
            this.f13877b = new ArrayList(list);
            return this;
        }

        @NonNull
        /* renamed from: a */
        public C5555j m25129a() {
            if (this.f13876a == null) {
                throw new IllegalArgumentException("SKU type must be set");
            } else if (this.f13877b != null) {
                C5555j jVar = new C5555j();
                jVar.f13872a = this.f13876a;
                jVar.f13874c = this.f13877b;
                jVar.f13875d = null;
                jVar.f13873b = null;
                return jVar;
            } else {
                throw new IllegalArgumentException("SKU list or SkuWithOffer list must be set");
            }
        }
    }

    @NonNull
    /* renamed from: c */
    public static C5556a m25130c() {
        return new C5556a();
    }

    @NonNull
    /* renamed from: a */
    public String m25136a() {
        return this.f13872a;
    }

    @NonNull
    /* renamed from: b */
    public List<String> m25133b() {
        return this.f13874c;
    }
}
