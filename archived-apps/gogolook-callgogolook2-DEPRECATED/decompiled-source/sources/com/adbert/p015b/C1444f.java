package com.adbert.p015b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.webkit.WebView;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.adbert.b.f */
/* loaded from: classes-dex2jar.jar:com/adbert/b/f.class */
public class C1444f extends WebView {

    /* renamed from: a */
    public GestureDetector f756a;

    /* renamed from: b */
    public AtomicBoolean f757b = new AtomicBoolean(false);

    /* renamed from: c */
    public AtomicLong f758c = new AtomicLong(0);

    /* renamed from: com.adbert.b.f$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/b/f$a.class */
    public class C1446a extends GestureDetector.SimpleOnGestureListener {
        public C1446a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            C1444f.this.f757b.set(true);
            C1444f.this.f758c.set(System.currentTimeMillis());
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            C1444f.this.f757b.set(true);
            C1444f.this.f758c.set(System.currentTimeMillis());
            return true;
        }
    }

    public C1444f(Context context) {
        super(context);
        this.f756a = new GestureDetector(context, new C1446a());
    }

    @Override // android.webkit.WebView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getPointerId((motionEvent.getAction() & 65280) >> 8) != 0) {
            return true;
        }
        this.f756a.onTouchEvent(motionEvent);
        if (this.f757b.get()) {
            if (System.currentTimeMillis() - this.f758c.get() <= ViewConfiguration.getDoubleTapTimeout()) {
                return true;
            }
            this.f757b.set(false);
        }
        return super.onTouchEvent(motionEvent);
    }
}
