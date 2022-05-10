package com.inmobi.ads;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.p516b.C8399c;
import com.inmobi.rendering.CustomView;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeVideoController.class */
public class NativeVideoController extends FrameLayout {

    /* renamed from: b */
    public static final String f31413b = NativeVideoController.class.getSimpleName();

    /* renamed from: a */
    public boolean f31414a;

    /* renamed from: c */
    public C8148bd f31415c;

    /* renamed from: d */
    public HandlerC8034a f31416d;

    /* renamed from: e */
    public NativeVideoView f31417e;

    /* renamed from: f */
    public CustomView f31418f;

    /* renamed from: g */
    public CustomView f31419g;

    /* renamed from: h */
    public ProgressBar f31420h;

    /* renamed from: i */
    public RelativeLayout f31421i;

    /* renamed from: j */
    public boolean f31422j;

    /* renamed from: k */
    public float f31423k;

    /* renamed from: l */
    public final View.OnClickListener f31424l;

    /* renamed from: com.inmobi.ads.NativeVideoController$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeVideoController$a.class */
    public static final class HandlerC8034a extends Handler {

        /* renamed from: a */
        public final WeakReference<NativeVideoController> f31426a;

        public HandlerC8034a(NativeVideoController nativeVideoController) {
            this.f31426a = new WeakReference<>(nativeVideoController);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 2) {
                super.handleMessage(message);
                return;
            }
            NativeVideoController nativeVideoController = this.f31426a.get();
            if (nativeVideoController != null) {
                nativeVideoController.m6658e();
                if (nativeVideoController.f31414a && nativeVideoController.f31417e.isPlaying()) {
                    sendMessageDelayed(obtainMessage(2), 200L);
                }
            }
        }
    }

    public NativeVideoController(Context context) {
        this(context, null);
    }

    public NativeVideoController(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NativeVideoController(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f31422j = false;
        this.f31424l = new View.OnClickListener() { // from class: com.inmobi.ads.NativeVideoController.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NativeVideoController.m6660c(NativeVideoController.this);
            }
        };
        this.f31421i = new RelativeLayout(getContext());
        addView(this.f31421i, new RelativeLayout.LayoutParams(-1, -1));
        this.f31421i.setPadding(0, 0, 0, 0);
        if (this.f31421i != null) {
            this.f31423k = C8399c.m5687a().f32662c;
            this.f31418f = new CustomView(getContext(), this.f31423k, 9);
            this.f31419g = new CustomView(getContext(), this.f31423k, 11);
            ProgressBar progressBar = new ProgressBar(getContext(), null, 16842872);
            this.f31420h = progressBar;
            progressBar.setScaleY(0.8f);
            m6661c();
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(12, -1);
            float f = C8399c.m5687a().f32662c;
            layoutParams.setMargins(0, (int) ((-6.0f) * f), 0, (int) (f * (-8.0f)));
            LayerDrawable layerDrawable = (LayerDrawable) this.f31420h.getProgressDrawable();
            if (layerDrawable != null) {
                layerDrawable.getDrawable(0).setColorFilter(-1, PorterDuff.Mode.SRC_IN);
                layerDrawable.getDrawable(2).setColorFilter(-327674, PorterDuff.Mode.SRC_IN);
            }
            this.f31421i.addView(this.f31420h, layoutParams);
        }
        this.f31416d = new HandlerC8034a(this);
    }

    /* renamed from: c */
    private void m6661c() {
        float f = this.f31423k;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (f * 30.0f), (int) (f * 30.0f));
        layoutParams.addRule(9, -1);
        layoutParams.addRule(12, -1);
        this.f31421i.addView(this.f31418f, layoutParams);
        this.f31418f.setOnClickListener(this.f31424l);
    }

    /* renamed from: c */
    public static /* synthetic */ void m6660c(NativeVideoController nativeVideoController) {
        C8148bd bdVar;
        C8148bd bdVar2;
        NativeVideoView nativeVideoView = nativeVideoController.f31417e;
        if (nativeVideoView != null) {
            C8152be beVar = (C8152be) nativeVideoView.getTag();
            if (nativeVideoController.f31422j) {
                nativeVideoController.f31417e.m6641e();
                nativeVideoController.f31422j = false;
                nativeVideoController.f31421i.removeView(nativeVideoController.f31419g);
                nativeVideoController.f31421i.removeView(nativeVideoController.f31418f);
                nativeVideoController.m6661c();
                if (beVar != null && (bdVar2 = nativeVideoController.f31415c) != null) {
                    try {
                        bdVar2.m6324d(beVar);
                        beVar.f31846A = true;
                    } catch (Exception e) {
                        new StringBuilder("SDK encountered unexpected error in handling the onVideoUnMuted event; ").append(e.getMessage());
                        C8328a.m5878a().m5875a(new C8365a(e));
                    }
                }
            } else {
                nativeVideoController.f31417e.m6643d();
                nativeVideoController.f31422j = true;
                nativeVideoController.f31421i.removeView(nativeVideoController.f31418f);
                nativeVideoController.f31421i.removeView(nativeVideoController.f31419g);
                nativeVideoController.m6659d();
                if (beVar != null && (bdVar = nativeVideoController.f31415c) != null) {
                    try {
                        bdVar.m6325c(beVar);
                        beVar.f31846A = false;
                    } catch (Exception e2) {
                        new StringBuilder("SDK encountered unexpected error in handling the onVideoMuted event; ").append(e2.getMessage());
                        C8328a.m5878a().m5875a(new C8365a(e2));
                    }
                }
            }
        }
    }

    /* renamed from: d */
    private void m6659d() {
        float f = this.f31423k;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (f * 30.0f), (int) (f * 30.0f));
        layoutParams.addRule(9, -1);
        layoutParams.addRule(12, -1);
        this.f31421i.addView(this.f31419g, layoutParams);
        this.f31419g.setOnClickListener(this.f31424l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public int m6658e() {
        NativeVideoView nativeVideoView = this.f31417e;
        if (nativeVideoView == null) {
            return 0;
        }
        int currentPosition = nativeVideoView.getCurrentPosition();
        int duration = this.f31417e.getDuration();
        ProgressBar progressBar = this.f31420h;
        if (!(progressBar == null || duration == 0)) {
            progressBar.setProgress((currentPosition * 100) / duration);
        }
        return currentPosition;
    }

    /* renamed from: a */
    public final void m6665a() {
        if (!this.f31414a) {
            m6658e();
            this.f31414a = true;
            C8152be beVar = (C8152be) this.f31417e.getTag();
            if (beVar != null) {
                int i = 4;
                this.f31418f.setVisibility(beVar.f31847B ? 0 : 4);
                ProgressBar progressBar = this.f31420h;
                if (beVar.f31849D) {
                    i = 0;
                }
                progressBar.setVisibility(i);
            }
            setVisibility(0);
        }
        this.f31416d.sendEmptyMessage(2);
    }

    /* renamed from: b */
    public final void m6663b() {
        if (this.f31414a) {
            try {
                this.f31416d.removeMessages(2);
                setVisibility(8);
            } catch (IllegalArgumentException e) {
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f31414a = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        boolean z = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        if (Build.VERSION.SDK_INT >= 15) {
            if (keyCode == 79 || keyCode == 85 || keyCode == 62) {
                if (!z) {
                    return true;
                }
                if (this.f31417e.isPlaying()) {
                    this.f31417e.pause();
                } else {
                    this.f31417e.start();
                }
                m6665a();
                return true;
            } else if (keyCode == 126) {
                if (!z || this.f31417e.isPlaying()) {
                    return true;
                }
                this.f31417e.start();
                m6665a();
                return true;
            } else if (keyCode == 86 || keyCode == 127) {
                if (!z || !this.f31417e.isPlaying()) {
                    return true;
                }
                this.f31417e.pause();
                m6665a();
                return true;
            } else if (keyCode == 25 || keyCode == 24 || keyCode == 164 || keyCode == 27) {
                return super.dispatchKeyEvent(keyEvent);
            } else {
                m6665a();
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(NativeVideoController.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityNodeInfo.setClassName(NativeVideoController.class.getName());
        }
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        NativeVideoView nativeVideoView;
        if (Build.VERSION.SDK_INT < 15 || (nativeVideoView = this.f31417e) == null || !nativeVideoView.m6650b()) {
            return false;
        }
        if (this.f31414a) {
            m6663b();
            return false;
        }
        m6665a();
        return false;
    }

    public void setMediaPlayer(NativeVideoView nativeVideoView) {
        this.f31417e = nativeVideoView;
        C8152be beVar = (C8152be) nativeVideoView.getTag();
        if (beVar != null && beVar.f31847B && !beVar.m6313a()) {
            this.f31422j = true;
            this.f31421i.removeView(this.f31419g);
            this.f31421i.removeView(this.f31418f);
            m6659d();
        }
    }

    public void setVideoAd(C8148bd bdVar) {
        this.f31415c = bdVar;
    }
}
