package p081h.p203i.p402h.p412o.p414c;

import p081h.p203i.p402h.p412o.p413b.C10601c;
import p081h.p203i.p402h.p412o.p413b.EnumC10599a;
import p081h.p203i.p402h.p412o.p413b.EnumC10600b;
/* renamed from: h.i.h.o.c.f */
/* loaded from: classes2-dex2jar.jar:h/i/h/o/c/f.class */
public final class C10610f {

    /* renamed from: a */
    public EnumC10600b f24156a;

    /* renamed from: b */
    public EnumC10599a f24157b;

    /* renamed from: c */
    public C10601c f24158c;

    /* renamed from: d */
    public int f24159d = -1;

    /* renamed from: e */
    public C10605b f24160e;

    /* renamed from: b */
    public static boolean m11208b(int i) {
        return i >= 0 && i < 8;
    }

    /* renamed from: a */
    public C10605b m11214a() {
        return this.f24160e;
    }

    /* renamed from: a */
    public void m11213a(int i) {
        this.f24159d = i;
    }

    /* renamed from: a */
    public void m11212a(EnumC10599a aVar) {
        this.f24157b = aVar;
    }

    /* renamed from: a */
    public void m11211a(EnumC10600b bVar) {
        this.f24156a = bVar;
    }

    /* renamed from: a */
    public void m11210a(C10601c cVar) {
        this.f24158c = cVar;
    }

    /* renamed from: a */
    public void m11209a(C10605b bVar) {
        this.f24160e = bVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.f24156a);
        sb.append("\n ecLevel: ");
        sb.append(this.f24157b);
        sb.append("\n version: ");
        sb.append(this.f24158c);
        sb.append("\n maskPattern: ");
        sb.append(this.f24159d);
        if (this.f24160e == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.f24160e);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}
