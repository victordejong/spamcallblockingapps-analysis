package p459j.p460a.p474c0.p499h;

import androidx.media2.session.MediaSessionImplBase;
import p081h.p203i.p316b.p317a.AbstractC9277b;
/* renamed from: j.a.c0.h.w */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/w.class */
public final class C12221w {

    /* renamed from: e */
    public static final AbstractC9277b f27392e = AbstractC9277b.m15498d(" \t\n\r\f\u000b\u0085\u2028\u2029\u200d\uffef�\ufffe\uffff");

    /* renamed from: f */
    public static final AbstractC9277b f27393f = AbstractC9277b.m15507a((char) 0, (char) 31).mo15495a(AbstractC9277b.m15501c((char) 127)).mo15495a(AbstractC9277b.m15498d(" @,:<>")).mo15496a();

    /* renamed from: a */
    public boolean f27394a;

    /* renamed from: b */
    public String f27395b;

    /* renamed from: c */
    public String f27396c;

    /* renamed from: d */
    public boolean f27397d;

    public C12221w(String str) {
        this(str, false);
    }

    public C12221w(String str, boolean z) {
        this.f27394a = false;
        this.f27395b = null;
        this.f27396c = null;
        this.f27397d = false;
        this.f27397d = z;
        this.f27394a = m6725a(str);
    }

    /* renamed from: b */
    public static boolean m6723b(String str) {
        return new C12221w(str).m6724b();
    }

    /* renamed from: a */
    public final boolean m6726a() {
        int length = this.f27395b.length() - 1;
        if (length < 1 || !this.f27395b.endsWith("\"")) {
            return false;
        }
        int i = 1;
        while (i < length) {
            char charAt = this.f27395b.charAt(i);
            if (charAt == '\"' || charAt == 127) {
                return false;
            }
            if (charAt < ' ' && !f27392e.mo15490a(charAt)) {
                return false;
            }
            if (charAt >= 128 && !this.f27397d) {
                return false;
            }
            int i2 = i;
            if (charAt == '\\') {
                i2 = i + 1;
                if (i2 >= length) {
                    return false;
                }
            }
            i = i2 + 1;
        }
        return true;
    }

    /* renamed from: a */
    public boolean m6725a(String str) {
        int lastIndexOf;
        if (str == null || (lastIndexOf = str.lastIndexOf(64)) <= 0 || lastIndexOf == str.length() - 1) {
            return false;
        }
        this.f27395b = str.substring(0, lastIndexOf);
        this.f27396c = str.substring(lastIndexOf + 1);
        return m6722c();
    }

    /* renamed from: b */
    public boolean m6724b() {
        return this.f27394a;
    }

    /* renamed from: c */
    public final boolean m6722c() {
        int indexOf;
        String str = this.f27395b;
        if (str == null || this.f27396c == null || str.length() == 0 || this.f27396c.length() == 0 || f27392e.mo15494a(this.f27396c) >= 0 || this.f27396c.length() < 4 || (indexOf = this.f27396c.indexOf(46)) == -1 || this.f27396c.indexOf("..") >= 0 || this.f27396c.charAt(0) == '.') {
            return false;
        }
        int indexOf2 = this.f27396c.indexOf(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM, indexOf + 1);
        String str2 = this.f27396c;
        if ((str2.charAt(str2.length() - 1) == '.' && indexOf2 == -1) || !f27393f.mo15492b(this.f27396c)) {
            return false;
        }
        if (!this.f27397d && !AbstractC9277b.m15502c().mo15492b(this.f27396c)) {
            return false;
        }
        if (this.f27395b.startsWith("\"")) {
            return m6726a();
        }
        if (f27392e.mo15494a(this.f27395b) < 0 && this.f27395b.indexOf("..") < 0 && f27393f.mo15492b(this.f27395b)) {
            return this.f27397d || AbstractC9277b.m15502c().mo15492b(this.f27395b);
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C12221w) {
            return toString().equals(((C12221w) obj).toString());
        }
        return false;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        return this.f27395b + "@" + this.f27396c;
    }
}
