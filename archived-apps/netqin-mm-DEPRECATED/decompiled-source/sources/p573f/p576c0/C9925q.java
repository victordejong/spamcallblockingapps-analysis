package p573f.p576c0;

import kotlin.text.StringsKt__StringsKt;
import p573f.p575b0.C9902h;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.c0.q */
/* loaded from: classes2-dex2jar.jar:f/c0/q.class */
public class C9925q extends C9924p {
    /* renamed from: a */
    public static final String m1783a(String str, String str2, String str3, boolean z) {
        C10059q.m1637b(str, "$this$replace");
        C10059q.m1637b(str2, "oldValue");
        C10059q.m1637b(str3, "newValue");
        return C9902h.m1807a(StringsKt__StringsKt.m14b(str, new String[]{str2}, z, 0, 4, (Object) null), str3, null, null, 0, null, null, 62, null);
    }

    /* renamed from: a */
    public static /* synthetic */ String m1782a(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return m1783a(str, str2, str3, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
        if (r4 != false) goto L_0x0059;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m1785a(java.lang.CharSequence r3) {
        /*
            r0 = r3
            java.lang.String r1 = "$this$isBlank"
            p573f.p590w.p592c.C10059q.m1637b(r0, r1)
            r0 = r3
            int r0 = r0.length()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0059
            r0 = r3
            f.z.c r0 = kotlin.text.StringsKt__StringsKt.m19b(r0)
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.util.Collection
            if (r0 == 0) goto L_0x0030
            r0 = r6
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0030
        L_0x002b:
            r0 = 1
            r4 = r0
            goto L_0x0055
        L_0x0030:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x0037:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x002b
            r0 = r3
            r1 = r6
            f.r.a0 r1 = (p573f.p577r.AbstractC9949a0) r1
            int r1 = r1.mo1576a()
            char r0 = r0.charAt(r1)
            boolean r0 = p573f.p576c0.C9908a.m1804a(r0)
            if (r0 != 0) goto L_0x0037
            r0 = 0
            r4 = r0
        L_0x0055:
            r0 = r4
            if (r0 == 0) goto L_0x005b
        L_0x0059:
            r0 = 1
            r5 = r0
        L_0x005b:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p573f.p576c0.C9925q.m1785a(java.lang.CharSequence):boolean");
    }

    /* renamed from: a */
    public static final boolean m1784a(String str, int i, String str2, int i2, int i3, boolean z) {
        C10059q.m1637b(str, "$this$regionMatches");
        C10059q.m1637b(str2, "other");
        return !z ? str.regionMatches(i, str2, i2, i3) : str.regionMatches(z, i, str2, i2, i3);
    }

    /* renamed from: a */
    public static final boolean m1781a(String str, String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        }
        return !z ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }
}
