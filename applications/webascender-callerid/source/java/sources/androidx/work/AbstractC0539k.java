package androidx.work;

import java.util.List;
/* renamed from: androidx.work.k */
/* loaded from: classes-dex2jar.jar:androidx/work/k.class */
public abstract class AbstractC0539k {

    /* renamed from: a */
    private static final String f2675a = AbstractC0541m.m4305f("InputMerger");

    /* renamed from: a */
    public static AbstractC0539k m4315a(String str) {
        try {
            return (AbstractC0539k) Class.forName(str).newInstance();
        } catch (Exception e) {
            AbstractC0541m m4308c = AbstractC0541m.m4308c();
            String str2 = f2675a;
            m4308c.m4309b(str2, "Trouble instantiating + " + str, e);
            return null;
        }
    }

    /* renamed from: b */
    public abstract C0474e m4314b(List<C0474e> list);
}
