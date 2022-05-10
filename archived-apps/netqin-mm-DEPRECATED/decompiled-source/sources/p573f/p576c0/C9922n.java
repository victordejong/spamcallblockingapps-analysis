package p573f.p576c0;

import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.c0.n */
/* loaded from: classes2-dex2jar.jar:f/c0/n.class */
public class C9922n extends C9921m {
    /* renamed from: a */
    public static final <T> void m1786a(Appendable appendable, T t, AbstractC10031l<? super T, ? extends CharSequence> lVar) {
        C10059q.m1637b(appendable, "$this$appendElement");
        if (lVar != null) {
            appendable.append((CharSequence) lVar.invoke(t));
            return;
        }
        if (t != null ? t instanceof CharSequence : true) {
            appendable.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendable.append(((Character) t).charValue());
        } else {
            appendable.append(String.valueOf(t));
        }
    }
}
