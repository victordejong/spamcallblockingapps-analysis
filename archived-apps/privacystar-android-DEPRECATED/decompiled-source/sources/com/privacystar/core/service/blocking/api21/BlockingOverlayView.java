package com.privacystar.core.service.blocking.api21;

import android.content.Intent;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.support.p001v4.view.ViewCompat;
import android.view.KeyEvent;
import android.view.WindowManager;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.util.OverlayHelper;
import com.privacystar.core.service.callerid.OverlayView;
import com.privacystar.core.util.LockScreenUtil;
import java.io.IOException;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/api21/BlockingOverlayView.class */
public class BlockingOverlayView extends OverlayView {
    private static final Object thisLittleLocker = new Object();
    private boolean blockAttemptMade;
    private final Object lockable = new Object();
    boolean seenUp = false;
    private int eventFireCount = 0;
    private int eventListenCount = 0;
    private boolean inBlockingMode = false;
    private boolean inListenMode = false;
    private final Runnable disableListenModeRunnable = new Runnable(this) { // from class: com.privacystar.core.service.blocking.api21.BlockingOverlayView$$Lambda$0
        private final BlockingOverlayView arg$1;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.arg$1 = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.arg$1.lambda$new$0$BlockingOverlayView();
        }
    };

    public BlockingOverlayView(BlockingOverlayService blockingOverlayService) {
        super(blockingOverlayService, C1566R.C1571layout.block_overlay);
        load();
        setLayerType(2, null);
    }

    public static void answerCallLollipop() {
        new Thread(BlockingOverlayView$$Lambda$3.$instance).start();
    }

    private void disableBlockingModeRunnable() {
        synchronized (this.lockable) {
            setInBlockingMode(false);
            setMadeBlockAttempt(false);
        }
    }

    private void frame() throws IOException {
        synchronized (this.lockable) {
            if (inBlockingMode()) {
                requestFocus();
                lPress();
                incrementEventFireCount();
            }
        }
    }

    private int getEventFireCount() {
        int i;
        synchronized (this.lockable) {
            i = this.eventFireCount;
        }
        return i;
    }

    private int getEventReceivedCount() {
        int i;
        synchronized (this.lockable) {
            i = this.eventListenCount;
        }
        return i;
    }

    private boolean hasMadeBlockAttempt() {
        boolean z;
        synchronized (this) {
            synchronized (this.lockable) {
                z = this.blockAttemptMade;
            }
        }
        return z;
    }

    private void incrementEventFireCount() {
        synchronized (this.lockable) {
            this.eventFireCount++;
        }
    }

    private void incrementEventReceivedCount() {
        synchronized (this.lockable) {
            this.eventListenCount++;
        }
    }

    private static void lPress() throws IOException {
        Runtime runtime = Runtime.getRuntime();
        runtime.exec("input keyevent " + Integer.toString(79));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$answerCallLollipop$2$BlockingOverlayView() {
        try {
            BlockingOverlayView overlayView = BlockingOverlayService.getOverlayView();
            lPress();
            overlayView.incrementEventFireCount();
            while (overlayView.inBlockingMode()) {
                Thread.sleep(1000L);
                overlayView.frame();
            }
        } catch (Exception e) {
            Timber.m32e(e, "", new Object[0]);
        }
    }

    private void resetEventFireCount() {
        synchronized (this.lockable) {
            this.eventFireCount = 0;
        }
    }

    private void resetEventReceivedCount() {
        synchronized (this.lockable) {
            this.eventListenCount = 0;
        }
    }

    private void runOnUIThread(Runnable runnable) {
        new Handler(getContext().getMainLooper()).post(runnable);
    }

    private void sawDown() {
        synchronized (thisLittleLocker) {
            this.seenUp = false;
            incrementEventReceivedCount();
        }
    }

    private void sawUp() {
        synchronized (thisLittleLocker) {
            this.seenUp = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void disableBlockingMode() {
        synchronized (this) {
            if (inBlockingMode()) {
                disableBlockingModeRunnable();
                new Thread(new Runnable(this) { // from class: com.privacystar.core.service.blocking.api21.BlockingOverlayView$$Lambda$1
                    private final BlockingOverlayView arg$1;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.arg$1 = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.lambda$disableBlockingMode$1$BlockingOverlayView();
                    }
                }).start();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 0 && !inBlockingMode()) {
            hide();
        }
        return super.dispatchKeyEventPreIme(keyEvent);
    }

    public void emergencyStop() {
        resetEventFireCount();
        resetEventReceivedCount();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enableBlockingMode() {
        synchronized (this) {
            setInBlockingMode(true);
            this.inListenMode = true;
            LockScreenUtil.claimLock(getContext(), true);
            getContext().sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        }
    }

    public boolean inBlockingMode() {
        boolean z;
        synchronized (this) {
            z = this.inBlockingMode;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$disableBlockingMode$1$BlockingOverlayView() {
        BlockingOverlayView overlayView = BlockingOverlayService.getOverlayView();
        while (overlayView != null && overlayView.getEventFireCount() != overlayView.getEventReceivedCount()) {
            try {
                Thread.sleep(50L);
            } catch (InterruptedException e) {
                Timber.m32e(e, "Interrupted while syncing fired events.", new Object[0]);
            }
        }
        runOnUIThread(this.disableListenModeRunnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$new$0$BlockingOverlayView() {
        LockScreenUtil.releaseLock(true);
        this.inListenMode = false;
        clearFocus();
        hide();
        resetEventFireCount();
        resetEventReceivedCount();
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        synchronized (this.lockable) {
            if (inBlockingMode()) {
                if (!z) {
                    requestFocus();
                } else if (!hasMadeBlockAttempt()) {
                    new Handler(Looper.getMainLooper()).postDelayed(BlockingOverlayView$$Lambda$2.$instance, 500L);
                    setMadeBlockAttempt(true);
                }
            }
        }
        super.onFocusChanged(z, i, rect);
    }

    @Override // com.privacystar.core.service.callerid.OverlayView
    protected void onInflateView() {
        setPadding(0, 0, 0, 0);
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setClickable(true);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 79) {
            sawDown();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 79) {
            sawUp();
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // com.privacystar.core.service.callerid.OverlayView
    public void refresh() {
        setVisibility(0);
        refreshViews();
    }

    public void setInBlockingMode(boolean z) {
        synchronized (this) {
            this.inBlockingMode = z;
        }
    }

    public void setMadeBlockAttempt(boolean z) {
        synchronized (this.lockable) {
            this.blockAttemptMade = z;
        }
    }

    @Override // com.privacystar.core.service.callerid.OverlayView
    public void setupLayoutParams() {
        try {
            this.layoutParams = new WindowManager.LayoutParams(-1, -2, 0, 0, OverlayHelper.INSTANCE.getOverlayLayoutTypeForOS(), 7077920, -3);
            this.layoutParams.screenOrientation = 1;
            this.layoutParams.gravity = getLayoutGravity();
            this.layoutParams.softInputMode = 4;
        } catch (Exception e) {
            Timber.m32e(e, "", new Object[0]);
        }
    }
}
