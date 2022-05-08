package p626l.p631e0;

import p626l.p641z.p643d.C15149k;
/* renamed from: l.e0.u */
/* loaded from: classes3-dex2jar.jar:l/e0/u.class */
public class C14964u extends C14963t {
    /* renamed from: d */
    public static final Double m729d(String str) {
        C15149k.m377b(str, "$this$toDoubleOrNull");
        Double d = null;
        try {
            if (C14955n.f33002a.m746b(str)) {
                d = Double.valueOf(Double.parseDouble(str));
            }
        } catch (NumberFormatException e) {
            d = null;
        }
        return d;
    }
}
