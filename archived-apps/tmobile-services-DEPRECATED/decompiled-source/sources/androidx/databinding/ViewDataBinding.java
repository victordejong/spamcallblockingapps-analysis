package androidx.databinding;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.databinding.CallbackRegistry;
import androidx.databinding.Observable;
import androidx.databinding.ObservableList;
import androidx.databinding.ObservableMap;
import androidx.databinding.library.C0291R;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.viewbinding.ViewBinding;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding.class */
public abstract class ViewDataBinding extends BaseObservable implements ViewBinding {

    /* renamed from: v */
    static int f3540v = 0;

    /* renamed from: w */
    private static final int f3541w = 8;

    /* renamed from: x */
    private static final boolean f3542x;

    /* renamed from: y */
    private static final ReferenceQueue<ViewDataBinding> f3543y;

    /* renamed from: z */
    private static final View.OnAttachStateChangeListener f3544z;

    /* renamed from: g */
    private final Runnable f3545g;

    /* renamed from: h */
    private boolean f3546h;

    /* renamed from: i */
    private boolean f3547i;

    /* renamed from: j */
    private WeakListener[] f3548j;

    /* renamed from: k */
    private final View f3549k;

    /* renamed from: l */
    private CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> f3550l;

    /* renamed from: m */
    private boolean f3551m;

    /* renamed from: n */
    private Choreographer f3552n;

    /* renamed from: o */
    private final Choreographer.FrameCallback f3553o;

    /* renamed from: p */
    private Handler f3554p;

    /* renamed from: q */
    protected final DataBindingComponent f3555q;

    /* renamed from: r */
    private ViewDataBinding f3556r;

    /* renamed from: s */
    private LifecycleOwner f3557s;

    /* renamed from: t */
    private OnStartListener f3558t;

    /* renamed from: u */
    private boolean f3559u;

    /* renamed from: androidx.databinding.ViewDataBinding$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$1.class */
    static final class C02641 implements CreateWeakListener {
        C02641() {
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$2 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$2.class */
    static final class C02652 implements CreateWeakListener {
        C02652() {
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$3 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$3.class */
    static final class C02663 implements CreateWeakListener {
        C02663() {
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$4 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$4.class */
    static final class C02674 implements CreateWeakListener {
        C02674() {
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$5 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$5.class */
    static final class C02685 extends CallbackRegistry.NotifierCallback<OnRebindCallback, ViewDataBinding, Void> {
        C02685() {
        }

        /* renamed from: b */
        public void mo18605a(OnRebindCallback onRebindCallback, ViewDataBinding viewDataBinding, int i, Void r7) {
            if (i != 1) {
                if (i == 2) {
                    onRebindCallback.m18633b(viewDataBinding);
                } else if (i == 3) {
                    onRebindCallback.m18634a(viewDataBinding);
                }
            } else if (!onRebindCallback.m18632c(viewDataBinding)) {
                viewDataBinding.f3547i = true;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$CreateWeakListener.class */
    private interface CreateWeakListener {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$IncludedLayouts.class */
    public static class IncludedLayouts {

        /* renamed from: a */
        public final String[][] f3562a;

        /* renamed from: b */
        public final int[][] f3563b;

        /* renamed from: c */
        public final int[][] f3564c;
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$LiveDataListener.class */
    private static class LiveDataListener implements Observer, ObservableReference<LiveData<?>> {

        /* renamed from: a */
        final WeakListener<LiveData<?>> f3565a;

        /* renamed from: b */
        LifecycleOwner f3566b;

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void mo6485a(@Nullable Object obj) {
            ViewDataBinding a = this.f3565a.m18601a();
            if (a != null) {
                WeakListener<LiveData<?>> weakListener = this.f3565a;
                a.m18609u(weakListener.f3571b, weakListener.m18600b(), 0);
            }
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        /* renamed from: b */
        public void mo18595b(LifecycleOwner lifecycleOwner) {
            LiveData<?> b = this.f3565a.m18600b();
            if (b != null) {
                if (this.f3566b != null) {
                    b.mo18128m(this);
                }
                if (lifecycleOwner != null) {
                    b.m18199h(lifecycleOwner, this);
                }
            }
            this.f3566b = lifecycleOwner;
        }

        /* renamed from: d */
        public void mo18594c(LiveData<?> liveData) {
            liveData.mo18128m(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$ObservableReference.class */
    public interface ObservableReference<T> {
        /* renamed from: b */
        void mo18595b(LifecycleOwner lifecycleOwner);

        /* renamed from: c */
        void mo18594c(T t);
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$OnStartListener.class */
    static class OnStartListener implements LifecycleObserver {

        /* renamed from: f */
        final WeakReference<ViewDataBinding> f3567f;

        private OnStartListener(ViewDataBinding viewDataBinding) {
            this.f3567f = new WeakReference<>(viewDataBinding);
        }

        /* synthetic */ OnStartListener(ViewDataBinding viewDataBinding, C02641 r5) {
            this(viewDataBinding);
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = this.f3567f.get();
            if (viewDataBinding != null) {
                viewDataBinding.m18615m();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$PropertyChangedInverseListener.class */
    protected static abstract class PropertyChangedInverseListener extends Observable.OnPropertyChangedCallback implements InverseBindingListener {

        /* renamed from: a */
        final int f3568a;

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        /* renamed from: d */
        public void mo18593d(Observable observable, int i) {
            if (i == this.f3568a || i == 0) {
                m18673a();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$WeakListListener.class */
    private static class WeakListListener extends ObservableList.OnListChangedCallback implements ObservableReference<ObservableList> {

        /* renamed from: a */
        final WeakListener<ObservableList> f3569a;

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        /* renamed from: a */
        public void mo18584a(ObservableList observableList) {
            ObservableList b;
            ViewDataBinding a = this.f3569a.m18601a();
            if (a != null && (b = this.f3569a.m18600b()) == observableList) {
                a.m18609u(this.f3569a.f3571b, b, 0);
            }
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        /* renamed from: b */
        public void mo18595b(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        /* renamed from: d */
        public void mo18583d(ObservableList observableList, int i, int i2) {
            mo18584a(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        /* renamed from: e */
        public void mo18582e(ObservableList observableList, int i, int i2) {
            mo18584a(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        /* renamed from: f */
        public void mo18581f(ObservableList observableList, int i, int i2, int i3) {
            mo18584a(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        /* renamed from: g */
        public void mo18580g(ObservableList observableList, int i, int i2) {
            mo18584a(observableList);
        }

        /* renamed from: h */
        public void mo18594c(ObservableList observableList) {
            observableList.mo18642i(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$WeakListener.class */
    public static class WeakListener<T> extends WeakReference<ViewDataBinding> {

        /* renamed from: a */
        private final ObservableReference<T> f3570a;

        /* renamed from: b */
        protected final int f3571b;

        /* renamed from: c */
        private T f3572c;

        /* renamed from: a */
        protected ViewDataBinding m18601a() {
            ViewDataBinding viewDataBinding = (ViewDataBinding) get();
            if (viewDataBinding == null) {
                m18598d();
            }
            return viewDataBinding;
        }

        /* renamed from: b */
        public T m18600b() {
            return this.f3572c;
        }

        /* renamed from: c */
        public void m18599c(LifecycleOwner lifecycleOwner) {
            this.f3570a.mo18595b(lifecycleOwner);
        }

        /* renamed from: d */
        public boolean m18598d() {
            boolean z;
            T t = this.f3572c;
            if (t != null) {
                this.f3570a.mo18594c(t);
                z = true;
            } else {
                z = false;
            }
            this.f3572c = null;
            return z;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$WeakMapListener.class */
    private static class WeakMapListener extends ObservableMap.OnMapChangedCallback implements ObservableReference<ObservableMap> {

        /* renamed from: a */
        final WeakListener<ObservableMap> f3573a;

        @Override // androidx.databinding.ObservableMap.OnMapChangedCallback
        /* renamed from: a */
        public void mo18597a(ObservableMap observableMap, Object obj) {
            ViewDataBinding a = this.f3573a.m18601a();
            if (a != null && observableMap == this.f3573a.m18600b()) {
                a.m18609u(this.f3573a.f3571b, observableMap, 0);
            }
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        /* renamed from: b */
        public void mo18595b(LifecycleOwner lifecycleOwner) {
        }

        /* renamed from: d */
        public void mo18594c(ObservableMap observableMap) {
            observableMap.mo18639c(this);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$WeakPropertyListener.class */
    private static class WeakPropertyListener extends Observable.OnPropertyChangedCallback implements ObservableReference<Observable> {

        /* renamed from: a */
        final WeakListener<Observable> f3574a;

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        /* renamed from: b */
        public void mo18595b(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        /* renamed from: d */
        public void mo18593d(Observable observable, int i) {
            ViewDataBinding a = this.f3574a.m18601a();
            if (a != null && this.f3574a.m18600b() == observable) {
                a.m18609u(this.f3574a.f3571b, observable, i);
            }
        }

        /* renamed from: e */
        public void mo18594c(Observable observable) {
            observable.mo18662a(this);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f3540v = i;
        f3542x = i >= 16;
        f3543y = new ReferenceQueue<>();
        if (Build.VERSION.SDK_INT < 19) {
            f3544z = null;
        } else {
            f3544z = new View.OnAttachStateChangeListener() { // from class: androidx.databinding.ViewDataBinding.6
                @Override // android.view.View.OnAttachStateChangeListener
                @TargetApi(19)
                public void onViewAttachedToWindow(View view) {
                    ViewDataBinding.m18611r(view).f3545g.run();
                    view.removeOnAttachStateChangeListener(this);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                }
            };
        }
    }

    protected ViewDataBinding(DataBindingComponent dataBindingComponent, View view, int i) {
        this.f3545g = new Runnable() { // from class: androidx.databinding.ViewDataBinding.7
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    ViewDataBinding.this.f3546h = false;
                }
                ViewDataBinding.m18628D();
                if (Build.VERSION.SDK_INT < 19 || ViewDataBinding.this.f3549k.isAttachedToWindow()) {
                    ViewDataBinding.this.m18615m();
                    return;
                }
                ViewDataBinding.this.f3549k.removeOnAttachStateChangeListener(ViewDataBinding.f3544z);
                ViewDataBinding.this.f3549k.addOnAttachStateChangeListener(ViewDataBinding.f3544z);
            }
        };
        this.f3546h = false;
        this.f3547i = false;
        this.f3555q = dataBindingComponent;
        this.f3548j = new WeakListener[i];
        this.f3549k = view;
        if (Looper.myLooper() == null) {
            throw new IllegalStateException("DataBinding must be created in view's UI Thread");
        } else if (f3542x) {
            this.f3552n = Choreographer.getInstance();
            this.f3553o = new Choreographer.FrameCallback() { // from class: androidx.databinding.ViewDataBinding.8
                @Override // android.view.Choreographer.FrameCallback
                public void doFrame(long j) {
                    ViewDataBinding.this.f3545g.run();
                }
            };
        } else {
            this.f3553o = null;
            this.f3554p = new Handler(Looper.myLooper());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewDataBinding(Object obj, View view, int i) {
        this(m18617j(obj), view, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: A */
    public static Object[] m18630A(DataBindingComponent dataBindingComponent, View view, int i, IncludedLayouts includedLayouts, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i];
        m18606z(dataBindingComponent, view, objArr, includedLayouts, sparseIntArray, true);
        return objArr;
    }

    /* renamed from: C */
    private static int m18629C(String str, int i) {
        int length = str.length();
        int i2 = 0;
        while (i < length) {
            i2 = (i2 * 10) + (str.charAt(i) - '0');
            i++;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public static void m18628D() {
        while (true) {
            Reference<? extends ViewDataBinding> poll = f3543y.poll();
            if (poll == null) {
                return;
            }
            if (poll instanceof WeakListener) {
                ((WeakListener) poll).m18598d();
            }
        }
    }

    /* renamed from: j */
    private static DataBindingComponent m18617j(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof DataBindingComponent) {
            return (DataBindingComponent) obj;
        }
        throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
    }

    /* renamed from: l */
    private void m18616l() {
        if (this.f3551m) {
            m18627E();
        } else if (mo7654v()) {
            this.f3551m = true;
            this.f3547i = false;
            CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry = this.f3550l;
            if (callbackRegistry != null) {
                callbackRegistry.mo18672c(this, 1, null);
                if (this.f3547i) {
                    this.f3550l.mo18672c(this, 2, null);
                }
            }
            if (!this.f3547i) {
                mo7655k();
                CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry2 = this.f3550l;
                if (callbackRegistry2 != null) {
                    callbackRegistry2.mo18672c(this, 3, null);
                }
            }
            this.f3551m = false;
        }
    }

    /* renamed from: n */
    private static int m18614n(String str, int i, IncludedLayouts includedLayouts, int i2) {
        CharSequence subSequence = str.subSequence(str.indexOf(47) + 1, str.length() - 2);
        String[] strArr = includedLayouts.f3562a[i2];
        int length = strArr.length;
        while (i < length) {
            if (TextUtils.equals(subSequence, strArr[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: o */
    private static int m18613o(ViewGroup viewGroup, int i) {
        String str = (String) viewGroup.getChildAt(i).getTag();
        String substring = str.substring(0, str.length() - 1);
        int length = substring.length();
        int childCount = viewGroup.getChildCount();
        int i2 = i;
        for (int i3 = i + 1; i3 < childCount; i3++) {
            View childAt = viewGroup.getChildAt(i3);
            String str2 = childAt.getTag() instanceof String ? (String) childAt.getTag() : null;
            i2 = i2;
            if (str2 != null) {
                i2 = i2;
                if (!str2.startsWith(substring)) {
                    continue;
                } else if (str2.length() == str.length() && str2.charAt(str2.length() - 1) == '0') {
                    return i2;
                } else {
                    i2 = i2;
                    if (m18607y(str2, length)) {
                        i2 = i3;
                    }
                }
            }
        }
        return i2;
    }

    /* renamed from: r */
    static ViewDataBinding m18611r(View view) {
        if (view != null) {
            return (ViewDataBinding) view.getTag(C0291R.C0294id.dataBinding);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public void m18609u(int i, Object obj, int i2) {
        if (!this.f3559u && mo7656B(i, obj, i2)) {
            m18627E();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    /* renamed from: w */
    public static <T extends ViewDataBinding> T m18608w(@NonNull LayoutInflater layoutInflater, int i, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (T) DataBindingUtil.m18676e(layoutInflater, i, viewGroup, z, m18617j(obj));
    }

    /* renamed from: y */
    private static boolean m18607y(String str, int i) {
        int length = str.length();
        if (length == i) {
            return false;
        }
        for (int i2 = i; i2 < length; i2++) {
            if (!Character.isDigit(str.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0205 A[SYNTHETIC] */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m18606z(androidx.databinding.DataBindingComponent r7, android.view.View r8, java.lang.Object[] r9, androidx.databinding.ViewDataBinding.IncludedLayouts r10, android.util.SparseIntArray r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.databinding.ViewDataBinding.m18606z(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[], androidx.databinding.ViewDataBinding$IncludedLayouts, android.util.SparseIntArray, boolean):void");
    }

    /* renamed from: B */
    protected abstract boolean mo7656B(int i, Object obj, int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: E */
    public void m18627E() {
        ViewDataBinding viewDataBinding = this.f3556r;
        if (viewDataBinding != null) {
            viewDataBinding.m18627E();
            return;
        }
        LifecycleOwner lifecycleOwner = this.f3557s;
        if (lifecycleOwner == null || lifecycleOwner.getLifecycle().mo18230b().isAtLeast(Lifecycle.State.STARTED)) {
            synchronized (this) {
                if (!this.f3546h) {
                    this.f3546h = true;
                    if (f3542x) {
                        this.f3552n.postFrameCallback(this.f3553o);
                    } else {
                        this.f3554p.post(this.f3545g);
                    }
                }
            }
        }
    }

    @MainThread
    /* renamed from: F */
    public void m18626F(@Nullable LifecycleOwner lifecycleOwner) {
        WeakListener[] weakListenerArr;
        LifecycleOwner lifecycleOwner2 = this.f3557s;
        if (lifecycleOwner2 != lifecycleOwner) {
            if (lifecycleOwner2 != null) {
                lifecycleOwner2.getLifecycle().mo18229c(this.f3558t);
            }
            this.f3557s = lifecycleOwner;
            if (lifecycleOwner != null) {
                if (this.f3558t == null) {
                    this.f3558t = new OnStartListener(this, null);
                }
                lifecycleOwner.getLifecycle().mo18231a(this.f3558t);
            }
            for (WeakListener weakListener : this.f3548j) {
                if (weakListener != null) {
                    weakListener.m18599c(lifecycleOwner);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: G */
    public void m18625G(View view) {
        view.setTag(C0291R.C0294id.dataBinding, this);
    }

    /* renamed from: k */
    protected abstract void mo7655k();

    /* renamed from: m */
    public void m18615m() {
        ViewDataBinding viewDataBinding = this.f3556r;
        if (viewDataBinding == null) {
            m18616l();
        } else {
            viewDataBinding.m18615m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m18612q() {
        mo7655k();
    }

    @NonNull
    /* renamed from: s */
    public View m18610s() {
        return this.f3549k;
    }

    /* renamed from: v */
    public abstract boolean mo7654v();

    /* renamed from: x */
    public abstract void mo7653x();
}
