package p626l.p641z.p643d;

import p626l.p629c0.AbstractC14900c;
import p626l.p629c0.AbstractC14902e;
import p626l.p629c0.AbstractC14903f;
import p626l.p629c0.AbstractC14904g;
import p626l.p629c0.AbstractC14909j;
import p626l.p629c0.AbstractC14911k;
/* renamed from: l.z.d.b0 */
/* loaded from: classes3-dex2jar.jar:l/z/d/b0.class */
public class C15133b0 {
    /* renamed from: a */
    public String m408a(AbstractC15146h hVar) {
        String obj = hVar.getClass().getGenericInterfaces()[0].toString();
        String str = obj;
        if (obj.startsWith("kotlin.jvm.functions.")) {
            str = obj.substring(21);
        }
        return str;
    }

    /* renamed from: a */
    public String m406a(AbstractC15150l lVar) {
        return m408a((AbstractC15146h) lVar);
    }

    /* renamed from: a */
    public AbstractC14900c m410a(Class cls) {
        return new C15139e(cls);
    }

    /* renamed from: a */
    public AbstractC14902e m409a(Class cls, String str) {
        return new C15153o(cls, str);
    }

    /* renamed from: a */
    public AbstractC14903f m407a(C15147i iVar) {
        return iVar;
    }

    /* renamed from: a */
    public AbstractC14904g m405a(AbstractC15151m mVar) {
        return mVar;
    }

    /* renamed from: a */
    public AbstractC14909j m404a(AbstractC15154p pVar) {
        return pVar;
    }

    /* renamed from: a */
    public AbstractC14911k m403a(AbstractC15156r rVar) {
        return rVar;
    }
}
