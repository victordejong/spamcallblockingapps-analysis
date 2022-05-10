package p131c.p161d.p266c.p273g;

import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.g.b */
/* loaded from: classes2-dex2jar.jar:c/d/c/g/b.class */
public final class C5069b {
    /* renamed from: a */
    public static byte m24558a(long j) {
        C4933n.m24785a((j >> 8) == 0, "out of range: %s", j);
        return (byte) j;
    }

    /* renamed from: a */
    public static int m24560a(byte b) {
        return b & 255;
    }

    /* renamed from: a */
    public static int m24559a(byte b, byte b2) {
        return m24560a(b) - m24560a(b2);
    }
}
