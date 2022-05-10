package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.PointF;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinTouchToClickListener.class */
public class AppLovinTouchToClickListener implements View.OnTouchListener {

    /* renamed from: a */
    public final long f21206a;

    /* renamed from: b */
    public final int f21207b;

    /* renamed from: c */
    public final ClickRecognitionState f21208c;

    /* renamed from: d */
    public long f21209d;

    /* renamed from: e */
    public PointF f21210e;

    /* renamed from: f */
    public boolean f21211f;

    /* renamed from: g */
    public final Context f21212g;

    /* renamed from: h */
    public final OnClickListener f21213h;

    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState.class */
    public enum ClickRecognitionState {
        DISABLED,
        ACTION_DOWN,
        ACTION_POINTER_UP,
        ACTION_UP
    }

    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener.class */
    public interface OnClickListener {
        void onClick(View view, PointF pointF);
    }

    public AppLovinTouchToClickListener(C2341l lVar, Context context, OnClickListener onClickListener) {
        this(lVar, C2251d.C2256e.f8597S, context, onClickListener);
    }

    public AppLovinTouchToClickListener(C2341l lVar, C2251d.C2256e<Integer> eVar, Context context, OnClickListener onClickListener) {
        this.f21206a = ((Long) lVar.m30291a(C2251d.C2256e.f8587Q)).longValue();
        this.f21207b = ((Integer) lVar.m30291a(C2251d.C2256e.f8592R)).intValue();
        this.f21208c = ClickRecognitionState.values()[((Integer) lVar.m30291a(eVar)).intValue()];
        this.f21212g = context;
        this.f21213h = onClickListener;
    }

    /* renamed from: a */
    public final float m19368a(float f) {
        return f / this.f21212g.getResources().getDisplayMetrics().density;
    }

    /* renamed from: a */
    public final float m19367a(PointF pointF, PointF pointF2) {
        float f = pointF.x - pointF2.x;
        float f2 = pointF.y - pointF2.y;
        return m19368a((float) Math.sqrt((f * f) + (f2 * f2)));
    }

    /* renamed from: a */
    public final void m19366a(View view, MotionEvent motionEvent) {
        this.f21213h.onClick(view, new PointF(motionEvent.getRawX(), motionEvent.getRawY()));
        this.f21211f = true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (!(actionMasked == 6 && !this.f21211f && this.f21208c == ClickRecognitionState.ACTION_POINTER_UP)) {
                    return true;
                }
            } else if (this.f21211f || this.f21208c != ClickRecognitionState.ACTION_UP) {
                if (this.f21208c != ClickRecognitionState.DISABLED) {
                    return true;
                }
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = this.f21209d;
                float a = m19367a(this.f21210e, new PointF(motionEvent.getX(), motionEvent.getY()));
                if (this.f21211f) {
                    return true;
                }
                long j2 = this.f21206a;
                if (j2 >= 0 && elapsedRealtime - j >= j2) {
                    return true;
                }
                int i = this.f21207b;
                if (i >= 0 && a >= i) {
                    return true;
                }
            }
        } else if (this.f21208c != ClickRecognitionState.ACTION_DOWN) {
            this.f21209d = SystemClock.elapsedRealtime();
            this.f21210e = new PointF(motionEvent.getX(), motionEvent.getY());
            this.f21211f = false;
            return true;
        }
        m19366a(view, motionEvent);
        return true;
    }
}
