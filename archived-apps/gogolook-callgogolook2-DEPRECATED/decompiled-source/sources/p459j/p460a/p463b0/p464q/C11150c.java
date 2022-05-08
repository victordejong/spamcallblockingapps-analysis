package p459j.p460a.p463b0.p464q;

import android.view.View;
import android.view.ViewGroup;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.p074ad.AdUnit;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m815d2 = {"Lgogolook/callgogolook2/main/calllog/AdViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "adapter", "Lgogolook/callgogolook2/main/calllog/CallLogsPageRecyclerViewAdapter;", "(Lgogolook/callgogolook2/main/calllog/CallLogsPageRecyclerViewAdapter;)V", "onBindViewHolder", "", "holder", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.q.c */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/c.class */
public final class C11150c implements AbstractC12392b<C14666a> {

    /* renamed from: a */
    public final C11175m f25048a;

    /* renamed from: j.a.b0.q.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/c$a.class */
    public static final class C11151a implements AbstractC6207d.AbstractC6208a {

        /* renamed from: a */
        public final /* synthetic */ C11147b f25049a;

        /* renamed from: b */
        public final /* synthetic */ C11150c f25050b;

        public C11151a(C11147b bVar, C11150c cVar, C14666a aVar) {
            this.f25049a = bVar;
            this.f25050b = cVar;
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        /* renamed from: a */
        public void mo5002a() {
            this.f25050b.f25048a.m10134c().mo10128b(AdUnit.CALL_LOG_CONTENT_FEED, this.f25049a.m10186a());
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        public void onAdImpression() {
            this.f25050b.f25048a.m10134c().mo10130a(AdUnit.CALL_LOG_CONTENT_FEED, this.f25049a.m10186a());
        }
    }

    public C11150c(C11175m mVar) {
        C15149k.m377b(mVar, "adapter");
        this.f25048a = mVar;
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C11145a(viewGroup, R$layout.call_log_list_view_item_ad);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        if (aVar2.getViewType() == 4 && (aVar instanceof C11145a)) {
            AbstractC12391a aVar3 = aVar2;
            if (!(aVar2 instanceof C11147b)) {
                aVar3 = null;
            }
            C11147b bVar = (C11147b) aVar3;
            if (bVar != null) {
                bVar.m10186a().mo23572a(aVar.m907a(), ((C11145a) aVar).m10187b());
                bVar.m10186a().mo23569a((AbstractC6207d.AbstractC6208a) new C11151a(bVar, this, aVar));
                return;
            }
            View view = aVar.itemView;
            C15149k.m383a((Object) view, "holder.itemView");
            view.setVisibility(8);
        }
    }
}
