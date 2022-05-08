package p459j.p460a.p463b0.p466s;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.app.NotificationCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import gogolook.callgogolook2.R$color;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$integer;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$style;
import gogolook.callgogolook2.main.dialer.DialpadKeyButton;
import gogolook.callgogolook2.main.dialer.DialpadView;
import io.realm.RealmObject;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p325c.p337n.C9510c;
import p459j.p460a.p463b0.p466s.C11293r;
import p459j.p460a.p518j.AbstractC12476c;
import p459j.p460a.p531k0.C12860e;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p582w0.C13876a1;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14020h1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14078m0;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14148s0;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p585b5.C13929c;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p594z4.C14356f;
import p459j.p460a.p613z0.DialogC14644l;
import p626l.C14986p;
import p626l.p631e0.C14966w;
import p626l.p641z.p643d.C15138d0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15161w;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0015\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\u0018�� t2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001tB\u0005¢\u0006\u0002\u0010\u0006J\b\u00108\u001a\u000209H\u0002J\b\u0010:\u001a\u000209H\u0014J\u000e\u0010;\u001a\u0002092\u0006\u0010<\u001a\u00020#J\b\u0010=\u001a\u00020\bH\u0014J\b\u0010>\u001a\u00020\bH\u0016J\b\u0010?\u001a\u00020\bH\u0014J\b\u0010@\u001a\u00020AH\u0016J\b\u0010B\u001a\u00020CH\u0016J\b\u0010D\u001a\u000209H\u0002J\u0006\u0010E\u001a\u000209J\b\u0010F\u001a\u000209H\u0002J\b\u0010G\u001a\u00020\u000fH\u0002J\u0010\u0010H\u001a\u0002092\u0006\u0010I\u001a\u00020\bH\u0002J\"\u0010J\u001a\u0002092\u0006\u0010K\u001a\u00020\b2\u0006\u0010L\u001a\u00020\b2\b\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u001a\u0010O\u001a\u0002092\u0006\u0010P\u001a\u00020\r2\b\u0010Q\u001a\u0004\u0018\u00010RH\u0014J\u0010\u0010S\u001a\u00020\u000f2\u0006\u0010T\u001a\u00020UH\u0017J\u0012\u0010V\u001a\u0002092\b\u0010Q\u001a\u0004\u0018\u00010RH\u0016J\"\u0010W\u001a\u0002092\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020\r2\b\u0010[\u001a\u0004\u0018\u00010\\H\u0016J\u0012\u0010]\u001a\u00020\u000f2\b\u0010Z\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010^\u001a\u000209H\u0016J\u001a\u0010_\u001a\u0002092\b\u0010`\u001a\u0004\u0018\u00010\r2\u0006\u0010a\u001a\u00020\u000fH\u0016J\b\u0010b\u001a\u000209H\u0016J\b\u0010c\u001a\u000209H\u0016J\b\u0010d\u001a\u000209H\u0016J\u001a\u0010e\u001a\u0002092\u0006\u0010`\u001a\u00020\r2\b\u0010Q\u001a\u0004\u0018\u00010RH\u0016J\b\u0010f\u001a\u000209H\u0002J\b\u0010g\u001a\u000209H\u0002J\u0016\u0010h\u001a\u0002092\f\u0010i\u001a\b\u0012\u0004\u0012\u00020k0jH\u0016J\u0010\u0010l\u001a\u0002092\u0006\u0010m\u001a\u00020#H\u0002J\b\u0010n\u001a\u000209H\u0016J\b\u0010o\u001a\u000209H\u0002J\u0010\u0010p\u001a\u0002092\u0006\u0010q\u001a\u00020\u000fH\u0002J\b\u0010r\u001a\u000209H\u0002J\b\u0010s\u001a\u000209H\u0002R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0014\u0010(\u001a\b\u0012\u0004\u0012\u00020\r0)X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010,\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010-\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e¢\u0006\u0002\n��R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e¢\u0006\u0002\n��R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e¢\u0006\u0002\n��¨\u0006u"}, m815d2 = {"Lgogolook/callgogolook2/main/dialer/DialerFragment;", "Lgogolook/callgogolook2/app/WhoscallDeferredFragment;", "Lgogolook/callgogolook2/main/dialer/DialerContract$View;", "Lgogolook/callgogolook2/main/dialer/DialpadKeyButton$OnPressedListener;", "Landroid/view/View$OnLongClickListener;", "Lgogolook/callgogolook2/util/debug/TimeProbe$ProbeListener;", "()V", "animDuration", "", "Ljava/lang/Integer;", "appCompatCheckAttrs", "", "callButton", "Landroid/view/View;", "clearDigitsOnPause", "", "closeButton", "dialPadAnimator", "Landroid/animation/ValueAnimator;", "dialPadView", "Lgogolook/callgogolook2/main/dialer/DialpadView;", "dialerConstraint", "Landroidx/constraintlayout/widget/ConstraintLayout;", "dialerPageRecyclerViewAdapter", "Lgogolook/callgogolook2/main/dialer/DialerPageRecyclerViewAdapter;", "dialerPresenter", "Lgogolook/callgogolook2/main/dialer/DialerPresenter;", "etDigits", "Landroid/widget/EditText;", "exit", "fab", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "firstLaunch", "isAnimating", "numberNeedFill", "", "getNumberNeedFill", "()Ljava/lang/String;", "setNumberNeedFill", "(Ljava/lang/String;)V", "pressedDialpadKeys", "Ljava/util/HashSet;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "smsButton", "startedFromNewIntent", "getStartedFromNewIntent", "()Z", "setStartedFromNewIntent", "(Z)V", "subscription", "Lrx/Subscription;", "timeProbe", "Lgogolook/callgogolook2/util/debug/PageVisibilityTimeProbe;", "toast", "Landroid/widget/Toast;", "checkThemeAppCompat", "", "executeDeferredAction", "fillDigitsIfNecessary", "number", "getDefaultBackgroundResource", "getDialerQueryMode", "getLayoutResource", "getViewContext", "Landroid/content/Context;", "getViewFragment", "Landroidx/fragment/app/Fragment;", "handleDialButtonClickWithEmptyDigits", "hideDialPad", "initAnimationParams", "isDigitsEmpty", "keyPressed", "keyCode", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onAsyncInflationFinished", "inflatedView", "savedInstanceState", "Landroid/os/Bundle;", "onContextItemSelected", "item", "Landroid/view/MenuItem;", "onCreate", "onCreateContextMenu", SupportMenuInflater.XML_MENU, "Landroid/view/ContextMenu;", "v", "menuInfo", "Landroid/view/ContextMenu$ContextMenuInfo;", "onLongClick", "onPause", "onPressed", "view", "pressed", "onProbeStarted", "onProbeStopped", "onStop", "onViewCreated", "registerBus", "removePreviousDigitIfPossible", "setDialerLogs", "dialerLogs", "", "Lio/realm/RealmObject;", "setFormattedDigits", "dialString", "showContextMenu", "showDialPad", "startQuery", "refresh", "unregisterBus", "updateDeleteButtonEnabledState", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.s.m */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/m.class */
public final class View$OnLongClickListenerC11269m extends AbstractC12476c implements AbstractC11267k, DialpadKeyButton.AbstractC4608b, View.OnLongClickListener, C13930d.AbstractC13931a {

    /* renamed from: D */
    public static final String f25293D = View$OnLongClickListenerC11269m.class.getSimpleName();

    /* renamed from: C */
    public HashMap f25296C;

    /* renamed from: f */
    public C11293r f25297f;

    /* renamed from: g */
    public Integer f25298g;

    /* renamed from: h */
    public ValueAnimator f25299h;

    /* renamed from: i */
    public boolean f25300i;

    /* renamed from: j */
    public Toast f25301j;

    /* renamed from: k */
    public boolean f25302k;

    /* renamed from: m */
    public DialpadView f25304m;

    /* renamed from: n */
    public View f25305n;

    /* renamed from: o */
    public View f25306o;

    /* renamed from: p */
    public View f25307p;

    /* renamed from: q */
    public ConstraintLayout f25308q;

    /* renamed from: r */
    public EditText f25309r;

    /* renamed from: s */
    public RecyclerView f25310s;

    /* renamed from: t */
    public FloatingActionButton f25311t;

    /* renamed from: u */
    public boolean f25312u;

    /* renamed from: w */
    public Subscription f25314w;

    /* renamed from: x */
    public boolean f25315x;

    /* renamed from: y */
    public boolean f25316y;

    /* renamed from: z */
    public String f25317z;

    /* renamed from: l */
    public C11302t f25303l = new C11302t(this);

    /* renamed from: v */
    public final HashSet<View> f25313v = new HashSet<>(12);

    /* renamed from: A */
    public final int[] f25294A = {2130968753};

    /* renamed from: B */
    public C13929c f25295B = new C13929c(this, false);

    /* renamed from: j.a.b0.s.m$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$a.class */
    public static final class C11270a {
        public C11270a() {
        }

        public /* synthetic */ C11270a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.b0.s.m$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$b.class */
    public static final class C11271b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: b */
        public ViewGroup.MarginLayoutParams f25319b;

        /* renamed from: e */
        public final /* synthetic */ int f25322e;

        /* renamed from: a */
        public int f25318a = -1;

        /* renamed from: c */
        public ConstraintSet f25320c = new ConstraintSet();

        public C11271b(int i) {
            this.f25322e = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            C15149k.m377b(valueAnimator, "valueAnimator");
            if (this.f25319b == null) {
                RecyclerView recyclerView = View$OnLongClickListenerC11269m.this.f25310s;
                ViewGroup.LayoutParams layoutParams = recyclerView != null ? recyclerView.getLayoutParams() : null;
                if (layoutParams != null) {
                    this.f25319b = (ViewGroup.MarginLayoutParams) layoutParams;
                } else {
                    throw new C14986p("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                }
            }
            int i = 0;
            if (this.f25318a <= 0) {
                DialpadView dialpadView = View$OnLongClickListenerC11269m.this.f25304m;
                this.f25318a = dialpadView != null ? dialpadView.getMeasuredHeight() : 0;
            }
            Object animatedValue = valueAnimator.getAnimatedValue();
            if (animatedValue != null) {
                float min = Math.min(1.0f, ((Float) animatedValue).floatValue() * 2);
                int i2 = (int) ((this.f25318a + this.f25322e) * min);
                DialpadView dialpadView2 = View$OnLongClickListenerC11269m.this.f25304m;
                if (dialpadView2 != null) {
                    dialpadView2.setTranslationY(i2);
                }
                DialpadView dialpadView3 = View$OnLongClickListenerC11269m.this.f25304m;
                if (dialpadView3 != null) {
                    if (min >= 1) {
                        i = 8;
                    }
                    dialpadView3.setVisibility(i);
                }
                if (View$OnLongClickListenerC11269m.this.f25308q != null) {
                    this.f25320c.clone(View$OnLongClickListenerC11269m.this.f25308q);
                    return;
                }
                return;
            }
            throw new C14986p("null cannot be cast to non-null type kotlin.Float");
        }
    }

    /* renamed from: j.a.b0.s.m$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$c.class */
    public static final class C11272c implements Animator.AnimatorListener {
        public C11272c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            C15149k.m377b(animator, "animator");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C15149k.m377b(animator, "animator");
            if (View$OnLongClickListenerC11269m.this.f25302k && View$OnLongClickListenerC11269m.this.getActivity() != null) {
                FragmentActivity activity = View$OnLongClickListenerC11269m.this.getActivity();
                if (activity != null) {
                    C15149k.m383a((Object) activity, "activity!!");
                    activity.getSupportFragmentManager().popBackStackImmediate();
                } else {
                    C15149k.m378b();
                    throw null;
                }
            }
            View$OnLongClickListenerC11269m.this.f25300i = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            C15149k.m377b(animator, "animator");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C15149k.m377b(animator, "animator");
            View$OnLongClickListenerC11269m.this.f25300i = true;
            Toast toast = View$OnLongClickListenerC11269m.this.f25301j;
            if (toast != null) {
                toast.cancel();
            }
            View$OnLongClickListenerC11269m.this.f25301j = null;
        }
    }

    /* renamed from: j.a.b0.s.m$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$d.class */
    public static final class C11273d implements TextWatcher {

        /* renamed from: a */
        public final /* synthetic */ DialpadView f25324a;

        /* renamed from: b */
        public final /* synthetic */ View$OnLongClickListenerC11269m f25325b;

        public C11273d(DialpadView dialpadView, View$OnLongClickListenerC11269m mVar) {
            this.f25324a = dialpadView;
            this.f25325b = mVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (C14108o4.m2501a(this.f25324a.getContext(), String.valueOf(editable))) {
                this.f25324a.m27801b().setText("");
                return;
            }
            this.f25325b.m9897e(false);
            this.f25325b.m9896e0();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: j.a.b0.s.m$e */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$e.class */
    public static final class View$OnClickListenerC11274e implements View.OnClickListener {
        public View$OnClickListenerC11274e() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C15149k.m383a((Object) view, "it");
            int id = view.getId();
            if (id == 2131362351) {
                FragmentActivity activity = View$OnLongClickListenerC11269m.this.getActivity();
                if (activity != null) {
                    DialpadView dialpadView = View$OnLongClickListenerC11269m.this.f25304m;
                    String str = null;
                    if (dialpadView != null) {
                        EditText b = dialpadView.m27801b();
                        str = null;
                        if (b != null) {
                            Editable text = b.getText();
                            str = null;
                            if (text != null) {
                                str = text.toString();
                            }
                        }
                    }
                    C12860e.m5132a((Context) activity, C14108o4.m2474l(str), (String) null, false, View$OnLongClickListenerC11269m.f25293D, (HandlerC12947l) null);
                    return;
                }
                C15149k.m378b();
                throw null;
            } else if (id == 2131362354) {
                View$OnLongClickListenerC11269m.this.m9903d(67);
            }
        }
    }

    /* renamed from: j.a.b0.s.m$f */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$f.class */
    public static final class View$OnLongClickListenerC11275f implements View.OnLongClickListener {
        public View$OnLongClickListenerC11275f() {
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            EditText b;
            Editable text;
            C15149k.m383a((Object) view, "it");
            if (view.getId() != 2131362354) {
                return false;
            }
            View$OnLongClickListenerC11269m.this.m9903d(67);
            DialpadView dialpadView = View$OnLongClickListenerC11269m.this.f25304m;
            if (dialpadView == null || (b = dialpadView.m27801b()) == null || (text = b.getText()) == null) {
                return true;
            }
            text.clear();
            return true;
        }
    }

    /* renamed from: j.a.b0.s.m$g */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$g.class */
    public static final class View$OnClickListenerC11276g implements View.OnClickListener {
        public View$OnClickListenerC11276g() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
            if (r7 != null) goto L_0x0062;
         */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onClick(android.view.View r7) {
            /*
                r6 = this;
                r0 = r6
                j.a.b0.s.m r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.this
                gogolook.callgogolook2.main.dialer.DialpadView r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.m9915a(r0)
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x009e
                r0 = r7
                int r0 = r0.getVisibility()
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = r8
                if (r0 != 0) goto L_0x001c
                r0 = 1
                r8 = r0
                goto L_0x001e
            L_0x001c:
                r0 = 0
                r8 = r0
            L_0x001e:
                r0 = r8
                if (r0 == 0) goto L_0x0025
                goto L_0x0027
            L_0x0025:
                r0 = 0
                r7 = r0
            L_0x0027:
                r0 = r7
                if (r0 == 0) goto L_0x009e
                r0 = r6
                j.a.b0.s.m r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.this
                j.a.b0.s.t r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.m9906c(r0)
                r0.m9807y()
                r0 = r6
                j.a.b0.s.m r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.this
                gogolook.callgogolook2.main.dialer.DialpadView r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.m9915a(r0)
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x005f
                r0 = r7
                android.widget.EditText r0 = r0.m27801b()
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x005f
                r0 = r7
                android.text.Editable r0 = r0.getText()
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x005f
                r0 = r7
                java.lang.String r0 = r0.toString()
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x005f
                goto L_0x0062
            L_0x005f:
                java.lang.String r0 = ""
                r7 = r0
            L_0x0062:
                r0 = r9
                r8 = r0
                r0 = r7
                int r0 = r0.length()
                if (r0 != 0) goto L_0x006f
                r0 = 1
                r8 = r0
            L_0x006f:
                r0 = r8
                if (r0 == 0) goto L_0x007d
                r0 = r6
                j.a.b0.s.m r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.this
                p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.m9892g(r0)
                goto L_0x009e
            L_0x007d:
                r0 = r6
                j.a.b0.s.m r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.this
                j.a.b0.s.t r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.m9906c(r0)
                r1 = r7
                r2 = 35
                r0.m9841a(r1, r2)
                r0 = 0
                r1 = 1
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                r2 = 0
                r3 = 0
                java.lang.String r4 = "input"
                p459j.p460a.p582w0.p590x4.C14289m.m1895a(r0, r1, r2, r3, r4)
                r0 = r6
                j.a.b0.s.m r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.this
                r1 = 1
                p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.m9908b(r0, r1)
            L_0x009e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.View$OnClickListenerC11276g.onClick(android.view.View):void");
        }
    }

    /* renamed from: j.a.b0.s.m$h */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$h.class */
    public static final class View$OnClickListenerC11277h implements View.OnClickListener {
        public View$OnClickListenerC11277h() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
            if (r7 != null) goto L_0x0054;
         */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onClick(android.view.View r7) {
            /*
                r6 = this;
                r0 = r6
                j.a.b0.s.m r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.this
                gogolook.callgogolook2.main.dialer.DialpadView r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.m9915a(r0)
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x0074
                r0 = r7
                int r0 = r0.getVisibility()
                if (r0 != 0) goto L_0x0018
                r0 = 1
                r8 = r0
                goto L_0x001a
            L_0x0018:
                r0 = 0
                r8 = r0
            L_0x001a:
                r0 = r8
                if (r0 == 0) goto L_0x0021
                goto L_0x0023
            L_0x0021:
                r0 = 0
                r7 = r0
            L_0x0023:
                r0 = r7
                if (r0 == 0) goto L_0x0074
                r0 = r6
                j.a.b0.s.m r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.this
                gogolook.callgogolook2.main.dialer.DialpadView r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.m9915a(r0)
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x0051
                r0 = r7
                android.widget.EditText r0 = r0.m27801b()
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x0051
                r0 = r7
                android.text.Editable r0 = r0.getText()
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x0051
                r0 = r7
                java.lang.String r0 = r0.toString()
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x0051
                goto L_0x0054
            L_0x0051:
                java.lang.String r0 = ""
                r7 = r0
            L_0x0054:
                r0 = r6
                j.a.b0.s.m r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.this
                j.a.b0.s.t r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.m9906c(r0)
                r1 = r7
                r2 = 35
                r0.m9833b(r1, r2)
                r0 = r6
                j.a.b0.s.m r0 = p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.this
                r1 = 1
                p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.m9908b(r0, r1)
                r0 = 0
                r1 = 2
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                r2 = 0
                r3 = 0
                r4 = 0
                p459j.p460a.p582w0.p590x4.C14289m.m1895a(r0, r1, r2, r3, r4)
            L_0x0074:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.View$OnClickListenerC11277h.onClick(android.view.View):void");
        }
    }

    /* renamed from: j.a.b0.s.m$i */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$i.class */
    public static final class View$OnClickListenerC11278i implements View.OnClickListener {
        public View$OnClickListenerC11278i() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            FragmentActivity activity = View$OnLongClickListenerC11269m.this.getActivity();
            if (activity != null) {
                activity.onBackPressed();
            }
        }
    }

    /* renamed from: j.a.b0.s.m$j */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$j.class */
    public static final class C11279j extends RecyclerView.OnScrollListener {
        public C11279j() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            DialpadView dialpadView;
            C15149k.m377b(recyclerView, "recyclerView");
            if (View$OnLongClickListenerC11269m.this.f25304m != null && i != 0 && (dialpadView = View$OnLongClickListenerC11269m.this.f25304m) != null && dialpadView.getVisibility() == 0) {
                View$OnLongClickListenerC11269m.this.m9920X();
            }
        }
    }

    /* renamed from: j.a.b0.s.m$k */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$k.class */
    public static final class View$OnClickListenerC11280k implements View.OnClickListener {
        public View$OnClickListenerC11280k() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            View$OnLongClickListenerC11269m.this.m9904c0();
        }
    }

    /* renamed from: j.a.b0.s.m$l */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$l.class */
    public static final class View$OnTouchListenerC11281l implements View.OnTouchListener {

        /* renamed from: a */
        public final /* synthetic */ C15161w f25333a;

        /* renamed from: b */
        public final /* synthetic */ C15161w f25334b;

        public View$OnTouchListenerC11281l(C15161w wVar, C15161w wVar2) {
            this.f25333a = wVar;
            this.f25334b = wVar2;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            C15149k.m383a((Object) motionEvent, NotificationCompat.CATEGORY_EVENT);
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                this.f25333a.f33149a = motionEvent.getX();
                this.f25334b.f33149a = motionEvent.getY();
                return false;
            } else if (action != 1) {
                return false;
            } else {
                float x = motionEvent.getX() - this.f25333a.f33149a;
                float y = motionEvent.getY() - this.f25334b.f33149a;
                return x != 0.0f && y > ((float) 0) && Math.abs(y) / Math.abs(x) > ((float) 3);
            }
        }
    }

    /* renamed from: j.a.b0.s.m$m */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$m.class */
    public static final class C11282m implements C11293r.AbstractC11295b {
        public C11282m() {
        }

        @Override // p459j.p460a.p463b0.p466s.C11293r.AbstractC11295b
        /* renamed from: a */
        public void mo9859a(RealmObject realmObject) {
            C15149k.m377b(realmObject, "realmObject");
            View$OnLongClickListenerC11269m.this.f25303l.m9837b(realmObject);
            C14289m.m1895a((Integer) null, (Integer) 1, (Integer) null, (String) null, View$OnLongClickListenerC11269m.this.m9918Z() ? "mostcalled" : "searchlist");
        }

        @Override // p459j.p460a.p463b0.p466s.C11293r.AbstractC11295b
        /* renamed from: b */
        public void mo9858b(RealmObject realmObject) {
            C15149k.m377b(realmObject, "realmObject");
            View$OnLongClickListenerC11269m.this.f25303l.m9847a(realmObject);
        }

        @Override // p459j.p460a.p463b0.p466s.C11293r.AbstractC11295b
        /* renamed from: c */
        public void mo9857c(RealmObject realmObject) {
            C15149k.m377b(realmObject, "realmObject");
            View$OnLongClickListenerC11269m.this.f25303l.m9831c(realmObject);
            C14289m.m1895a((Integer) null, (Integer) 3, (Integer) null, (String) null, (String) null);
        }
    }

    /* renamed from: j.a.b0.s.m$n */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$n.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC11283n implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f25336a;

        public ViewTreeObserver$OnGlobalLayoutListenerC11283n(View view) {
            this.f25336a = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f25336a.setVisibility(0);
            if (Build.VERSION.SDK_INT >= 16) {
                ViewTreeObserver viewTreeObserver = this.f25336a.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                    return;
                }
                return;
            }
            ViewTreeObserver viewTreeObserver2 = this.f25336a.getViewTreeObserver();
            if (viewTreeObserver2 != null) {
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        }
    }

    /* renamed from: j.a.b0.s.m$o */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$o.class */
    public static final class C11284o implements RecyclerView.OnChildAttachStateChangeListener {
        public C11284o() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(View view) {
            RecyclerView.LayoutManager layoutManager;
            C15149k.m377b(view, "view");
            RecyclerView recyclerView = View$OnLongClickListenerC11269m.this.f25310s;
            if (recyclerView != null && (layoutManager = recyclerView.getLayoutManager()) != null) {
                C15149k.m383a((Object) layoutManager, "it");
                int itemCount = layoutManager.getItemCount();
                if (itemCount == 0 || layoutManager.getPosition(view) == itemCount - 1) {
                    View$OnLongClickListenerC11269m.this.m6064T();
                    RecyclerView recyclerView2 = View$OnLongClickListenerC11269m.this.f25310s;
                    if (recyclerView2 != null) {
                        recyclerView2.setVisibility(0);
                    }
                    RecyclerView recyclerView3 = View$OnLongClickListenerC11269m.this.f25310s;
                    if (recyclerView3 != null) {
                        recyclerView3.removeOnChildAttachStateChangeListener(this);
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(View view) {
            C15149k.m377b(view, "view");
        }
    }

    /* renamed from: j.a.b0.s.m$p */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$p.class */
    public static final class View$OnClickListenerC11285p implements View.OnClickListener {

        /* renamed from: a */
        public static final View$OnClickListenerC11285p f25338a = new View$OnClickListenerC11285p();

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14289m.m1895a((Integer) null, (Integer) 4, (Integer) 0, (String) null, (String) null);
        }
    }

    /* renamed from: j.a.b0.s.m$q */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$q.class */
    public static final class DialogInterface$OnClickListenerC11286q implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DialogC14644l f25339a;

        public DialogInterface$OnClickListenerC11286q(DialogC14644l lVar) {
            this.f25339a = lVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            this.f25339a.dismiss();
        }
    }

    /* renamed from: j.a.b0.s.m$r */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/m$r.class */
    public static final class C11287r<T> implements Action1<Object> {
        public C11287r() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (obj instanceof C14148s0) {
                if (((C14148s0) obj).f31652b == 0) {
                    View$OnLongClickListenerC11269m.this.m9897e(true);
                }
            } else if ((obj instanceof C14020h1) || (obj instanceof C13876a1) || (obj instanceof C14078m0)) {
                View$OnLongClickListenerC11269m.this.m9897e(true);
            }
        }
    }

    static {
        new C11270a(null);
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: J */
    public void mo1420J() {
        HashMap hashMap = this.f25296C;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: K */
    public void mo1419K() {
        C13929c cVar = this.f25295B;
        if (cVar != null) {
            cVar.m3029c(isResumed());
        }
        m9911a0();
        m9897e(true);
        this.f25303l.m9811u();
        this.f25303l.m9815q();
        this.f25303l.m9816p();
        String str = this.f25317z;
        if (str != null) {
            m9898e(str);
        }
        EditText editText = this.f25309r;
        if (editText != null) {
            editText.requestFocus();
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: M */
    public int mo6070M() {
        return R$drawable.image_default_dialer;
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: O */
    public int mo1418O() {
        return C14217x3.m2203E() ? R$layout.dialer_zhuyin_fragment : R$layout.dialer_latin_fragment;
    }

    /* renamed from: V */
    public final void m9922V() {
        if (getActivity() != null) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(this.f25294A);
                boolean hasValue = obtainStyledAttributes.hasValue(0);
                obtainStyledAttributes.recycle();
                if (!hasValue) {
                    C9510c a = C9510c.m15023a();
                    a.m15020a("Launching activity : " + getActivity());
                    FragmentActivity activity2 = getActivity();
                    if (activity2 != null) {
                        activity2.setTheme(R$style.MainTheme);
                    } else {
                        C15149k.m378b();
                        throw null;
                    }
                }
            } else {
                C15149k.m378b();
                throw null;
            }
        }
    }

    /* renamed from: W */
    public final void m9921W() {
        if (!TextUtils.isEmpty(this.f25303l.m9829d())) {
            EditText editText = this.f25309r;
            if (editText != null) {
                editText.setText(this.f25303l.m9829d());
                Editable text = editText.getText();
                if (text != null) {
                    editText.setSelection(text.length());
                    return;
                }
                return;
            }
            return;
        }
        this.f25303l.m9848a(26, 150);
    }

    /* renamed from: X */
    public final void m9920X() {
        if (!this.f25300i) {
            C11293r rVar = this.f25297f;
            if (rVar == null || rVar.getItemCount() != 0) {
                RecyclerView recyclerView = this.f25310s;
                if (recyclerView != null) {
                    recyclerView.setAlpha(1.0f);
                }
                ValueAnimator valueAnimator = this.f25299h;
                if (valueAnimator != null) {
                    if (!(!valueAnimator.isRunning())) {
                        valueAnimator = null;
                    }
                    if (valueAnimator != null) {
                        valueAnimator.start();
                    }
                }
                FloatingActionButton floatingActionButton = this.f25311t;
                if (floatingActionButton != null) {
                    floatingActionButton.m31354j();
                }
            }
        }
    }

    /* renamed from: Y */
    public final void m9919Y() {
        Context context = getContext();
        if (context != null) {
            C15149k.m383a((Object) context, "context!!");
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R$dimen.tab_height);
            Context context2 = getContext();
            if (context2 != null) {
                C15149k.m383a((Object) context2, "context!!");
                this.f25298g = Integer.valueOf(context2.getResources().getInteger(R$integer.dialer_animation_duration));
                Integer num = this.f25298g;
                if (num != null) {
                    this.f25299h = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(num.intValue() * 2);
                }
                C11272c cVar = new C11272c();
                ValueAnimator valueAnimator = this.f25299h;
                if (valueAnimator != null) {
                    valueAnimator.addListener(cVar);
                }
                ValueAnimator valueAnimator2 = this.f25299h;
                if (valueAnimator2 != null) {
                    valueAnimator2.addUpdateListener(new C11271b(dimensionPixelOffset));
                    return;
                }
                return;
            }
            C15149k.m378b();
            throw null;
        }
        C15149k.m378b();
        throw null;
    }

    /* renamed from: Z */
    public final boolean m9918Z() {
        EditText editText = this.f25309r;
        return editText != null && editText.length() == 0;
    }

    @Override // p459j.p460a.p463b0.p466s.AbstractC11267k
    /* renamed from: a */
    public Context mo9917a() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        C15149k.m378b();
        throw null;
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: a */
    public void mo1412a(View view, Bundle bundle) {
        C15149k.m377b(view, "inflatedView");
        this.f25297f = new C11293r();
        this.f25308q = (ConstraintLayout) view.findViewById(R$id.dialer_constraint);
        this.f25304m = (DialpadView) view.findViewById(R$id.dialpad_view);
        DialpadView dialpadView = this.f25304m;
        if (dialpadView != null) {
            dialpadView.m27802a(true);
            this.f25309r = dialpadView.m27801b();
            DialpadView dialpadView2 = this.f25304m;
            if (dialpadView2 != null) {
                dialpadView2.m27806a(new C11273d(dialpadView2, this));
                EditText editText = this.f25309r;
                if (editText != null) {
                    C15161w wVar = new C15161w();
                    wVar.f33149a = 0.0f;
                    C15161w wVar2 = new C15161w();
                    wVar2.f33149a = 0.0f;
                    editText.setOnTouchListener(new View$OnTouchListenerC11281l(wVar, wVar2));
                }
                dialpadView2.m27805a(new View$OnClickListenerC11274e());
                dialpadView2.m27804a(new View$OnLongClickListenerC11275f());
            }
        }
        this.f25305n = view.findViewById(R$id.ib_call);
        View view2 = this.f25305n;
        if (view2 != null) {
            view2.setOnClickListener(new View$OnClickListenerC11276g());
            if (view2 != null) {
                FloatingActionButton floatingActionButton = (FloatingActionButton) view2;
                floatingActionButton.setScaleType(ImageView.ScaleType.CENTER);
                if (8 == floatingActionButton.getVisibility()) {
                    floatingActionButton.m31354j();
                }
            } else {
                throw new C14986p("null cannot be cast to non-null type com.google.android.material.floatingactionbutton.FloatingActionButton");
            }
        }
        this.f25306o = view.findViewById(R$id.ib_sms);
        View view3 = this.f25306o;
        if (view3 != null) {
            view3.setOnClickListener(new View$OnClickListenerC11277h());
            if (view3 != null) {
                FloatingActionButton floatingActionButton2 = (FloatingActionButton) view3;
                floatingActionButton2.setScaleType(ImageView.ScaleType.CENTER);
                if (8 == floatingActionButton2.getVisibility()) {
                    floatingActionButton2.m31354j();
                }
            } else {
                throw new C14986p("null cannot be cast to non-null type com.google.android.material.floatingactionbutton.FloatingActionButton");
            }
        }
        this.f25307p = view.findViewById(R$id.ib_close);
        View view4 = this.f25307p;
        if (view4 != null) {
            view4.setOnClickListener(new View$OnClickListenerC11278i());
            if (view4 != null) {
                FloatingActionButton floatingActionButton3 = (FloatingActionButton) view4;
                floatingActionButton3.setScaleType(ImageView.ScaleType.CENTER);
                if (8 == floatingActionButton3.getVisibility()) {
                    floatingActionButton3.m31354j();
                }
            } else {
                throw new C14986p("null cannot be cast to non-null type com.google.android.material.floatingactionbutton.FloatingActionButton");
            }
        }
        this.f25310s = (RecyclerView) view.findViewById(R$id.t9result);
        RecyclerView recyclerView = this.f25310s;
        if (recyclerView != null) {
            recyclerView.setOnCreateContextMenuListener(this);
            recyclerView.setLayoutManager(new LinearLayoutManager(mo9917a()));
            recyclerView.setAdapter(this.f25297f);
            recyclerView.addOnScrollListener(new C11279j());
        }
        C11293r rVar = this.f25297f;
        if (rVar != null) {
            rVar.m9865a(new C11282m());
        }
        view.setVisibility(4);
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC11283n(view));
        m9919Y();
        RecyclerView recyclerView2 = this.f25310s;
        if (recyclerView2 != null) {
            recyclerView2.addOnChildAttachStateChangeListener(new C11284o());
        }
        this.f25311t = (FloatingActionButton) view.findViewById(R$id.fab);
        FloatingActionButton floatingActionButton4 = this.f25311t;
        if (floatingActionButton4 != null) {
            floatingActionButton4.setOnClickListener(new View$OnClickListenerC11280k());
        }
        DialpadView dialpadView3 = this.f25304m;
        if (dialpadView3 != null) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                dialpadView3.m27807a(activity, this);
            } else {
                C15149k.m378b();
                throw null;
            }
        }
    }

    @Override // gogolook.callgogolook2.main.dialer.DialpadKeyButton.AbstractC4608b
    /* renamed from: a */
    public void mo9916a(View view, boolean z) {
        if (!z) {
            HashSet<View> hashSet = this.f25313v;
            if (hashSet != null) {
                C15138d0.m400a(hashSet).remove(view);
                if (this.f25313v.isEmpty()) {
                    this.f25303l.m9809w();
                    return;
                }
                return;
            }
            throw new C14986p("null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
        } else if (view != null) {
            switch (Integer.valueOf(view.getId()).intValue()) {
                case R$id.eight /* 2131362217 */:
                    m9903d(15);
                    break;
                case R$id.five /* 2131362297 */:
                    m9903d(12);
                    break;
                case R$id.four /* 2131362314 */:
                    m9903d(11);
                    break;
                case R$id.nine /* 2131362940 */:
                    m9903d(16);
                    break;
                case R$id.one /* 2131362955 */:
                    m9903d(8);
                    break;
                case R$id.pound /* 2131362996 */:
                    m9903d(18);
                    break;
                case R$id.seven /* 2131363166 */:
                    m9903d(14);
                    break;
                case R$id.six /* 2131363175 */:
                    m9903d(13);
                    break;
                case R$id.star /* 2131363213 */:
                    m9903d(17);
                    break;
                case R$id.three /* 2131363289 */:
                    m9903d(10);
                    break;
                case R$id.two /* 2131363607 */:
                    m9903d(9);
                    break;
                case R$id.zero /* 2131363734 */:
                    m9903d(7);
                    break;
                default:
                    String str = f25293D;
                    Log.wtf(str, "Unexpected onTouch(ACTION_DOWN) event from: " + view);
                    break;
            }
            this.f25313v.add(view);
        }
    }

    /* renamed from: a0 */
    public final void m9911a0() {
        Subscription subscription = this.f25314w;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        this.f25314w = C14037j3.m2731a().mo2703a((Action1) new C11287r());
    }

    @Override // p459j.p460a.p463b0.p466s.AbstractC11267k
    /* renamed from: b */
    public void mo9910b() {
        RecyclerView recyclerView = this.f25310s;
        if (recyclerView != null) {
            recyclerView.showContextMenu();
        }
    }

    /* renamed from: b0 */
    public final void m9907b0() {
        DialpadView dialpadView = this.f25304m;
        if (dialpadView != null) {
            EditText b = dialpadView.m27801b();
            if (b != null) {
                if (!(b.getSelectionStart() > 0)) {
                    b = null;
                }
                if (b != null) {
                    b.setSelection(b.getSelectionStart());
                    b.getText().delete(b.getSelectionStart() - 1, b.getSelectionStart());
                }
            }
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: c */
    public View mo1408c(int i) {
        if (this.f25296C == null) {
            this.f25296C = new HashMap();
        }
        View view = (View) this.f25296C.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f25296C.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    /* renamed from: c0 */
    public final void m9904c0() {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        if (!this.f25300i) {
            if (!(this.f25304m == null || this.f25305n == null || this.f25306o == null || (((valueAnimator = this.f25299h) != null && valueAnimator.isRunning()) || (valueAnimator2 = this.f25299h) == null))) {
                valueAnimator2.reverse();
            }
            FloatingActionButton floatingActionButton = this.f25311t;
            if (floatingActionButton != null) {
                floatingActionButton.m31357g();
            }
        }
    }

    /* renamed from: d */
    public final void m9903d(int i) {
        EditText b;
        switch (i) {
            case 7:
                this.f25303l.m9848a(0, -1);
                break;
            case 8:
                this.f25303l.m9848a(1, -1);
                break;
            case 9:
                this.f25303l.m9848a(2, -1);
                break;
            case 10:
                this.f25303l.m9848a(3, -1);
                break;
            case 11:
                this.f25303l.m9848a(4, -1);
                break;
            case 12:
                this.f25303l.m9848a(5, -1);
                break;
            case 13:
                this.f25303l.m9848a(6, -1);
                break;
            case 14:
                this.f25303l.m9848a(7, -1);
                break;
            case 15:
                this.f25303l.m9848a(8, -1);
                break;
            case 16:
                this.f25303l.m9848a(9, -1);
                break;
            case 17:
                this.f25303l.m9848a(10, -1);
                break;
            case 18:
                this.f25303l.m9848a(11, -1);
                break;
        }
        this.f25303l.m9807y();
        KeyEvent keyEvent = new KeyEvent(0, i);
        DialpadView dialpadView = this.f25304m;
        if (dialpadView != null && (b = dialpadView.m27801b()) != null) {
            b.onKeyDown(i, keyEvent);
        }
    }

    /* renamed from: d */
    public final void m9901d(boolean z) {
        this.f25316y = z;
    }

    /* renamed from: d0 */
    public final void m9900d0() {
        Subscription subscription = this.f25314w;
        if (subscription != null) {
            if (!(!subscription.isUnsubscribed())) {
                subscription = null;
            }
            if (subscription != null) {
                subscription.unsubscribe();
            }
        }
    }

    /* renamed from: e */
    public final void m9898e(String str) {
        C15149k.m377b(str, "number");
        if (this.f25315x || this.f25316y) {
            this.f25317z = str;
            m9894f(str);
        }
    }

    /* renamed from: e */
    public final void m9897e(boolean z) {
        EditText b;
        Editable text;
        DialpadView dialpadView = this.f25304m;
        String obj = (dialpadView == null || (b = dialpadView.m27801b()) == null || (text = b.getText()) == null) ? null : text.toString();
        boolean z2 = false;
        int length = obj != null ? obj.length() : 0;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if ((obj == null || obj.charAt(i2) != '+') && (obj == null || obj.charAt(i2) != '*')) {
                i = i;
                if (obj != null) {
                    i = i;
                    if (obj.charAt(i2) != '#') {
                    }
                }
            }
            i++;
        }
        if (length != i || i == 0) {
            if (obj == null || obj.length() == 0) {
                z2 = true;
            }
            if (z2) {
                this.f25303l.m9810v();
                return;
            }
            C11302t tVar = this.f25303l;
            String a = C11292q.m9870a(obj, C11300s.m9856a());
            C15149k.m383a((Object) a, "DialerMatcher.normalizeN…t, DialerPrefix.getMap())");
            tVar.m9839a(z, a);
        }
    }

    /* renamed from: e0 */
    public final void m9896e0() {
        DialpadView dialpadView;
        ImageButton a;
        if (getActivity() != null) {
            DialpadView dialpadView2 = this.f25304m;
            if ((dialpadView2 != null ? dialpadView2.m27809a() : null) != null && (dialpadView = this.f25304m) != null && (a = dialpadView.m27809a()) != null) {
                a.setEnabled(!m9918Z());
            }
        }
    }

    /* renamed from: f */
    public final void m9894f(String str) {
        EditText editText;
        Editable text;
        String extractNetworkPortion = PhoneNumberUtils.extractNetworkPortion(str);
        String extractPostDialPortion = PhoneNumberUtils.extractPostDialPortion(str);
        if (!(extractNetworkPortion == null || C14966w.m724a((CharSequence) extractNetworkPortion))) {
            extractPostDialPortion = PhoneNumberUtils.formatNumber(extractNetworkPortion, C14017g4.m2810n()) + extractPostDialPortion;
        }
        C15149k.m383a((Object) extractPostDialPortion, "formatted");
        if ((!C14966w.m724a((CharSequence) extractPostDialPortion)) && (editText = this.f25309r) != null && (text = editText.getText()) != null) {
            text.replace(0, text.length(), extractPostDialPortion);
        }
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: g */
    public void mo3016g() {
    }

    @Override // p459j.p460a.p463b0.p466s.AbstractC11267k
    /* renamed from: j */
    public void mo9888j(List<? extends RealmObject> list) {
        C15149k.m377b(list, "dialerLogs");
        C11293r rVar = this.f25297f;
        if (rVar != null) {
            EditText editText = this.f25309r;
            rVar.m9863a(String.valueOf(editText != null ? editText.getText() : null));
        }
        C11293r rVar2 = this.f25297f;
        if (rVar2 != null) {
            rVar2.m9868a(ResourcesCompat.getColor(getResources(), R$color.dialer_highlight_text_color, null));
        }
        C11293r rVar3 = this.f25297f;
        if (rVar3 != null) {
            rVar3.m9862a(list);
        }
    }

    @Override // p459j.p460a.p463b0.p466s.AbstractC11267k
    /* renamed from: k */
    public Fragment mo9887k() {
        return this;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 200 && i2 == -1 && !TextUtils.isEmpty(this.f25303l.m9825g())) {
            C14356f.m1480b(this.f25303l.m9825g());
        }
    }

    @Override // androidx.fragment.app.Fragment
    @TargetApi(19)
    public boolean onContextItemSelected(MenuItem menuItem) {
        C11293r rVar;
        C15149k.m377b(menuItem, "item");
        if (!getUserVisibleHint() || (rVar = this.f25297f) == null) {
            return false;
        }
        if (rVar != null && rVar.getItemCount() == 0) {
            return false;
        }
        String f = this.f25303l.m9826f();
        if (f == null || f.length() == 0) {
            return false;
        }
        switch (menuItem.getItemId()) {
            case R$id.menu_add_to_wish /* 2131362819 */:
                this.f25303l.m9820l();
                C14289m.m1895a((Integer) null, (Integer) 4, (Integer) 3, (String) null, (String) null);
                return true;
            case R$id.menu_block /* 2131362820 */:
                this.f25303l.m9822j();
                C14289m.m1895a((Integer) null, (Integer) 4, (Integer) 2, (String) null, (String) null);
                return true;
            case R$id.menu_call /* 2131362830 */:
                this.f25303l.m9821k();
                return true;
            case R$id.menu_message /* 2131362858 */:
                this.f25303l.m9819m();
                C14289m.m1895a((Integer) null, (Integer) 4, (Integer) 1, (String) null, (String) null);
                return true;
            case R$id.menu_save /* 2131362871 */:
                this.f25303l.m9817o();
                C14289m.m1895a((Integer) null, (Integer) 4, (Integer) 4, (String) null, (String) null);
                return true;
            case R$id.menu_tele_report /* 2131362886 */:
                this.f25303l.m9818n();
                return true;
            default:
                return false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f25303l.m9849a();
        this.f25315x = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01d7  */
    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreateContextMenu(android.view.ContextMenu r6, android.view.View r7, android.view.ContextMenu.ContextMenuInfo r8) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.onCreateContextMenu(android.view.ContextMenu, android.view.View, android.view.ContextMenu$ContextMenuInfo):void");
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo1420J();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0051, code lost:
        if ((r0.length() == 0) != true) goto L_0x0054;
     */
    @Override // android.view.View.OnLongClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onLongClick(android.view.View r7) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m.onLongClick(android.view.View):boolean");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        C13929c cVar = this.f25295B;
        if (cVar != null) {
            cVar.m3029c(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f25303l.m9812t();
        m9900d0();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        m9922V();
        super.onViewCreated(view, bundle);
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: r */
    public void mo3015r() {
        C13929c cVar = this.f25295B;
        if (cVar != null) {
            C14289m.m1892a("dialpad", cVar.m3022b());
        }
    }
}
