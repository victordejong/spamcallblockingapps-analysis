package p131c.p161d.p170b.p224d.p252g.p258f;
/* renamed from: c.d.b.d.g.f.n1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/n1.class */
public final class C4550n1 {
    /* renamed from: a */
    public static void m25355a(Object obj, Object obj2) {
        if (obj == null) {
            String valueOf = String.valueOf(obj2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
            sb.append("null key in entry: null=");
            sb.append(valueOf);
            throw new NullPointerException(sb.toString());
        } else if (obj2 == null) {
            String valueOf2 = String.valueOf(obj);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 26);
            sb2.append("null value in entry: ");
            sb2.append(valueOf2);
            sb2.append("=null");
            throw new NullPointerException(sb2.toString());
        }
    }
}
