package com.mopub.common;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Views;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/VisibilityTracker.class */
public class VisibilityTracker {

    /* renamed from: a */
    public final ArrayList<View> f33808a;

    /* renamed from: b */
    public long f33809b;
    @VisibleForTesting

    /* renamed from: c */
    public final ViewTreeObserver.OnPreDrawListener f33810c;
    @VisibleForTesting

    /* renamed from: d */
    public WeakReference<ViewTreeObserver> f33811d;

    /* renamed from: e */
    public final Map<View, C8724b> f33812e;

    /* renamed from: f */
    public final VisibilityChecker f33813f;

    /* renamed from: g */
    public VisibilityTrackerListener f33814g;

    /* renamed from: h */
    public final RunnableC8725c f33815h;

    /* renamed from: i */
    public final Handler f33816i;

    /* renamed from: j */
    public boolean f33817j;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/VisibilityTracker$VisibilityChecker.class */
    public static class VisibilityChecker {

        /* renamed from: a */
        public final Rect f33818a = new Rect();

        public boolean hasRequiredTimeElapsed(long j, int i) {
            return SystemClock.uptimeMillis() - j >= ((long) i);
        }

        public boolean isVisible(View view, View view2, int i, Integer num) {
            boolean z = false;
            boolean z2 = false;
            if (view2 != null) {
                z2 = false;
                if (view2.getVisibility() == 0) {
                    if (view.getParent() == null) {
                        z2 = false;
                    } else if (!view2.getGlobalVisibleRect(this.f33818a)) {
                        return false;
                    } else {
                        long height = this.f33818a.height() * this.f33818a.width();
                        long height2 = view2.getHeight() * view2.getWidth();
                        if (height2 <= 0) {
                            return false;
                        }
                        if (num == null || num.intValue() <= 0) {
                            z2 = false;
                            if (height * 100 >= i * height2) {
                                z2 = true;
                            }
                        } else {
                            if (height >= num.intValue()) {
                                z = true;
                            }
                            return z;
                        }
                    }
                }
            }
            return z2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/VisibilityTracker$VisibilityTrackerListener.class */
    public interface VisibilityTrackerListener {
        void onVisibilityChanged(List<View> list, List<View> list2);
    }

    /* renamed from: com.mopub.common.VisibilityTracker$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/VisibilityTracker$a.class */
    public class ViewTreeObserver$OnPreDrawListenerC8723a implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC8723a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            VisibilityTracker.this.scheduleVisibilityCheck();
            return true;
        }
    }

    /* renamed from: com.mopub.common.VisibilityTracker$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/VisibilityTracker$b.class */
    public static class C8724b {

        /* renamed from: a */
        public int f33820a;

        /* renamed from: b */
        public int f33821b;

        /* renamed from: c */
        public long f33822c;

        /* renamed from: d */
        public View f33823d;

        /* renamed from: e */
        public Integer f33824e;
    }

    /* renamed from: com.mopub.common.VisibilityTracker$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/VisibilityTracker$c.class */
    public class RunnableC8725c implements Runnable {

        /* renamed from: b */
        public final ArrayList<View> f33826b = new ArrayList<>();

        /* renamed from: a */
        public final ArrayList<View> f33825a = new ArrayList<>();

        public RunnableC8725c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            VisibilityTracker.this.f33817j = false;
            for (Map.Entry entry : VisibilityTracker.this.f33812e.entrySet()) {
                View view = (View) entry.getKey();
                int i = ((C8724b) entry.getValue()).f33820a;
                int i2 = ((C8724b) entry.getValue()).f33821b;
                Integer num = ((C8724b) entry.getValue()).f33824e;
                View view2 = ((C8724b) entry.getValue()).f33823d;
                if (VisibilityTracker.this.f33813f.isVisible(view2, view, i, num)) {
                    this.f33825a.add(view);
                } else if (!VisibilityTracker.this.f33813f.isVisible(view2, view, i2, null)) {
                    this.f33826b.add(view);
                }
            }
            if (VisibilityTracker.this.f33814g != null) {
                VisibilityTracker.this.f33814g.onVisibilityChanged(this.f33825a, this.f33826b);
            }
            this.f33825a.clear();
            this.f33826b.clear();
        }
    }

    public VisibilityTracker(Context context) {
        this(context, new WeakHashMap(10), new VisibilityChecker(), new Handler());
    }

    @VisibleForTesting
    public VisibilityTracker(Context context, Map<View, C8724b> map, VisibilityChecker visibilityChecker, Handler handler) {
        this.f33809b = 0L;
        this.f33812e = map;
        this.f33813f = visibilityChecker;
        this.f33816i = handler;
        this.f33815h = new RunnableC8725c();
        this.f33808a = new ArrayList<>(50);
        this.f33810c = new ViewTreeObserver$OnPreDrawListenerC8723a();
        this.f33811d = new WeakReference<>(null);
        m4594a(context, (View) null);
    }

    /* renamed from: a */
    public final void m4595a(long j) {
        for (Map.Entry<View, C8724b> entry : this.f33812e.entrySet()) {
            if (entry.getValue().f33822c < j) {
                this.f33808a.add(entry.getKey());
            }
        }
        Iterator<View> it = this.f33808a.iterator();
        while (it.hasNext()) {
            removeView(it.next());
        }
        this.f33808a.clear();
    }

    /* renamed from: a */
    public final void m4594a(Context context, View view) {
        ViewTreeObserver viewTreeObserver = this.f33811d.get();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            View topmostView = Views.getTopmostView(context, view);
            if (topmostView == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to set Visibility Tracker due to no available root view.");
                return;
            }
            ViewTreeObserver viewTreeObserver2 = topmostView.getViewTreeObserver();
            if (!viewTreeObserver2.isAlive()) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Visibility Tracker was unable to track views because the root view tree observer was not alive");
                return;
            }
            this.f33811d = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(this.f33810c);
        }
    }

    public void addView(View view, int i, Integer num) {
        addView(view, view, i, num);
    }

    public void addView(View view, View view2, int i, int i2, Integer num) {
        m4594a(view2.getContext(), view2);
        C8724b bVar = this.f33812e.get(view2);
        C8724b bVar2 = bVar;
        if (bVar == null) {
            bVar2 = new C8724b();
            this.f33812e.put(view2, bVar2);
            scheduleVisibilityCheck();
        }
        int min = Math.min(i2, i);
        bVar2.f33823d = view;
        bVar2.f33820a = i;
        bVar2.f33821b = min;
        long j = this.f33809b;
        bVar2.f33822c = j;
        bVar2.f33824e = num;
        long j2 = j + 1;
        this.f33809b = j2;
        if (j2 % 50 == 0) {
            m4595a(j2 - 50);
        }
    }

    public void addView(View view, View view2, int i, Integer num) {
        addView(view, view2, i, i, num);
    }

    public void clear() {
        this.f33812e.clear();
        this.f33816i.removeMessages(0);
        this.f33817j = false;
    }

    public void destroy() {
        clear();
        ViewTreeObserver viewTreeObserver = this.f33811d.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f33810c);
        }
        this.f33811d.clear();
        this.f33814g = null;
    }

    public void removeView(View view) {
        this.f33812e.remove(view);
    }

    public void scheduleVisibilityCheck() {
        if (!this.f33817j) {
            this.f33817j = true;
            this.f33816i.postDelayed(this.f33815h, 100L);
        }
    }

    public void setVisibilityTrackerListener(VisibilityTrackerListener visibilityTrackerListener) {
        this.f33814g = visibilityTrackerListener;
    }
}
