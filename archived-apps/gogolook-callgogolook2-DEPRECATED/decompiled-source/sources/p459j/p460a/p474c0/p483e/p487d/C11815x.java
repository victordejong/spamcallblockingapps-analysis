package p459j.p460a.p474c0.p483e.p487d;

import android.view.ViewGroup;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p474c0.p483e.p487d.C11796r;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p572v0.p573c.AbstractC13719n;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.e.d.x */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/x.class */
public final class C11815x extends AbstractC11774l {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11815x(C11796r.AbstractC11797a aVar) {
        super(aVar);
        C15149k.m377b(aVar, "listener");
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C11772j(viewGroup, R$layout.url_scan_result_item);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        C14666a aVar3 = aVar;
        if (!(aVar instanceof C11772j)) {
            aVar3 = null;
        }
        C11772j jVar = (C11772j) aVar3;
        if (jVar != null) {
            AbstractC12391a aVar4 = aVar2;
            if (!(aVar2 instanceof C11816y)) {
                aVar4 = null;
            }
            C11816y yVar = (C11816y) aVar4;
            if (yVar != null) {
                m8322a(jVar, (AbstractC11814w) yVar);
                AbstractC13719n.C13721b b = yVar.m8246b();
                jVar.m8324f().setText(R$string.srp_scanresult_fr);
                m8321a(jVar, b);
            }
        }
    }
}
