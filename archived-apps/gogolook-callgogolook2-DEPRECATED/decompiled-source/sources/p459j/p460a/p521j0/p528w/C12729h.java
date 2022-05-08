package p459j.p460a.p521j0.p528w;

import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import p459j.p460a.p521j0.p528w.AbstractC12741t;
import p459j.p460a.p582w0.C14206w4;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.w.h */
/* loaded from: classes3-dex2jar.jar:j/a/j0/w/h.class */
public final class C12729h extends AbstractC12737p {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12729h(AbstractC12741t.EnumC12744c cVar, AbstractC12741t.EnumC12745d dVar, NumberInfo numberInfo, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        super(cVar, dVar, numberInfo, str, str2, str3, str4, str5, z, z2);
        C15149k.m377b(cVar, IapProductRealmObject.STATE);
        C15149k.m377b(dVar, "type");
        C15149k.m377b(numberInfo, "numberInfo");
        C15149k.m377b(str, "number");
        C15149k.m377b(str2, "e164");
        C15149k.m377b(str3, "displayNumber");
        C15149k.m377b(str4, "displayRemoteNumber");
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12737p
    /* renamed from: k */
    public void mo5459k() {
        super.mo5459k();
        m5467a(new AbstractC12741t.C12742a(C14206w4.m2225a((int) R$string.ndp_info_spoof_hint), false));
    }
}
