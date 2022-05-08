package gogolook.support.p080v7.widget.extension;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018��2\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0011\u001a\u00020\u0012H\u0002J\u0016\u0010\u0013\u001a\u00020\u00122\f\u0010\u0014\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0015H\u0016J\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\nR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, m815d2 = {"Lgogolook/support/v7/widget/extension/RecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyle", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "mEmptyView", "Landroid/view/View;", "mObserver", "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;", "getMObserver", "()Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;", "mObserver$delegate", "Lkotlin/Lazy;", "checkIfEmpty", "", "setAdapter", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "setEmptyView", "emptyView", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.support.v7.widget.extension.RecyclerView */
/* loaded from: classes3-dex2jar.jar:gogolook/support/v7/widget/extension/RecyclerView.class */
public final class RecyclerView extends androidx.recyclerview.widget.RecyclerView {

    /* renamed from: c */
    public static final /* synthetic */ AbstractC14906i[] f13320c;

    /* renamed from: a */
    public final AbstractC14974f f13321a;

    /* renamed from: b */
    public View f13322b;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\t\n��\n\u0002\b\u0003*\u0001\u0001\u0010��\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, m815d2 = {"<anonymous>", "gogolook/support/v7/widget/extension/RecyclerView$mObserver$2$1", "invoke", "()Lgogolook/support/v7/widget/extension/RecyclerView$mObserver$2$1;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: gogolook.support.v7.widget.extension.RecyclerView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/support/v7/widget/extension/RecyclerView$a.class */
    public static final class C5335a extends AbstractC15150l implements AbstractC15107a<C5336a> {

        /* renamed from: gogolook.support.v7.widget.extension.RecyclerView$a$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/support/v7/widget/extension/RecyclerView$a$a.class */
        public static final class C5336a extends RecyclerView.AdapterDataObserver {
            public C5336a() {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                RecyclerView.this.m25660a();
            }
        }

        public C5335a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C5336a invoke() {
            return new C5336a();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(RecyclerView.class), "mObserver", "getMObserver()Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;");
        C15131a0.m412a(sVar);
        f13320c = new AbstractC14906i[]{sVar};
    }

    public RecyclerView(Context context) {
        this(context, null, 0, 6, null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C15149k.m377b(context, "context");
        this.f13321a = C14975g.m662a(new C5335a());
    }

    public /* synthetic */ RecyclerView(Context context, AttributeSet attributeSet, int i, int i2, C15145g gVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* renamed from: a */
    public final void m25660a() {
        View view = this.f13322b;
        if (view != null) {
            RecyclerView.Adapter adapter = getAdapter();
            int i = 0;
            if ((adapter != null ? adapter.getItemCount() : 0) > 0) {
                i = 8;
            }
            view.setVisibility(i);
        }
    }

    /* renamed from: a */
    public final void m25659a(View view) {
        C15149k.m377b(view, "emptyView");
        this.f13322b = view;
        m25660a();
    }

    /* renamed from: b */
    public final RecyclerView.AdapterDataObserver m25657b() {
        AbstractC14974f fVar = this.f13321a;
        AbstractC14906i iVar = f13320c[0];
        return (RecyclerView.AdapterDataObserver) fVar.getValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter<?> adapter) {
        RecyclerView.Adapter adapter2 = getAdapter();
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(m25657b());
        }
        super.setAdapter(adapter);
        RecyclerView.Adapter adapter3 = getAdapter();
        if (adapter3 != null) {
            adapter3.registerAdapterDataObserver(m25657b());
            m25660a();
        }
    }
}
