package p459j.p460a.p463b0.p464q;

import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14985o;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15005e0;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� %2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002%&B#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\rH\u0016J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\rH\u0016J&\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\r2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fH\u0016J\u0018\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\rH\u0016R-\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000e0\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0013\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006'"}, m815d2 = {"Lgogolook/callgogolook2/main/calllog/CallLogsPageRecyclerViewAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lgogolook/callgogolook2/adapter/ViewData;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "presenter", "Lgogolook/callgogolook2/main/calllog/CallLogsContract$Presenter;", "diffUtilItemCallback", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "itemEventListener", "Lgogolook/callgogolook2/main/calllog/CallLogsPageRecyclerViewAdapter$ItemEventListener;", "(Lgogolook/callgogolook2/main/calllog/CallLogsContract$Presenter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lgogolook/callgogolook2/main/calllog/CallLogsPageRecyclerViewAdapter$ItemEventListener;)V", "delegateAdapterMap", "", "", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "getDelegateAdapterMap", "()Ljava/util/Map;", "delegateAdapterMap$delegate", "Lkotlin/Lazy;", "hasStickyItem", "", "getHasStickyItem", "()Z", "getItemEventListener", "()Lgogolook/callgogolook2/main/calllog/CallLogsPageRecyclerViewAdapter$ItemEventListener;", "getItemViewType", "position", "onBindViewHolder", "", "holder", "payloads", "", "", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "Companion", "ItemEventListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.q.m */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/m.class */
public final class C11175m extends ListAdapter<AbstractC12391a, C14666a> {

    /* renamed from: d */
    public static final /* synthetic */ AbstractC14906i[] f25092d;

    /* renamed from: a */
    public final AbstractC14974f f25095a = C14975g.m662a(new C11178c());

    /* renamed from: b */
    public final AbstractC11164g f25096b;

    /* renamed from: c */
    public final AbstractC11177b f25097c;

    /* renamed from: f */
    public static final C11176a f25094f = new C11176a(null);

    /* renamed from: e */
    public static Map<String, RowInfo> f25093e = new HashMap();

    /* renamed from: j.a.b0.q.m$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/m$a.class */
    public static final class C11176a {
        public C11176a() {
        }

        public /* synthetic */ C11176a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final String m10131a(String str, String str2) {
            if (str == null) {
                str = !(str2 == null || str2.length() == 0) ? str2 : C14206w4.m2225a((int) R$string.unknown_number);
            }
            return str;
        }

        /* renamed from: a */
        public final Map<String, RowInfo> m10132a() {
            return C11175m.f25093e;
        }
    }

    /* renamed from: j.a.b0.q.m$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/m$b.class */
    public interface AbstractC11177b {
        /* renamed from: a */
        void mo10130a(AdUnit adUnit, AbstractC6207d dVar);

        /* renamed from: a */
        void mo10129a(LogsGroupRealmObject logsGroupRealmObject);

        /* renamed from: b */
        void mo10128b(AdUnit adUnit, AbstractC6207d dVar);

        /* renamed from: b */
        void mo10127b(LogsGroupRealmObject logsGroupRealmObject);

        /* renamed from: c */
        void mo10126c(LogsGroupRealmObject logsGroupRealmObject);

        /* renamed from: x */
        void mo10125x();
    }

    /* renamed from: j.a.b0.q.m$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/m$c.class */
    public static final class C11178c extends AbstractC15150l implements AbstractC15107a<Map<Integer, ? extends AbstractC12392b<C14666a>>> {
        public C11178c() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Map<Integer, ? extends AbstractC12392b<C14666a>> invoke() {
            return C15005e0.m624a(C14985o.m644a(1, new C11157f(C11175m.this)), C14985o.m644a(0, new C11205u(C11175m.this)), C14985o.m644a(2, new C11208x(C11175m.this)), C14985o.m644a(3, new C11148b0(C11175m.this)), C14985o.m644a(4, new C11150c(C11175m.this)));
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11175m.class), "delegateAdapterMap", "getDelegateAdapterMap()Ljava/util/Map;");
        C15131a0.m412a(sVar);
        f25092d = new AbstractC14906i[]{sVar};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11175m(AbstractC11164g gVar, DiffUtil.ItemCallback<AbstractC12391a> itemCallback, AbstractC11177b bVar) {
        super(itemCallback);
        C15149k.m377b(gVar, "presenter");
        C15149k.m377b(itemCallback, "diffUtilItemCallback");
        C15149k.m377b(bVar, "itemEventListener");
        this.f25096b = gVar;
        this.f25097c = bVar;
    }

    /* renamed from: a */
    public final Map<Integer, AbstractC12392b<C14666a>> m10138a() {
        AbstractC14974f fVar = this.f25095a;
        AbstractC14906i iVar = f25092d[0];
        return (Map) fVar.getValue();
    }

    /* renamed from: a */
    public void onBindViewHolder(C14666a aVar, int i) {
        C15149k.m377b(aVar, "holder");
        AbstractC12392b<C14666a> bVar = m10138a().get(Integer.valueOf(getItemViewType(i)));
        if (bVar != null) {
            AbstractC12391a aVar2 = getCurrentList().get(i);
            C15149k.m383a((Object) aVar2, "currentList[position]");
            bVar.mo1119a(aVar, aVar2);
        }
    }

    /* renamed from: a */
    public void onBindViewHolder(C14666a aVar, int i, List<Object> list) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(list, "payloads");
        onBindViewHolder(aVar, i);
    }

    /* renamed from: b */
    public final boolean m10135b() {
        return this.f25096b.mo10065i() || this.f25096b.mo10063j();
    }

    /* renamed from: c */
    public final AbstractC11177b m10134c() {
        return this.f25097c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return getCurrentList().get(i).getViewType();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C14666a onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        AbstractC12392b<C14666a> bVar = m10138a().get(Integer.valueOf(i));
        C14666a a = bVar != null ? bVar.mo1120a(viewGroup) : null;
        if (a != null) {
            return a;
        }
        C15149k.m378b();
        throw null;
    }
}
