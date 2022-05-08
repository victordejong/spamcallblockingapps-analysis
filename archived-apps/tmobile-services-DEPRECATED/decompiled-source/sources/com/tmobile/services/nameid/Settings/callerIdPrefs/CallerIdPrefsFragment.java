package com.tmobile.services.nameid.Settings.callerIdPrefs;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.StringRes;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs;
import com.tmobile.services.nameid.TabFragmentInterface;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.MetroApiWrapper;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.MetroProcessResponse;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.MataErrorInterpreter;
import com.tmobile.services.nameid.utility.MetroApiErrorInterpreter;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.github.douglasjunior.androidSimpleTooltip.SimpleTooltip;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt__JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b_\u0010\u001aJ\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ-\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u00062\b\b\u0001\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u001aJ\u000f\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0004\b$\u0010\u001aJ\u0017\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0004\b&\u0010\bJ\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010\u001aJ\u0017\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0004H\u0016¢\u0006\u0004\b)\u0010\bJ\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\u001aJ\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010\u001aJ!\u0010/\u001a\u00020\u00062\u0006\u0010-\u001a\u00020,2\b\u0010.\u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0004\b/\u00100J!\u00103\u001a\u00020\u00062\u0006\u00102\u001a\u0002012\b\u0010.\u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0004\b3\u00104R\u0016\u00105\u001a\u00020\u001f8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u00108\u001a\u0002078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010;\u001a\u00020:8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010=\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010@\u001a\u00020?8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010B\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bB\u0010>R\u0016\u0010C\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bC\u0010>R\u0016\u0010E\u001a\u00020D8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010G\u001a\u00020?8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bG\u0010AR\u0016\u0010H\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bH\u0010>R\u0016\u0010I\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bI\u0010>R\u0016\u0010J\u001a\u00020D8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010FR\u001d\u0010P\u001a\u00020K8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010OR\u0016\u0010R\u001a\u00020Q8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010SR\u0016\u0010U\u001a\u00020T8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010VR\u0018\u0010X\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010[\u001a\u00020Z8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010\\R\u0016\u0010]\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^¨\u0006`"}, d2 = {"Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefsFragment;", "Lcom/tmobile/services/nameid/TabFragmentInterface;", "com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$View", "Landroidx/fragment/app/Fragment;", "", "add", "", "callerIdRequestMata", "(Z)V", "callerIdRequestMetro", "Lcom/tmobile/services/nameid/NameIDPage;", "getPage", "()Lcom/tmobile/services/nameid/NameIDPage;", "Lcom/tmobile/services/nameid/MainActivity$Tabs;", "getTabType", "()Lcom/tmobile/services/nameid/MainActivity$Tabs;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onDestroyView", "()V", "", "stringRes", "outputAccessibility", "(I)V", "", "name", "setOutboundCnam", "(Ljava/lang/String;)V", "setShownFlag", "setTitle", "visible", "setVisible", "showBusinessView", "enabled", "showCnamEnabled", "showEligibleView", "showIneligibleView", "Lcom/tmobile/services/nameid/utility/MataErrorInterpreter$MataAction;", "mataAction", "errorCode", "showMataErrorDialog", "(Lcom/tmobile/services/nameid/utility/MataErrorInterpreter$MataAction;Ljava/lang/String;)V", "Lcom/tmobile/services/nameid/utility/MetroApiErrorInterpreter$MetroApiAction;", "action", "showTmoApiErrorDialog", "(Lcom/tmobile/services/nameid/utility/MetroApiErrorInterpreter$MetroApiAction;Ljava/lang/String;)V", "LOG_TAG", "Ljava/lang/String;", "Landroid/widget/Switch;", "incomingCallerIdToggle", "Landroid/widget/Switch;", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "incomingCallerIdToggleListener", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "incomingCard", "Landroid/view/View;", "Landroid/widget/TextView;", "incomingCnamStatus", "Landroid/widget/TextView;", "incomingTooltip", "incomingTooltipIcon", "Landroid/view/View$OnClickListener;", "incomingTooltipListener", "Landroid/view/View$OnClickListener;", "outboundCallerName", "outboundTooltip", "outboundTooltipIcon", "outboundTooltipListener", "Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$Presenter;", "presenter$delegate", "Lkotlin/Lazy;", "getPresenter", "()Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$Presenter;", "presenter", "Lkotlin/coroutines/CoroutineContext;", "presenterJob", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "Lio/github/douglasjunior/androidSimpleTooltip/SimpleTooltip;", "tooltip", "Lio/github/douglasjunior/androidSimpleTooltip/SimpleTooltip;", "Lio/github/douglasjunior/androidSimpleTooltip/SimpleTooltip$OnDismissListener;", "tooltipDismissListener", "Lio/github/douglasjunior/androidSimpleTooltip/SimpleTooltip$OnDismissListener;", "tooltipShown", "Z", "<init>", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefsFragment.class */
public final class CallerIdPrefsFragment extends Fragment implements TabFragmentInterface, CallerIdPrefs.View {

    /* renamed from: g */
    private final Lazy f12814g;

    /* renamed from: h */
    private final CoroutineContext f12815h;

    /* renamed from: i */
    private final CoroutineScope f12816i;

    /* renamed from: j */
    private boolean f12817j;

    /* renamed from: k */
    private SimpleTooltip f12818k;

    /* renamed from: l */
    private View f12819l;

    /* renamed from: m */
    private View f12820m;

    /* renamed from: n */
    private TextView f12821n;

    /* renamed from: o */
    private View f12822o;

    /* renamed from: p */
    private View f12823p;

    /* renamed from: q */
    private View f12824q;

    /* renamed from: r */
    private Switch f12825r;

    /* renamed from: s */
    private TextView f12826s;

    /* renamed from: x */
    private HashMap f12831x;

    /* renamed from: f */
    private final String f12813f = "CallerIdPrefsFragment#";

    /* renamed from: t */
    private final CompoundButton.OnCheckedChangeListener f12827t = new CompoundButton.OnCheckedChangeListener() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$incomingCallerIdToggleListener$1
        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            String str;
            String str2;
            CallerIdPrefsFragment.m7367J0(CallerIdPrefsFragment.this).setEnabled(false);
            str = CallerIdPrefsFragment.this.f12813f;
            LogUtil.m5643d(str, "Action switch toggled.");
            boolean z2 = (compoundButton instanceof Switch) && z;
            if (WidgetUtils.m5239d0(CallerIdPrefsFragment.this.getContext(), CallerIdPrefsFragment.this.getFragmentManager(), false)) {
                str2 = CallerIdPrefsFragment.this.f12813f;
                LogUtil.m5643d(str2, "No network, can't do Caller ID request.");
                CallerIdPrefsFragment.this.mo7372C0(!z2);
                CallerIdPrefsFragment.m7367J0(CallerIdPrefsFragment.this).setEnabled(true);
                return;
            }
            CallerIdPrefsFragment.this.mo7372C0(z2);
            if (BuildUtils.m5851c()) {
                CallerIdPrefsFragment.this.m7356U0(z2);
            } else {
                CallerIdPrefsFragment.this.m7355V0(z2);
            }
        }
    };

    /* renamed from: u */
    private final View.OnClickListener f12828u = new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$outboundTooltipListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z;
            SimpleTooltip.OnDismissListener onDismissListener;
            z = CallerIdPrefsFragment.this.f12817j;
            if (!z) {
                CallerIdPrefsFragment.this.f12817j = true;
                int i = SubscriptionHelper.m5332B() ? C1517R.layout.tooltip_outbound_caller_id_xp : C1517R.layout.tooltip_outbound_caller_id;
                CallerIdPrefsFragment callerIdPrefsFragment = CallerIdPrefsFragment.this;
                View M0 = CallerIdPrefsFragment.m7364M0(callerIdPrefsFragment);
                onDismissListener = CallerIdPrefsFragment.this.f12830w;
                callerIdPrefsFragment.f12818k = WidgetUtils.m5251V(i, C1517R.C1520id.tooltip_text_view, M0, onDismissListener, CallerIdPrefsFragment.this.getContext());
            }
        }
    };

    /* renamed from: v */
    private final View.OnClickListener f12829v = new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$incomingTooltipListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z;
            SimpleTooltip.OnDismissListener onDismissListener;
            z = CallerIdPrefsFragment.this.f12817j;
            if (!z) {
                CallerIdPrefsFragment.this.f12817j = true;
                CallerIdPrefsFragment callerIdPrefsFragment = CallerIdPrefsFragment.this;
                View K0 = CallerIdPrefsFragment.m7366K0(callerIdPrefsFragment);
                onDismissListener = CallerIdPrefsFragment.this.f12830w;
                callerIdPrefsFragment.f12818k = WidgetUtils.m5248Y(C1517R.string.caller_id_incoming_tooltip, K0, onDismissListener, CallerIdPrefsFragment.this.getContext());
            }
        }
    };

    /* renamed from: w */
    private final SimpleTooltip.OnDismissListener f12830w = new SimpleTooltip.OnDismissListener() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$tooltipDismissListener$1

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
        @DebugMetadata(m1915c = "com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$tooltipDismissListener$1$1", m1914f = "CallerIdPrefsFragment.kt", m1913l = {300}, m1912m = "invokeSuspend")
        /* renamed from: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$tooltipDismissListener$1$1 */
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefsFragment$tooltipDismissListener$1$1.class */
        static final class C15581 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* renamed from: g */
            private CoroutineScope f12853g;

            /* renamed from: h */
            Object f12854h;

            /* renamed from: i */
            int f12855i;

            C15581(Continuation continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
                Intrinsics.m1830e(completion, "completion");
                C15581 r0 = new C15581(completion);
                r0.f12853g = (CoroutineScope) obj;
                return r0;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object d;
                d = IntrinsicsKt__IntrinsicsKt.m1920d();
                int i = this.f12855i;
                if (i == 0) {
                    ResultKt.m2472b(obj);
                    this.f12854h = this.f12853g;
                    this.f12855i = 1;
                    if (DelayKt.m1293a(250L, this) == d) {
                        return d;
                    }
                } else if (i == 1) {
                    CoroutineScope coroutineScope = (CoroutineScope) this.f12854h;
                    ResultKt.m2472b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                CallerIdPrefsFragment.this.f12817j = false;
                CallerIdPrefsFragment.this.f12818k = null;
                return Unit.f20447a;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: o */
            public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C15581) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
            }
        }

        @Override // io.github.douglasjunior.androidSimpleTooltip.SimpleTooltip.OnDismissListener
        /* renamed from: a */
        public final void mo4534a(SimpleTooltip simpleTooltip) {
            CoroutineScope coroutineScope;
            coroutineScope = CallerIdPrefsFragment.this.f12816i;
            BuildersKt__Builders_commonKt.m1370b(coroutineScope, null, null, new C15581(null), 3, null);
        }
    };

    public CallerIdPrefsFragment() {
        Lazy a;
        CompletableJob b;
        a = LazyKt__LazyJVMKt.m2487a(new CallerIdPrefsFragment$presenter$2(this));
        this.f12814g = a;
        b = JobKt__JobKt.m1208b(null, 1, null);
        this.f12815h = b;
        this.f12816i = CoroutineScopeKt.m1312a(b.plus(Dispatchers.m1267b()));
    }

    /* renamed from: J0 */
    public static final /* synthetic */ Switch m7367J0(CallerIdPrefsFragment callerIdPrefsFragment) {
        Switch r0 = callerIdPrefsFragment.f12825r;
        if (r0 != null) {
            return r0;
        }
        Intrinsics.m1814u("incomingCallerIdToggle");
        throw null;
    }

    /* renamed from: K0 */
    public static final /* synthetic */ View m7366K0(CallerIdPrefsFragment callerIdPrefsFragment) {
        View view = callerIdPrefsFragment.f12823p;
        if (view != null) {
            return view;
        }
        Intrinsics.m1814u("incomingTooltipIcon");
        throw null;
    }

    /* renamed from: M0 */
    public static final /* synthetic */ View m7364M0(CallerIdPrefsFragment callerIdPrefsFragment) {
        View view = callerIdPrefsFragment.f12820m;
        if (view != null) {
            return view;
        }
        Intrinsics.m1814u("outboundTooltipIcon");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U0 */
    public final void m7356U0(final boolean z) {
        final MataErrorInterpreter.MataAction mataAction = z ? MataErrorInterpreter.MataAction.ADD_CALLER_ID : MataErrorInterpreter.MataAction.REMOVE_CALLER_ID;
        TmoApiWrapper.m6646d0(getContext(), TmoApiWrapper.AccountType.CNAM, z, false, "SETTINGS", new Consumer<TmoUserStatus>() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMata$1
            /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
                if ((r0.length() == 0) != false) goto L_0x002f;
             */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void accept(com.tmobile.services.nameid.model.TmoUserStatus r5) {
                /*
                    r4 = this;
                    r0 = r5
                    java.lang.String r1 = "status"
                    kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
                    r0 = r5
                    java.lang.String r0 = r0.getErrorText()
                    r5 = r0
                    r0 = 0
                    r6 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x002f
                    java.lang.String r0 = "none"
                    r1 = r5
                    r2 = 1
                    boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
                    if (r0 != 0) goto L_0x002f
                    r0 = r5
                    int r0 = r0.length()
                    if (r0 != 0) goto L_0x0029
                    r0 = 1
                    r7 = r0
                    goto L_0x002b
                L_0x0029:
                    r0 = 0
                    r7 = r0
                L_0x002b:
                    r0 = r7
                    if (r0 == 0) goto L_0x0031
                L_0x002f:
                    r0 = 1
                    r6 = r0
                L_0x0031:
                    r0 = r6
                    if (r0 != 0) goto L_0x004e
                    r0 = r4
                    com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment r0 = com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment.this
                    r1 = r4
                    boolean r1 = r5
                    r2 = 1
                    r1 = r1 ^ r2
                    r0.mo7372C0(r1)
                    r0 = r4
                    com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment r0 = com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment.this
                    r1 = r4
                    com.tmobile.services.nameid.utility.MataErrorInterpreter$MataAction r1 = r6
                    r2 = r5
                    com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment.m7358S0(r0, r1, r2)
                L_0x004e:
                    r0 = r4
                    com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment r0 = com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment.this
                    android.widget.Switch r0 = com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment.m7367J0(r0)
                    r1 = 1
                    r0.setEnabled(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMata$1.accept(com.tmobile.services.nameid.model.TmoUserStatus):void");
            }
        }, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMata$2
            /* renamed from: a */
            public final void accept(Throwable th) {
                CallerIdPrefsFragment.this.mo7372C0(!z);
                if (th instanceof TmoApiWrapper.ProcessingException) {
                    CallerIdPrefsFragment.this.m7350a1(mataAction, ((TmoApiWrapper.ProcessingException) th).m6599b());
                } else {
                    CallerIdPrefsFragment.this.m7350a1(mataAction, "");
                }
                CallerIdPrefsFragment.m7367J0(CallerIdPrefsFragment.this).setEnabled(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V0 */
    public final void m7355V0(final boolean z) {
        Context context = getContext();
        if (context != null) {
            String str = z ? "buy" : "cancel";
            final MetroApiErrorInterpreter.MetroApiAction metroApiAction = z ? MetroApiErrorInterpreter.MetroApiAction.ADD_CALLER_ID : MetroApiErrorInterpreter.MetroApiAction.REMOVE_CALLER_ID;
            MetroApiWrapper.m6734a(new Consumer<MetroProcessResponse>() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$1
                /* renamed from: a */
                public final void accept(final MetroProcessResponse metroProcessResponse) {
                    Context l = MainApplication.m7528l();
                    Intrinsics.m1832c(l);
                    Intrinsics.m1831d(l, "MainApplication.getAppContext()!!");
                    new Handler(l.getMainLooper()).post(new Runnable() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str2;
                            String str3;
                            MetroProcessResponse e = metroProcessResponse;
                            Intrinsics.m1831d(e, "e");
                            if (e.isSuccess()) {
                                str3 = this.f12813f;
                                LogUtil.m5631p(str3, "Caller ID status updated to: " + z);
                                AnalyticsWrapper.m5869k(z, true, "", "SETTINGS", "TMODPI");
                                ApiUtils.m6833t0(z);
                            } else {
                                str2 = this.f12813f;
                                StringBuilder sb = new StringBuilder();
                                sb.append("Error occurred while modifying Caller ID status: ");
                                MetroProcessResponse e2 = metroProcessResponse;
                                Intrinsics.m1831d(e2, "e");
                                sb.append(e2.getError());
                                LogUtil.m5631p(str2, sb.toString());
                                CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$1 callerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$1 = CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$1.this;
                                this.mo7372C0(!z);
                                boolean z2 = z;
                                MetroProcessResponse e3 = metroProcessResponse;
                                Intrinsics.m1831d(e3, "e");
                                String error = e3.getError();
                                Intrinsics.m1831d(error, "e.error");
                                if (error != null) {
                                    String upperCase = error.toUpperCase();
                                    Intrinsics.m1831d(upperCase, "(this as java.lang.String).toUpperCase()");
                                    AnalyticsWrapper.m5869k(z2, false, upperCase, "SETTINGS", "TMODPI");
                                    CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$1 callerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$12 = CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$1.this;
                                    CallerIdPrefsFragment callerIdPrefsFragment = this;
                                    MetroApiErrorInterpreter.MetroApiAction metroApiAction2 = MetroApiErrorInterpreter.MetroApiAction.this;
                                    MetroProcessResponse e4 = metroProcessResponse;
                                    Intrinsics.m1831d(e4, "e");
                                    callerIdPrefsFragment.m7349b1(metroApiAction2, e4.getError());
                                } else {
                                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                                }
                            }
                            CallerIdPrefsFragment.m7367J0(this).setEnabled(true);
                        }
                    });
                }
            }, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2
                /* renamed from: a */
                public final void accept(final Throwable th) {
                    String str2;
                    StringBuilder sb = new StringBuilder();
                    str2 = this.f12813f;
                    sb.append(str2);
                    sb.append("subscribe");
                    String sb2 = sb.toString();
                    LogUtil.m5643d(sb2, "Error while attempting to subscribe. " + th.getMessage());
                    Context l = MainApplication.m7528l();
                    Intrinsics.m1832c(l);
                    Intrinsics.m1831d(l, "MainApplication.getAppContext()!!");
                    new Handler(l.getMainLooper()).post(new Runnable() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2.1
                        /* JADX WARN: Code restructure failed: missing block: B:7:0x0061, code lost:
                            if (r8 != null) goto L_0x0074;
                         */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void run() {
                            /*
                                r6 = this;
                                r0 = r6
                                com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2 r0 = com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2.this
                                com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment r0 = r5
                                java.lang.String r0 = com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment.m7365L0(r0)
                                r7 = r0
                                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                                r1 = r0
                                r1.<init>()
                                r8 = r0
                                r0 = r8
                                java.lang.String r1 = "Error occurred while modifying Caller ID status: "
                                java.lang.StringBuilder r0 = r0.append(r1)
                                r0 = r8
                                r1 = r6
                                java.lang.Throwable r1 = r5
                                java.lang.StringBuilder r0 = r0.append(r1)
                                r0 = r7
                                r1 = r8
                                java.lang.String r1 = r1.toString()
                                com.tmobile.services.nameid.utility.LogUtil.m5631p(r0, r1)
                                r0 = r6
                                com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2 r0 = com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2.this
                                r8 = r0
                                r0 = r8
                                com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment r0 = r5
                                r1 = r8
                                boolean r1 = r6
                                r2 = 1
                                r1 = r1 ^ r2
                                r0.mo7372C0(r1)
                                r0 = r6
                                com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2 r0 = com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2.this
                                boolean r0 = r6
                                r9 = r0
                                r0 = r6
                                java.lang.Throwable r0 = r5
                                java.lang.String r0 = r0.getMessage()
                                r8 = r0
                                r0 = r8
                                if (r0 == 0) goto L_0x0071
                                r0 = r8
                                if (r0 == 0) goto L_0x0067
                                r0 = r8
                                java.lang.String r0 = r0.toUpperCase()
                                r8 = r0
                                r0 = r8
                                java.lang.String r1 = "(this as java.lang.String).toUpperCase()"
                                kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
                                r0 = r8
                                if (r0 == 0) goto L_0x0071
                                goto L_0x0074
                            L_0x0067:
                                java.lang.NullPointerException r0 = new java.lang.NullPointerException
                                r1 = r0
                                java.lang.String r2 = "null cannot be cast to non-null type java.lang.String"
                                r1.<init>(r2)
                                throw r0
                            L_0x0071:
                                java.lang.String r0 = ""
                                r8 = r0
                            L_0x0074:
                                r0 = r9
                                r1 = 0
                                r2 = r8
                                java.lang.String r3 = "SETTINGS"
                                java.lang.String r4 = "TMODPI"
                                com.tmobile.services.nameid.utility.AnalyticsWrapper.m5869k(r0, r1, r2, r3, r4)
                                r0 = r6
                                com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2 r0 = com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2.this
                                r8 = r0
                                r0 = r8
                                com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment r0 = r5
                                r1 = r8
                                com.tmobile.services.nameid.utility.MetroApiErrorInterpreter$MetroApiAction r1 = com.tmobile.services.nameid.utility.MetroApiErrorInterpreter.MetroApiAction.this
                                java.lang.String r2 = ""
                                com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment.m7357T0(r0, r1, r2)
                                r0 = r6
                                com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2 r0 = com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2.this
                                com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment r0 = r5
                                android.widget.Switch r0 = com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment.m7367J0(r0)
                                r1 = 1
                                r0.setEnabled(r1)
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment$callerIdRequestMetro$$inlined$let$lambda$2.RunnableC15571.run():void");
                        }
                    });
                }
            }, str, "callerid", context);
        }
    }

    /* renamed from: W0 */
    private final CallerIdPrefs.Presenter m7354W0() {
        return (CallerIdPrefs.Presenter) this.f12814g.getValue();
    }

    /* renamed from: X0 */
    private final void m7353X0(@StringRes int i) {
        String string = getString(i);
        Context context = getContext();
        Intrinsics.m1832c(context);
        MainActivity.m7572q0(string, context);
    }

    /* renamed from: Y0 */
    private final void m7352Y0() {
        PreferenceUtils.m5386k("PREF_HAS_SHOWN_CALLER_ID_PREFS", true);
    }

    /* renamed from: Z0 */
    private final void m7351Z0() {
        MainActivity mainActivity;
        if ((getContext() instanceof MainActivity) && (mainActivity = (MainActivity) getContext()) != null && mainActivity.m7571r(mo6305F0())) {
            mainActivity.m7625N0(C1517R.string.setting_caller_id_prefs_title);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a1 */
    public final void m7350a1(MataErrorInterpreter.MataAction mataAction, String str) {
        if (getContext() != null && getFragmentManager() != null) {
            NameIDDialogBuilder.Templates templates = NameIDDialogBuilder.f13943m;
            if (str == null) {
                str = "";
            }
            Context context = getContext();
            Intrinsics.m1832c(context);
            Intrinsics.m1831d(context, "context!!");
            NameIDDialogBuilder j = templates.m6134j(mataAction, str, context);
            FragmentManager fragmentManager = getFragmentManager();
            Intrinsics.m1832c(fragmentManager);
            Intrinsics.m1831d(fragmentManager, "fragmentManager!!");
            j.m6160b(fragmentManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b1 */
    public final void m7349b1(MetroApiErrorInterpreter.MetroApiAction metroApiAction, String str) {
        if (getContext() != null && getFragmentManager() != null) {
            NameIDDialogBuilder.Templates templates = NameIDDialogBuilder.f13943m;
            if (str == null) {
                str = "";
            }
            Context context = getContext();
            Intrinsics.m1832c(context);
            Intrinsics.m1831d(context, "context!!");
            NameIDDialogBuilder k = templates.m6133k(metroApiAction, str, context);
            FragmentManager fragmentManager = getFragmentManager();
            Intrinsics.m1832c(fragmentManager);
            Intrinsics.m1831d(fragmentManager, "fragmentManager!!");
            k.m6160b(fragmentManager);
        }
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.View
    /* renamed from: C0 */
    public void mo7372C0(boolean z) {
        if (getContext() != null && isAdded()) {
            Switch r0 = this.f12825r;
            if (r0 != null) {
                r0.setOnCheckedChangeListener(null);
                String str = this.f12813f;
                StringBuilder sb = new StringBuilder();
                sb.append("Showing CNAM enabled as ");
                sb.append(z ? "ON" : "OFF");
                LogUtil.m5643d(str, sb.toString());
                String string = getString(z ? C1517R.string.general_on : C1517R.string.general_off);
                Intrinsics.m1831d(string, "getString(cnamStatusStringRes)");
                TextView textView = this.f12826s;
                if (textView != null) {
                    textView.setText(string);
                    Switch r02 = this.f12825r;
                    if (r02 != null) {
                        r02.setChecked(z);
                        Switch r03 = this.f12825r;
                        if (r03 != null) {
                            r03.setOnCheckedChangeListener(this.f12827t);
                        } else {
                            Intrinsics.m1814u("incomingCallerIdToggle");
                            throw null;
                        }
                    } else {
                        Intrinsics.m1814u("incomingCallerIdToggle");
                        throw null;
                    }
                } else {
                    Intrinsics.m1814u("incomingCnamStatus");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("incomingCallerIdToggle");
                throw null;
            }
        }
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.View
    /* renamed from: D */
    public void mo7371D() {
        LogUtil.m5643d(this.f12813f, "showBusinessView");
        View view = this.f12824q;
        if (view != null) {
            view.setVisibility(8);
            Switch r0 = this.f12825r;
            if (r0 != null) {
                r0.setVisibility(8);
            } else {
                Intrinsics.m1814u("incomingCallerIdToggle");
                throw null;
            }
        } else {
            Intrinsics.m1814u("incomingCard");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    @NotNull
    /* renamed from: F0 */
    public MainActivity.Tabs mo6305F0() {
        return MainActivity.Tabs.SETTINGS;
    }

    /* renamed from: G0 */
    public void m7370G0() {
        HashMap hashMap = this.f12831x;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        View inflate = inflater.inflate(C1517R.layout.fragment_caller_id_prefs, viewGroup, false);
        m7351Z0();
        m7352Y0();
        View findViewById = inflate.findViewById(C1517R.C1520id.caller_id_outbound_name);
        Intrinsics.m1831d(findViewById, "view.findViewById(R.id.caller_id_outbound_name)");
        this.f12821n = (TextView) findViewById;
        mo7346z0(m7354W0().mo7340a());
        View findViewById2 = inflate.findViewById(C1517R.C1520id.caller_id_incoming_card);
        Intrinsics.m1831d(findViewById2, "view.findViewById(R.id.caller_id_incoming_card)");
        this.f12824q = findViewById2;
        View findViewById3 = inflate.findViewById(C1517R.C1520id.caller_id_incoming_toggle);
        Intrinsics.m1831d(findViewById3, "view.findViewById(R.id.caller_id_incoming_toggle)");
        Switch r0 = (Switch) findViewById3;
        this.f12825r = r0;
        if (r0 != null) {
            r0.setOnCheckedChangeListener(this.f12827t);
            View findViewById4 = inflate.findViewById(C1517R.C1520id.caller_id_incoming_status);
            Intrinsics.m1831d(findViewById4, "view.findViewById(R.id.caller_id_incoming_status)");
            this.f12826s = (TextView) findViewById4;
            View findViewById5 = inflate.findViewById(C1517R.C1520id.caller_id_outbound_info);
            Intrinsics.m1831d(findViewById5, "view.findViewById(R.id.caller_id_outbound_info)");
            this.f12819l = findViewById5;
            View findViewById6 = inflate.findViewById(C1517R.C1520id.caller_id_outbound_info_icon);
            Intrinsics.m1831d(findViewById6, "view.findViewById(R.id.c…er_id_outbound_info_icon)");
            this.f12820m = findViewById6;
            View view = this.f12819l;
            if (view != null) {
                view.setOnClickListener(this.f12828u);
                View findViewById7 = inflate.findViewById(C1517R.C1520id.caller_id_incoming_info);
                Intrinsics.m1831d(findViewById7, "view.findViewById(R.id.caller_id_incoming_info)");
                this.f12822o = findViewById7;
                View findViewById8 = inflate.findViewById(C1517R.C1520id.caller_id_incoming_info_icon);
                Intrinsics.m1831d(findViewById8, "view.findViewById(R.id.c…er_id_incoming_info_icon)");
                this.f12823p = findViewById8;
                View view2 = this.f12822o;
                if (view2 != null) {
                    view2.setOnClickListener(this.f12829v);
                    m7354W0().mo7339b();
                    return inflate;
                }
                Intrinsics.m1814u("incomingTooltip");
                throw null;
            }
            Intrinsics.m1814u("outboundTooltip");
            throw null;
        }
        Intrinsics.m1814u("incomingCallerIdToggle");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        SimpleTooltip simpleTooltip = this.f12818k;
        if (simpleTooltip != null) {
            simpleTooltip.m4605M();
        }
        m7354W0().mo7338c();
        m7370G0();
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.View
    /* renamed from: q0 */
    public void mo7348q0() {
        LogUtil.m5643d(this.f12813f, "showIneligibleView");
        View view = this.f12824q;
        if (view != null) {
            view.setVisibility(0);
            Switch r0 = this.f12825r;
            if (r0 != null) {
                r0.setVisibility(8);
            } else {
                Intrinsics.m1814u("incomingCallerIdToggle");
                throw null;
            }
        } else {
            Intrinsics.m1814u("incomingCard");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    public void setVisible(boolean z) {
        if (z) {
            m7351Z0();
            m7353X0(C1517R.string.con_desc_caller_id_prefs);
        }
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.View
    /* renamed from: y */
    public void mo7347y() {
        LogUtil.m5643d(this.f12813f, "showEligibleView");
        View view = this.f12824q;
        if (view != null) {
            view.setVisibility(0);
            Switch r0 = this.f12825r;
            if (r0 != null) {
                r0.setVisibility(0);
            } else {
                Intrinsics.m1814u("incomingCallerIdToggle");
                throw null;
            }
        } else {
            Intrinsics.m1814u("incomingCard");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.View
    /* renamed from: z0 */
    public void mo7346z0(@NotNull String name) {
        boolean r;
        Intrinsics.m1830e(name, "name");
        r = StringsKt__StringsJVMKt.m1485r(name);
        if (r) {
            TextView textView = this.f12821n;
            if (textView != null) {
                textView.setText(getString(C1517R.string.general_unavailable));
                TextView textView2 = this.f12821n;
                if (textView2 != null) {
                    textView2.setTextColor(getResources().getColor(C1517R.C1518color.grey_13));
                } else {
                    Intrinsics.m1814u("outboundCallerName");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("outboundCallerName");
                throw null;
            }
        } else {
            TextView textView3 = this.f12821n;
            if (textView3 != null) {
                textView3.setText(name);
            } else {
                Intrinsics.m1814u("outboundCallerName");
                throw null;
            }
        }
    }
}
