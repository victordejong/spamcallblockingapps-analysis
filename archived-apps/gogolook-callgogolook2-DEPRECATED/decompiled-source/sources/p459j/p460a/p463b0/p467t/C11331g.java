package p459j.p460a.p463b0.p467t;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.t.g */
/* loaded from: classes2-dex2jar.jar:j/a/b0/t/g.class */
public final class C11331g implements AbstractC12392b<C14666a> {
    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C14666a(viewGroup, R$layout.drawer_item_group_title);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        Context a = aVar.m907a();
        if (a != null && (aVar2 instanceof C11330f)) {
            ((TextView) aVar.m906a(R$id.tv_text)).setText(((C11330f) aVar2).m9778a().invoke(a));
        }
    }
}
