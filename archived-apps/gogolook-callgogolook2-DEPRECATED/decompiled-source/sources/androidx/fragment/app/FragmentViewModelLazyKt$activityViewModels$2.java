package androidx.fragment.app;

import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m815d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, m814k = 3, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentViewModelLazyKt$activityViewModels$2.class */
public final class FragmentViewModelLazyKt$activityViewModels$2 extends AbstractC15150l implements AbstractC15107a<ViewModelProvider.Factory> {
    public final /* synthetic */ Fragment $this_activityViewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentViewModelLazyKt$activityViewModels$2(Fragment fragment) {
        super(0);
        this.$this_activityViewModels = fragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p626l.p641z.p642c.AbstractC15107a
    public final ViewModelProvider.Factory invoke() {
        FragmentActivity requireActivity = this.$this_activityViewModels.requireActivity();
        C15149k.m383a((Object) requireActivity, "requireActivity()");
        ViewModelProvider.Factory defaultViewModelProviderFactory = requireActivity.getDefaultViewModelProviderFactory();
        C15149k.m383a((Object) defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
        return defaultViewModelProviderFactory;
    }
}
