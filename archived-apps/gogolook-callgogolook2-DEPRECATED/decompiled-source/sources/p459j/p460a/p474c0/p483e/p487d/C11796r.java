package p459j.p460a.p474c0.p483e.p487d;

import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p572v0.p573c.AbstractC13719n;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14985o;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15005e0;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001bB\u001b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0011\u001a\u00020\u000bH\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000bH\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000bH\u0016J\u0018\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000bH\u0016R-\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\f0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001c"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/ui/ScanResultPageRecyclerViewAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lgogolook/callgogolook2/adapter/ViewData;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "diffUtilItemCallback", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "listener", "Lgogolook/callgogolook2/messaging/scan/ui/ScanResultPageRecyclerViewAdapter$Listener;", "(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lgogolook/callgogolook2/messaging/scan/ui/ScanResultPageRecyclerViewAdapter$Listener;)V", "delegateAdapterMap", "", "", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "getDelegateAdapterMap", "()Ljava/util/Map;", "delegateAdapterMap$delegate", "Lkotlin/Lazy;", "getItemCount", "getItemViewType", "position", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "Listener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.d.r */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/r.class */
public final class C11796r extends ListAdapter<AbstractC12391a, C14666a> {

    /* renamed from: c */
    public static final /* synthetic */ AbstractC14906i[] f26449c;

    /* renamed from: a */
    public final AbstractC14974f f26450a = C14975g.m662a(new C11798b());

    /* renamed from: b */
    public final AbstractC11797a f26451b;

    /* renamed from: j.a.c0.e.d.r$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/r$a.class */
    public interface AbstractC11797a {
        /* renamed from: a */
        void mo8292a(AbstractC13719n.C13721b bVar);
    }

    /* renamed from: j.a.c0.e.d.r$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/r$b.class */
    public static final class C11798b extends AbstractC15150l implements AbstractC15107a<Map<Integer, ? extends AbstractC12392b<C14666a>>> {
        public C11798b() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Map<Integer, ? extends AbstractC12392b<C14666a>> invoke() {
            return C15005e0.m624a(C14985o.m644a(0, new C11753b(C11796r.this.f26451b)), C14985o.m644a(1, new C11815x(C11796r.this.f26451b)), C14985o.m644a(2, new C11776m()));
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11796r.class), "delegateAdapterMap", "getDelegateAdapterMap()Ljava/util/Map;");
        C15131a0.m412a(sVar);
        f26449c = new AbstractC14906i[]{sVar};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11796r(DiffUtil.ItemCallback<AbstractC12391a> itemCallback, AbstractC11797a aVar) {
        super(itemCallback);
        C15149k.m377b(itemCallback, "diffUtilItemCallback");
        C15149k.m377b(aVar, "listener");
        this.f26451b = aVar;
    }

    /* renamed from: a */
    public final Map<Integer, AbstractC12392b<C14666a>> m8295a() {
        AbstractC14974f fVar = this.f26450a;
        AbstractC14906i iVar = f26449c[0];
        return (Map) fVar.getValue();
    }

    /* renamed from: a */
    public void onBindViewHolder(C14666a aVar, int i) {
        C15149k.m377b(aVar, "holder");
        AbstractC12392b<C14666a> bVar = m8295a().get(Integer.valueOf(getItemViewType(i)));
        if (bVar != null) {
            AbstractC12391a aVar2 = getCurrentList().get(i);
            C15149k.m383a((Object) aVar2, "currentList[position]");
            bVar.mo1119a(aVar, aVar2);
        }
    }

    @Override // androidx.recyclerview.widget.ListAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getCurrentList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return getCurrentList().get(i).getViewType();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C14666a onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        AbstractC12392b<C14666a> bVar = m8295a().get(Integer.valueOf(i));
        C14666a a = bVar != null ? bVar.mo1120a(viewGroup) : null;
        if (a != null) {
            return a;
        }
        C15149k.m378b();
        throw null;
    }
}
