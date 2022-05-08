package p459j.p460a.p572v0.p573c;

import p459j.p460a.p572v0.p573c.AbstractC13709g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.v0.c.o */
/* loaded from: classes3-dex2jar.jar:j/a/v0/c/o.class */
public final class C13723o extends AbstractC13709g {

    /* renamed from: b */
    public final String f30809b;

    /* renamed from: c */
    public final EnumC13715k f30810c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13723o(String str, EnumC13715k kVar) {
        super(AbstractC13709g.EnumC13710a.WHOSCALL_PATTERN_MATCH, null);
        C15149k.m377b(str, "url");
        C15149k.m377b(kVar, "urlRating");
        this.f30809b = str;
        this.f30810c = kVar;
    }

    @Override // p459j.p460a.p572v0.p573c.AbstractC13709g
    /* renamed from: b */
    public EnumC13715k mo3601b() {
        return this.f30810c;
    }

    /* renamed from: c */
    public String m3600c() {
        return this.f30809b;
    }

    public String toString() {
        return "WhoscallPatternMatchResult { url=" + m3600c() + ", rating=" + mo3601b() + " }";
    }
}
