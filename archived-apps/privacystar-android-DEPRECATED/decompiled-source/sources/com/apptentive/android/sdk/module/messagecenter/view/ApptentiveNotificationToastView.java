package com.apptentive.android.sdk.module.messagecenter.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.messagecenter.ApptentiveToastNotificationManager;
import com.apptentive.android.sdk.module.messagecenter.model.ApptentiveToastNotification;
import com.apptentive.android.sdk.util.image.ImageUtil;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView.class */
public class ApptentiveNotificationToastView extends LinearLayout {
    private ApptentiveToastNotification apptentiveNotification;
    private long countDown;
    private CountDownTimer countDownTimer;
    private int maxVelocity;
    private int pointerId;
    private int preLeft;
    public LinearLayout rootView;
    private View toastView;
    private float validWidth;
    private VelocityTracker velocityTracker;
    public int viewWidth;
    private float rawX = 0.0f;
    private float rawY = 0.0f;
    private float touchX = 0.0f;
    private float startY = 0.0f;
    private Handler mHandle = null;
    private ScrollOrientationEnum scrollOrientationEnum = ScrollOrientationEnum.NONE;
    public int originalLeft = 0;

    /* renamed from: com.apptentive.android.sdk.module.messagecenter.view.ApptentiveNotificationToastView$3 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$3.class */
    static /* synthetic */ class C08553 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$messagecenter$view$ApptentiveNotificationToastView$ScrollOrientationEnum */
        static final /* synthetic */ int[] f78x42880402 = new int[ScrollOrientationEnum.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f78x42880402[ScrollOrientationEnum.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f78x42880402[ScrollOrientationEnum.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f78x42880402[ScrollOrientationEnum.VERTICAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$CountDownTimer.class */
    public class CountDownTimer extends Thread {
        private CountDownTimer() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (ApptentiveNotificationToastView.this.countDown > 0) {
                try {
                    Thread.sleep(1000L);
                    ApptentiveNotificationToastView.access$010(ApptentiveNotificationToastView.this);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            if (ApptentiveNotificationToastView.this.countDown == 0) {
                ApptentiveNotificationToastView.this.mHandle.sendEmptyMessage(0);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum.class */
    enum ScrollOrientationEnum {
        VERTICAL,
        HORIZONTAL,
        NONE
    }

    public ApptentiveNotificationToastView(Context context) {
        super(context);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(getContext()).inflate(C0724R.C0728layout.apptentive_notification_toast_container, (ViewGroup) null);
        this.maxVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        this.rootView = (LinearLayout) linearLayout.findViewById(C0724R.C0727id.rootView);
        addView(linearLayout);
        this.viewWidth = context.getResources().getDisplayMetrics().widthPixels;
        this.validWidth = this.viewWidth / 2.0f;
    }

    static /* synthetic */ long access$010(ApptentiveNotificationToastView apptentiveNotificationToastView) {
        long j = apptentiveNotificationToastView.countDown;
        apptentiveNotificationToastView.countDown = j - 1;
        return j;
    }

    private void acquireVelocityTracker(MotionEvent motionEvent) {
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
    }

    public void dismiss() {
        ApptentiveToastNotificationManager.getInstance(getContext(), false).startDismissalAnimation();
        this.countDown = -1L;
        this.countDownTimer.interrupt();
        if (this.velocityTracker != null) {
            try {
                this.velocityTracker.clear();
                this.velocityTracker.recycle();
            } catch (IllegalStateException e) {
            }
        }
    }

    public ApptentiveToastNotification getApptentiveFloatingNotification() {
        return this.apptentiveNotification;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.rawX = motionEvent.getRawX();
        this.rawY = motionEvent.getRawY();
        acquireVelocityTracker(motionEvent);
        this.countDown = this.apptentiveNotification.getDuration();
        switch (motionEvent.getAction()) {
            case 0:
                this.touchX = motionEvent.getX();
                this.startY = motionEvent.getRawY();
                this.pointerId = motionEvent.getPointerId(0);
                this.rootView.setBackgroundDrawable(getResources().getDrawable(C0724R.C0726drawable.apptentive_toast_bg_dark_pressed));
                break;
            case 1:
                this.toastView.setBackgroundColor(getResources().getColor(17170445));
                this.velocityTracker.computeCurrentVelocity(1000, this.maxVelocity);
                int yVelocity = (int) this.velocityTracker.getYVelocity(this.pointerId);
                if (this.scrollOrientationEnum == ScrollOrientationEnum.NONE) {
                    if (this.apptentiveNotification.getNotification().contentIntent != null) {
                        try {
                            this.apptentiveNotification.getNotification().contentIntent.send();
                            dismiss();
                            break;
                        } catch (PendingIntent.CanceledException e) {
                            e.printStackTrace();
                            break;
                        }
                    }
                } else {
                    float abs = this.preLeft > 0 ? this.preLeft + Math.abs(yVelocity) : this.preLeft - Math.abs(yVelocity);
                    if (abs <= (-this.validWidth)) {
                        float abs2 = 1.0f - (Math.abs(this.preLeft) / this.validWidth);
                        if (abs2 < 0.0f) {
                            abs2 = 0.0f;
                        }
                        translationX(this.preLeft, -(this.validWidth + 10.0f), abs2, 0.0f);
                    } else if (abs <= this.validWidth) {
                        float abs3 = 1.0f - (Math.abs(this.preLeft) / this.validWidth);
                        if (abs3 < 0.0f) {
                            abs3 = 0.0f;
                        }
                        translationX(this.preLeft, 0.0f, abs3, 1.0f);
                    } else {
                        float abs4 = 1.0f - (Math.abs(this.preLeft) / this.validWidth);
                        if (abs4 < 0.0f) {
                            abs4 = 0.0f;
                        }
                        translationX(this.preLeft, this.validWidth + 10.0f, abs4, 0.0f);
                    }
                    this.preLeft = 0;
                    this.scrollOrientationEnum = ScrollOrientationEnum.NONE;
                    break;
                }
                break;
            case 2:
                switch (C08553.f78x42880402[this.scrollOrientationEnum.ordinal()]) {
                    case 1:
                        if (Math.abs(this.rawX - this.touchX) <= 20.0f) {
                            if (this.startY - this.rawY > 20.0f) {
                                this.scrollOrientationEnum = ScrollOrientationEnum.VERTICAL;
                                break;
                            }
                        } else {
                            this.scrollOrientationEnum = ScrollOrientationEnum.HORIZONTAL;
                            break;
                        }
                        break;
                    case 2:
                        updatePosition((int) (this.rawX - this.touchX));
                        break;
                    case 3:
                        if (this.startY - this.rawY > 20.0f) {
                            dismiss();
                            break;
                        }
                        break;
                }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCustomView(View view) {
        this.rootView.addView(view);
    }

    public void setNotification(ApptentiveToastNotification apptentiveToastNotification) {
        this.apptentiveNotification = apptentiveToastNotification;
        this.mHandle = new Handler() { // from class: com.apptentive.android.sdk.module.messagecenter.view.ApptentiveNotificationToastView.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (ApptentiveNotificationToastView.this.apptentiveNotification.isActivateStatusBar()) {
                    ApptentiveToastNotificationManager.getInstance(ApptentiveNotificationToastView.this.getContext(), false).notifyDefaultSilently(ApptentiveNotificationToastView.this.apptentiveNotification);
                }
                ApptentiveToastNotificationManager.getInstance(ApptentiveNotificationToastView.this.getContext(), false).startDismissalAnimationAt(ApptentiveNotificationToastView.this.apptentiveNotification);
            }
        };
        this.countDownTimer = new CountDownTimer();
        if (!this.apptentiveNotification.isSticky()) {
            this.countDownTimer.start();
        }
        this.countDown = this.apptentiveNotification.getDuration();
        if (this.apptentiveNotification.getCustomView() == null) {
            this.toastView = LayoutInflater.from(getContext()).inflate(C0724R.C0728layout.apptentive_notification_toast, (ViewGroup) this.rootView, false);
            this.rootView.addView(this.toastView);
            ApptentiveAvatarView apptentiveAvatarView = (ApptentiveAvatarView) this.toastView.findViewById(C0724R.C0727id.toast_avatar);
            TextView textView = (TextView) this.toastView.findViewById(C0724R.C0727id.toast_title);
            TextView textView2 = (TextView) this.toastView.findViewById(C0724R.C0727id.toast_timestamp);
            TextView textView3 = (TextView) this.toastView.findViewById(C0724R.C0727id.toast_message);
            if (this.apptentiveNotification.getAvatarUrl() != null) {
                ImageUtil.startDownloadAvatarTask(apptentiveAvatarView, this.apptentiveNotification.getAvatarUrl());
            } else {
                apptentiveAvatarView.setImageResource(this.apptentiveNotification.getIcon());
            }
            textView.setText(this.apptentiveNotification.getTitleStr());
            textView3.setText(this.apptentiveNotification.getMsgStr());
            textView2.setText(new SimpleDateFormat("HH:mm").format(new Date()));
            return;
        }
        setCustomView(this.apptentiveNotification.getCustomView());
    }

    public void translationX(float f, float f2, float f3, final float f4) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.rootView, "alpha", f3, f4);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.rootView, "translationX", f, f2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.apptentive.android.sdk.module.messagecenter.view.ApptentiveNotificationToastView.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (f4 == 0.0f) {
                    ApptentiveToastNotificationManager.getInstance(ApptentiveNotificationToastView.this.getContext(), false).startDismissalAnimation();
                    ApptentiveNotificationToastView.this.countDown = -1L;
                    if (ApptentiveNotificationToastView.this.velocityTracker != null) {
                        ApptentiveNotificationToastView.this.velocityTracker.clear();
                        try {
                            ApptentiveNotificationToastView.this.velocityTracker.recycle();
                        } catch (IllegalStateException e) {
                        }
                    }
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        animatorSet.start();
    }

    public void updatePosition(int i) {
        float abs = 1.0f - (Math.abs(this.preLeft) / this.validWidth);
        float abs2 = 1.0f - (Math.abs(i) / this.validWidth);
        if (abs < 0.0f) {
            abs = 0.0f;
        }
        if (abs2 < 0.0f) {
            abs2 = 0.0f;
        }
        translationX(this.preLeft, i, abs, abs2);
        this.preLeft = i;
    }
}
