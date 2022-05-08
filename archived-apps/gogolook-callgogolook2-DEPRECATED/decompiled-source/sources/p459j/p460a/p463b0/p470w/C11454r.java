package p459j.p460a.p463b0.p470w;

import android.animation.Animator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.role.RoleManagerCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.p074ad.AdRendererUtils;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.phone.SettingResultActivity;
import gogolook.support.p080v7.widget.extension.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DebugKt;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p463b0.C11130i;
import p459j.p460a.p463b0.EnumC11144p;
import p459j.p460a.p463b0.p464q.C11210y;
import p459j.p460a.p463b0.p470w.ActionMode$CallbackC11480s;
import p459j.p460a.p463b0.p470w.C11483t;
import p459j.p460a.p463b0.p470w.DialogC11427h;
import p459j.p460a.p474c0.p488f.p490q.C11867d;
import p459j.p460a.p474c0.p499h.AbstractC12178k;
import p459j.p460a.p474c0.p499h.C12193o0;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p518j.AbstractC12476c;
import p459j.p460a.p521j0.p529x.C12754a;
import p459j.p460a.p521j0.p529x.C12758e;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14014g1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14078m0;
import p459j.p460a.p582w0.C14096o0;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14132r;
import p459j.p460a.p582w0.C14148s0;
import p459j.p460a.p582w0.C14200w1;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14216x2;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14324z0;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p585b5.C13929c;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p594z4.C14356f;
import p459j.p460a.p613z0.p617p.DialogC14669c;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14978j;
import p626l.C14979k;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p631e0.C14966w;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��ß\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001 \u0018�� \u0082\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0082\u0001B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010/\u001a\u000200H\u0002J\b\u00101\u001a\u000200H\u0014J\b\u00102\u001a\u000200H\u0002J\b\u00103\u001a\u000200H\u0002J\b\u00104\u001a\u00020\u0019H\u0014J\n\u00105\u001a\u0004\u0018\u000106H\u0016J\u0006\u00107\u001a\u00020\u0014J\b\u00108\u001a\u000200H\u0002J\u0010\u00109\u001a\u00020\u00142\u0006\u0010:\u001a\u00020\u0019H\u0002J\b\u0010;\u001a\u000200H\u0002J\b\u0010<\u001a\u000200H\u0002J\u0018\u0010=\u001a\u00020\u00142\u000e\u0010>\u001a\n\u0012\u0004\u0012\u00020@\u0018\u00010?H\u0002J\u0012\u0010A\u001a\u0002002\b\b\u0002\u0010B\u001a\u00020\u0014H\u0002J\u0018\u0010C\u001a\u0002002\u000e\u0010D\u001a\n\u0012\u0004\u0012\u00020E\u0018\u00010?H\u0016J\"\u0010F\u001a\u0002002\u0006\u0010G\u001a\u00020\u00192\u0006\u0010H\u001a\u00020\u00192\b\u0010I\u001a\u0004\u0018\u00010JH\u0016J\u001a\u0010K\u001a\u0002002\u0006\u0010L\u001a\u00020M2\b\u0010N\u001a\u0004\u0018\u00010OH\u0014J\u0010\u0010P\u001a\u00020\u00142\u0006\u0010Q\u001a\u00020RH\u0016J\u0012\u0010S\u001a\u0002002\b\u0010T\u001a\u0004\u0018\u00010OH\u0016J\"\u0010U\u001a\u0002002\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020M2\b\u0010Y\u001a\u0004\u0018\u00010ZH\u0016J\b\u0010[\u001a\u000200H\u0016J\u0010\u0010\\\u001a\u0002002\u0006\u0010]\u001a\u00020\u0014H\u0016J\u0010\u0010^\u001a\u00020\u00142\u0006\u0010Q\u001a\u00020RH\u0016J\b\u0010_\u001a\u000200H\u0016J\b\u0010`\u001a\u000200H\u0016J\b\u0010a\u001a\u000200H\u0016J\b\u0010b\u001a\u000200H\u0016J\b\u0010c\u001a\u000200H\u0016J\u001a\u0010d\u001a\u0002002\u0006\u0010e\u001a\u00020M2\b\u0010N\u001a\u0004\u0018\u00010OH\u0016J\b\u0010f\u001a\u000200H\u0002J\b\u0010g\u001a\u000200H\u0002J\b\u0010h\u001a\u000200H\u0016J\b\u0010i\u001a\u000200H\u0002J\u0010\u0010j\u001a\u0002002\u0006\u0010k\u001a\u00020lH\u0002J\u0010\u0010m\u001a\u0002002\u0006\u0010k\u001a\u00020lH\u0002J \u0010n\u001a\u0002002\u000e\u0010>\u001a\n\u0012\u0004\u0012\u00020@\u0018\u00010?2\u0006\u0010B\u001a\u00020\u0014H\u0016J\u0010\u0010o\u001a\u0002002\u0006\u0010p\u001a\u00020\u0014H\u0002J\u0010\u0010q\u001a\u0002002\u0006\u0010r\u001a\u00020\u0014H\u0016J\u0010\u0010s\u001a\u0002002\u0006\u0010t\u001a\u00020uH\u0016J\b\u0010v\u001a\u000200H\u0016J\u0010\u0010w\u001a\u0002002\u0006\u0010G\u001a\u00020\u0019H\u0016J\b\u0010x\u001a\u000200H\u0002J\b\u0010y\u001a\u000200H\u0002J\b\u0010z\u001a\u000200H\u0002J\b\u0010{\u001a\u000200H\u0002J\b\u0010|\u001a\u000200H\u0002J\u0018\u0010}\u001a\u0002002\u0006\u0010~\u001a\u00020\u00192\u0006\u0010\u007f\u001a\u00020\u0014H\u0002J\f\u0010\u0080\u0001\u001a\u000200*\u00030\u0081\u0001R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\r\u001a\u0004\b\u000f\u0010\u000bR\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0004\n\u0002\u0010!R\u000e\u0010\"\u001a\u00020#X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010&\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010*\u001a\u00020+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010\r\u001a\u0004\b,\u0010-¨\u0006\u0083\u0001"}, m815d2 = {"Lgogolook/callgogolook2/main/smslog/SmsLogsFragment;", "Lgogolook/callgogolook2/app/WhoscallDeferredFragment;", "Lgogolook/callgogolook2/main/smslog/SmsLogsContract$View;", "Lgogolook/callgogolook2/main/smslog/SmsLogsMultiSelectActionModeCallback$SmsLogsMultiSelectListener;", "Lgogolook/callgogolook2/util/debug/TimeProbe$ProbeListener;", "()V", "actionModeCallback", "Lgogolook/callgogolook2/main/smslog/SmsLogsMultiSelectActionModeCallback;", "brSmsAddFabHeight", "", "getBrSmsAddFabHeight", "()F", "brSmsAddFabHeight$delegate", "Lkotlin/Lazy;", "brVasFabHeight", "getBrVasFabHeight", "brVasFabHeight$delegate", "from", "", "isFabOpen", "", "isLoadingSmsLogs", "logPerformanceTracer", "Lgogolook/callgogolook2/messaging/util/SmsLogsPerformanceTracer;", "selectCount", "", "Ljava/lang/Integer;", "smsActionMode", "Landroid/view/ActionMode;", "smsFilterTrialDetailDialogDismissListener", "Landroid/content/DialogInterface$OnDismissListener;", "smsFilterTrialDialogCallback", "gogolook/callgogolook2/main/smslog/SmsLogsFragment$smsFilterTrialDialogCallback$1", "Lgogolook/callgogolook2/main/smslog/SmsLogsFragment$smsFilterTrialDialogCallback$1;", "smsLogsPresenter", "Lgogolook/callgogolook2/main/smslog/SmsLogsPresenter;", "smsLogsRecyclerViewAdapter", "Lgogolook/callgogolook2/main/smslog/SmsLogsPageRecyclerViewAdapter;", "subscription", "Lrx/Subscription;", "timeProbe", "Lgogolook/callgogolook2/util/debug/PageVisibilityTimeProbe;", "tooltipHelper", "Lgogolook/callgogolook2/main/smslog/SmsFilterTrialTooltipHelper;", "getTooltipHelper", "()Lgogolook/callgogolook2/main/smslog/SmsFilterTrialTooltipHelper;", "tooltipHelper$delegate", "closeActionMode", "", "executeDeferredAction", "filterNormal", "filterSpam", "getLayoutResource", "getViewContext", "Landroid/content/Context;", "handleBackPressed", "handleDeleteSelectAction", "handleOptionsItemSelected", Transition.MATCH_ITEM_ID_STR, "hideFabSpeedDial", "hideLoading", "isEmptySmsLogs", "smsLogList", "", "Lgogolook/callgogolook2/adapter/ViewData;", "loadSmsLogs", "scrollToTop", "onActionBarSmsLogDelete", "logs", "Lgogolook/callgogolook2/main/smslog/SmsLogsContract$SmsLog;", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onAsyncInflationFinished", "inflatedView", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onContextItemSelected", "item", "Landroid/view/MenuItem;", "onCreate", "bundle", "onCreateContextMenu", SupportMenuInflater.XML_MENU, "Landroid/view/ContextMenu;", "v", "menuInfo", "Landroid/view/ContextMenu$ContextMenuInfo;", "onDestroy", "onDestroyActionMode", "refreshData", "onOptionsItemSelected", "onPause", "onProbeStarted", "onProbeStopped", "onStart", "onStop", "onViewCreated", "view", "refreshSmsFilterTabs", "registerBus", "removeAd", "resetLogSelection", "setFilterItemDisable", "tvItem", "Landroid/widget/TextView;", "setFilterItemEnable", "setLogData", "setOverlayView", "isShow", "setUserVisibleHint", "isVisibleToUser", "showAd", "adObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "showContextMenu", "showDefaultSmsExplainDialog", "showFabSpeedDial", "showFilterUi", "showLoading", "showSmsFilterTrialDetailDialog", "showToolTip", "switchEditHint", "filterType", DebugKt.DEBUG_PROPERTY_VALUE_ON, "scrollToTopAfterReloading", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.w.r */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/r.class */
public final class C11454r extends AbstractC12476c implements AbstractC11445o, ActionMode$CallbackC11480s.AbstractC11482b, C13930d.AbstractC13931a {

    /* renamed from: w */
    public static final /* synthetic */ AbstractC14906i[] f25601w;

    /* renamed from: h */
    public C11483t f25604h;

    /* renamed from: j */
    public Subscription f25606j;

    /* renamed from: k */
    public ActionMode f25607k;

    /* renamed from: l */
    public ActionMode$CallbackC11480s f25608l;

    /* renamed from: m */
    public Integer f25609m;

    /* renamed from: n */
    public boolean f25610n;

    /* renamed from: o */
    public boolean f25611o;

    /* renamed from: q */
    public C12193o0 f25613q;

    /* renamed from: r */
    public String f25614r;

    /* renamed from: v */
    public HashMap f25618v;

    /* renamed from: f */
    public final AbstractC14974f f25602f = C14975g.m662a(new C11457c());

    /* renamed from: g */
    public final AbstractC14974f f25603g = C14975g.m662a(new C11456b());

    /* renamed from: i */
    public C11490x f25605i = new C11490x(this, C11210y.f25159a.m10016f());

    /* renamed from: p */
    public C13929c f25612p = new C13929c(this, true);

    /* renamed from: s */
    public final AbstractC14974f f25615s = C14975g.m662a(new C11479y());

    /* renamed from: t */
    public final DialogInterface.OnDismissListener f25616t = new DialogInterface$OnDismissListenerC11477w();

    /* renamed from: u */
    public final C11478x f25617u = new C11478x();

    /* renamed from: j.a.b0.w.r$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$a.class */
    public static final class C11455a {
        public C11455a() {
        }

        public /* synthetic */ C11455a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.b0.w.r$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$b.class */
    public static final class C11456b extends AbstractC15150l implements AbstractC15107a<Float> {
        public C11456b() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [float, java.lang.Float] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Float invoke() {
            return C11454r.this.getResources().getDimension(R$dimen.br_add_sms_fab_height);
        }
    }

    /* renamed from: j.a.b0.w.r$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$c.class */
    public static final class C11457c extends AbstractC15150l implements AbstractC15107a<Float> {
        public C11457c() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [float, java.lang.Float] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Float invoke() {
            return C11454r.this.getResources().getDimension(R$dimen.br_vas_fab_height);
        }
    }

    /* renamed from: j.a.b0.w.r$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$d.class */
    public static final class RunnableC11458d implements Runnable {
        public RunnableC11458d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActionMode actionMode = C11454r.this.f25607k;
            if (actionMode != null) {
                actionMode.finish();
            }
            C11454r.this.f25605i.m9483u();
        }
    }

    /* renamed from: j.a.b0.w.r$e */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$e.class */
    public static final class C11459e implements Animator.AnimatorListener {
        public C11459e() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            C15149k.m377b(animator, "animator");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C15149k.m377b(animator, "animator");
            FloatingActionButton floatingActionButton = (FloatingActionButton) C11454r.this.mo1408c(R$id.fab);
            C15149k.m383a((Object) floatingActionButton, "fab");
            if (floatingActionButton.getRotation() != 0.0f) {
                FloatingActionButton floatingActionButton2 = (FloatingActionButton) C11454r.this.mo1408c(R$id.fab);
                C15149k.m383a((Object) floatingActionButton2, "fab");
                floatingActionButton2.setRotation(0.0f);
            }
            if (!C11454r.this.f25610n) {
                ((FloatingActionButton) C11454r.this.mo1408c(R$id.fabBrVas)).m31357g();
                ((FloatingActionButton) C11454r.this.mo1408c(R$id.fabBrAddSms)).m31357g();
                Context context = C11454r.this.getContext();
                if (context != null) {
                    FloatingActionButton floatingActionButton3 = (FloatingActionButton) C11454r.this.mo1408c(R$id.fab);
                    C15149k.m383a((Object) floatingActionButton3, "fab");
                    floatingActionButton3.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(context, 2131100157)));
                }
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            C15149k.m377b(animator, "animator");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C15149k.m377b(animator, "animator");
        }
    }

    /* renamed from: j.a.b0.w.r$f */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$f.class */
    public static final class View$OnClickListenerC11460f implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ FloatingActionButton f25623a;

        /* renamed from: b */
        public final /* synthetic */ C11454r f25624b;

        public View$OnClickListenerC11460f(FloatingActionButton floatingActionButton, C11454r rVar) {
            this.f25623a = floatingActionButton;
            this.f25624b = rVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (!C13891a.m3144r()) {
                Context context = this.f25623a.getContext();
                if (context != null) {
                    C12810o.m5267a(context, 9, "", (String) null, true, this.f25624b.f25605i.m9505e());
                }
            } else if (!this.f25624b.f25610n) {
                this.f25624b.m9570i0();
            } else {
                this.f25624b.m9581d0();
            }
        }
    }

    /* renamed from: j.a.b0.w.r$g */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$g.class */
    public static final class C11461g implements C11483t.AbstractC11485b {
        public C11461g() {
        }

        @Override // p459j.p460a.p463b0.p470w.C11483t.AbstractC11485b
        /* renamed from: a */
        public void mo9534a() {
            SettingResultActivity.m26746b(C11454r.this.getContext(), RoleManagerCompat.ROLE_SMS, (Integer) 6);
        }

        @Override // p459j.p460a.p463b0.p470w.C11483t.AbstractC11485b
        /* renamed from: a */
        public void mo9533a(C11444n nVar) {
            Context context;
            C15149k.m377b(nVar, "smsLog");
            if (!C11454r.this.f25611o && (context = C11454r.this.getContext()) != null) {
                C15149k.m383a((Object) context, "context ?: return");
                Integer num = null;
                if (C11454r.this.f25608l == null) {
                    String c = nVar.m9626c();
                    if (!(c == null || c.length() == 0)) {
                        String c2 = nVar.m9626c();
                        if (c2 != null) {
                            C12810o.m5268a(context, 9, c2, C11454r.this.f25605i.m9505e());
                        } else {
                            C15149k.m378b();
                            throw null;
                        }
                    } else {
                        String e = nVar.m9624e();
                        boolean z = true;
                        if (e != null) {
                            z = e.length() == 0;
                        }
                        if (!z) {
                            String e2 = nVar.m9624e();
                            if (e2 != null) {
                                C12810o.m5266a(context, 9, e2, null, false, C11454r.this.f25605i.m9505e(), 24, null);
                            } else {
                                C15149k.m378b();
                                throw null;
                            }
                        }
                    }
                } else {
                    C11454r rVar = C11454r.this;
                    ActionMode$CallbackC11480s sVar = rVar.f25608l;
                    if (sVar != null) {
                        num = Integer.valueOf(sVar.m9550a(nVar));
                    }
                    rVar.f25609m = num;
                    nVar.m9628a(!nVar.m9617l());
                    C11483t tVar = C11454r.this.f25604h;
                    if (tVar != null) {
                        tVar.m9545a(nVar);
                    }
                }
            }
        }

        @Override // p459j.p460a.p463b0.p470w.C11483t.AbstractC11485b
        /* renamed from: b */
        public void mo9532b(C11444n nVar) {
            C15149k.m377b(nVar, "smsLog");
            if (!C11454r.this.f25611o && C11454r.this.f25608l == null) {
                C11454r.this.f25605i.m9526a(nVar);
            }
        }
    }

    /* renamed from: j.a.b0.w.r$h */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$h.class */
    public static final class View$OnClickListenerC11462h implements View.OnClickListener {
        public View$OnClickListenerC11462h() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C11454r.this.f25605i.m9481w();
        }
    }

    /* renamed from: j.a.b0.w.r$i */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$i.class */
    public static final class View$OnClickListenerC11463i implements View.OnClickListener {
        public View$OnClickListenerC11463i() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Context context = C11454r.this.getContext();
            if (context != null) {
                C15149k.m383a((Object) context, "this");
                C12810o.m5267a(context, 9, "", (String) null, true, C11454r.this.f25605i.m9505e());
            }
        }
    }

    /* renamed from: j.a.b0.w.r$j */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$j.class */
    public static final class View$OnClickListenerC11464j implements View.OnClickListener {
        public View$OnClickListenerC11464j() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C11454r.this.m9605W();
        }
    }

    /* renamed from: j.a.b0.w.r$k */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$k.class */
    public static final class View$OnClickListenerC11465k implements View.OnClickListener {
        public View$OnClickListenerC11465k() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C11454r.this.m9604X();
        }
    }

    /* renamed from: j.a.b0.w.r$l */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$l.class */
    public static final class C11466l<T> implements Observer<T> {
        public C11466l() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            C14978j jVar = (C14978j) t;
            C11454r.this.m9593a((List) jVar.m661a(), ((Boolean) jVar.m660b()).booleanValue());
        }
    }

    /* renamed from: j.a.b0.w.r$m */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$m.class */
    public static final class C11467m<T> implements Observer<T> {
        public C11467m() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            C14978j jVar = (C14978j) t;
            int intValue = ((Number) jVar.m661a()).intValue();
            int intValue2 = ((Number) jVar.m660b()).intValue();
            C11483t tVar = C11454r.this.f25604h;
            if (tVar != null) {
                tVar.notifyItemRangeChanged(intValue, intValue2);
            }
        }
    }

    /* renamed from: j.a.b0.w.r$n */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$n.class */
    public static final class C11468n<T> implements Observer<T> {
        public C11468n() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            if (((Boolean) t).booleanValue()) {
                C11454r.this.m9564k0();
            } else {
                C11454r.this.m9578e0();
            }
        }
    }

    /* renamed from: j.a.b0.w.r$o */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$o.class */
    public static final class View$OnLayoutChangeListenerC11469o implements View.OnLayoutChangeListener {
        public View$OnLayoutChangeListenerC11469o() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            C15149k.m377b(view, "view");
            view.removeOnLayoutChangeListener(this);
            C11454r.this.m9560m0();
            C11454r.this.m9605W();
        }
    }

    /* renamed from: j.a.b0.w.r$p */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$p.class */
    public static final class C11470p<T> implements Action1<Object> {
        public C11470p() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (obj instanceof C14148s0) {
                if (((C14148s0) obj).f31652b == 0) {
                    C11444n g = C11454r.this.f25605i.m9499g();
                    if (g != null) {
                        String f = g.m9623f();
                        if (f != null) {
                            if (!(!C14966w.m724a((CharSequence) f))) {
                                f = null;
                            }
                            if (f != null) {
                                C11052i.m10328e().m10344a(f);
                            }
                        }
                    }
                    C11483t tVar = C11454r.this.f25604h;
                    if (tVar != null) {
                        tVar.notifyDataSetChanged();
                    }
                }
            } else if (obj instanceof C14078m0) {
                C11483t tVar2 = C11454r.this.f25604h;
                if (tVar2 != null) {
                    tVar2.notifyDataSetChanged();
                }
            } else if (obj instanceof C14096o0) {
                C11454r.m9594a(C11454r.this, false, 1, null);
            } else if (obj instanceof C14200w1) {
                C11454r.this.m9606V();
            } else if (obj instanceof C14324z0) {
                if (((C14324z0) obj).f32078a) {
                    C11454r.this.f25605i.m9484t();
                } else {
                    C11454r.this.mo9569j();
                }
            } else if (obj instanceof C11867d.C11868a) {
                C11454r.this.m9567j0();
            }
        }
    }

    /* renamed from: j.a.b0.w.r$q */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$q.class */
    public static final class View$OnClickListenerC11471q implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ boolean f25636b;

        public View$OnClickListenerC11471q(boolean z) {
            this.f25636b = z;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (this.f25636b) {
                C11454r.this.m9581d0();
            }
        }
    }

    /* renamed from: j.a.b0.w.r$r */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$r.class */
    public static final class View$OnClickListenerC11472r implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ boolean f25638b;

        public View$OnClickListenerC11472r(boolean z) {
            this.f25638b = z;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (this.f25638b) {
                C11454r.this.m9581d0();
            }
        }
    }

    /* renamed from: j.a.b0.w.r$s */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$s.class */
    public static final class View$OnClickListenerC11473s implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ boolean f25640b;

        public View$OnClickListenerC11473s(boolean z) {
            this.f25640b = z;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (this.f25640b) {
                C11454r.this.m9581d0();
            }
        }
    }

    /* renamed from: j.a.b0.w.r$t */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$t.class */
    public static final class C11474t implements AbstractC6207d.AbstractC6208a {
        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        /* renamed from: a */
        public void mo5002a() {
            C14247d.f31867v.m2028c(AdUnit.SMS_LOG_STICKY);
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        public void onAdImpression() {
            C14247d.f31867v.m2025d(AdUnit.SMS_LOG_STICKY);
        }
    }

    /* renamed from: j.a.b0.w.r$u */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$u.class */
    public static final class C11475u implements Animator.AnimatorListener {
        public C11475u() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            C15149k.m377b(animator, "animator");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C15149k.m377b(animator, "animator");
            FloatingActionButton floatingActionButton = (FloatingActionButton) C11454r.this.mo1408c(R$id.fab);
            C15149k.m383a((Object) floatingActionButton, "fab");
            if (floatingActionButton.getRotation() != 135.0f) {
                FloatingActionButton floatingActionButton2 = (FloatingActionButton) C11454r.this.mo1408c(R$id.fab);
                C15149k.m383a((Object) floatingActionButton2, "fab");
                floatingActionButton2.setRotation(135.0f);
            }
            Context context = C11454r.this.getContext();
            if (context != null) {
                FloatingActionButton floatingActionButton3 = (FloatingActionButton) C11454r.this.mo1408c(R$id.fab);
                C15149k.m383a((Object) floatingActionButton3, "fab");
                floatingActionButton3.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(context, 2131100138)));
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            C15149k.m377b(animator, "animator");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C15149k.m377b(animator, "animator");
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/main/smslog/SmsLogsFragment$showFilterUi$1", m472f = "SmsLogsFragment.kt", m471l = {852}, m470m = "invokeSuspend")
    /* renamed from: j.a.b0.w.r$v */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$v.class */
    public static final class C11476v extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f25642a;

        /* renamed from: b */
        public int f25643b;

        public C11476v(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11476v vVar = new C11476v(dVar);
            vVar.f25642a = (CoroutineScope) obj;
            return vVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11476v) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f25643b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                if (C11454r.this.getUserVisibleHint()) {
                    Lifecycle lifecycle = C11454r.this.getLifecycle();
                    C15149k.m383a((Object) lifecycle, "lifecycle");
                    if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.RESUMED)) {
                        C11454r.this.m9576f0();
                    }
                }
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    /* renamed from: j.a.b0.w.r$w */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$w.class */
    public static final class DialogInterface$OnDismissListenerC11477w implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC11477w() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            C11454r.this.m9576f0();
        }
    }

    /* renamed from: j.a.b0.w.r$x */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$x.class */
    public static final class C11478x implements DialogC11427h.AbstractC11430c {
        public C11478x() {
        }

        @Override // p459j.p460a.p463b0.p470w.DialogC11427h.AbstractC11430c
        /* renamed from: a */
        public void mo9553a() {
            C11454r.this.m9576f0();
        }

        @Override // p459j.p460a.p463b0.p470w.DialogC11427h.AbstractC11430c
        /* renamed from: b */
        public void mo9552b() {
            C11454r.this.m9562l0();
        }
    }

    /* renamed from: j.a.b0.w.r$y */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/r$y.class */
    public static final class C11479y extends AbstractC15150l implements AbstractC15107a<C11431i> {
        public C11479y() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11431i invoke() {
            Context context = C11454r.this.getContext();
            TextView textView = (TextView) C11454r.this.mo1408c(R$id.tvFilterSpam);
            C15149k.m383a((Object) textView, "tvFilterSpam");
            ConstraintLayout constraintLayout = (ConstraintLayout) C11454r.this.mo1408c(R$id.clFilterParent);
            C15149k.m383a((Object) constraintLayout, "clFilterParent");
            return new C11431i(context, textView, constraintLayout, C11454r.this.f25617u, C11454r.this.f25616t);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11454r.class), "brVasFabHeight", "getBrVasFabHeight()F");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C11454r.class), "brSmsAddFabHeight", "getBrSmsAddFabHeight()F");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C11454r.class), "tooltipHelper", "getTooltipHelper()Lgogolook/callgogolook2/main/smslog/SmsFilterTrialTooltipHelper;");
        C15131a0.m412a(sVar3);
        f25601w = new AbstractC14906i[]{sVar, sVar2, sVar3};
        new C11455a(null);
    }

    /* renamed from: a */
    public static /* synthetic */ void m9594a(C11454r rVar, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        rVar.m9582d(z);
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: J */
    public void mo1420J() {
        HashMap hashMap = this.f25618v;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007c, code lost:
        if (m9565k(r5) != false) goto L_0x007f;
     */
    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo1419K() {
        /*
            r4 = this;
            r0 = r4
            android.os.Bundle r0 = r0.getArguments()
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0016
            r0 = r5
            java.lang.String r1 = "from"
            java.lang.String r0 = r0.getString(r1)
            r5 = r0
            goto L_0x0018
        L_0x0016:
            r0 = 0
            r5 = r0
        L_0x0018:
            r0 = r4
            r1 = r5
            r0.f25614r = r1
            r0 = r4
            android.os.Bundle r0 = r0.getArguments()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x002e
            r0 = r5
            java.lang.String r1 = "from"
            r2 = 0
            r0.putString(r1, r2)
        L_0x002e:
            r0 = r4
            j.a.w0.b5.c r0 = r0.f25612p
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x003f
            r0 = r5
            r1 = r4
            boolean r1 = r1.isResumed()
            r0.m3029c(r1)
        L_0x003f:
            j.a.w0.x4.d$l r0 = p459j.p460a.p582w0.p590x4.C14247d.f31867v
            gogolook.callgogolook2.ad.AdUnit r1 = gogolook.callgogolook2.p074ad.AdUnit.SMS_LOG_STICKY
            r0.m2040a(r1)
            r0 = r4
            j.a.b0.w.x r0 = r0.f25605i
            r0.m9479y()
            r0 = r4
            j.a.b0.w.x r0 = r0.f25605i
            r0.m9484t()
            r0 = r4
            j.a.b0.w.x r0 = r0.f25605i
            r0.m9478z()
            r0 = r4
            j.a.b0.w.x r0 = r0.f25605i
            boolean r0 = r0.m9528a()
            if (r0 != 0) goto L_0x007f
            r0 = r4
            j.a.b0.w.t r0 = r0.f25604h
            r7 = r0
            r0 = r6
            r5 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0077
            r0 = r7
            java.util.List r0 = r0.m9546a()
            r5 = r0
        L_0x0077:
            r0 = r4
            r1 = r5
            boolean r0 = r0.m9565k(r1)
            if (r0 == 0) goto L_0x0084
        L_0x007f:
            r0 = r4
            r1 = 1
            r0.m9582d(r1)
        L_0x0084:
            r0 = r4
            r0.m9576f0()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p470w.C11454r.mo1419K():void");
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: O */
    public int mo1418O() {
        return R$layout.sms_logs_fragment;
    }

    /* renamed from: V */
    public final void m9606V() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new RunnableC11458d());
        }
    }

    /* renamed from: W */
    public final void m9605W() {
        if (this.f25608l == null) {
            this.f25605i.m9518b(1);
            this.f25605i.m9520a(true);
            TextView textView = (TextView) mo1408c(R$id.tvFilterNormal);
            C15149k.m383a((Object) textView, "tvFilterNormal");
            m9590b(textView);
            TextView textView2 = (TextView) mo1408c(R$id.tvFilterSpam);
            C15149k.m383a((Object) textView2, "tvFilterSpam");
            m9598a(textView2);
        }
    }

    /* renamed from: X */
    public final void m9604X() {
        if (this.f25608l == null) {
            this.f25605i.m9518b(2);
            this.f25605i.m9520a(true);
            TextView textView = (TextView) mo1408c(R$id.tvFilterSpam);
            C15149k.m383a((Object) textView, "tvFilterSpam");
            m9590b(textView);
            TextView textView2 = (TextView) mo1408c(R$id.tvFilterNormal);
            C15149k.m383a((Object) textView2, "tvFilterNormal");
            m9598a(textView2);
        }
    }

    /* renamed from: Y */
    public final float m9603Y() {
        AbstractC14974f fVar = this.f25603g;
        AbstractC14906i iVar = f25601w[1];
        return ((Number) fVar.getValue()).floatValue();
    }

    /* renamed from: Z */
    public final float m9602Z() {
        AbstractC14974f fVar = this.f25602f;
        AbstractC14906i iVar = f25601w[0];
        return ((Number) fVar.getValue()).floatValue();
    }

    @Override // p459j.p460a.p463b0.p470w.AbstractC11445o
    /* renamed from: a */
    public Context mo9601a() {
        return getContext();
    }

    @Override // p459j.p460a.p463b0.p470w.AbstractC11445o
    /* renamed from: a */
    public void mo9600a(int i) {
        Context context = getContext();
        if (context != null) {
            C15149k.m383a((Object) context, "it");
            C12810o.m5261a(context, this, Integer.valueOf(i), (Integer) null).show();
        }
    }

    /* renamed from: a */
    public final void m9599a(int i, boolean z) {
        if (z) {
            LinearLayout linearLayout = (LinearLayout) mo1408c(R$id.ll_filter_category);
            C15149k.m383a((Object) linearLayout, "ll_filter_category");
            linearLayout.setVisibility(8);
            TextView textView = (TextView) mo1408c(R$id.tv_edt_hint);
            C15149k.m383a((Object) textView, "tv_edt_hint");
            textView.setVisibility(0);
        } else {
            LinearLayout linearLayout2 = (LinearLayout) mo1408c(R$id.ll_filter_category);
            C15149k.m383a((Object) linearLayout2, "ll_filter_category");
            linearLayout2.setVisibility(0);
            TextView textView2 = (TextView) mo1408c(R$id.tv_edt_hint);
            C15149k.m383a((Object) textView2, "tv_edt_hint");
            textView2.setVisibility(8);
        }
        TextView textView3 = (TextView) mo1408c(R$id.tv_edt_hint);
        int i2 = 2131888349;
        if (i != 1) {
            i2 = i != 2 ? 2131888349 : R$string.sms_log_edit_spam;
        }
        textView3.setText(i2);
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: a */
    public void mo1412a(View view, Bundle bundle) {
        C15149k.m377b(view, "inflatedView");
        C11483t tVar = new C11483t(this.f25605i, new C11461g());
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R$id.rvSmsLogs);
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
            recyclerView.setAdapter(tVar);
            recyclerView.addItemDecoration(new C11130i());
            registerForContextMenu(recyclerView);
        }
        this.f25604h = tVar;
        FloatingActionButton floatingActionButton = (FloatingActionButton) mo1408c(R$id.fab);
        if (this.f25608l == null) {
            floatingActionButton.m31354j();
        } else {
            floatingActionButton.m31357g();
        }
        floatingActionButton.setImageResource(C13891a.m3144r() ? 2131231150 : R$drawable.ic_fab_sms);
        floatingActionButton.setOnClickListener(new View$OnClickListenerC11460f(floatingActionButton, this));
        if (C13891a.m3144r()) {
            ((FloatingActionButton) mo1408c(R$id.fabBrVas)).setOnClickListener(new View$OnClickListenerC11462h());
            ((FloatingActionButton) mo1408c(R$id.fabBrAddSms)).setOnClickListener(new View$OnClickListenerC11463i());
        }
        ((TextView) mo1408c(R$id.tvFilterNormal)).setOnClickListener(new View$OnClickListenerC11464j());
        ((TextView) mo1408c(R$id.tvFilterSpam)).setOnClickListener(new View$OnClickListenerC11465k());
    }

    /* renamed from: a */
    public final void m9598a(TextView textView) {
        textView.setBackground(ContextCompat.getDrawable(textView.getContext(), R$drawable.sms_log_filter_item_disabled));
        textView.setTextColor(ContextCompat.getColor(textView.getContext(), 2131100120));
    }

    /* renamed from: a */
    public final void m9597a(RecyclerView.LayoutManager layoutManager) {
        C15149k.m377b(layoutManager, "receiver$0");
        if (this.f25608l == null) {
            layoutManager.scrollToPosition(0);
        }
    }

    /* renamed from: a */
    public void m9593a(List<? extends AbstractC12391a> list, boolean z) {
        C11483t tVar;
        gogolook.support.p080v7.widget.extension.RecyclerView recyclerView;
        RecyclerView.LayoutManager layoutManager;
        boolean z2 = false;
        if (!(list == null || list.isEmpty())) {
            C11483t tVar2 = this.f25604h;
            if (!m9565k(tVar2 != null ? tVar2.m9546a() : null)) {
                C12193o0 o0Var = this.f25613q;
                if (o0Var != null) {
                    o0Var.m6843c();
                    C12193o0.f27354d.m6842a(1 ^ o0Var.m6844b(), (int) o0Var.m6846a());
                    this.f25613q = null;
                }
                m9572h0();
                if (list != null && (tVar = this.f25604h) != null) {
                    tVar.m9541a(new ArrayList(list));
                    tVar.notifyDataSetChanged();
                    if (z && (recyclerView = (gogolook.support.p080v7.widget.extension.RecyclerView) mo1408c(R$id.rvSmsLogs)) != null && (layoutManager = recyclerView.getLayoutManager()) != null) {
                        m9597a(layoutManager);
                        return;
                    }
                    return;
                }
            }
        }
        C14037j3.AbstractC14039b a = C14037j3.m2731a();
        EnumC11144p pVar = EnumC11144p.SMS;
        if (list == null || list.isEmpty()) {
            z2 = true;
        }
        a.mo2704a(new C14014g1(pVar, !z2));
        if (list != null) {
        }
    }

    /* renamed from: a0 */
    public final C11431i m9592a0() {
        AbstractC14974f fVar = this.f25615s;
        AbstractC14906i iVar = f25601w[2];
        return (C11431i) fVar.getValue();
    }

    @Override // p459j.p460a.p463b0.p470w.AbstractC11445o
    /* renamed from: b */
    public void mo9591b() {
        ((gogolook.support.p080v7.widget.extension.RecyclerView) mo1408c(R$id.rvSmsLogs)).showContextMenu();
    }

    /* renamed from: b */
    public final void m9590b(TextView textView) {
        textView.setBackground(ContextCompat.getDrawable(textView.getContext(), R$drawable.sms_log_filter_item_enabled));
        textView.setTextColor(-1);
    }

    @Override // p459j.p460a.p463b0.p470w.AbstractC11445o
    /* renamed from: b */
    public void mo9589b(AbstractC6207d dVar) {
        C15149k.m377b(dVar, "adObject");
        this.f25605i.m9479y();
        if (((CardView) mo1408c(R$id.cvAdContainer)) != null) {
            CardView cardView = (CardView) mo1408c(R$id.cvAdContainer);
            C15149k.m383a((Object) cardView, "cvAdContainer");
            if (cardView.getChildCount() <= 0) {
                dVar.mo23569a((AbstractC6207d.AbstractC6208a) new C11474t());
                TranslateAnimation a = AdRendererUtils.INSTANCE.m28853a();
                dVar.mo23572a(getContext(), (CardView) mo1408c(R$id.cvAdContainer));
                CardView cardView2 = (CardView) mo1408c(R$id.cvAdContainer);
                C15149k.m383a((Object) cardView2, "cvAdContainer");
                cardView2.setAnimation(a);
                FrameLayout frameLayout = (FrameLayout) mo1408c(R$id.fl_logs_container);
                C15149k.m383a((Object) frameLayout, "fl_logs_container");
                frameLayout.setAnimation(a);
                this.f25605i.m9514b(true);
            }
        }
    }

    @Override // p459j.p460a.p463b0.p470w.ActionMode$CallbackC11480s.AbstractC11482b
    /* renamed from: b */
    public void mo9548b(boolean z) {
        C11483t tVar;
        if (this.f25607k != null) {
            if (z && (tVar = this.f25604h) != null) {
                tVar.m9537e();
            }
            m9599a(this.f25605i.m9505e(), false);
            this.f25608l = null;
        }
        ((FloatingActionButton) mo1408c(R$id.fab)).m31354j();
        if (getActivity() instanceof MainActivity) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                View e = ((MainActivity) activity).mo27842e(R$id.action_mode_divider);
                if (e != null) {
                    e.setVisibility(8);
                    return;
                }
                return;
            }
            throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.main.MainActivity");
        }
    }

    /* renamed from: b0 */
    public final boolean m9587b0() {
        boolean z = this.f25610n;
        if (z) {
            m9581d0();
        }
        return z;
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: c */
    public View mo1408c(int i) {
        if (this.f25618v == null) {
            this.f25618v = new HashMap();
        }
        View view = (View) this.f25618v.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f25618v.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    /* renamed from: c0 */
    public final void m9585c0() {
        this.f25608l = new ActionMode$CallbackC11480s(this);
        FragmentActivity activity = getActivity();
        this.f25607k = activity != null ? activity.startActionMode(this.f25608l) : null;
        m9599a(this.f25605i.m9505e(), true);
        ((FloatingActionButton) mo1408c(R$id.fab)).m31357g();
        if (getActivity() instanceof MainActivity) {
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                View e = ((MainActivity) activity2).mo27842e(R$id.action_mode_divider);
                if (e != null) {
                    e.setVisibility(0);
                    return;
                }
                return;
            }
            throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.main.MainActivity");
        }
    }

    /* renamed from: d */
    public final void m9582d(boolean z) {
        if (C14217x3.m2196a((Activity) getActivity())) {
            if (this.f25613q == null) {
                this.f25613q = new C12193o0();
            }
            boolean z2 = AbstractC12178k.m6912b().mo6908a("last_full_sync_time_millis", -1L) == -1;
            C12193o0 o0Var = this.f25613q;
            if (o0Var != null) {
                o0Var.m6845a(z2);
            }
            this.f25605i.m9520a(z);
        }
    }

    /* renamed from: d */
    public final boolean m9584d(int i) {
        boolean z;
        if (i == 2131362857) {
            C11483t tVar = this.f25604h;
            z = true;
            if (tVar != null) {
                z = true;
                if ((m9565k(tVar != null ? tVar.m9546a() : null) ^ true ? tVar : null) != null) {
                    C11490x xVar = this.f25605i;
                    C11483t tVar2 = this.f25604h;
                    if (tVar2 != null) {
                        xVar.m9500f(tVar2.m9546a());
                        z = true;
                    } else {
                        C15149k.m378b();
                        throw null;
                    }
                }
            }
        } else if (i != 2131362878) {
            z = false;
        } else {
            m9585c0();
            z = true;
        }
        return z;
    }

    /* renamed from: d0 */
    public final void m9581d0() {
        Window window;
        this.f25610n = false;
        FragmentActivity activity = getActivity();
        if (!(activity == null || (window = activity.getWindow()) == null)) {
            C14123p4.m2429b(window, ContextCompat.getColor(window.getContext(), 2131100101));
        }
        m9579e(false);
        ((FloatingActionButton) mo1408c(R$id.fab)).animate().rotationBy(-135.0f);
        ((FloatingActionButton) mo1408c(R$id.fabBrVas)).animate().translationY(0.0f);
        ((FloatingActionButton) mo1408c(R$id.fabBrAddSms)).animate().translationY(0.0f);
        ((FloatingActionButton) mo1408c(R$id.fab)).animate().translationY(0.0f).setListener(new C11459e());
    }

    /* renamed from: e */
    public final void m9579e(boolean z) {
        View c = mo1408c(R$id.backgroundTouchGuard);
        int i = 8;
        if (c != null) {
            c.setVisibility(z ? 0 : 8);
            c.setOnClickListener(new View$OnClickListenerC11471q(z));
        }
        if (getActivity() instanceof MainActivity) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                View e = ((MainActivity) activity).mo27842e(R$id.app_bar_touch_guard);
                if (e != null) {
                    FragmentActivity activity2 = getActivity();
                    if (activity2 != null) {
                        View e2 = ((MainActivity) activity2).mo27842e(R$id.tab_touch_guard);
                        if (e2 != null) {
                            e.setVisibility(z ? 0 : 8);
                            e.setOnClickListener(new View$OnClickListenerC11472r(z));
                            if (z) {
                                i = 0;
                            }
                            e2.setVisibility(i);
                            e2.setOnClickListener(new View$OnClickListenerC11473s(z));
                            return;
                        }
                        return;
                    }
                    throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.main.MainActivity");
                }
                return;
            }
            throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.main.MainActivity");
        }
    }

    /* renamed from: e0 */
    public final void m9578e0() {
        ProgressBar progressBar = (ProgressBar) mo1408c(R$id.pbLoading);
        if (progressBar != null) {
            if (!(progressBar.getVisibility() != 8)) {
                progressBar = null;
            }
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
        }
    }

    /* renamed from: f0 */
    public final void m9576f0() {
        if (!C12758e.m5412d() && !C12754a.m5431a()) {
            ConstraintLayout constraintLayout = (ConstraintLayout) mo1408c(R$id.clHistoryMessagesInferHint);
            C15149k.m383a((Object) constraintLayout, "clHistoryMessagesInferHint");
            constraintLayout.setVisibility(8);
            ConstraintLayout constraintLayout2 = (ConstraintLayout) mo1408c(R$id.clFilterParent);
            C15149k.m383a((Object) constraintLayout2, "clFilterParent");
            constraintLayout2.setVisibility(8);
        } else if (m9592a0().m9644h()) {
            m9592a0().m9640l();
        } else {
            int i = 0;
            if (m9592a0().m9645g()) {
                ConstraintLayout constraintLayout3 = (ConstraintLayout) mo1408c(R$id.clHistoryMessagesInferHint);
                C15149k.m383a((Object) constraintLayout3, "clHistoryMessagesInferHint");
                constraintLayout3.setVisibility(0);
            } else if (C12758e.m5411e() && C12758e.m5407i()) {
                ConstraintLayout constraintLayout4 = (ConstraintLayout) mo1408c(R$id.clHistoryMessagesInferHint);
                C15149k.m383a((Object) constraintLayout4, "clHistoryMessagesInferHint");
                constraintLayout4.setVisibility(8);
                ConstraintLayout constraintLayout5 = (ConstraintLayout) mo1408c(R$id.clFilterParent);
                C15149k.m383a((Object) constraintLayout5, "clFilterParent");
                int visibility = constraintLayout5.getVisibility();
                if (!m9592a0().m9647e()) {
                    i = 8;
                }
                if (!m9592a0().m9653a()) {
                    ConstraintLayout constraintLayout6 = (ConstraintLayout) mo1408c(R$id.clFilterParent);
                    C15149k.m383a((Object) constraintLayout6, "clFilterParent");
                    if (!ViewCompat.isLaidOut(constraintLayout6) || constraintLayout6.isLayoutRequested()) {
                        constraintLayout6.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC11469o());
                    } else {
                        m9560m0();
                        m9605W();
                    }
                    if (visibility == i) {
                        m9560m0();
                    }
                } else if (8 == visibility && i == 0) {
                    m9605W();
                }
                ConstraintLayout constraintLayout7 = (ConstraintLayout) mo1408c(R$id.clFilterParent);
                C15149k.m383a((Object) constraintLayout7, "clFilterParent");
                constraintLayout7.setVisibility(i);
            } else if (C12754a.m5431a()) {
                ConstraintLayout constraintLayout8 = (ConstraintLayout) mo1408c(R$id.clFilterParent);
                C15149k.m383a((Object) constraintLayout8, "clFilterParent");
                constraintLayout8.setVisibility(0);
            }
        }
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: g */
    public void mo3016g() {
        C14289m.m1873b(!C14217x3.m2160b(this.f25614r) ? this.f25614r : "others");
    }

    /* renamed from: g0 */
    public final void m9574g0() {
        Subscription subscription = this.f25606j;
        if (subscription != null) {
            if (!(!subscription.isUnsubscribed())) {
                subscription = null;
            }
            if (subscription != null) {
                subscription.unsubscribe();
            }
        }
        this.f25606j = C14037j3.m2731a().mo2703a((Action1) new C11470p());
    }

    @Override // p459j.p460a.p463b0.p470w.ActionMode$CallbackC11480s.AbstractC11482b
    /* renamed from: h */
    public void mo9547h(List<C11444n> list) {
        if (list != null) {
            if ((list.isEmpty() ^ true ? list : null) != null) {
                this.f25605i.m9506d(list);
            }
        }
    }

    /* renamed from: h0 */
    public final void m9572h0() {
        ActionMode$CallbackC11480s sVar = this.f25608l;
        if (sVar != null) {
            sVar.m9551a();
        }
    }

    /* renamed from: i0 */
    public final void m9570i0() {
        this.f25610n = true;
        Context context = getContext();
        FragmentActivity activity = getActivity();
        C14123p4.m2445a(context, activity != null ? activity.getWindow() : null);
        m9579e(true);
        ((FloatingActionButton) mo1408c(R$id.fabBrVas)).m31354j();
        ((FloatingActionButton) mo1408c(R$id.fabBrAddSms)).m31354j();
        ((FloatingActionButton) mo1408c(R$id.fab)).animate().rotationBy(135.0f).setListener(new C11475u());
        ((FloatingActionButton) mo1408c(R$id.fabBrVas)).animate().translationY(-m9602Z());
        ((FloatingActionButton) mo1408c(R$id.fabBrAddSms)).animate().translationY(-m9603Y());
    }

    @Override // p459j.p460a.p463b0.p470w.AbstractC11445o
    /* renamed from: j */
    public void mo9569j() {
        CardView cardView = (CardView) mo1408c(R$id.cvAdContainer);
        if (cardView != null) {
            cardView.removeAllViews();
            cardView.setVisibility(8);
        }
        this.f25605i.m9514b(false);
        this.f25605i.m9513c();
    }

    /* renamed from: j0 */
    public final void m9567j0() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), null, null, new C11476v(null), 3, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
        if (r3 != null) goto L_0x0057;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m9565k(java.util.List<? extends p459j.p460a.p511h.AbstractC12391a> r3) {
        /*
            r2 = this;
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0017
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0012
            goto L_0x0017
        L_0x0012:
            r0 = 0
            r5 = r0
            goto L_0x0019
        L_0x0017:
            r0 = 1
            r5 = r0
        L_0x0019:
            r0 = r5
            if (r0 != 0) goto L_0x0057
            r0 = r3
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x0025:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0051
            r0 = r6
            java.lang.Object r0 = r0.next()
            r3 = r0
            r0 = r3
            j.a.h.a r0 = (p459j.p460a.p511h.AbstractC12391a) r0
            int r0 = r0.getViewType()
            if (r0 != 0) goto L_0x0048
            r0 = 1
            r5 = r0
            goto L_0x004a
        L_0x0048:
            r0 = 0
            r5 = r0
        L_0x004a:
            r0 = r5
            if (r0 == 0) goto L_0x0025
            goto L_0x0053
        L_0x0051:
            r0 = 0
            r3 = r0
        L_0x0053:
            r0 = r3
            if (r0 == 0) goto L_0x0059
        L_0x0057:
            r0 = 1
            r4 = r0
        L_0x0059:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p470w.C11454r.m9565k(java.util.List):boolean");
    }

    /* renamed from: k0 */
    public final void m9564k0() {
        ProgressBar progressBar = (ProgressBar) mo1408c(R$id.pbLoading);
        if (progressBar != null) {
            if (!(progressBar.getVisibility() != 0)) {
                progressBar = null;
            }
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
        }
    }

    /* renamed from: l0 */
    public final void m9562l0() {
        m9592a0().m9641k();
    }

    /* renamed from: m0 */
    public final void m9560m0() {
        if (!m9592a0().m9649c()) {
            if (m9592a0().m9643i()) {
                m9592a0().m9639m();
            } else if (m9592a0().m9646f()) {
                m9592a0().m9642j();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        int i3;
        if (i == 200) {
            if (i2 == -1) {
                C11444n g = this.f25605i.m9499g();
                String str = null;
                if (!TextUtils.isEmpty(g != null ? g.m9624e() : null)) {
                    C11444n g2 = this.f25605i.m9499g();
                    if (g2 != null) {
                        str = g2.m9624e();
                    }
                    C14356f.m1480b(str);
                }
            }
        } else if ((i == 0 || 1 == i) && -1 == i2 && -1 != (i3 = this.f25605i.m9495i())) {
            if (i == 0) {
                m9584d(i3);
            } else if (1 == i) {
                this.f25605i.m9527a(i3);
            }
            this.f25605i.m9482v();
            C14289m.m1867c(6, C12810o.m5236i());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        C11483t tVar = this.f25604h;
        if ((tVar != null ? tVar.getItemCount() : 0) < 0) {
            return false;
        }
        return this.f25605i.m9527a(menuItem.getItemId());
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        C14216x2.m2208a("SmsLogsF:onCreate:+");
        super.onCreate(bundle);
        m9574g0();
        C14216x2.m2208a("SmsLogsF:onCreate:-");
    }

    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        C15149k.m377b(contextMenu, SupportMenuInflater.XML_MENU);
        C15149k.m377b(view, "v");
        C11444n g = this.f25605i.m9499g();
        if (g != null) {
            super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
            FragmentActivity activity = getActivity();
            if (activity != null) {
                C15149k.m383a((Object) activity, "activity!!");
                activity.getMenuInflater().inflate(R$menu.context_menu, contextMenu);
                boolean z = true;
                boolean z2 = g.m9627b() != null;
                boolean z3 = !TextUtils.isEmpty(g.m9623f());
                MenuItem findItem = contextMenu.findItem(R$id.menu_block);
                MenuItem findItem2 = contextMenu.findItem(R$id.menu_save);
                MenuItem findItem3 = contextMenu.findItem(R$id.menu_number_detail);
                boolean z4 = !z3 || TextUtils.equals(C14206w4.m2225a((int) R$string.unknown_number), g.m9624e());
                C15149k.m383a((Object) findItem, "blockItem");
                findItem.setTitle(C14206w4.m2225a(this.f25605i.m9486r().booleanValue() ? R$string.title_unblock : R$string.title_block));
                findItem.setVisible(C12810o.m5236i() && !g.m9618k() && z3);
                C15149k.m383a((Object) findItem2, "saveItem");
                findItem2.setVisible(!z2 && !g.m9618k() && z3);
                C15149k.m383a((Object) findItem3, "numberDetailItem");
                findItem3.setVisible(!g.m9618k() && z3);
                MenuItem findItem4 = contextMenu.findItem(R$id.menu_call);
                C15149k.m383a((Object) findItem4, "findItem(R.id.menu_call)");
                findItem4.setVisible(false);
                MenuItem findItem5 = contextMenu.findItem(R$id.menu_report);
                C15149k.m383a((Object) findItem5, "findItem(R.id.menu_report)");
                findItem5.setVisible(!g.m9618k() && !z4);
                MenuItem findItem6 = contextMenu.findItem(R$id.menu_add_to_wish);
                C15149k.m383a((Object) findItem6, "findItem(R.id.menu_add_to_wish)");
                if (!g.m9618k() && !z4) {
                    String f = g.m9623f();
                    if (f == null) {
                        f = "";
                    }
                    if (!C14132r.m2399b(f)) {
                        findItem6.setVisible(z);
                        if (!g.m9618k() || z4) {
                            MenuItem findItem7 = contextMenu.findItem(R$id.menu_message);
                            C15149k.m383a((Object) findItem7, "findItem(R.id.menu_message)");
                            findItem7.setVisible(false);
                            MenuItem findItem8 = contextMenu.findItem(R$id.menu_save);
                            C15149k.m383a((Object) findItem8, "findItem(R.id.menu_save)");
                            findItem8.setVisible(false);
                        } else if (!C14108o4.m2477i(g.m9624e())) {
                            MenuItem findItem9 = contextMenu.findItem(R$id.menu_message);
                            C15149k.m383a((Object) findItem9, "findItem(R.id.menu_message)");
                            findItem9.setVisible(false);
                        }
                    }
                }
                z = false;
                findItem6.setVisible(z);
                if (!g.m9618k()) {
                }
                MenuItem findItem72 = contextMenu.findItem(R$id.menu_message);
                C15149k.m383a((Object) findItem72, "findItem(R.id.menu_message)");
                findItem72.setVisible(false);
                MenuItem findItem82 = contextMenu.findItem(R$id.menu_save);
                C15149k.m383a((Object) findItem82, "findItem(R.id.menu_save)");
                findItem82.setVisible(false);
            } else {
                C15149k.m378b();
                throw null;
            }
        }
        new DialogC14669c.C14674d(getActivity(), contextMenu).m891a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        Subscription subscription = this.f25606j;
        if (subscription != null) {
            if (!(!subscription.isUnsubscribed())) {
                subscription = null;
            }
            if (subscription != null) {
                subscription.unsubscribe();
            }
        }
        super.onDestroy();
        mo9569j();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo1420J();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        if (C12810o.m5232m()) {
            return m9584d(menuItem.getItemId());
        }
        this.f25605i.m9512c(menuItem.getItemId());
        mo9600a(0);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (C13891a.m3144r() && this.f25610n) {
            m9581d0();
        }
        C13929c cVar = this.f25612p;
        if (cVar != null) {
            cVar.m3029c(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        C11483t tVar = this.f25604h;
        if (tVar != null) {
            if (!(!tVar.m9546a().isEmpty())) {
                tVar = null;
            }
            if (tVar != null) {
                tVar.notifyDataSetChanged();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        m9606V();
        C14247d.f31867v.m2031b(AdUnit.SMS_LOG_STICKY);
        super.onStop();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        LiveData<C14978j<List<AbstractC12391a>, Boolean>> h = this.f25605i.m9497h();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner, "viewLifecycleOwner");
        h.observe(viewLifecycleOwner, new C11466l());
        LiveData<C14978j<Integer, Integer>> f = this.f25605i.m9502f();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner2, "viewLifecycleOwner");
        f.observe(viewLifecycleOwner2, new C11467m());
        LiveData<Boolean> s = this.f25605i.m9485s();
        LifecycleOwner viewLifecycleOwner3 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner3, "viewLifecycleOwner");
        s.observe(viewLifecycleOwner3, new C11468n());
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: r */
    public void mo3015r() {
        C13929c cVar = this.f25612p;
        if (cVar != null) {
            C14289m.m1892a("sms log", cVar.m3022b());
        }
        this.f25605i.m9480x();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, p459j.p460a.p518j.AbstractC12478d, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        if (!z) {
            C14247d.f31867v.m2031b(AdUnit.SMS_LOG_STICKY);
        }
        super.setUserVisibleHint(z);
        if (!z && this.f25608l != null) {
            m9606V();
        }
        C13929c cVar = this.f25612p;
        if (cVar != null) {
            cVar.m3028d(z);
        }
    }
}
