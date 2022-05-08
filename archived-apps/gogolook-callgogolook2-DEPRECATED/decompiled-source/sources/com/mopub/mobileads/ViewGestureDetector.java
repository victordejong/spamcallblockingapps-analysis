package com.mopub.mobileads;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.AdReport;
import com.mopub.common.VisibleForTesting;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/ViewGestureDetector.class */
public class ViewGestureDetector extends GestureDetector {

    /* renamed from: a */
    public final View f8826a;
    @NonNull

    /* renamed from: b */
    public AdAlertGestureListener f8827b;

    public ViewGestureDetector(@NonNull Context context, @NonNull View view, @Nullable AdReport adReport) {
        this(context, view, new AdAlertGestureListener(view, adReport));
    }

    public ViewGestureDetector(Context context, View view, @NonNull AdAlertGestureListener adAlertGestureListener) {
        super(context, adAlertGestureListener);
        this.f8827b = adAlertGestureListener;
        this.f8826a = view;
        setIsLongpressEnabled(false);
    }

    /* renamed from: a */
    public void m30353a() {
        this.f8827b.m30637e();
    }

    /* renamed from: a */
    public final boolean m30352a(MotionEvent motionEvent, View view) {
        boolean z = false;
        if (motionEvent != null) {
            if (view == null) {
                z = false;
            } else {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                z = false;
                if (x >= 0.0f) {
                    z = false;
                    if (x <= view.getWidth()) {
                        z = false;
                        if (y >= 0.0f) {
                            z = false;
                            if (y <= view.getHeight()) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public boolean isClicked() {
        return this.f8827b.m30641c();
    }

    public void onResetUserClick() {
        this.f8827b.m30639d();
    }

    @Override // android.view.GestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 1) {
            this.f8827b.m30646a();
        } else if (action == 2 && !m30352a(motionEvent, this.f8826a)) {
            m30353a();
        }
        return onTouchEvent;
    }

    @VisibleForTesting
    public void setClicked(boolean z) {
        this.f8827b.f8369k = z;
    }
}
