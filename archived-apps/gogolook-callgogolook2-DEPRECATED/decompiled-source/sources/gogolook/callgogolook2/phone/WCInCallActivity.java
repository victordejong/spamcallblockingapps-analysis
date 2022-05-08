package gogolook.callgogolook2.phone;

import android.animation.Animator;
import android.animation.LayoutTransition;
import android.animation.ValueAnimator;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.telecom.Call;
import android.telecom.CallAudioState;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.widget.Chronometer;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.UiThread;
import androidx.appcompat.app.AppCompatActivity;
import butterknife.BindColor;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.dialer.DialpadKeyButton;
import gogolook.callgogolook2.main.dialer.DialpadView;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.view.FunctionButton;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p294f.p299e.DialogC9181a;
import p459j.p460a.p521j0.C12492c;
import p459j.p460a.p521j0.C12500e;
import p459j.p460a.p521j0.C12502f;
import p459j.p460a.p521j0.C12503g;
import p459j.p460a.p521j0.C12505i;
import p459j.p460a.p521j0.C12507k;
import p459j.p460a.p521j0.C12508l;
import p459j.p460a.p521j0.C12509m;
import p459j.p460a.p521j0.C12511o;
import p459j.p460a.p521j0.C12512p;
import p459j.p460a.p521j0.C12513q;
import p459j.p460a.p521j0.C12515r;
import p459j.p460a.p521j0.C12516s;
import p459j.p460a.p521j0.C12517t;
import p459j.p460a.p521j0.p522u.p523d.C12617h0;
import p459j.p460a.p521j0.p522u.p523d.C12664s0;
import p459j.p460a.p521j0.p522u.p523d.EnumC12625i0;
import p459j.p460a.p549o0.C13297a;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C13934c0;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14300r;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Subscription;
import p660rx.functions.Action1;
@RequiresApi(api = 23)
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity.class */
public class WCInCallActivity extends AppCompatActivity implements DialpadKeyButton.AbstractC4608b {

    /* renamed from: A */
    public static float f12158A = 0.5f;

    /* renamed from: B */
    public static float f12159B = 1.0f - f12158A;

    /* renamed from: C */
    public static float f12160C = 0.3f;

    /* renamed from: D */
    public static float f12161D = 0.2f;

    /* renamed from: E */
    public static float f12162E = 0.39f;

    /* renamed from: F */
    public static float f12163F = 0.39f;

    /* renamed from: s */
    public static String f12164s = "show_key_pad";

    /* renamed from: t */
    public static String f12165t = "debug_mode";

    /* renamed from: u */
    public static String f12166u = "debug_call_state";

    /* renamed from: v */
    public static String f12167v = "whoscall://goto?page=contactlist";

    /* renamed from: w */
    public static int f12168w = 350;

    /* renamed from: x */
    public static float f12169x = 0.4f;

    /* renamed from: y */
    public static int f12170y = 500;

    /* renamed from: z */
    public static int f12171z = 100;

    /* renamed from: e */
    public Subscription f12176e;

    /* renamed from: f */
    public Handler f12177f;

    /* renamed from: g */
    public C12492c f12178g;

    /* renamed from: h */
    public C12617h0 f12179h;

    /* renamed from: i */
    public PowerManager.WakeLock f12180i;

    /* renamed from: k */
    public int f12182k;

    /* renamed from: l */
    public int f12183l;

    /* renamed from: m */
    public int f12184m;
    @BindView(R$id.add_call_action_fab)
    public FunctionButton mAddCallActionFab;
    @BindView(R$id.incall_background)
    public ViewGroup mBackground;
    @BindView(R$id.incall_dark_background)
    public View mBackgroundDark;
    @BindView(R$id.basic_functions_layout)
    public View mBasicFunctions;
    @BindView(R$id.bottom_margin)
    public View mBottomMargin;
    @BindView(R$id.call_action_fab)
    public ViewGroup mCallActionFab;
    @BindView(R$id.call_action_fab_hangup)
    public ImageView mCallActionHangup;
    @BindView(R$id.call_action)
    public ViewGroup mCallActionLayout;
    @BindView(R$id.call_action_fab_pickup)
    public ImageView mCallActionPickup;
    @BindView(R$id.call_manage_layout)
    public View mCallManageFunctions;
    @BindView(R$id.caller_id_section)
    public RelativeLayout mCallerIdSection;
    @BindView(R$id.caller_id)
    public ViewGroup mCallerIdViewGroup;
    @BindView(2131362069)
    public Chronometer mChronometer;
    @BindView(R$id.connection_state)
    public TextView mConnectionState;
    @BindView(R$id.controlpad)
    public RelativeLayout mControlpadLayout;
    @BindView(R$id.btn_hide)
    public TextView mDialpadHideTextView;
    @BindView(R$id.dialpad_view)
    public DialpadView mDialpadView;
    @BindView(R$id.dialpad)
    public LinearLayout mDialpadViewLayout;
    @BindView(R$id.hangup_action_fab)
    public ViewGroup mHangupActionFab;
    @BindView(R$id.hangup_action_fab_image)
    public ImageView mHangupImageView;
    @BindView(R$id.action_text_hangup)
    public TextView mHangupTextView;
    @BindView(R$id.header)
    public RelativeLayout mHeader;
    @BindView(R$id.hold_call_action_fab)
    public FunctionButton mHoldCallActionFab;
    @BindView(R$id.input_dtmf_action_fab)
    public FunctionButton mInputDtmfActionFab;
    @BindView(R$id.main)
    public LinearLayout mMain;
    @BindView(R$id.mute_action_fab)
    public FunctionButton mMuteActionFab;
    @BindView(R$id.number)
    public TextView mNumber;
    @BindView(R$id.call_on_hold_hint)
    public TextView mOnHoldHint;
    @BindView(R$id.pickup_action_fab)
    public ViewGroup mPickupActionFab;
    @BindView(R$id.action_text_pickup)
    public TextView mPickupTextView;
    @BindView(R$id.slide_to_block)
    public ViewGroup mSlideToBlock;
    @BindView(R$id.slide_to_block_mask)
    public ImageView mSlideToBlockMask;
    @BindView(R$id.speaker_action_fab)
    public FunctionButton mSpeakerActionFab;
    @BindColor(2131099948)
    public int mStateTextColorDark;
    @BindColor(2131099950)
    public int mStateTextColorLight;
    @BindView(R$id.swipe_down_text)
    public TextView mSwipeDownText;
    @BindView(R$id.swipe_up_text)
    public TextView mSwipeUpText;
    @BindView(R$id.top_margin)
    public View mTopMargin;

    /* renamed from: n */
    public int f12185n;

    /* renamed from: o */
    public View$OnTouchListenerC4952k f12186o;

    /* renamed from: p */
    public Animator f12187p;

    /* renamed from: q */
    public View$OnTouchListenerC4956l f12188q;

    /* renamed from: a */
    public boolean f12172a = false;

    /* renamed from: b */
    public int f12173b = -1;

    /* renamed from: c */
    public boolean f12174c = false;

    /* renamed from: d */
    public int f12175d = -1;

    /* renamed from: j */
    public boolean f12181j = false;

    /* renamed from: r */
    public View.OnClickListener f12189r = new View$OnClickListenerC4950i();

    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$AudioRouteChooser.class */
    public static class AudioRouteChooser extends DialogC9181a {

        /* renamed from: f */
        public List<Integer> f12190f;

        /* renamed from: g */
        public AbstractC4937b f12191g;

        /* renamed from: h */
        public Unbinder f12192h = ButterKnife.bind(this);

        /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$AudioRouteChooser$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$AudioRouteChooser$a.class */
        public class DialogInterface$OnDismissListenerC4936a implements DialogInterface.OnDismissListener {
            public DialogInterface$OnDismissListenerC4936a() {
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                AudioRouteChooser.this.f12192h.unbind();
            }
        }

        /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$AudioRouteChooser$b */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$AudioRouteChooser$b.class */
        public interface AbstractC4937b {
            /* renamed from: a */
            void mo26690a(int i);
        }

        public AudioRouteChooser(Context context, List<Integer> list, AbstractC4937b bVar) {
            super(context);
            setContentView(R$layout.wc_in_call_audio_route_chooser);
            getWindow().addFlags(524288);
            this.f12190f = list;
            this.f12191g = bVar;
            m26694b();
            setOnDismissListener(new DialogInterface$OnDismissListenerC4936a());
        }

        /* renamed from: a */
        public final int m26695a(int i) {
            switch (i) {
                case R$id.lnyt_bluetooth_headset /* 2131362760 */:
                    return 2;
                case R$id.lnyt_ear_piece /* 2131362761 */:
                    return 1;
                case R$id.lnyt_speaker /* 2131362762 */:
                    return 8;
                case R$id.lnyt_wired_headset /* 2131362763 */:
                    return 4;
                default:
                    return -1;
            }
        }

        /* renamed from: b */
        public final int m26693b(int i) {
            if (i == 1) {
                return R$id.lnyt_ear_piece;
            }
            if (i == 2) {
                return R$id.lnyt_bluetooth_headset;
            }
            if (i == 4) {
                return R$id.lnyt_wired_headset;
            }
            if (i != 8) {
                return -1;
            }
            return R$id.lnyt_speaker;
        }

        /* renamed from: b */
        public final void m26694b() {
            View findViewById;
            for (Integer num : this.f12190f) {
                int b = m26693b(num.intValue());
                if (!(b == -1 || (findViewById = findViewById(b)) == null)) {
                    findViewById.setVisibility(0);
                }
            }
        }

        @OnClick({R$id.lnyt_ear_piece, R$id.lnyt_wired_headset, R$id.lnyt_bluetooth_headset, R$id.lnyt_speaker})
        public void onAudioRouteClicked(View view) {
            AbstractC4937b bVar;
            int a = m26695a(view.getId());
            if (a != -1 && (bVar = this.f12191g) != null) {
                bVar.mo26690a(a);
                dismiss();
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$AudioRouteChooser_ViewBinding.class */
    public class AudioRouteChooser_ViewBinding implements Unbinder {

        /* renamed from: a */
        public AudioRouteChooser f12194a;

        /* renamed from: b */
        public View f12195b;

        /* renamed from: c */
        public View f12196c;

        /* renamed from: d */
        public View f12197d;

        /* renamed from: e */
        public View f12198e;

        /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$AudioRouteChooser_ViewBinding$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$AudioRouteChooser_ViewBinding$a.class */
        public class C4938a extends DebouncingOnClickListener {

            /* renamed from: a */
            public final /* synthetic */ AudioRouteChooser f12199a;

            public C4938a(AudioRouteChooser_ViewBinding audioRouteChooser_ViewBinding, AudioRouteChooser audioRouteChooser) {
                this.f12199a = audioRouteChooser;
            }

            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view) {
                this.f12199a.onAudioRouteClicked(view);
            }
        }

        /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$AudioRouteChooser_ViewBinding$b */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$AudioRouteChooser_ViewBinding$b.class */
        public class C4939b extends DebouncingOnClickListener {

            /* renamed from: a */
            public final /* synthetic */ AudioRouteChooser f12200a;

            public C4939b(AudioRouteChooser_ViewBinding audioRouteChooser_ViewBinding, AudioRouteChooser audioRouteChooser) {
                this.f12200a = audioRouteChooser;
            }

            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view) {
                this.f12200a.onAudioRouteClicked(view);
            }
        }

        /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$AudioRouteChooser_ViewBinding$c */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$AudioRouteChooser_ViewBinding$c.class */
        public class C4940c extends DebouncingOnClickListener {

            /* renamed from: a */
            public final /* synthetic */ AudioRouteChooser f12201a;

            public C4940c(AudioRouteChooser_ViewBinding audioRouteChooser_ViewBinding, AudioRouteChooser audioRouteChooser) {
                this.f12201a = audioRouteChooser;
            }

            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view) {
                this.f12201a.onAudioRouteClicked(view);
            }
        }

        /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$AudioRouteChooser_ViewBinding$d */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$AudioRouteChooser_ViewBinding$d.class */
        public class C4941d extends DebouncingOnClickListener {

            /* renamed from: a */
            public final /* synthetic */ AudioRouteChooser f12202a;

            public C4941d(AudioRouteChooser_ViewBinding audioRouteChooser_ViewBinding, AudioRouteChooser audioRouteChooser) {
                this.f12202a = audioRouteChooser;
            }

            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view) {
                this.f12202a.onAudioRouteClicked(view);
            }
        }

        @UiThread
        public AudioRouteChooser_ViewBinding(AudioRouteChooser audioRouteChooser, View view) {
            this.f12194a = audioRouteChooser;
            View findRequiredView = Utils.findRequiredView(view, R$id.lnyt_ear_piece, "method 'onAudioRouteClicked'");
            this.f12195b = findRequiredView;
            findRequiredView.setOnClickListener(new C4938a(this, audioRouteChooser));
            View findRequiredView2 = Utils.findRequiredView(view, R$id.lnyt_wired_headset, "method 'onAudioRouteClicked'");
            this.f12196c = findRequiredView2;
            findRequiredView2.setOnClickListener(new C4939b(this, audioRouteChooser));
            View findRequiredView3 = Utils.findRequiredView(view, R$id.lnyt_bluetooth_headset, "method 'onAudioRouteClicked'");
            this.f12197d = findRequiredView3;
            findRequiredView3.setOnClickListener(new C4940c(this, audioRouteChooser));
            View findRequiredView4 = Utils.findRequiredView(view, R$id.lnyt_speaker, "method 'onAudioRouteClicked'");
            this.f12198e = findRequiredView4;
            findRequiredView4.setOnClickListener(new C4941d(this, audioRouteChooser));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            if (this.f12194a != null) {
                this.f12194a = null;
                this.f12195b.setOnClickListener(null);
                this.f12195b = null;
                this.f12196c.setOnClickListener(null);
                this.f12196c = null;
                this.f12197d.setOnClickListener(null);
                this.f12197d = null;
                this.f12198e.setOnClickListener(null);
                this.f12198e = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$a.class */
    public class RunnableC4942a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f12203a;

        /* renamed from: b */
        public final /* synthetic */ boolean f12204b;

        public RunnableC4942a(int i, boolean z) {
            this.f12203a = i;
            this.f12204b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            C13930d dVar = new C13930d();
            dVar.m3018e();
            WCInCallActivity.this.m26711b(this.f12203a, this.f12204b);
            dVar.m3017f();
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$b.class */
    public class C4943b implements View$OnTouchListenerC4952k.AbstractC4953a {
        public C4943b() {
        }

        @Override // gogolook.callgogolook2.phone.WCInCallActivity.View$OnTouchListenerC4952k.AbstractC4953a
        /* renamed from: a */
        public void mo26685a() {
            m26692a(false, WCInCallActivity.this.mCallActionFab.getWidth() * 0.5f, WCInCallActivity.this.mCallActionFab.getHeight() * 0.5f);
        }

        @Override // gogolook.callgogolook2.phone.WCInCallActivity.View$OnTouchListenerC4952k.AbstractC4953a
        /* renamed from: a */
        public void mo26684a(View$OnTouchListenerC4952k.EnumC4954b bVar) {
            float width = WCInCallActivity.this.mCallActionFab.getWidth();
            float height = WCInCallActivity.this.mCallActionFab.getHeight() * 0.5f;
            if (bVar == View$OnTouchListenerC4952k.EnumC4954b.UP) {
                height = 0.0f;
            }
            m26692a(true, width * 0.5f, height);
        }

        @Override // gogolook.callgogolook2.phone.WCInCallActivity.View$OnTouchListenerC4952k.AbstractC4953a
        /* renamed from: a */
        public void mo26683a(View$OnTouchListenerC4952k.EnumC4954b bVar, float f) {
            if (bVar == View$OnTouchListenerC4952k.EnumC4954b.UP) {
                WCInCallActivity.this.mSwipeDownText.setAlpha(WCInCallActivity.f12158A * (1.0f - f));
                WCInCallActivity.this.mSwipeUpText.setAlpha(WCInCallActivity.f12158A + (WCInCallActivity.f12159B * f));
                WCInCallActivity.this.mCallActionPickup.animate().alpha(1.0f).setDuration(0L).start();
                WCInCallActivity.this.mCallActionHangup.animate().alpha(0.0f).setDuration(0L).start();
                ViewGroup viewGroup = WCInCallActivity.this.mCallActionFab;
                viewGroup.setPivotX(viewGroup.getWidth() * 0.5f);
                WCInCallActivity.this.mCallActionFab.setPivotY(0.0f);
                WCInCallActivity.this.mCallActionFab.animate().scaleX((WCInCallActivity.f12160C * f) + 1.0f).scaleY((WCInCallActivity.f12160C * f) + 1.0f).rotation(0.0f).setDuration(0L).start();
            } else if (bVar == View$OnTouchListenerC4952k.EnumC4954b.DOWN) {
                float f2 = 1.0f - f;
                WCInCallActivity.this.mSwipeUpText.setAlpha(WCInCallActivity.f12158A * f2);
                WCInCallActivity.this.mSwipeDownText.setAlpha(WCInCallActivity.f12158A + (WCInCallActivity.f12159B * f));
                WCInCallActivity.this.mCallActionPickup.animate().alpha(f2).setDuration(0L).start();
                WCInCallActivity.this.mCallActionHangup.animate().alpha(f).setDuration(0L).start();
                ViewGroup viewGroup2 = WCInCallActivity.this.mCallActionFab;
                viewGroup2.setPivotX(viewGroup2.getWidth() * 0.5f);
                ViewGroup viewGroup3 = WCInCallActivity.this.mCallActionFab;
                viewGroup3.setPivotY(viewGroup3.getHeight() * 0.5f);
                WCInCallActivity.this.mCallActionFab.animate().scaleX(1.0f - (WCInCallActivity.f12161D * f)).scaleY(1.0f - (WCInCallActivity.f12161D * f)).rotation(f * 135.0f).setDuration(0L).start();
            }
        }

        /* renamed from: a */
        public final void m26692a(boolean z, float f, float f2) {
            long j = z ? 600L : 0L;
            WCInCallActivity.this.mSwipeUpText.animate().alpha(WCInCallActivity.f12158A).setDuration(j).start();
            WCInCallActivity.this.mSwipeDownText.animate().alpha(WCInCallActivity.f12158A).setDuration(j).start();
            WCInCallActivity.this.mCallActionPickup.animate().alpha(1.0f).setDuration(j).start();
            WCInCallActivity.this.mCallActionHangup.animate().alpha(0.0f).setDuration(j).start();
            WCInCallActivity.this.mCallActionFab.setPivotX(f);
            WCInCallActivity.this.mCallActionFab.setPivotY(f2);
            WCInCallActivity.this.mCallActionFab.animate().scaleX(1.0f).scaleY(1.0f).rotation(0.0f).setDuration(j).start();
            Animator animator = WCInCallActivity.this.f12187p;
            if (animator != null && !animator.isStarted()) {
                WCInCallActivity.this.f12187p.setStartDelay(j);
                WCInCallActivity.this.f12187p.start();
            }
        }

        @Override // gogolook.callgogolook2.phone.WCInCallActivity.View$OnTouchListenerC4952k.AbstractC4953a
        /* renamed from: b */
        public void mo26682b() {
            Animator animator = WCInCallActivity.this.f12187p;
            if (animator != null) {
                animator.cancel();
            }
        }

        @Override // gogolook.callgogolook2.phone.WCInCallActivity.View$OnTouchListenerC4952k.AbstractC4953a
        /* renamed from: b */
        public void mo26681b(View$OnTouchListenerC4952k.EnumC4954b bVar) {
            if (bVar == View$OnTouchListenerC4952k.EnumC4954b.UP) {
                Call D = WCInCallActivity.this.m26742D();
                if (D != null) {
                    D.answer(0);
                }
                if (WCInCallActivity.this.f12172a) {
                    C14037j3.m2731a().mo2704a(new C12503g());
                    WCInCallActivity.this.f12173b = 4;
                    WCInCallActivity.this.m26729Q();
                    WCInCallActivity.this.m26705c(true);
                }
            } else if (bVar == View$OnTouchListenerC4952k.EnumC4954b.DOWN) {
                Call D2 = WCInCallActivity.this.m26742D();
                if (D2 != null) {
                    D2.disconnect();
                }
                if (WCInCallActivity.this.f12172a) {
                    C14037j3.m2731a().mo2704a(new C12502f());
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$c.class */
    public class C4944c implements View$OnTouchListenerC4956l.AbstractC4957a {
        public C4944c() {
        }

        @Override // gogolook.callgogolook2.phone.WCInCallActivity.View$OnTouchListenerC4956l.AbstractC4957a
        /* renamed from: a */
        public void mo26679a() {
            WCInCallActivity.this.mSlideToBlockMask.animate().scaleX(1.0f).scaleY(1.0f).setDuration(WCInCallActivity.f12170y).start();
        }

        @Override // gogolook.callgogolook2.phone.WCInCallActivity.View$OnTouchListenerC4956l.AbstractC4957a
        /* renamed from: a */
        public void mo26678a(float f) {
            float f2 = f * 1000.0f;
            WCInCallActivity.this.mSlideToBlockMask.animate().scaleX(f2).scaleY(f2).setDuration(0L).start();
        }

        @Override // gogolook.callgogolook2.phone.WCInCallActivity.View$OnTouchListenerC4956l.AbstractC4957a
        /* renamed from: b */
        public void mo26677b() {
            WCInCallActivity.this.mSlideToBlockMask.animate().scaleX(1.0f).scaleY(1.0f).setDuration(0L).start();
        }

        @Override // gogolook.callgogolook2.phone.WCInCallActivity.View$OnTouchListenerC4956l.AbstractC4957a
        /* renamed from: c */
        public void mo26676c() {
        }

        @Override // gogolook.callgogolook2.phone.WCInCallActivity.View$OnTouchListenerC4956l.AbstractC4957a
        /* renamed from: d */
        public void mo26675d() {
            WCInCallActivity.this.f12179h.m5718s();
            if (WCInCallActivity.this.f12172a) {
                C14037j3.m2731a().mo2704a(new C12502f());
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$d.class */
    public class C4945d implements ValueAnimator.AnimatorUpdateListener {
        public C4945d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float f = 1.0f - floatValue;
            WCInCallActivity.this.mSwipeDownText.setAlpha(WCInCallActivity.f12158A * f);
            WCInCallActivity.this.mSwipeUpText.setAlpha(WCInCallActivity.f12158A + (WCInCallActivity.f12159B * floatValue));
            WCInCallActivity.this.mCallActionPickup.animate().alpha(1.0f).setDuration(0L).start();
            WCInCallActivity.this.mCallActionHangup.animate().alpha(0.0f).setDuration(0L).start();
            ViewGroup viewGroup = WCInCallActivity.this.mCallActionFab;
            viewGroup.setPivotX(viewGroup.getWidth() * 0.5f);
            WCInCallActivity.this.mCallActionFab.setPivotY(0.0f);
            WCInCallActivity.this.mCallActionFab.animate().y(WCInCallActivity.this.f12186o.m26689a() * f).scaleX((WCInCallActivity.f12160C * floatValue) + 1.0f).scaleY((WCInCallActivity.f12160C * floatValue) + 1.0f).rotation(0.0f).setDuration(0L).start();
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$e.class */
    public class C4946e implements C12664s0.AbstractC12678l {
        public C4946e() {
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12664s0.AbstractC12678l
        /* renamed from: a */
        public void mo5573a() {
            WCInCallActivity.this.finishAndRemoveTask();
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$f.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC4947f implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC4947f() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (WCInCallActivity.this.mCallActionFab.getX() > 0.0f && WCInCallActivity.this.mCallActionFab.getY() > 0.0f) {
                WCInCallActivity.this.mCallActionFab.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                WCInCallActivity wCInCallActivity = WCInCallActivity.this;
                wCInCallActivity.f12186o.m26688a(wCInCallActivity.mCallActionFab);
                WCInCallActivity wCInCallActivity2 = WCInCallActivity.this;
                wCInCallActivity2.f12187p = wCInCallActivity2.m26740F();
                WCInCallActivity.this.f12187p.start();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$g.class */
    public class C4948g implements Action1<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ int f12211a;

        public C4948g(int i) {
            this.f12211a = i;
        }

        /* renamed from: a */
        public void call(Boolean bool) {
            FunctionButton functionButton = WCInCallActivity.this.mAddCallActionFab;
            int i = this.f12211a;
            functionButton.setVisibility(((i == 9 || i == 1 || i == 4 || i == 3) && bool.booleanValue()) ? 0 : 8);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$h.class */
    public class C4949h implements AudioRouteChooser.AbstractC4937b {

        /* renamed from: a */
        public final /* synthetic */ C12500e.EnumC12501a f12213a;

        public C4949h(C12500e.EnumC12501a aVar) {
            this.f12213a = aVar;
        }

        @Override // gogolook.callgogolook2.phone.WCInCallActivity.AudioRouteChooser.AbstractC4937b
        /* renamed from: a */
        public void mo26690a(int i) {
            WCInCallActivity.this.m26712a(this.f12213a, i);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$i.class */
    public class View$OnClickListenerC4950i implements View.OnClickListener {
        public View$OnClickListenerC4950i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WCInCallActivity.this.m26703d(!(WCInCallActivity.this.mDialpadViewLayout.getVisibility() == 0));
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$j.class */
    public class C4951j implements Action1<Object> {
        public C4951j() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if (obj instanceof C12511o) {
                WCInCallActivity wCInCallActivity = WCInCallActivity.this;
                wCInCallActivity.f12178g = ((C12511o) obj).f28203a;
                if (!wCInCallActivity.f12172a && WCInCallActivity.this.m26742D() == null) {
                    WCInCallActivity.this.finishAndRemoveTask();
                }
                WCInCallActivity wCInCallActivity2 = WCInCallActivity.this;
                wCInCallActivity2.f12179h = wCInCallActivity2.f12178g.m5990g();
                WCInCallActivity.this.m26737I();
                WCInCallActivity.this.m26729Q();
                WCInCallActivity.this.m26738H();
                WCInCallActivity.this.m26741E();
            } else if (obj instanceof C12512p) {
                WCInCallActivity.this.m26737I();
                WCInCallActivity.this.m26729Q();
                WCInCallActivity.this.m26705c(!((C12512p) obj).f28204a);
            } else if (obj instanceof C12509m) {
                WCInCallActivity.this.m26731O();
            } else if (obj instanceof C12516s) {
                List<Call> f = WCInCallActivity.this.f12178g.m5991f();
                if (f == null || f.size() <= 0) {
                    WCInCallActivity.this.finishAndRemoveTask();
                    return;
                }
                WCInCallActivity.this.m26729Q();
                WCInCallActivity.this.m26731O();
            } else if (obj instanceof C13934c0) {
                C13934c0 c0Var = (C13934c0) obj;
                List<Call> list = null;
                if (!WCInCallActivity.this.f12172a) {
                    list = WCInCallActivity.this.f12178g.m5991f();
                } else {
                    WCInCallActivity.this.f12174c = c0Var.f31316a;
                    WCInCallActivity.this.m26729Q();
                }
                if (list != null) {
                    for (Call call : list) {
                        C12492c.C12493a b = WCInCallActivity.this.f12178g.m5999b(call);
                        String a = C12517t.m5966a(call);
                        if (a != null && a.equals(C14108o4.m2474l(c0Var.f31317b))) {
                            b.m5985a(c0Var.f31316a);
                            WCInCallActivity.this.m26729Q();
                            return;
                        }
                    }
                }
            } else if (obj instanceof C12505i) {
                WCInCallActivity.this.finishAndRemoveTask();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$k */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$k.class */
    public static class View$OnTouchListenerC4952k implements View.OnTouchListener {

        /* renamed from: a */
        public int f12217a;

        /* renamed from: b */
        public int f12218b;

        /* renamed from: c */
        public AbstractC4953a f12219c;

        /* renamed from: f */
        public float f12222f;

        /* renamed from: g */
        public float f12223g;

        /* renamed from: d */
        public float f12220d = -1.0f;

        /* renamed from: e */
        public float f12221e = -1.0f;

        /* renamed from: h */
        public EnumC4955c f12224h = EnumC4955c.DEFAULT;

        /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$k$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$k$a.class */
        public interface AbstractC4953a {
            /* renamed from: a */
            void mo26685a();

            /* renamed from: a */
            void mo26684a(EnumC4954b bVar);

            /* renamed from: a */
            void mo26683a(EnumC4954b bVar, float f);

            /* renamed from: b */
            void mo26682b();

            /* renamed from: b */
            void mo26681b(EnumC4954b bVar);
        }

        /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$k$b */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$k$b.class */
        public enum EnumC4954b {
            NONE,
            UP,
            DOWN,
            LEFT,
            RIGHT
        }

        /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$k$c */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$k$c.class */
        public enum EnumC4955c {
            DEFAULT,
            VERTICAL,
            HORIZONTAL
        }

        public View$OnTouchListenerC4952k(int i, int i2, @NonNull AbstractC4953a aVar) {
            this.f12217a = i;
            this.f12218b = i2;
            this.f12219c = aVar;
        }

        /* renamed from: a */
        public float m26689a() {
            return this.f12221e;
        }

        /* renamed from: a */
        public void m26688a(View view) {
            this.f12220d = view.getX();
            this.f12221e = view.getY();
        }

        /* renamed from: a */
        public void m26687a(View view, long j) {
            if (!((view.getX() == this.f12220d && view.getY() == this.f12221e) || this.f12220d == -1.0f || this.f12221e == -1.0f)) {
                view.animate().x(this.f12220d).y(this.f12221e).setDuration(j).start();
                this.f12224h = EnumC4955c.DEFAULT;
            }
            this.f12222f = 0.0f;
            this.f12223g = 0.0f;
            this.f12219c.mo26685a();
        }

        /* renamed from: b */
        public void m26686b(View view) {
            m26687a(view, 0L);
        }

        /* JADX WARN: Removed duplicated region for block: B:49:0x01b5  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x020a  */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouch(android.view.View r5, android.view.MotionEvent r6) {
            /*
                Method dump skipped, instructions count: 730
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.phone.WCInCallActivity.View$OnTouchListenerC4952k.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$l */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$l.class */
    public static class View$OnTouchListenerC4956l implements View.OnTouchListener {

        /* renamed from: a */
        public int f12235a;

        /* renamed from: b */
        public int f12236b;

        /* renamed from: c */
        public AbstractC4957a f12237c;

        /* renamed from: d */
        public float f12238d = -1.0f;

        /* renamed from: e */
        public float f12239e;

        /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity$l$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity$l$a.class */
        public interface AbstractC4957a {
            /* renamed from: a */
            void mo26679a();

            /* renamed from: a */
            void mo26678a(float f);

            /* renamed from: b */
            void mo26677b();

            /* renamed from: c */
            void mo26676c();

            /* renamed from: d */
            void mo26675d();
        }

        public View$OnTouchListenerC4956l(int i, int i2, @NonNull AbstractC4957a aVar) {
            this.f12235a = i;
            this.f12236b = i2;
            this.f12237c = aVar;
        }

        /* renamed from: a */
        public void m26680a(View view) {
            float x = view.getX();
            float f = this.f12238d;
            if (!(x == f || f == -1.0f)) {
                view.animate().x(this.f12238d).setDuration(0L).start();
            }
            this.f12239e = 0.0f;
            this.f12237c.mo26677b();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action != 0) {
                boolean z = false;
                if (action == 1) {
                    float x = view.getX();
                    float f = this.f12238d;
                    if (view.getX() == this.f12235a - this.f12236b) {
                        z = true;
                    }
                    AbstractC4957a aVar = this.f12237c;
                    if (aVar == null || !z) {
                        view.animate().x(this.f12238d).setDuration(WCInCallActivity.f12170y).start();
                        this.f12237c.mo26679a();
                        return true;
                    } else if (x - f <= 0.0f) {
                        return true;
                    } else {
                        aVar.mo26675d();
                        return true;
                    }
                } else if (action != 2) {
                    return false;
                } else {
                    float rawX = motionEvent.getRawX() + this.f12239e;
                    float f2 = rawX;
                    if (rawX < 0.0f) {
                        f2 = 0.0f;
                    }
                    int i = this.f12236b;
                    float f3 = i;
                    int i2 = this.f12235a;
                    float f4 = f2;
                    if (f3 + f2 > i2) {
                        f4 = i2 - i;
                    }
                    if (f4 < this.f12238d) {
                        return true;
                    }
                    ViewPropertyAnimator animate = view.animate();
                    animate.x(f4);
                    animate.setDuration(0L).start();
                    AbstractC4957a aVar2 = this.f12237c;
                    float f5 = this.f12238d;
                    aVar2.mo26678a((f4 - f5) / ((this.f12235a - this.f12236b) - f5));
                    return true;
                }
            } else {
                if (this.f12238d == -1.0f) {
                    this.f12238d = view.getX();
                }
                this.f12239e = view.getX() - motionEvent.getRawX();
                this.f12237c.mo26676c();
                return true;
            }
        }
    }

    /* renamed from: D */
    public final Call m26742D() {
        C12492c cVar = this.f12178g;
        return cVar != null ? cVar.m5989h() : null;
    }

    /* renamed from: E */
    public final void m26741E() {
        Call D = m26742D();
        if (D != null) {
            int state = D.getState();
            if (state == 1 || state == 9 || state == 3 || state == 4) {
                m26703d(getIntent().getBooleanExtra(f12164s, false));
            } else {
                m26703d(false);
            }
        }
    }

    /* renamed from: F */
    public final Animator m26740F() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 0.4f);
        ofFloat.addUpdateListener(new C4945d());
        ofFloat.setDuration(600L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        return ofFloat;
    }

    /* renamed from: G */
    public final void m26739G() {
        Call D = m26742D();
        if (D != null) {
            D.stopDtmfTone();
        }
    }

    /* renamed from: H */
    public final void m26738H() {
        m26705c(false);
    }

    /* renamed from: I */
    public final void m26737I() {
    }

    /* renamed from: J */
    public final void m26736J() {
        this.f12176e = C14037j3.m2731a().mo2703a((Action1) new C4951j());
    }

    /* renamed from: K */
    public final void m26735K() {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        float n = point.y - C14217x3.m2122n();
        this.f12182k = (int) (f12162E * n);
        this.f12183l = (int) (n * f12163F);
        this.f12184m = C14217x3.m2201a(74.0f);
        this.f12185n = C14217x3.m2201a(64.8f);
    }

    /* renamed from: L */
    public final void m26734L() {
        this.mDialpadView.m27802a(false);
        this.mDialpadView.m27808a(this);
        this.mInputDtmfActionFab.setOnClickListener(this.f12189r);
        this.mDialpadHideTextView.setOnClickListener(this.f12189r);
    }

    /* renamed from: M */
    public final void m26733M() {
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.disableTransitionType(4);
        layoutTransition.disableTransitionType(0);
        layoutTransition.disableTransitionType(1);
        layoutTransition.enableTransitionType(2);
        layoutTransition.enableTransitionType(3);
        layoutTransition.setDuration(600L);
        this.mBackground.setLayoutTransition(layoutTransition);
    }

    /* renamed from: N */
    public final void m26732N() {
        Subscription subscription = this.f12176e;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f12176e.unsubscribe();
        }
    }

    /* renamed from: O */
    public final void m26731O() {
        CallAudioState d;
        if (m26742D() != null && (d = this.f12178g.m5994d()) != null) {
            if (m26710b(d)) {
                int route = d.getRoute();
                if (route == 1) {
                    this.mSpeakerActionFab.m25922a(getDrawable(R$drawable.icon_incall_phone));
                } else if (route == 2) {
                    this.mSpeakerActionFab.m25922a(getDrawable(R$drawable.icon_incall_bluetooth));
                } else if (route == 4) {
                    this.mSpeakerActionFab.m25922a(getDrawable(R$drawable.icon_incall_headset));
                } else if (route == 8) {
                    this.mSpeakerActionFab.m25922a(getDrawable(R$drawable.icon_incall_speaker_off));
                }
                this.mSpeakerActionFab.m25920a(true);
                this.mSpeakerActionFab.m25921a(C14206w4.m2225a((int) R$string.incall_function_button_speaker_text));
                if (C13565v.m3921g().m23335b()) {
                    Toast.makeText(this, "Switch to " + m26702e(d.getRoute()), 1).show();
                }
            } else {
                this.mSpeakerActionFab.m25922a(d.getRoute() == 8 ? getDrawable(R$drawable.icon_incall_speaker_on) : getDrawable(R$drawable.icon_incall_speaker_off));
                this.mSpeakerActionFab.m25920a(false);
                this.mSpeakerActionFab.m25921a(C14206w4.m2225a((int) R$string.incall_function_button_speaker));
            }
            this.mMuteActionFab.m25922a(d.isMuted() ? getDrawable(R$drawable.icon_incall_mute_on) : getDrawable(R$drawable.icon_incall_mute_off));
            m26730P();
        }
    }

    /* renamed from: P */
    public final void m26730P() {
        boolean z = this.f12181j;
        Call D = m26742D();
        int i = 0;
        boolean z2 = z;
        if (D != null) {
            int state = D.getState();
            z2 = z & (state == 4 || state == 1 || state == 9);
        }
        PowerManager.WakeLock wakeLock = this.f12180i;
        if (wakeLock != null) {
            synchronized (wakeLock) {
                boolean z3 = this.mDialpadView.getVisibility() == 0;
                boolean z4 = z3;
                if (this.f12178g != null) {
                    z4 = z3;
                    if (this.f12178g.m5994d() != null) {
                        int route = this.f12178g.m5994d().getRoute();
                        z4 = z3 | (route == 4 || route == 8 || route == 2);
                    }
                }
                if (!z2 || z4) {
                    if (this.f12180i.isHeld()) {
                        if (!z4) {
                            i = 1;
                        }
                        this.f12180i.release(i);
                    }
                } else if (!this.f12180i.isHeld()) {
                    this.f12180i.acquire();
                }
            }
        }
    }

    /* renamed from: Q */
    public final void m26729Q() {
        Call D = m26742D();
        if (this.f12172a || D != null) {
            C12517t.m5964b(D);
            int state = !this.f12172a ? D.getState() : this.f12173b;
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mCallerIdSection.getLayoutParams();
            int i = state == 2 ? this.f12182k : this.f12183l;
            if (layoutParams.height != i) {
                layoutParams.height = i;
                this.mCallerIdSection.setLayoutParams(layoutParams);
            }
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mHangupImageView.getLayoutParams();
            int i2 = state == 2 ? this.f12184m : this.f12185n;
            if (!(layoutParams2.height == i2 || layoutParams2.width == i2)) {
                layoutParams2.height = i2;
                layoutParams2.width = i2;
                this.mHangupImageView.setLayoutParams(layoutParams2);
            }
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.mCallActionLayout.getLayoutParams();
            int i3 = layoutParams3.height;
            int i4 = this.f12175d;
            if (i3 != i4) {
                layoutParams3.height = i4;
                this.mCallActionLayout.setLayoutParams(layoutParams3);
                this.mCallActionFab.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC4947f());
            }
            boolean z = true;
            int i5 = 8;
            this.mHangupActionFab.setVisibility((state == 9 || state == 1 || state == 4 || state == 3 || state == 8) ? 0 : 8);
            C14037j3.m2731a().mo2704a(new C12515r(new C4948g(state)));
            this.mHangupTextView.setVisibility(8);
            this.mPickupActionFab.setVisibility(8);
            this.mCallActionLayout.setVisibility(state == 2 ? 0 : 8);
            if (state == 2) {
                this.mCallActionFab.setVisibility(0);
            } else {
                this.mCallActionFab.setVisibility(4);
                View$OnTouchListenerC4952k kVar = this.f12186o;
                if (kVar != null) {
                    kVar.m26686b(this.mCallActionFab);
                }
            }
            this.mTopMargin.setVisibility(state == 2 ? 0 : 8);
            this.mBottomMargin.setVisibility(state == 2 ? 0 : 8);
            this.mBasicFunctions.setVisibility((!this.f12178g.m6008a() || !(state == 1 || state == 3 || state == 4 || state == 9)) ? 4 : 0);
            this.mCallManageFunctions.setVisibility(this.f12178g.m6008a() ? 0 : 8);
            this.mHoldCallActionFab.setVisibility((state == 4 || state == 3) ? 0 : 8);
            this.mHoldCallActionFab.m25922a(getDrawable(state == 3 ? R$drawable.icon_incall_hold_on : R$drawable.icon_incall_hold_off));
            this.mChronometer.setVisibility((!this.f12178g.m6008a() || state != 4) ? 8 : 0);
            if (this.mChronometer.getVisibility() == 0) {
                this.mChronometer.setBase(!this.f12172a ? this.f12178g.m5999b(D).m5988a() : SystemClock.elapsedRealtime());
                this.mChronometer.start();
            } else {
                this.mChronometer.stop();
            }
            this.mConnectionState.setText((!this.f12178g.m6000b() || !this.f12178g.m5997c()) ? m26700f(state) : (state == 8 || !CallUtils.m26529o()) ? m26698g(state) : state == 2 ? "" : C12517t.m5968a(state));
            this.mConnectionState.setTextColor(state == 2 ? this.mStateTextColorDark : this.mStateTextColorLight);
            Call a = m26720a(D);
            if (a != null) {
                this.mOnHoldHint.setText(C14206w4.m2224a((int) R$string.incall_holding_text, C12517t.m5965a(this.f12178g, a)));
                this.mOnHoldHint.setVisibility(0);
            } else {
                this.mOnHoldHint.setVisibility(8);
            }
            View view = this.mBackgroundDark;
            if (state == 2) {
                i5 = 0;
            }
            view.setVisibility(i5);
            m26730P();
            C12492c.C12493a b = this.f12178g.m5999b(D);
            if (this.f12172a) {
                z = this.f12174c;
            } else if (b == null || !b.m5980d()) {
                z = false;
            }
            m26721a(state, z);
        }
    }

    /* renamed from: a */
    public Call m26720a(Call call) {
        List<Call> f = this.f12178g.m5991f();
        if (f == null || f.size() <= 1) {
            return null;
        }
        for (int size = f.size() - 1; size >= 0; size--) {
            Call call2 = f.get(size);
            if (call2 != call && call2.getState() == 3) {
                return call2;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final String m26722a(int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder();
        sb.append(C14206w4.m2225a(i2));
        if (i != 2) {
            sb.append("\n\n");
            sb.append(C14206w4.m2225a(i3));
        }
        return sb.toString();
    }

    /* renamed from: a */
    public List<Integer> m26719a(@NonNull CallAudioState callAudioState) {
        int[] iArr;
        ArrayList arrayList = new ArrayList();
        int supportedRouteMask = callAudioState.getSupportedRouteMask();
        for (int i : new int[]{1, 4, 2, 8}) {
            if ((supportedRouteMask & i) == i) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m26723a(int i, char c) {
        this.mDialpadView.m27801b().onKeyDown(i, new KeyEvent(0, i));
        Call D = m26742D();
        if (D != null) {
            D.playDtmfTone(c);
        }
    }

    /* renamed from: a */
    public final void m26721a(int i, boolean z) {
        if (!z || i != 2) {
            this.mSlideToBlock.setVisibility(4);
            this.mSlideToBlockMask.setVisibility(4);
            View$OnTouchListenerC4956l lVar = this.f12188q;
            if (lVar != null) {
                lVar.m26680a(this.mSlideToBlock);
                return;
            }
            return;
        }
        this.mSlideToBlock.setVisibility(0);
        this.mSlideToBlockMask.setVisibility(0);
    }

    @Override // gogolook.callgogolook2.main.dialer.DialpadKeyButton.AbstractC4608b
    /* renamed from: a */
    public void mo9916a(View view, boolean z) {
        if (z) {
            int id = view.getId();
            if (id == 2131362955) {
                m26723a(8, '1');
            } else if (id == 2131363607) {
                m26723a(9, '2');
            } else if (id == 2131363289) {
                m26723a(10, '3');
            } else if (id == 2131362314) {
                m26723a(11, '4');
            } else if (id == 2131362297) {
                m26723a(12, '5');
            } else if (id == 2131363175) {
                m26723a(13, '6');
            } else if (id == 2131363166) {
                m26723a(14, '7');
            } else if (id == 2131362217) {
                m26723a(15, '8');
            } else if (id == 2131362940) {
                m26723a(16, '9');
            } else if (id == 2131363734) {
                m26723a(7, '0');
            } else if (id == 2131362996) {
                m26723a(18, '#');
            } else if (id == 2131363213) {
                m26723a(17, '*');
            } else {
                Log.wtf("WCInCallActivity", "Unexpected onTouch(ACTION_DOWN) event from: " + view);
            }
        } else {
            m26739G();
        }
    }

    /* renamed from: a */
    public final void m26713a(C12500e.EnumC12501a aVar) {
        CallAudioState d = this.f12178g.m5994d();
        if (d == null) {
            C14687h.m862a(this, (int) R$string.incall_state_notsupport_function_speaker, 0).m858c();
            C14037j3.m2731a().mo2704a(new C12513q(C12513q.EnumC12514a.AUDIO_STATE_NULL));
        } else if (aVar == C12500e.EnumC12501a.Mute) {
            m26712a(aVar, 0);
        } else if (m26710b(d)) {
            AudioRouteChooser audioRouteChooser = new AudioRouteChooser(this, m26719a(d), new C4949h(aVar));
            audioRouteChooser.setCanceledOnTouchOutside(true);
            audioRouteChooser.show();
        } else {
            int i = 8;
            if (d.getRoute() == 8) {
                i = 5;
            }
            m26712a(aVar, i);
        }
    }

    /* renamed from: a */
    public final void m26712a(C12500e.EnumC12501a aVar, int i) {
        int i2;
        C12513q qVar;
        C14037j3.m2731a().mo2704a(new C12500e(aVar, i));
        if (aVar == C12500e.EnumC12501a.Speaker && i == 8 && !this.f12178g.m6005a(C12492c.EnumC12494b.SPEAKER)) {
            qVar = new C12513q(C12513q.EnumC12514a.SPEAKER);
            i2 = R$string.incall_state_notsupport_function_speaker;
        } else {
            qVar = null;
            i2 = 0;
        }
        if (i2 != 0) {
            C14687h.m862a(this, i2, 0).m858c();
        }
        if (qVar != null) {
            C14037j3.m2731a().mo2704a(qVar);
        }
    }

    /* renamed from: b */
    public final void m26711b(int i, boolean z) {
        C12492c cVar;
        if (this.f12179h != null && (cVar = this.f12178g) != null && cVar.m6008a()) {
            EnumC12625i0 i0Var = i == 2 ? EnumC12625i0.DARK : EnumC12625i0.LIGHT;
            if (z) {
                this.f12179h.m5746a(i0Var);
            } else {
                this.f12179h.m5749a(this.mCallerIdViewGroup, i0Var, new C4946e());
            }
        }
    }

    /* renamed from: b */
    public final boolean m26710b(@NonNull CallAudioState callAudioState) {
        return (callAudioState.getSupportedRouteMask() & 2) == 2;
    }

    /* renamed from: c */
    public final void m26705c(boolean z) {
        Call D = m26742D();
        if (this.f12172a || D != null) {
            this.f12177f.post(new RunnableC4942a(!this.f12172a ? D.getState() : this.f12173b, z));
        }
    }

    /* renamed from: d */
    public final void m26703d(boolean z) {
        if (z) {
            this.mDialpadViewLayout.setVisibility(0);
            this.mDialpadView.setVisibility(0);
        } else {
            this.mDialpadViewLayout.setVisibility(8);
            this.mDialpadView.setVisibility(8);
        }
        m26730P();
    }

    /* renamed from: e */
    public String m26702e(int i) {
        return C14206w4.m2225a(i != 1 ? i != 2 ? i != 4 ? i != 8 ? 0 : R$string.incall_function_button_speaker_text_speaker : R$string.incall_function_button_speaker_text_wired_headset : R$string.incall_function_button_speaker_text_bluetooth_headset : R$string.incall_function_button_speaker_text_ear_piece);
    }

    /* renamed from: f */
    public final String m26700f(int i) {
        return m26722a(i, R$string.not_support_function, R$string.incall_state_notsupport_revert);
    }

    /* renamed from: g */
    public final String m26698g(int i) {
        return m26722a(i, R$string.incall_state_notsupport_dualsim, R$string.incall_state_notsupport_dualsim_tips);
    }

    @OnClick({R$id.speaker_action_fab, R$id.mute_action_fab, R$id.add_call_action_fab, R$id.hold_call_action_fab, R$id.hangup_action_fab, R$id.pickup_action_fab})
    public void onActionsClicked(View view) {
        Call D = m26742D();
        if (D != null) {
            switch (view.getId()) {
                case R$id.add_call_action_fab /* 2131361889 */:
                    Intent a = C13297a.m4312a(this, Uri.parse(f12167v), null, null, 0);
                    if (a != null) {
                        a.setFlags(335544320);
                        try {
                            startActivity(a);
                            break;
                        } catch (ActivityNotFoundException e) {
                            C13973d4.m2952a(e);
                            break;
                        }
                    }
                    break;
                case R$id.hangup_action_fab /* 2131362335 */:
                    D.disconnect();
                    break;
                case R$id.hold_call_action_fab /* 2131362345 */:
                    if (D.getState() != 4) {
                        if (D.getState() == 3) {
                            D.unhold();
                            break;
                        }
                    } else {
                        D.hold();
                        break;
                    }
                    break;
                case R$id.mute_action_fab /* 2131362926 */:
                    m26713a(C12500e.EnumC12501a.Mute);
                    break;
                case R$id.pickup_action_fab /* 2131362990 */:
                    D.answer(0);
                    break;
                case R$id.speaker_action_fab /* 2131363202 */:
                    m26713a(C12500e.EnumC12501a.Speaker);
                    C14289m.m1859d(this.f12178g.m6008a());
                    break;
            }
        }
        if (this.f12172a) {
            int id = view.getId();
            if (id == 2131362335) {
                C14037j3.m2731a().mo2704a(new C12502f());
            } else if (id == 2131362990) {
                C14037j3.m2731a().mo2704a(new C12503g());
                this.f12173b = 4;
                m26729Q();
                m26705c(true);
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C14300r.m1652b("WCInCallActivity", getIntent());
        this.f12172a = getIntent().getBooleanExtra(f12165t, false);
        this.f12173b = getIntent().getIntExtra(f12166u, -1);
        if (!this.f12172a && !WCInCallService.m26645o()) {
            finishAndRemoveTask();
        }
        setContentView(R$layout.wc_in_call_activity);
        this.f12177f = new Handler();
        m26736J();
        ButterKnife.bind(this);
        getWindow().addFlags(2621568);
        PowerManager powerManager = (PowerManager) getSystemService("power");
        if (powerManager.isWakeLockLevelSupported(32)) {
            this.f12180i = powerManager.newWakeLock(32, "WCInCallActivity");
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        m26735K();
        m26733M();
        m26734L();
        this.f12175d = (int) (f12169x * displayMetrics.heightPixels);
        this.f12186o = new View$OnTouchListenerC4952k(C14217x3.m2201a(f12168w), this.f12175d, new C4943b());
        this.mCallActionFab.setOnTouchListener(this.f12186o);
        this.f12188q = new View$OnTouchListenerC4956l(displayMetrics.widthPixels, C14217x3.m2201a(f12171z), new C4944c());
        this.mSlideToBlock.setOnTouchListener(this.f12188q);
        C14037j3.m2731a().mo2704a(new C12507k());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m26732N();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m26729Q();
        m26731O();
        m26738H();
        setIntent(intent);
        m26741E();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        C14037j3.m2731a().mo2704a(new C12508l(false));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        C14037j3.m2731a().mo2704a(new C12508l(true));
        this.f12186o.m26686b(this.mCallActionFab);
        this.f12188q.m26680a(this.mSlideToBlock);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f12181j = true;
        m26730P();
        C12492c cVar = this.f12178g;
        if (cVar != null) {
            C14289m.m1856e(cVar.m6008a());
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f12181j = false;
        m26730P();
    }
}
