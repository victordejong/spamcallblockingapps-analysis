package com.privacystar.core.p011ui.intro.environment_check;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.p011ui.widgets.dialog.multiple_call_blocking.MultipleCallBlockingDialogFragment;
import com.privacystar.core.util.Device;
import com.privacystar.core.util.model.BasicApplication;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n��\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0010\u001a\u00020\fH\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0012H\u0016J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0014J\u000e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0015H\u0016J\b\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010\u001c\u001a\u00020\fH\u0016J&\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\b\u0010%\u001a\u00020\u0012H\u0016J\b\u0010&\u001a\u00020\u0012H\u0016J\b\u0010'\u001a\u00020\u0012H\u0016J\b\u0010(\u001a\u00020\fH\u0016J\b\u0010)\u001a\u00020\u0012H\u0016J\b\u0010*\u001a\u00020\u0012H\u0016J\b\u0010+\u001a\u00020\u0012H\u0016J\u0018\u0010,\u001a\u00020\u00122\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010.H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n��¨\u0006/"}, m254d2 = {"Lcom/privacystar/core/ui/intro/environment_check/EnvironmentCheckFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "Lcom/privacystar/core/ui/intro/environment_check/EnvironmentCheck$View;", "()V", "alertDialog", "Lcom/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingDialogFragment;", "getAlertDialog", "()Lcom/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingDialogFragment;", "setAlertDialog", "(Lcom/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingDialogFragment;)V", "isOtherPsApplicationInstalled", "", "()Z", "presenter", "Lcom/privacystar/core/ui/intro/environment_check/EnvironmentCheckPresenter;", "canAutoTransition", MessageCenterInteraction.EVENT_NAME_CLOSE, "", "dismissDialog", "getInstalledPsApplications", "", "Lcom/privacystar/core/util/model/BasicApplication;", "getLayoutResId", "", "getOtherPsPackages", "", "handlesBackButton", "isDialogShowing", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onResume", "onStop", "shouldDisplay", "showAppClosingAlert", "showUninstallAlert", "transition", "uninstall", "applications", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.environment_check.EnvironmentCheckFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/environment_check/EnvironmentCheckFragment.class */
public final class EnvironmentCheckFragment extends IntroFragment implements IntroActivity.IntroActivityContent, EnvironmentCheck.View {
    private HashMap _$_findViewCache;
    @NotNull
    public MultipleCallBlockingDialogFragment alertDialog;
    private final EnvironmentCheckPresenter presenter = new EnvironmentCheckPresenter(this);

    private final boolean isOtherPsApplicationInstalled() {
        return Device.isApplicationInstalled(PSApplication.context(), getOtherPsPackages());
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean canAutoTransition() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck.View
    public void close() {
        dismissDialog();
        if (this.activity != null) {
            Activity activity = this.activity;
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
            if (!activity.isFinishing()) {
                FragmentActivity activity2 = getActivity();
                if (activity2 == null) {
                    Intrinsics.throwNpe();
                }
                activity2.finishAffinity();
            }
        }
    }

    @Override // com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck.View
    public void dismissDialog() {
        MultipleCallBlockingDialogFragment multipleCallBlockingDialogFragment = this.alertDialog;
        if (multipleCallBlockingDialogFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("alertDialog");
        }
        multipleCallBlockingDialogFragment.dismissAllowingStateLoss();
    }

    @NotNull
    public final MultipleCallBlockingDialogFragment getAlertDialog() {
        MultipleCallBlockingDialogFragment multipleCallBlockingDialogFragment = this.alertDialog;
        if (multipleCallBlockingDialogFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("alertDialog");
        }
        return multipleCallBlockingDialogFragment;
    }

    @Override // com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck.View
    @NotNull
    public List<BasicApplication> getInstalledPsApplications() {
        List<BasicApplication> matchInstalledPackages = Device.matchInstalledPackages(getContext(), getOtherPsPackages());
        Intrinsics.checkExpressionValueIsNotNull(matchInstalledPackages, "Device.matchInstalledPac…xt, getOtherPsPackages())");
        return matchInstalledPackages;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.splash_activity;
    }

    @Override // com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck.View
    @NotNull
    public List<String> getOtherPsPackages() {
        ArrayList arrayList = new ArrayList();
        Context context = PSApplication.context();
        Intrinsics.checkExpressionValueIsNotNull(context, "PSApplication.context()");
        String[] stringArray = context.getResources().getStringArray(C1566R.array.psPackageNames);
        List asList = Arrays.asList((String[]) Arrays.copyOf(stringArray, stringArray.length));
        Intrinsics.checkExpressionValueIsNotNull(asList, "Arrays.asList(*PSApplica…(R.array.psPackageNames))");
        arrayList.addAll(asList);
        Context context2 = PSApplication.context();
        Intrinsics.checkExpressionValueIsNotNull(context2, "PSApplication.context()");
        arrayList.remove(context2.getPackageName());
        return arrayList;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck.View
    public boolean isDialogShowing() {
        MultipleCallBlockingDialogFragment multipleCallBlockingDialogFragment = this.alertDialog;
        if (multipleCallBlockingDialogFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("alertDialog");
        }
        return multipleCallBlockingDialogFragment.isVisible();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        this.presenter.viewCreated();
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroy() {
        this.presenter.viewDestroyed();
        super.onDestroy();
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.presenter.viewResumed();
    }

    @Override // com.privacystar.core.p011ui.PSFragment, android.support.p001v4.app.Fragment
    public void onStop() {
        this.presenter.viewStopped();
        super.onStop();
    }

    public final void setAlertDialog(@NotNull MultipleCallBlockingDialogFragment multipleCallBlockingDialogFragment) {
        Intrinsics.checkParameterIsNotNull(multipleCallBlockingDialogFragment, "<set-?>");
        this.alertDialog = multipleCallBlockingDialogFragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return isOtherPsApplicationInstalled();
    }

    @Override // com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck.View
    public void showAppClosingAlert() {
        FragmentManager it = getFragmentManager();
        if (it != null) {
            MultipleCallBlockingDialogFragment.Companion companion = MultipleCallBlockingDialogFragment.Companion;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            this.alertDialog = companion.showMutlipleCallBlockingDialog(it, true, new EnvironmentCheckFragment$showAppClosingAlert$1$1(this.presenter), new EnvironmentCheckFragment$showAppClosingAlert$1$2(this.presenter));
        }
    }

    @Override // com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck.View
    public void showUninstallAlert() {
        FragmentManager it = getFragmentManager();
        if (it != null) {
            MultipleCallBlockingDialogFragment.Companion companion = MultipleCallBlockingDialogFragment.Companion;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            this.alertDialog = MultipleCallBlockingDialogFragment.Companion.showMutlipleCallBlockingDialog$default(companion, it, false, new EnvironmentCheckFragment$showUninstallAlert$1$1(this.presenter), null, 8, null);
        }
    }

    @Override // com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck.View
    public void transition() {
        transitionIntroFragment();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
        if (r4 != null) goto L_0x0027;
     */
    @Override // com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void uninstall(@org.jetbrains.annotations.Nullable java.util.List<? extends com.privacystar.core.util.model.BasicApplication> r4) {
        /*
            r3 = this;
            r0 = r3
            r0.dismissDialog()
            r0 = r4
            if (r0 == 0) goto L_0x0023
            r0 = r4
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.privacystar.core.util.model.BasicApplication r0 = (com.privacystar.core.util.model.BasicApplication) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0023
            r0 = r4
            java.lang.String r0 = r0.getPackageName()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0023
            goto L_0x0027
        L_0x0023:
            java.lang.String r0 = ""
            r4 = r0
        L_0x0027:
            r0 = r3
            android.content.Context r0 = r0.getContext()
            r1 = r4
            com.privacystar.core.util.Device.startApplicationUninstall(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheckFragment.uninstall(java.util.List):void");
    }
}
