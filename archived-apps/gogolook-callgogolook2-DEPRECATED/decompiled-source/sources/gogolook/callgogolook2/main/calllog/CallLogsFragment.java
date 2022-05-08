package gogolook.callgogolook2.main.calllog;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.main.dialer.DialerActivity;
import gogolook.callgogolook2.p074ad.AdRendererUtils;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import gogolook.callgogolook2.setting.SuggestedSettingsActivity;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p463b0.C11130i;
import p459j.p460a.p463b0.EnumC11144p;
import p459j.p460a.p463b0.p464q.AbstractC11164g;
import p459j.p460a.p463b0.p464q.AbstractC11165h;
import p459j.p460a.p463b0.p464q.C11173k;
import p459j.p460a.p463b0.p464q.C11175m;
import p459j.p460a.p463b0.p464q.C11184q;
import p459j.p460a.p463b0.p464q.C11202r;
import p459j.p460a.p463b0.p464q.C11210y;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p518j.AbstractC12476c;
import p459j.p460a.p576w.C13755l;
import p459j.p460a.p576w.p578o.C13797d;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14014g1;
import p459j.p460a.p582w0.C14020h1;
import p459j.p460a.p582w0.C14026i0;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14078m0;
import p459j.p460a.p582w0.C14148s0;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14216x2;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14324z0;
import p459j.p460a.p582w0.p585b5.C13929c;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p587d5.C13976c;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p582w0.p594z4.C14356f;
import p626l.C14978j;
import p626l.p631e0.C14966w;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� T2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001TB\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u0010\u001a\u00020\u0011H\u0014J\b\u0010\u0012\u001a\u00020\u000bH\u0014J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\u0018J\b\u0010\u0019\u001a\u00020\u0011H\u0016J\u0016\u0010\u001a\u001a\u00020\u00182\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\b\u0010\u001e\u001a\u00020\u0018H\u0016J\"\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000b2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u001a\u0010$\u001a\u00020\u00112\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0014J\u0012\u0010)\u001a\u00020\u00112\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0012\u0010,\u001a\u00020\u00112\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0018\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0016J\u0018\u00102\u001a\u00020\u00112\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0016J\u0012\u00103\u001a\u00020\u00112\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0010\u00104\u001a\u00020\u00182\u0006\u00105\u001a\u000206H\u0017J\u0012\u00107\u001a\u00020\u00112\b\u00108\u001a\u0004\u0018\u00010(H\u0016J\"\u00109\u001a\u00020\u00112\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020&2\b\u0010=\u001a\u0004\u0018\u00010>H\u0016J\b\u0010?\u001a\u00020\u0011H\u0016J\b\u0010@\u001a\u00020\u0011H\u0016J\b\u0010A\u001a\u00020\u0011H\u0016J\b\u0010B\u001a\u00020\u0011H\u0016J\b\u0010C\u001a\u00020\u0011H\u0016J\b\u0010D\u001a\u00020\u0011H\u0016J\b\u0010E\u001a\u00020\u0011H\u0016J\u001a\u0010F\u001a\u00020\u00112\u0006\u0010G\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\b\u0010H\u001a\u00020\u0011H\u0002J\b\u0010I\u001a\u00020\u0011H\u0016J\u0016\u0010J\u001a\u00020\u00112\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\u0010\u0010K\u001a\u00020\u00112\u0006\u0010L\u001a\u00020\u0018H\u0016J\b\u0010M\u001a\u00020\u0011H\u0016J\u0010\u0010N\u001a\u00020\u00112\u0006\u0010O\u001a\u00020PH\u0016J\u0010\u0010Q\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0016J\b\u0010R\u001a\u00020\u0011H\u0002J\b\u0010S\u001a\u00020\u0011H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n��¨\u0006U"}, m815d2 = {"Lgogolook/callgogolook2/main/calllog/CallLogsFragment;", "Lgogolook/callgogolook2/app/WhoscallDeferredFragment;", "Lgogolook/callgogolook2/main/calllog/CallLogsContract$View;", "Lgogolook/callgogolook2/util/debug/TimeProbe$ProbeListener;", "Lgogolook/callgogolook2/main/calllog/CallLogsPageRecyclerViewAdapter$ItemEventListener;", "()V", "callLogsPresenter", "Lgogolook/callgogolook2/main/calllog/CallLogsContract$Presenter;", "callLogsRecyclerViewAdapter", "Lgogolook/callgogolook2/main/calllog/CallLogsPageRecyclerViewAdapter;", "lastRecyclerViewState", "", "subscription", "Lrx/Subscription;", "timeProbe", "Lgogolook/callgogolook2/util/debug/PageVisibilityTimeProbe;", "executeDeferredAction", "", "getLayoutResource", "getViewContext", "Landroid/content/Context;", "getViewFragmentContext", "Landroidx/fragment/app/Fragment;", "handleBackPressed", "", "hideIapNoticeBanner", "isEmptyCallLogs", "callLogList", "", "Lgogolook/callgogolook2/adapter/ViewData;", "isViewAlive", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onAsyncInflationFinished", "inflatedView", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCallLogCallButtonClick", "logsGroupRealmObject", "Lgogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject;", "onCallLogClick", "onCallLogContentAdClick", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "adObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "onCallLogContentAdImpression", "onCallLogLongClick", "onContextItemSelected", "item", "Landroid/view/MenuItem;", "onCreate", "bundle", "onCreateContextMenu", SupportMenuInflater.XML_MENU, "Landroid/view/ContextMenu;", "v", "menuInfo", "Landroid/view/ContextMenu$ContextMenuInfo;", "onDestroy", "onPause", "onProbeStarted", "onProbeStopped", "onStart", "onStop", "onSuggestSettingItemClick", "onViewCreated", "view", "registerBus", "removeAds", "setCallLogsData", "setUserVisibleHint", "isVisibleToUser", "showContextMenu", "showIapNoticeBanner", "notice", "Lgogolook/callgogolook2/iap/model/IapNotice;", "showStickyAd", "unregisterBus", "updateCallLogsVisibleRange", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/calllog/CallLogsFragment.class */
public final class CallLogsFragment extends AbstractC12476c implements AbstractC11165h, C13930d.AbstractC13931a, C11175m.AbstractC11177b {

    /* renamed from: f */
    public C11175m f11107f;

    /* renamed from: g */
    public int f11108g;

    /* renamed from: i */
    public Subscription f11110i;

    /* renamed from: k */
    public HashMap f11112k;

    /* renamed from: h */
    public AbstractC11164g f11109h = new C11184q(this, C11210y.f25159a.m10018d(), C14247d.f31867v);

    /* renamed from: j */
    public C13929c f11111j = new C13929c(this, true);

    /* renamed from: gogolook.callgogolook2.main.calllog.CallLogsFragment$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/calllog/CallLogsFragment$a.class */
    public static final class C4595a {
        public C4595a() {
        }

        public /* synthetic */ C4595a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: gogolook.callgogolook2.main.calllog.CallLogsFragment$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/calllog/CallLogsFragment$b.class */
    public static final class C4596b extends RecyclerView.OnScrollListener {

        /* renamed from: a */
        public final /* synthetic */ CallLogsFragment f11113a;

        public C4596b(C11175m mVar, CallLogsFragment callLogsFragment, View view) {
            this.f11113a = callLogsFragment;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            C15149k.m377b(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i);
            this.f11113a.f11108g = i;
            if (i == 0) {
                this.f11113a.m27831Y();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.main.calllog.CallLogsFragment$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/calllog/CallLogsFragment$c.class */
    public static final class View$OnClickListenerC4597c implements View.OnClickListener {
        public View$OnClickListenerC4597c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14217x3.m2156c(CallLogsFragment.this.getContext(), new Intent(CallLogsFragment.this.getContext(), DialerActivity.class));
        }
    }

    /* renamed from: gogolook.callgogolook2.main.calllog.CallLogsFragment$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/calllog/CallLogsFragment$d.class */
    public static final class C4598d<T> implements Observer<T> {
        public C4598d() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            CallLogsFragment.this.m27823l((List) t);
        }
    }

    /* renamed from: gogolook.callgogolook2.main.calllog.CallLogsFragment$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/calllog/CallLogsFragment$e.class */
    public static final class C4599e<T> implements Observer<T> {
        public C4599e() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            C14978j jVar = (C14978j) t;
            int intValue = ((Number) jVar.m661a()).intValue();
            int intValue2 = ((Number) jVar.m660b()).intValue();
            C11175m mVar = CallLogsFragment.this.f11107f;
            if (mVar != null) {
                mVar.notifyItemRangeChanged(intValue, intValue2);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.main.calllog.CallLogsFragment$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/calllog/CallLogsFragment$f.class */
    public static final class C4600f<T> implements Action1<Object> {
        public C4600f() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (obj instanceof C14020h1) {
                CallLogsFragment.this.f11109h.mo10105a();
            } else if (obj instanceof C14078m0) {
                CallLogsFragment.this.f11109h.mo10105a();
            } else if (obj instanceof C14324z0) {
                if (((C14324z0) obj).f32078a) {
                    CallLogsFragment.this.f11109h.mo10071f();
                } else {
                    CallLogsFragment.this.mo10161G();
                }
            } else if (obj instanceof C14026i0) {
                CallLogsFragment.this.f11109h.mo10105a();
            } else if (obj instanceof C14148s0) {
                C14148s0 s0Var = (C14148s0) obj;
                int i = s0Var.f31651a;
                if (i == 0) {
                    int i2 = s0Var.f31652b;
                    if (i2 == -1) {
                        C14289m.m1897a((Integer) null, (Integer) null, (Integer) 2, (Integer) null, (Integer) 0, (Integer) null);
                    } else if (i2 == 0) {
                        C14289m.m1897a((Integer) null, (Integer) null, (Integer) 2, (Integer) null, (Integer) 1, (Integer) null);
                    }
                } else if (i == 2) {
                    int i3 = s0Var.f31652b;
                    if (i3 == -1) {
                        C14289m.m1897a((Integer) null, (Integer) null, (Integer) 2, (Integer) null, (Integer) 0, (Integer) null);
                    } else if (i3 == 0) {
                        C14289m.m1897a((Integer) null, (Integer) null, (Integer) 2, (Integer) null, (Integer) 1, (Integer) null);
                    }
                }
                if (s0Var.f31652b == 0) {
                    String m = CallLogsFragment.this.f11109h.mo10057m();
                    if (m != null) {
                        if (!(!C14966w.m724a((CharSequence) m))) {
                            m = null;
                        }
                        if (m != null) {
                            C11052i.m10328e().m10344a(m);
                        }
                    }
                    C11175m mVar = CallLogsFragment.this.f11107f;
                    if (mVar != null) {
                        mVar.notifyDataSetChanged();
                    }
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.main.calllog.CallLogsFragment$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/calllog/CallLogsFragment$g.class */
    public static final class View$OnClickListenerC4601g implements View.OnClickListener {
        public View$OnClickListenerC4601g(C13797d dVar) {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13976c.f31384a.m9459a("iap_click_restore_subscription_close_time", (String) Long.valueOf(System.currentTimeMillis()));
            CallLogsFragment.this.mo10154z();
            C13755l.m3513a(3);
        }
    }

    /* renamed from: gogolook.callgogolook2.main.calllog.CallLogsFragment$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/calllog/CallLogsFragment$h.class */
    public static final class View$OnClickListenerC4602h implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C13797d f11120b;

        public View$OnClickListenerC4602h(C13797d dVar) {
            this.f11120b = dVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            CallLogsFragment.this.f11109h.mo10093a(this.f11120b);
        }
    }

    /* renamed from: gogolook.callgogolook2.main.calllog.CallLogsFragment$i */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/calllog/CallLogsFragment$i.class */
    public static final class View$OnClickListenerC4603i implements View.OnClickListener {
        public View$OnClickListenerC4603i(C13797d dVar) {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            CallLogsFragment.this.f11109h.mo10047u();
        }
    }

    /* renamed from: gogolook.callgogolook2.main.calllog.CallLogsFragment$j */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/calllog/CallLogsFragment$j.class */
    public static final class C4604j implements AbstractC6207d.AbstractC6208a {

        /* renamed from: b */
        public final /* synthetic */ AbstractC6207d f11123b;

        public C4604j(AbstractC6207d dVar) {
            this.f11123b = dVar;
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        /* renamed from: a */
        public void mo5002a() {
            CallLogsFragment.this.f11109h.mo10100a(AdUnit.CALL_LOG_STICKY, this.f11123b);
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        public void onAdImpression() {
            CallLogsFragment.this.f11109h.mo10089b(AdUnit.CALL_LOG_STICKY, this.f11123b);
        }
    }

    static {
        new C4595a(null);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11165h
    /* renamed from: G */
    public void mo10161G() {
        CardView cardView = (CardView) mo1408c(R$id.cvAdContainer);
        if (cardView != null) {
            cardView.removeAllViews();
        }
        CardView cardView2 = (CardView) mo1408c(R$id.cvAdContainer);
        if (cardView2 != null) {
            cardView2.setVisibility(8);
        }
        this.f11109h.mo10084b(false);
        this.f11109h.mo10051q();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: J */
    public void mo1420J() {
        HashMap hashMap = this.f11112k;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
        if ((r4 == null || r4.isEmpty()) != false) goto L_0x0043;
     */
    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo1419K() {
        /*
            r3 = this;
            r0 = r3
            j.a.w0.b5.c r0 = r0.f11111j
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0011
            r0 = r4
            r1 = r3
            boolean r1 = r1.isResumed()
            r0.m3029c(r1)
        L_0x0011:
            r0 = r3
            j.a.b0.q.m r0 = r0.f11107f
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0043
            r0 = r4
            if (r0 == 0) goto L_0x0026
            r0 = r4
            java.util.List r0 = r0.getCurrentList()
            r4 = r0
            goto L_0x0028
        L_0x0026:
            r0 = 0
            r4 = r0
        L_0x0028:
            r0 = r4
            if (r0 == 0) goto L_0x003d
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0038
            goto L_0x003d
        L_0x0038:
            r0 = 0
            r5 = r0
            goto L_0x003f
        L_0x003d:
            r0 = 1
            r5 = r0
        L_0x003f:
            r0 = r5
            if (r0 == 0) goto L_0x004c
        L_0x0043:
            r0 = r3
            j.a.b0.q.g r0 = r0.f11109h
            r0.mo10105a()
        L_0x004c:
            r0 = r3
            j.a.b0.q.g r0 = r0.f11109h
            r0.mo10048t()
            r0 = r3
            j.a.b0.q.g r0 = r0.f11109h
            r0.mo10071f()
            r0 = r3
            j.a.b0.q.g r0 = r0.f11109h
            r0.mo10078d()
            r0 = r3
            j.a.b0.q.g r0 = r0.f11109h
            r0.mo10067h()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.main.calllog.CallLogsFragment.mo1419K():void");
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: O */
    public int mo1418O() {
        return R$layout.call_logs_fragment;
    }

    /* renamed from: V */
    public final boolean m27834V() {
        return false;
    }

    /* renamed from: W */
    public final void m27833W() {
        Subscription subscription = this.f11110i;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        this.f11110i = C14037j3.m2731a().mo2703a((Action1) new C4600f());
    }

    /* renamed from: X */
    public final void m27832X() {
        Subscription subscription = this.f11110i;
        if (subscription != null) {
            if (!(!subscription.isUnsubscribed())) {
                subscription = null;
            }
            if (subscription != null) {
                subscription.unsubscribe();
            }
        }
    }

    /* renamed from: Y */
    public final void m27831Y() {
        gogolook.support.p080v7.widget.extension.RecyclerView recyclerView = (gogolook.support.p080v7.widget.extension.RecyclerView) mo1408c(R$id.rvCallLogs);
        RecyclerView.LayoutManager layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
        RecyclerView.LayoutManager layoutManager2 = layoutManager;
        if (!(layoutManager instanceof LinearLayoutManager)) {
            layoutManager2 = null;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager2;
        if (linearLayoutManager != null) {
            int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            this.f11109h.mo10104a(findFirstVisibleItemPosition, findLastVisibleItemPosition);
            C11202r.f25150b.m10031b(findLastVisibleItemPosition);
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11165h
    /* renamed from: a */
    public Context mo10160a() {
        Context activity = getActivity();
        if (activity == null) {
            activity = MyApplication.m29013o();
            C15149k.m383a((Object) activity, "MyApplication.getGlobalContext()");
        }
        return activity;
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: a */
    public void mo1412a(final View view, Bundle bundle) {
        C15149k.m377b(view, "inflatedView");
        final C11175m mVar = new C11175m(this.f11109h, new C11173k(), this);
        final gogolook.support.p080v7.widget.extension.RecyclerView recyclerView = (gogolook.support.p080v7.widget.extension.RecyclerView) view.findViewById(R$id.rvCallLogs);
        if (recyclerView != null) {
            final Context context = recyclerView.getContext();
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView, context, mVar, this, view) { // from class: gogolook.callgogolook2.main.calllog.CallLogsFragment$onAsyncInflationFinished$$inlined$also$lambda$1

                /* renamed from: a */
                public final /* synthetic */ CallLogsFragment f11124a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(context);
                    this.f11124a = this;
                }

                @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public void onLayoutCompleted(RecyclerView.State state) {
                    int i;
                    super.onLayoutCompleted(state);
                    i = this.f11124a.f11108g;
                    if (i == 0) {
                        this.f11124a.m27831Y();
                    }
                }
            });
            recyclerView.setItemViewCacheSize(20);
            recyclerView.setDrawingCacheEnabled(true);
            recyclerView.setDrawingCacheQuality(1048576);
            recyclerView.setAdapter(mVar);
            registerForContextMenu(recyclerView);
            recyclerView.addOnScrollListener(new C4596b(mVar, this, view));
            recyclerView.addItemDecoration(new C11130i());
        }
        if (C13878a3.m3231b() && C13878a3.m3252J()) {
            C14289m.m1868c(0, 0);
        }
        this.f11107f = mVar;
        ((FloatingActionButton) mo1408c(R$id.fab)).setOnClickListener(new View$OnClickListenerC4597c());
    }

    @Override // p459j.p460a.p463b0.p464q.C11175m.AbstractC11177b
    /* renamed from: a */
    public void mo10130a(AdUnit adUnit, AbstractC6207d dVar) {
        C15149k.m377b(adUnit, "adUnit");
        C15149k.m377b(dVar, "adObject");
        this.f11109h.mo10089b(adUnit, dVar);
    }

    @Override // p459j.p460a.p463b0.p464q.C11175m.AbstractC11177b
    /* renamed from: a */
    public void mo10129a(LogsGroupRealmObject logsGroupRealmObject) {
        if (logsGroupRealmObject != null) {
            this.f11109h.mo10082c(logsGroupRealmObject);
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11165h
    /* renamed from: a */
    public void mo10159a(AbstractC6207d dVar) {
        C15149k.m377b(dVar, "adObject");
        if (((CardView) mo1408c(R$id.cvAdContainer)) != null) {
            CardView cardView = (CardView) mo1408c(R$id.cvAdContainer);
            C15149k.m383a((Object) cardView, "cvAdContainer");
            if (cardView.getChildCount() <= 0) {
                dVar.mo23569a((AbstractC6207d.AbstractC6208a) new C4604j(dVar));
                TranslateAnimation a = AdRendererUtils.INSTANCE.m28853a();
                dVar.mo23572a(getContext(), (CardView) mo1408c(R$id.cvAdContainer));
                CardView cardView2 = (CardView) mo1408c(R$id.cvAdContainer);
                C15149k.m383a((Object) cardView2, "cvAdContainer");
                cardView2.setAnimation(a);
                FrameLayout frameLayout = (FrameLayout) mo1408c(R$id.fl_logs_container);
                C15149k.m383a((Object) frameLayout, "fl_logs_container");
                frameLayout.setAnimation(a);
                this.f11109h.mo10084b(true);
            }
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11165h
    /* renamed from: a */
    public void mo10158a(C13797d dVar) {
        C15149k.m377b(dVar, "notice");
        View c = mo1408c(R$id.lIapNotice);
        if (c != null) {
            int i = 0;
            c.setVisibility(0);
            c.setBackgroundColor(C14167t.m2315a(dVar.m3437a()));
            ((ImageView) c.findViewById(R$id.ivIcon)).setImageResource(dVar.m3435c());
            TextView textView = (TextView) c.findViewById(R$id.tvTitle);
            C15149k.m383a((Object) textView, "tvTitle");
            textView.setText(dVar.m3432f());
            TextView textView2 = (TextView) c.findViewById(R$id.tvContent);
            C15149k.m383a((Object) textView2, "tvContent");
            textView2.setText(dVar.m3436b());
            TextView textView3 = (TextView) c.findViewById(R$id.tvRightCta);
            C15149k.m383a((Object) textView3, "tvRightCta");
            textView3.setText(dVar.m3433e());
            String d = dVar.m3434d();
            if (d != null) {
                TextView textView4 = (TextView) c.findViewById(R$id.tvLeftCta);
                C15149k.m383a((Object) textView4, "tvLeftCta");
                textView4.setText(d);
                TextView textView5 = (TextView) c.findViewById(R$id.tvLeftCta);
                C15149k.m383a((Object) textView5, "tvLeftCta");
                textView5.setVisibility(0);
            } else {
                ((TextView) c.findViewById(R$id.tvLeftCta)).setVisibility(8);
            }
            ImageView imageView = (ImageView) c.findViewById(R$id.ivClose);
            C15149k.m383a((Object) imageView, "ivClose");
            if (!dVar.m3430h()) {
                i = 8;
            }
            imageView.setVisibility(i);
            ((ImageView) c.findViewById(R$id.ivClose)).setOnClickListener(new View$OnClickListenerC4601g(dVar));
            ((TextView) c.findViewById(R$id.tvRightCta)).setOnClickListener(new View$OnClickListenerC4602h(dVar));
            ((TextView) c.findViewById(R$id.tvLeftCta)).setOnClickListener(new View$OnClickListenerC4603i(dVar));
        }
        this.f11109h.mo10091a(true);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11165h
    /* renamed from: b */
    public void mo10157b() {
        ((gogolook.support.p080v7.widget.extension.RecyclerView) mo1408c(R$id.rvCallLogs)).showContextMenu();
    }

    @Override // p459j.p460a.p463b0.p464q.C11175m.AbstractC11177b
    /* renamed from: b */
    public void mo10128b(AdUnit adUnit, AbstractC6207d dVar) {
        C15149k.m377b(adUnit, "adUnit");
        C15149k.m377b(dVar, "adObject");
        this.f11109h.mo10100a(adUnit, dVar);
    }

    @Override // p459j.p460a.p463b0.p464q.C11175m.AbstractC11177b
    /* renamed from: b */
    public void mo10127b(LogsGroupRealmObject logsGroupRealmObject) {
        if (logsGroupRealmObject != null) {
            this.f11109h.mo10088b(logsGroupRealmObject);
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: c */
    public View mo1408c(int i) {
        if (this.f11112k == null) {
            this.f11112k = new HashMap();
        }
        View view = (View) this.f11112k.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f11112k.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // p459j.p460a.p463b0.p464q.C11175m.AbstractC11177b
    /* renamed from: c */
    public void mo10126c(LogsGroupRealmObject logsGroupRealmObject) {
        if (logsGroupRealmObject != null) {
            this.f11109h.mo10099a(logsGroupRealmObject);
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11165h
    /* renamed from: c */
    public boolean mo10156c() {
        return C14191v.m2262a((Activity) getActivity());
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: g */
    public void mo3016g() {
        C11202r.f25150b.m10030c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
        if (r3 != null) goto L_0x004a;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m27824k(java.util.List<? extends p459j.p460a.p511h.AbstractC12391a> r3) {
        /*
            r2 = this;
            r0 = r3
            boolean r0 = r0.isEmpty()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x004a
            r0 = r3
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x0015:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0044
            r0 = r6
            java.lang.Object r0 = r0.next()
            r3 = r0
            r0 = r3
            j.a.h.a r0 = (p459j.p460a.p511h.AbstractC12391a) r0
            int r0 = r0.getViewType()
            if (r0 != 0) goto L_0x0039
            r0 = 1
            r7 = r0
            goto L_0x003c
        L_0x0039:
            r0 = 0
            r7 = r0
        L_0x003c:
            r0 = r7
            if (r0 == 0) goto L_0x0015
            goto L_0x0046
        L_0x0044:
            r0 = 0
            r3 = r0
        L_0x0046:
            r0 = r3
            if (r0 == 0) goto L_0x004c
        L_0x004a:
            r0 = 1
            r5 = r0
        L_0x004c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.main.calllog.CallLogsFragment.m27824k(java.util.List):boolean");
    }

    /* renamed from: l */
    public final void m27823l(List<? extends AbstractC12391a> list) {
        boolean z;
        C11175m mVar = this.f11107f;
        if (mVar != null) {
            List<AbstractC12391a> currentList = mVar.getCurrentList();
            C15149k.m383a((Object) currentList, "it.currentList");
            z = m27824k(currentList);
        } else {
            z = true;
        }
        boolean k = m27824k(list);
        if (z || k) {
            C14037j3.m2731a().mo2704a(new C14014g1(EnumC11144p.CALLLOG, true ^ k));
        }
        C11175m mVar2 = this.f11107f;
        if (mVar2 != null) {
            mVar2.submitList(list);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 200) {
            if (i2 != -1 || TextUtils.isEmpty(this.f11109h.mo10055n())) {
                C14289m.m1897a((Integer) null, (Integer) null, (Integer) 3, (Integer) null, (Integer) 0, (Integer) null);
                return;
            }
            C14356f.m1480b(this.f11109h.mo10055n());
            C14289m.m1897a((Integer) null, (Integer) null, (Integer) 3, (Integer) null, (Integer) 1, (Integer) null);
        } else if (i == 5566) {
            this.f11109h.mo10078d();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @TargetApi(19)
    public boolean onContextItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        C11175m mVar = this.f11107f;
        if (mVar == null) {
            return false;
        }
        if (mVar == null) {
            C15149k.m378b();
            throw null;
        } else if (mVar.getItemCount() <= 0 || !getUserVisibleHint()) {
            return false;
        } else {
            switch (menuItem.getItemId()) {
                case R$id.menu_add_to_wish /* 2131362819 */:
                    C14299q.m1665w();
                    this.f11109h.mo10049s();
                    return true;
                case R$id.menu_block /* 2131362820 */:
                    this.f11109h.mo10083c();
                    return true;
                case R$id.menu_call /* 2131362830 */:
                    this.f11109h.mo10046v();
                    return true;
                case R$id.menu_delete /* 2131362843 */:
                    this.f11109h.mo10053o();
                    return true;
                case R$id.menu_message /* 2131362858 */:
                    this.f11109h.mo10061k();
                    return true;
                case R$id.menu_report /* 2131362868 */:
                    this.f11109h.mo10074e();
                    return true;
                case R$id.menu_save /* 2131362871 */:
                    this.f11109h.mo10090b();
                    return true;
                case R$id.menu_tele_report /* 2131362886 */:
                    this.f11109h.mo10050r();
                    return true;
                default:
                    C14289m.m1897a((Integer) null, (Integer) null, (Integer) 0, (Integer) null, (Integer) null, (Integer) null);
                    return false;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        C14216x2.m2208a("LogsF:onCreate:+");
        super.onCreate(bundle);
        AbstractC11164g gVar = this.f11109h;
        FragmentActivity activity = getActivity();
        if (activity != null) {
            C15149k.m383a((Object) activity, "activity!!");
            gVar.mo10103a(activity.getIntent());
            m27833W();
            C14216x2.m2208a("LogsF:onCreate:-");
            return;
        }
        C15149k.m378b();
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x016c  */
    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreateContextMenu(android.view.ContextMenu r8, android.view.View r9, android.view.ContextMenu.ContextMenuInfo r10) {
        /*
            Method dump skipped, instructions count: 537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.main.calllog.CallLogsFragment.onCreateContextMenu(android.view.ContextMenu, android.view.View, android.view.ContextMenu$ContextMenuInfo):void");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        m27832X();
        super.onDestroy();
        mo10161G();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo1420J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        C13929c cVar = this.f11111j;
        if (cVar != null) {
            cVar.m3029c(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        C11175m mVar = this.f11107f;
        if (mVar != null) {
            List<AbstractC12391a> currentList = mVar.getCurrentList();
            C15149k.m383a((Object) currentList, "it.currentList");
            if (!(!currentList.isEmpty())) {
                mVar = null;
            }
            if (mVar != null) {
                mVar.notifyDataSetChanged();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f11109h.mo10069g();
        this.f11109h.onStop();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        LiveData<List<AbstractC12391a>> y = this.f11109h.mo10043y();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner, "viewLifecycleOwner");
        y.observe(viewLifecycleOwner, new C4598d());
        LiveData<C14978j<Integer, Integer>> l = this.f11109h.mo10059l();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner2, "viewLifecycleOwner");
        l.observe(viewLifecycleOwner2, new C4599e());
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: r */
    public void mo3015r() {
        C13929c cVar = this.f11111j;
        if (cVar != null) {
            C14289m.m1892a("calllog", cVar.m3022b());
            C11202r.f25150b.m10033a(cVar.m3022b());
        }
        C11202r.f25150b.m10034a();
        this.f11109h.mo10052p();
        C13755l.m3511b();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, p459j.p460a.p518j.AbstractC12478d, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        C14216x2.m2208a("LogsF:setUserVisibleHint:" + z);
        if (!z) {
            this.f11109h.mo10069g();
        }
        super.setUserVisibleHint(z);
        C13929c cVar = this.f11111j;
        if (cVar != null) {
            cVar.m3028d(z);
        }
    }

    @Override // p459j.p460a.p463b0.p464q.C11175m.AbstractC11177b
    /* renamed from: x */
    public void mo10125x() {
        C14289m.m1868c(0, 1);
        SuggestedSettingsActivity.m26072a(getContext(), 2, this);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11165h
    /* renamed from: y */
    public Fragment mo10155y() {
        return this;
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11165h
    /* renamed from: z */
    public void mo10154z() {
        View c = mo1408c(R$id.lIapNotice);
        if (c != null) {
            c.setVisibility(8);
        }
        this.f11109h.mo10091a(false);
    }
}
