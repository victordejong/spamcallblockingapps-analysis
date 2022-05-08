package androidx.fragment.app;

import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.Metadata;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m815d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, m814k = 3, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentViewModelLazyKt$viewModels$2.class */
public final class FragmentViewModelLazyKt$viewModels$2 extends AbstractC15150l implements AbstractC15107a<ViewModelStore> {
    public final /* synthetic */ AbstractC15107a $ownerProducer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentViewModelLazyKt$viewModels$2(AbstractC15107a aVar) {
        super(0);
        this.$ownerProducer = aVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p626l.p641z.p642c.AbstractC15107a
    public final ViewModelStore invoke() {
        ViewModelStore viewModelStore = ((ViewModelStoreOwner) this.$ownerProducer.invoke()).getViewModelStore();
        C15149k.m383a((Object) viewModelStore, "ownerProducer().viewModelStore");
        return viewModelStore;
    }
}
