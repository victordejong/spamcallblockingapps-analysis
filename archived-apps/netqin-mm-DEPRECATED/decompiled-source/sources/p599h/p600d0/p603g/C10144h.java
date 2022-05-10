package p599h.p600d0.p603g;

import p599h.AbstractC10095b0;
import p599h.C10240u;
import p610i.AbstractC10264e;
/* renamed from: h.d0.g.h */
/* loaded from: classes2-dex2jar.jar:h/d0/g/h.class */
public final class C10144h extends AbstractC10095b0 {

    /* renamed from: a */
    public final String f37456a;

    /* renamed from: b */
    public final long f37457b;

    /* renamed from: c */
    public final AbstractC10264e f37458c;

    public C10144h(String str, long j, AbstractC10264e eVar) {
        this.f37456a = str;
        this.f37457b = j;
        this.f37458c = eVar;
    }

    @Override // p599h.AbstractC10095b0
    /* renamed from: b */
    public long mo1302b() {
        return this.f37457b;
    }

    @Override // p599h.AbstractC10095b0
    /* renamed from: c */
    public C10240u mo1301c() {
        String str = this.f37456a;
        return str != null ? C10240u.m892b(str) : null;
    }

    @Override // p599h.AbstractC10095b0
    /* renamed from: d */
    public AbstractC10264e mo1300d() {
        return this.f37458c;
    }
}
