package p131c.p161d.p170b.p188c.p204h1;

import com.google.android.exoplayer2.ParserException;
import java.util.ArrayList;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2884h;
import p131c.p161d.p170b.p188c.p203g1.C2899s;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
/* renamed from: c.d.b.c.h1.h */
/* loaded from: classes-dex2jar.jar:c/d/b/c/h1/h.class */
public final class C2918h {

    /* renamed from: a */
    public final List<byte[]> f10564a;

    /* renamed from: b */
    public final int f10565b;

    /* renamed from: c */
    public final int f10566c;

    /* renamed from: d */
    public final int f10567d;

    /* renamed from: e */
    public final float f10568e;

    public C2918h(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f10564a = list;
        this.f10565b = i;
        this.f10566c = i2;
        this.f10567d = i3;
        this.f10568e = f;
    }

    /* renamed from: a */
    public static byte[] m28498a(C2904v vVar) {
        int x = vVar.m28518x();
        int c = vVar.m28543c();
        vVar.m28536f(x);
        return C2884h.m28693a(vVar.f10530a, c, x);
    }

    /* renamed from: b */
    public static C2918h m28497b(C2904v vVar) throws ParserException {
        float f;
        int i;
        int i2;
        try {
            vVar.m28536f(4);
            int r = (vVar.m28524r() & 3) + 1;
            if (r != 3) {
                ArrayList arrayList = new ArrayList();
                int r2 = vVar.m28524r() & 31;
                for (int i3 = 0; i3 < r2; i3++) {
                    arrayList.add(m28498a(vVar));
                }
                int r3 = vVar.m28524r();
                for (int i4 = 0; i4 < r3; i4++) {
                    arrayList.add(m28498a(vVar));
                }
                if (r2 > 0) {
                    C2899s.C2901b c = C2899s.m28568c((byte[]) arrayList.get(0), r, ((byte[]) arrayList.get(0)).length);
                    i = c.f10517e;
                    i2 = c.f10518f;
                    f = c.f10519g;
                } else {
                    i = -1;
                    i2 = -1;
                    f = 1.0f;
                }
                return new C2918h(arrayList, r, i, i2, f);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing AVC config", e);
        }
    }
}
