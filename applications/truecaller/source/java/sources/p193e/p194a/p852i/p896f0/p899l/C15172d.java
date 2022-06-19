package p193e.p194a.p852i.p896f0.p899l;

import java.io.IOException;
import s1.z.c.l;
/* renamed from: e.a.i.f0.l.d */
/* loaded from: classes3-dex2jar.jar:e/a/i/f0/l/d.class */
public final class C15172d extends IOException {

    /* renamed from: a */
    public final int f43219a;

    /* renamed from: b */
    public final String f43220b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15172d(int i, String str) {
        super("Ad failed with error " + i);
        l.e(str, "errorMessage");
        this.f43219a = i;
        this.f43220b = str;
    }
}
