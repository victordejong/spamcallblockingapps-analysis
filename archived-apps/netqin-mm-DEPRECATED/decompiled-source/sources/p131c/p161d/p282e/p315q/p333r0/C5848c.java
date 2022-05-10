package p131c.p161d.p282e.p315q.p333r0;

import android.text.TextUtils;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;
/* renamed from: c.d.e.q.r0.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/c.class */
public class C5848c extends AbstractC5863i {

    /* renamed from: d */
    public final C5874n f19121d;

    /* renamed from: e */
    public final C5874n f19122e;

    /* renamed from: f */
    public final C5858g f19123f;

    /* renamed from: g */
    public final C5842a f19124g;

    /* renamed from: h */
    public final String f19125h;

    /* renamed from: c.d.e.q.r0.c$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/c$b.class */
    public static class C5850b {

        /* renamed from: a */
        public C5874n f19126a;

        /* renamed from: b */
        public C5874n f19127b;

        /* renamed from: c */
        public C5858g f19128c;

        /* renamed from: d */
        public C5842a f19129d;

        /* renamed from: e */
        public String f19130e;

        /* renamed from: a */
        public C5850b m22903a(C5842a aVar) {
            this.f19129d = aVar;
            return this;
        }

        /* renamed from: a */
        public C5850b m22901a(C5858g gVar) {
            this.f19128c = gVar;
            return this;
        }

        /* renamed from: a */
        public C5850b m22900a(C5874n nVar) {
            this.f19127b = nVar;
            return this;
        }

        /* renamed from: a */
        public C5850b m22899a(String str) {
            this.f19130e = str;
            return this;
        }

        /* renamed from: a */
        public C5848c m22902a(C5854e eVar, Map<String, String> map) {
            if (this.f19126a == null) {
                throw new IllegalArgumentException("Banner model must have a title");
            } else if (!TextUtils.isEmpty(this.f19130e)) {
                return new C5848c(eVar, this.f19126a, this.f19127b, this.f19128c, this.f19129d, this.f19130e, map);
            } else {
                throw new IllegalArgumentException("Banner model must have a background color");
            }
        }

        /* renamed from: b */
        public C5850b m22898b(C5874n nVar) {
            this.f19126a = nVar;
            return this;
        }
    }

    public C5848c(C5854e eVar, C5874n nVar, C5874n nVar2, C5858g gVar, C5842a aVar, String str, Map<String, String> map) {
        super(eVar, MessageType.BANNER, map);
        this.f19121d = nVar;
        this.f19122e = nVar2;
        this.f19123f = gVar;
        this.f19124g = aVar;
        this.f19125h = str;
    }

    /* renamed from: h */
    public static C5850b m22904h() {
        return new C5850b();
    }

    @Override // p131c.p161d.p282e.p315q.p333r0.AbstractC5863i
    /* renamed from: b */
    public C5858g mo22861b() {
        return this.f19123f;
    }

    /* renamed from: d */
    public C5842a m22908d() {
        return this.f19124g;
    }

    /* renamed from: e */
    public String m22907e() {
        return this.f19125h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5848c)) {
            return false;
        }
        C5848c cVar = (C5848c) obj;
        if (hashCode() != cVar.hashCode()) {
            return false;
        }
        if (this.f19122e == null && cVar.f19122e != null) {
            return false;
        }
        C5874n nVar = this.f19122e;
        if (nVar != null && !nVar.equals(cVar.f19122e)) {
            return false;
        }
        if (this.f19123f == null && cVar.f19123f != null) {
            return false;
        }
        C5858g gVar = this.f19123f;
        if (gVar != null && !gVar.equals(cVar.f19123f)) {
            return false;
        }
        if (this.f19124g == null && cVar.f19124g != null) {
            return false;
        }
        C5842a aVar = this.f19124g;
        return (aVar == null || aVar.equals(cVar.f19124g)) && this.f19121d.equals(cVar.f19121d) && this.f19125h.equals(cVar.f19125h);
    }

    /* renamed from: f */
    public C5874n m22906f() {
        return this.f19122e;
    }

    /* renamed from: g */
    public C5874n m22905g() {
        return this.f19121d;
    }

    public int hashCode() {
        C5874n nVar = this.f19122e;
        int i = 0;
        int hashCode = nVar != null ? nVar.hashCode() : 0;
        C5858g gVar = this.f19123f;
        int hashCode2 = gVar != null ? gVar.hashCode() : 0;
        C5842a aVar = this.f19124g;
        if (aVar != null) {
            i = aVar.hashCode();
        }
        return this.f19121d.hashCode() + hashCode + hashCode2 + i + this.f19125h.hashCode();
    }
}
