package p459j.p460a.p463b0.p470w;

import android.view.ViewGroup;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.w.f */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/f.class */
public final class C11424f extends AbstractC11489w {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11424f(C11483t tVar) {
        super(tVar);
        C15149k.m377b(tVar, "adapter");
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C11422d(viewGroup, R$layout.sms_log_list_view_empty);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
    }
}
