package com.mopub.mobileads;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import com.mopub.common.AdReport;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdAlertGestureListener.class */
public class AdAlertGestureListener extends GestureDetector.SimpleOnGestureListener {
    @Nullable

    /* renamed from: a */
    public final AdReport f8359a;

    /* renamed from: b */
    public float f8360b;

    /* renamed from: c */
    public float f8361c;

    /* renamed from: d */
    public boolean f8362d;

    /* renamed from: e */
    public boolean f8363e;

    /* renamed from: f */
    public AdAlertReporter f8364f;

    /* renamed from: g */
    public int f8365g;

    /* renamed from: h */
    public float f8366h;

    /* renamed from: i */
    public EnumC3816b f8367i = EnumC3816b.UNSET;

    /* renamed from: j */
    public View f8368j;

    /* renamed from: k */
    public boolean f8369k;

    /* renamed from: com.mopub.mobileads.AdAlertGestureListener$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdAlertGestureListener$a.class */
    public static /* synthetic */ class C3815a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8370a = new int[EnumC3816b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f8370a[EnumC3816b.UNSET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8370a[EnumC3816b.GOING_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f8370a[EnumC3816b.GOING_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f8370a[EnumC3816b.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.mopub.mobileads.AdAlertGestureListener$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdAlertGestureListener$b.class */
    public enum EnumC3816b {
        UNSET,
        GOING_RIGHT,
        GOING_LEFT,
        FINISHED,
        FAILED
    }

    public AdAlertGestureListener(View view, @Nullable AdReport adReport) {
        this.f8360b = 100.0f;
        if (view != null && view.getWidth() > 0) {
            this.f8360b = Math.min(100.0f, view.getWidth() / 3.0f);
        }
        this.f8369k = false;
        this.f8368j = view;
        this.f8359a = adReport;
    }

    /* renamed from: a */
    public void m30646a() {
        Context context = this.f8368j.getContext();
        if (this.f8367i == EnumC3816b.FINISHED && context != null) {
            this.f8364f = new AdAlertReporter(context, this.f8368j, this.f8359a);
            this.f8364f.send();
        }
        m30637e();
    }

    /* renamed from: a */
    public final boolean m30645a(float f) {
        return f < this.f8361c;
    }

    /* renamed from: a */
    public final boolean m30644a(MotionEvent motionEvent, MotionEvent motionEvent2) {
        boolean z = false;
        if (motionEvent != null) {
            if (motionEvent2 == null) {
                z = false;
            } else {
                z = false;
                if (Math.abs(motionEvent2.getY() - motionEvent.getY()) > 100.0f) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public final void m30643b() {
        this.f8365g++;
        if (this.f8365g >= 4) {
            this.f8367i = EnumC3816b.FINISHED;
        }
    }

    /* renamed from: b */
    public final boolean m30642b(float f) {
        return f > this.f8361c;
    }

    /* renamed from: c */
    public boolean m30641c() {
        return this.f8369k;
    }

    /* renamed from: c */
    public final boolean m30640c(float f) {
        if (this.f8362d) {
            return true;
        }
        if (f > this.f8366h - this.f8360b) {
            return false;
        }
        this.f8363e = false;
        this.f8362d = true;
        m30643b();
        return true;
    }

    /* renamed from: d */
    public void m30639d() {
        this.f8369k = false;
    }

    /* renamed from: d */
    public final boolean m30638d(float f) {
        if (this.f8363e) {
            return true;
        }
        if (f < this.f8366h + this.f8360b) {
            return false;
        }
        this.f8362d = false;
        this.f8363e = true;
        return true;
    }

    /* renamed from: e */
    public void m30637e() {
        this.f8365g = 0;
        this.f8367i = EnumC3816b.UNSET;
    }

    /* renamed from: e */
    public final void m30636e(float f) {
        if (f > this.f8366h) {
            this.f8367i = EnumC3816b.GOING_RIGHT;
        }
    }

    /* renamed from: f */
    public final void m30635f(float f) {
        if (m30640c(f) && m30642b(f)) {
            this.f8367i = EnumC3816b.GOING_RIGHT;
            this.f8366h = f;
        }
    }

    /* renamed from: g */
    public final void m30634g(float f) {
        if (m30638d(f) && m30645a(f)) {
            this.f8367i = EnumC3816b.GOING_LEFT;
            this.f8366h = f;
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.f8367i == EnumC3816b.FINISHED) {
            return super.onScroll(motionEvent, motionEvent2, f, f2);
        }
        if (m30644a(motionEvent, motionEvent2)) {
            this.f8367i = EnumC3816b.FAILED;
            return super.onScroll(motionEvent, motionEvent2, f, f2);
        }
        int i = C3815a.f8370a[this.f8367i.ordinal()];
        if (i == 1) {
            this.f8366h = motionEvent.getX();
            m30636e(motionEvent2.getX());
        } else if (i == 2) {
            m30634g(motionEvent2.getX());
        } else if (i == 3) {
            m30635f(motionEvent2.getX());
        }
        this.f8361c = motionEvent2.getX();
        return super.onScroll(motionEvent, motionEvent2, f, f2);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.f8369k = true;
        return super.onSingleTapUp(motionEvent);
    }
}
