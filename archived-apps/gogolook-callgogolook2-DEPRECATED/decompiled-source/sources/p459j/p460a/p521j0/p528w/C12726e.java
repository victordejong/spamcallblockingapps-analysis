package p459j.p460a.p521j0.p528w;

import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import p459j.p460a.p521j0.p528w.AbstractC12741t;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.w.e */
/* loaded from: classes3-dex2jar.jar:j/a/j0/w/e.class */
public final class C12726e extends AbstractC12749x {
    @Override // p459j.p460a.p521j0.p528w.AbstractC12749x
    /* renamed from: a */
    public AbstractC12741t mo5437a(AbstractC12741t.EnumC12744c cVar, AbstractC12741t.EnumC12745d dVar, NumberInfo numberInfo, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        C15149k.m377b(cVar, IapProductRealmObject.STATE);
        C15149k.m377b(numberInfo, "numberInfo");
        C15149k.m377b(str, "number");
        C15149k.m377b(str2, "e164");
        C15149k.m377b(str3, "displayNumber");
        C15149k.m377b(str4, "displayRemoteNumber");
        return cVar == AbstractC12741t.EnumC12744c.LOADING ? new C12724c(cVar, dVar, numberInfo, str, str2, str3, str4, str5) : cVar == AbstractC12741t.EnumC12744c.ERROR ? new C12721a(cVar, dVar, numberInfo, str, str2, str3, str4, str5) : (cVar != AbstractC12741t.EnumC12744c.INFO || dVar == null) ? cVar == AbstractC12741t.EnumC12744c.OUTDATED ? new C12727f(cVar, dVar, numberInfo, str, str2, str3, str4, str5, z, z2) : new C12725d(AbstractC12741t.EnumC12744c.NO_INFO, dVar, numberInfo, str, str2, str3, str4, z) : new C12723b(cVar, dVar, numberInfo, str, str2, str3, str4, str5, z, z2);
    }
}
