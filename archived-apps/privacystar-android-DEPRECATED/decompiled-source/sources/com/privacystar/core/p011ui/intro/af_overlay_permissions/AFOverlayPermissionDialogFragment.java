package com.privacystar.core.p011ui.intro.af_overlay_permissions;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.support.p001v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionContract;
import com.privacystar.core.p011ui.widgets.PSDialogFragment;
import com.rey.material.widget.Switch;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� '2\u00020\u00012\u00020\u0002:\u0001'B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0006H\u0016J\b\u0010\u0011\u001a\u00020\u0006H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\tH\u0003J\u0012\u0010\u0015\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u001e\u001a\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0014\u0010#\u001a\u00020\u00062\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010%\u001a\u00020\u00062\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010&\u001a\u00020\u0006H\u0016R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u001d\u0010\b\u001a\u0004\u0018\u00010\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n��¨\u0006("}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionDialogFragment;", "Lcom/privacystar/core/ui/widgets/PSDialogFragment;", "Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionContract$DialogView;", "()V", "onFinishCallback", "Lkotlin/Function0;", "", "onSettingsShownCallback", "overlaySystemIntent", "Landroid/content/Intent;", "getOverlaySystemIntent", "()Landroid/content/Intent;", "overlaySystemIntent$delegate", "Lkotlin/Lazy;", "presenter", "Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionDialogPresenter;", "attemptGrantPermissions", "finish", "getLayoutResId", "", "getOverlaySettingsIntent", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDismiss", "dialog", "Landroid/content/DialogInterface;", "onViewCreated", Promotion.ACTION_VIEW, "setOnFinishCallBack", "callback", "setOnSettingsShownCallback", "triggerSettingsShown", "Companion", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionDialogFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionDialogFragment.class */
public final class AFOverlayPermissionDialogFragment extends PSDialogFragment implements AFOverlayPermissionContract.DialogView {
    @NotNull
    private static final String CLASS_TAG = "AFOverlayPermissionDialogFragment";
    private HashMap _$_findViewCache;
    private Function0<Unit> onFinishCallback;
    private Function0<Unit> onSettingsShownCallback;
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(AFOverlayPermissionDialogFragment.class), "overlaySystemIntent", "getOverlaySystemIntent()Landroid/content/Intent;"))};
    public static final Companion Companion = new Companion(null);
    private final AFOverlayPermissionDialogPresenter presenter = new AFOverlayPermissionDialogPresenter(new WeakReference(this));
    private final Lazy overlaySystemIntent$delegate = LazyKt.lazy(new AFOverlayPermissionDialogFragment$overlaySystemIntent$2(this));

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J2\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionDialogFragment$Companion;", "", "()V", "CLASS_TAG", "", "getCLASS_TAG", "()Ljava/lang/String;", "showWithCallbacks", "Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionDialogFragment;", "fragmentManager", "Landroid/support/v4/app/FragmentManager;", "settingsShownCallback", "Lkotlin/Function0;", "", "finishCallback", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionDialogFragment$Companion */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionDialogFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public static /* synthetic */ AFOverlayPermissionDialogFragment showWithCallbacks$default(Companion companion, FragmentManager fragmentManager, Function0 function0, Function0 function02, int i, Object obj) {
            if ((i & 2) != 0) {
                function0 = null;
            }
            if ((i & 4) != 0) {
                function02 = null;
            }
            return companion.showWithCallbacks(fragmentManager, function0, function02);
        }

        @NotNull
        public final String getCLASS_TAG() {
            return AFOverlayPermissionDialogFragment.CLASS_TAG;
        }

        @NotNull
        public final AFOverlayPermissionDialogFragment showWithCallbacks(@NotNull FragmentManager fragmentManager, @Nullable Function0<Unit> function0, @Nullable Function0<Unit> function02) {
            Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
            AFOverlayPermissionDialogFragment aFOverlayPermissionDialogFragment = new AFOverlayPermissionDialogFragment();
            aFOverlayPermissionDialogFragment.show(fragmentManager, getCLASS_TAG());
            if (function0 == null) {
                function0 = new AFOverlayPermissionDialogFragment$Companion$showWithCallbacks$1(aFOverlayPermissionDialogFragment);
            }
            aFOverlayPermissionDialogFragment.setOnSettingsShownCallback(function0);
            if (function02 == null) {
                function02 = new AFOverlayPermissionDialogFragment$Companion$showWithCallbacks$2(aFOverlayPermissionDialogFragment);
            }
            aFOverlayPermissionDialogFragment.setOnFinishCallBack(function02);
            return aFOverlayPermissionDialogFragment;
        }
    }

    private final int getLayoutResId() {
        return C1566R.C1571layout.af_overlay_permissions_dialog_fragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(23)
    public final Intent getOverlaySettingsIntent() {
        StringBuilder sb = new StringBuilder();
        sb.append("package:");
        PSApplication instance = PSApplication.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(instance, "PSApplication.getInstance()");
        sb.append(instance.getPackageName());
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse(sb.toString()));
        intent.addFlags(268435456);
        return intent;
    }

    private final Intent getOverlaySystemIntent() {
        Lazy lazy = this.overlaySystemIntent$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (Intent) lazy.getValue();
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

    @Override // com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionContract.DialogView
    public void attemptGrantPermissions() {
        if (getOverlaySystemIntent() != null) {
            startActivity(getOverlaySystemIntent());
        }
    }

    @Override // com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionContract.DialogView
    public void finish() {
        dismissAllowingStateLoss();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, 16973834);
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(getLayoutResId(), viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        ((LinearLayout) view.findViewById(C1566R.C1569id.af_overlay_permissions_switch_holder)).setOnClickListener(AFOverlayPermissionDialogFragment$onCreateView$1.INSTANCE);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionDialogFragment$onCreateView$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AFOverlayPermissionDialogPresenter aFOverlayPermissionDialogPresenter;
                aFOverlayPermissionDialogPresenter = AFOverlayPermissionDialogFragment.this.presenter;
                aFOverlayPermissionDialogPresenter.onViewClicked();
            }
        });
        ((Switch) view.findViewById(C1566R.C1569id.af_overlay_permissions_sw)).setOnCheckedChangeListener(new Switch.OnCheckedChangeListener() { // from class: com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionDialogFragment$onCreateView$3
            @Override // com.rey.material.widget.Switch.OnCheckedChangeListener
            public final void onCheckedChanged(Switch r3, boolean z) {
                AFOverlayPermissionDialogPresenter aFOverlayPermissionDialogPresenter;
                aFOverlayPermissionDialogPresenter = AFOverlayPermissionDialogFragment.this.presenter;
                aFOverlayPermissionDialogPresenter.onSwitchClicked();
            }
        });
        return view;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@Nullable DialogInterface dialogInterface) {
        Function0<Unit> function0;
        super.onDismiss(dialogInterface);
        if (this.onFinishCallback != null && (function0 = this.onFinishCallback) != null) {
            function0.invoke();
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.presenter.onViewCreated();
    }

    public final void setOnFinishCallBack(@NotNull Function0<Unit> callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        this.onFinishCallback = callback;
    }

    public final void setOnSettingsShownCallback(@NotNull Function0<Unit> callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        this.onSettingsShownCallback = callback;
    }

    @Override // com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionContract.DialogView
    public void triggerSettingsShown() {
        Function0<Unit> function0;
        if (this.onSettingsShownCallback != null && (function0 = this.onSettingsShownCallback) != null) {
            function0.invoke();
        }
    }
}
