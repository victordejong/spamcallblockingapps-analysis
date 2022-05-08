package p081h.p203i.p402h.p407l.p408b;

import java.nio.charset.StandardCharsets;
import p081h.p203i.p402h.C10530b;
/* renamed from: h.i.h.l.b.h */
/* loaded from: classes2-dex2jar.jar:h/i/h/l/b/h.class */
public final class C10562h {

    /* renamed from: a */
    public final String f24036a;

    /* renamed from: b */
    public EnumC10566l f24037b;

    /* renamed from: c */
    public C10530b f24038c;

    /* renamed from: d */
    public C10530b f24039d;

    /* renamed from: e */
    public final StringBuilder f24040e;

    /* renamed from: f */
    public int f24041f;

    /* renamed from: g */
    public int f24042g;

    /* renamed from: h */
    public C10565k f24043h;

    /* renamed from: i */
    public int f24044i;

    public C10562h(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            char c = (char) (bytes[i] & 255);
            if (c != '?' || str.charAt(i) == '?') {
                sb.append(c);
            } else {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
        }
        this.f24036a = sb.toString();
        this.f24037b = EnumC10566l.FORCE_NONE;
        this.f24040e = new StringBuilder(str.length());
        this.f24042g = -1;
    }

    /* renamed from: a */
    public int m11397a() {
        return this.f24040e.length();
    }

    /* renamed from: a */
    public void m11396a(char c) {
        this.f24040e.append(c);
    }

    /* renamed from: a */
    public void m11395a(int i) {
        this.f24044i = i;
    }

    /* renamed from: a */
    public void m11394a(C10530b bVar, C10530b bVar2) {
        this.f24038c = bVar;
        this.f24039d = bVar2;
    }

    /* renamed from: a */
    public void m11393a(EnumC10566l lVar) {
        this.f24037b = lVar;
    }

    /* renamed from: a */
    public void m11392a(String str) {
        this.f24040e.append(str);
    }

    /* renamed from: b */
    public StringBuilder m11391b() {
        return this.f24040e;
    }

    /* renamed from: b */
    public void m11390b(int i) {
        this.f24042g = i;
    }

    /* renamed from: c */
    public char m11389c() {
        return this.f24036a.charAt(this.f24041f);
    }

    /* renamed from: c */
    public void m11388c(int i) {
        C10565k kVar = this.f24043h;
        if (kVar == null || i > kVar.m11360a()) {
            this.f24043h = C10565k.m11358a(i, this.f24037b, this.f24038c, this.f24039d, true);
        }
    }

    /* renamed from: d */
    public String m11387d() {
        return this.f24036a;
    }

    /* renamed from: e */
    public int m11386e() {
        return this.f24042g;
    }

    /* renamed from: f */
    public int m11385f() {
        return m11383h() - this.f24041f;
    }

    /* renamed from: g */
    public C10565k m11384g() {
        return this.f24043h;
    }

    /* renamed from: h */
    public final int m11383h() {
        return this.f24036a.length() - this.f24044i;
    }

    /* renamed from: i */
    public boolean m11382i() {
        return this.f24041f < m11383h();
    }

    /* renamed from: j */
    public void m11381j() {
        this.f24042g = -1;
    }

    /* renamed from: k */
    public void m11380k() {
        this.f24043h = null;
    }

    /* renamed from: l */
    public void m11379l() {
        m11388c(m11397a());
    }
}
