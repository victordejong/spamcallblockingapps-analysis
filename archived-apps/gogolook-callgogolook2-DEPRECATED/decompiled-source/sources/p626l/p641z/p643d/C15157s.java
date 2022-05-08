package p626l.p641z.p643d;

import p626l.p629c0.AbstractC14902e;
/* renamed from: l.z.d.s */
/* loaded from: classes3-dex2jar.jar:l/z/d/s.class */
public class C15157s extends AbstractC15156r {

    /* renamed from: a */
    public final AbstractC14902e f33144a;

    /* renamed from: b */
    public final String f33145b;

    /* renamed from: c */
    public final String f33146c;

    public C15157s(AbstractC14902e eVar, String str, String str2) {
        this.f33144a = eVar;
        this.f33145b = str;
        this.f33146c = str2;
    }

    @Override // p626l.p629c0.AbstractC14911k
    public Object get(Object obj) {
        return mo370a().call(obj);
    }

    @Override // p626l.p641z.p643d.AbstractC15134c
    public String getName() {
        return this.f33145b;
    }

    @Override // p626l.p641z.p643d.AbstractC15134c
    public AbstractC14902e getOwner() {
        return this.f33144a;
    }

    @Override // p626l.p641z.p643d.AbstractC15134c
    public String getSignature() {
        return this.f33146c;
    }
}
