package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.C0042R;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.DecorContentParent;
import androidx.appcompat.widget.FitWindowsViewGroup;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.appcompat.widget.ViewUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.NavUtils;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.KeyEventDispatcher;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.facebook.stetho.websocket.CloseCodes;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl.class */
public class AppCompatDelegateImpl extends AppCompatDelegate implements MenuBuilder.Callback, LayoutInflater.Factory2 {

    /* renamed from: f0 */
    private static final SimpleArrayMap<String, Integer> f160f0 = new SimpleArrayMap<>();

    /* renamed from: g0 */
    private static final boolean f161g0;

    /* renamed from: h0 */
    private static final int[] f162h0;

    /* renamed from: i0 */
    private static final boolean f163i0;

    /* renamed from: j0 */
    private static final boolean f164j0;

    /* renamed from: k0 */
    private static boolean f165k0;

    /* renamed from: A */
    ViewGroup f166A;

    /* renamed from: B */
    private TextView f167B;

    /* renamed from: C */
    private View f168C;

    /* renamed from: D */
    private boolean f169D;

    /* renamed from: E */
    private boolean f170E;

    /* renamed from: F */
    boolean f171F;

    /* renamed from: G */
    boolean f172G;

    /* renamed from: H */
    boolean f173H;

    /* renamed from: I */
    boolean f174I;

    /* renamed from: J */
    boolean f175J;

    /* renamed from: K */
    private boolean f176K;

    /* renamed from: L */
    private PanelFeatureState[] f177L;

    /* renamed from: M */
    private PanelFeatureState f178M;

    /* renamed from: N */
    private boolean f179N;

    /* renamed from: O */
    private boolean f180O;

    /* renamed from: P */
    private boolean f181P;

    /* renamed from: Q */
    private boolean f182Q;

    /* renamed from: R */
    boolean f183R;

    /* renamed from: S */
    private int f184S;

    /* renamed from: T */
    private int f185T;

    /* renamed from: U */
    private boolean f186U;

    /* renamed from: V */
    private boolean f187V;

    /* renamed from: W */
    private AutoNightModeManager f188W;

    /* renamed from: X */
    private AutoNightModeManager f189X;

    /* renamed from: Y */
    boolean f190Y;

    /* renamed from: Z */
    int f191Z;

    /* renamed from: a0 */
    private final Runnable f192a0;

    /* renamed from: b0 */
    private boolean f193b0;

    /* renamed from: c0 */
    private Rect f194c0;

    /* renamed from: d0 */
    private Rect f195d0;

    /* renamed from: e0 */
    private AppCompatViewInflater f196e0;

    /* renamed from: i */
    final Object f197i;

    /* renamed from: j */
    final Context f198j;

    /* renamed from: k */
    Window f199k;

    /* renamed from: l */
    private AppCompatWindowCallback f200l;

    /* renamed from: m */
    final AppCompatCallback f201m;

    /* renamed from: n */
    ActionBar f202n;

    /* renamed from: o */
    MenuInflater f203o;

    /* renamed from: p */
    private CharSequence f204p;

    /* renamed from: q */
    private DecorContentParent f205q;

    /* renamed from: r */
    private ActionMenuPresenterCallback f206r;

    /* renamed from: s */
    private PanelMenuPresenterCallback f207s;

    /* renamed from: t */
    ActionMode f208t;

    /* renamed from: u */
    ActionBarContextView f209u;

    /* renamed from: v */
    PopupWindow f210v;

    /* renamed from: w */
    Runnable f211w;

    /* renamed from: x */
    ViewPropertyAnimatorCompat f212x;

    /* renamed from: y */
    private boolean f213y;

    /* renamed from: z */
    private boolean f214z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl.class */
    private class ActionBarDrawableToggleImpl implements ActionBarDrawerToggle.Delegate {
        ActionBarDrawableToggleImpl() {
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: a */
        public void mo22182a(int i) {
            ActionBar n = AppCompatDelegateImpl.this.mo22207n();
            if (n != null) {
                n.mo22085v(i);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: b */
        public boolean mo22181b() {
            ActionBar n = AppCompatDelegateImpl.this.mo22207n();
            return (n == null || (n.mo22093j() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: c */
        public Context mo22180c() {
            return AppCompatDelegateImpl.this.m22222d0();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: d */
        public void mo22179d(Drawable drawable, int i) {
            ActionBar n = AppCompatDelegateImpl.this.mo22207n();
            if (n != null) {
                n.mo22083x(drawable);
                n.mo22085v(i);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        /* renamed from: e */
        public Drawable mo22178e() {
            TintTypedArray u = TintTypedArray.m21245u(mo22180c(), null, new int[]{C0042R.attr.homeAsUpIndicator});
            Drawable g = u.m21259g(0);
            u.m21243w();
            return g;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$ActionMenuPresenterCallback.class */
    public final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        /* renamed from: c */
        public void mo21698c(@NonNull MenuBuilder menuBuilder, boolean z) {
            AppCompatDelegateImpl.this.m22240O(menuBuilder);
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        /* renamed from: d */
        public boolean mo21697d(@NonNull MenuBuilder menuBuilder) {
            Window.Callback i0 = AppCompatDelegateImpl.this.m22215i0();
            if (i0 == null) {
                return true;
            }
            i0.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9.class */
    public class ActionModeCallbackWrapperV9 implements ActionMode.Callback {

        /* renamed from: a */
        private ActionMode.Callback f225a;

        public ActionModeCallbackWrapperV9(ActionMode.Callback callback) {
            this.f225a = callback;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        /* renamed from: a */
        public void mo21962a(ActionMode actionMode) {
            this.f225a.mo21962a(actionMode);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.f210v != null) {
                appCompatDelegateImpl.f199k.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.f211w);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.f209u != null) {
                appCompatDelegateImpl2.m22228Y();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                ViewPropertyAnimatorCompat c = ViewCompat.m19206c(appCompatDelegateImpl3.f209u);
                c.m19115a(0.0f);
                appCompatDelegateImpl3.f212x = c;
                AppCompatDelegateImpl.this.f212x.m19110f(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.ActionModeCallbackWrapperV9.1
                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    /* renamed from: b */
                    public void mo19103b(View view) {
                        AppCompatDelegateImpl.this.f209u.setVisibility(8);
                        AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
                        PopupWindow popupWindow = appCompatDelegateImpl4.f210v;
                        if (popupWindow != null) {
                            popupWindow.dismiss();
                        } else if (appCompatDelegateImpl4.f209u.getParent() instanceof View) {
                            ViewCompat.m19189k0((View) AppCompatDelegateImpl.this.f209u.getParent());
                        }
                        AppCompatDelegateImpl.this.f209u.removeAllViews();
                        AppCompatDelegateImpl.this.f212x.m19110f(null);
                        AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
                        appCompatDelegateImpl5.f212x = null;
                        ViewCompat.m19189k0(appCompatDelegateImpl5.f166A);
                    }
                });
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            AppCompatCallback appCompatCallback = appCompatDelegateImpl4.f201m;
            if (appCompatCallback != null) {
                appCompatCallback.onSupportActionModeFinished(appCompatDelegateImpl4.f208t);
            }
            AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl5.f208t = null;
            ViewCompat.m19189k0(appCompatDelegateImpl5.f166A);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        /* renamed from: b */
        public boolean mo21961b(ActionMode actionMode, Menu menu) {
            return this.f225a.mo21961b(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        /* renamed from: c */
        public boolean mo21960c(ActionMode actionMode, Menu menu) {
            ViewCompat.m19189k0(AppCompatDelegateImpl.this.f166A);
            return this.f225a.mo21960c(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        /* renamed from: d */
        public boolean mo21959d(ActionMode actionMode, MenuItem menuItem) {
            return this.f225a.mo21959d(actionMode, menuItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback.class */
    public class AppCompatWindowCallback extends WindowCallbackWrapper {
        AppCompatWindowCallback(Window.Callback callback) {
            super(callback);
        }

        /* renamed from: b */
        final android.view.ActionMode m22177b(ActionMode.Callback callback) {
            SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(AppCompatDelegateImpl.this.f198j, callback);
            androidx.appcompat.view.ActionMode I0 = AppCompatDelegateImpl.this.m22251I0(callbackWrapper);
            if (I0 != null) {
                return callbackWrapper.m21958e(I0);
            }
            return null;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m22230W(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.m22192u0(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof MenuBuilder)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl.this.m22186x0(i);
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl.this.m22185y0(i);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
            if (i == 0 && menuBuilder == null) {
                return false;
            }
            if (menuBuilder != null) {
                menuBuilder.m21867e0(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (menuBuilder != null) {
                menuBuilder.m21867e0(false);
            }
            return onPreparePanel;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        @RequiresApi
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            MenuBuilder menuBuilder;
            PanelFeatureState g0 = AppCompatDelegateImpl.this.m22218g0(0, true);
            if (g0 == null || (menuBuilder = g0.f246j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menuBuilder, i);
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return AppCompatDelegateImpl.this.m22202p0() ? m22177b(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        @RequiresApi
        public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            return (!AppCompatDelegateImpl.this.m22202p0() || i != 0) ? super.onWindowStartingActionMode(callback, i) : m22177b(callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$AutoBatteryNightModeManager.class */
    public class AutoBatteryNightModeManager extends AutoNightModeManager {

        /* renamed from: c */
        private final PowerManager f229c;

        AutoBatteryNightModeManager(@NonNull Context context) {
            super();
            this.f229c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        /* renamed from: b */
        IntentFilter mo22174b() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        /* renamed from: c */
        public int mo22173c() {
            int i = 1;
            if (Build.VERSION.SDK_INT >= 21) {
                i = 1;
                if (this.f229c.isPowerSaveMode()) {
                    i = 2;
                }
            }
            return i;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        /* renamed from: d */
        public void mo22172d() {
            AppCompatDelegateImpl.this.m22252I();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager.class */
    public abstract class AutoNightModeManager {

        /* renamed from: a */
        private BroadcastReceiver f231a;

        AutoNightModeManager() {
        }

        /* renamed from: a */
        void m22176a() {
            BroadcastReceiver broadcastReceiver = this.f231a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.f198j.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException e) {
                }
                this.f231a = null;
            }
        }

        @Nullable
        /* renamed from: b */
        abstract IntentFilter mo22174b();

        /* renamed from: c */
        abstract int mo22173c();

        /* renamed from: d */
        abstract void mo22172d();

        /* renamed from: e */
        void m22175e() {
            m22176a();
            IntentFilter b = mo22174b();
            if (b != null && b.countActions() != 0) {
                if (this.f231a == null) {
                    this.f231a = new BroadcastReceiver() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager.1
                        @Override // android.content.BroadcastReceiver
                        public void onReceive(Context context, Intent intent) {
                            AutoNightModeManager.this.mo22172d();
                        }
                    };
                }
                AppCompatDelegateImpl.this.f198j.registerReceiver(this.f231a, b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager.class */
    public class AutoTimeNightModeManager extends AutoNightModeManager {

        /* renamed from: c */
        private final TwilightManager f234c;

        AutoTimeNightModeManager(@NonNull TwilightManager twilightManager) {
            super();
            this.f234c = twilightManager;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        /* renamed from: b */
        IntentFilter mo22174b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        /* renamed from: c */
        public int mo22173c() {
            return this.f234c.m22118d() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        /* renamed from: d */
        public void mo22172d() {
            AppCompatDelegateImpl.this.m22252I();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$ConfigurationImplApi17.class */
    public static class ConfigurationImplApi17 {
        private ConfigurationImplApi17() {
        }

        /* renamed from: a */
        static void m22171a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            int i = configuration.densityDpi;
            int i2 = configuration2.densityDpi;
            if (i != i2) {
                configuration3.densityDpi = i2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$ConfigurationImplApi24.class */
    public static class ConfigurationImplApi24 {
        private ConfigurationImplApi24() {
        }

        /* renamed from: a */
        static void m22170a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (!locales.equals(locales2)) {
                configuration3.setLocales(locales2);
                configuration3.locale = configuration2.locale;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$ConfigurationImplApi26.class */
    public static class ConfigurationImplApi26 {
        private ConfigurationImplApi26() {
        }

        /* renamed from: a */
        static void m22169a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            int i = configuration.colorMode;
            int i2 = configuration2.colorMode;
            if ((i & 3) != (i2 & 3)) {
                configuration3.colorMode |= i2 & 3;
            }
            int i3 = configuration.colorMode;
            int i4 = configuration2.colorMode;
            if ((i3 & 12) != (i4 & 12)) {
                configuration3.colorMode |= i4 & 12;
            }
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$ContextThemeWrapperCompatApi17Impl.class */
    private static class ContextThemeWrapperCompatApi17Impl {
        private ContextThemeWrapperCompatApi17Impl() {
        }

        /* renamed from: a */
        static void m22168a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView.class */
    public class ListMenuDecorView extends ContentFrameLayout {
        public ListMenuDecorView(Context context) {
            super(context);
        }

        /* renamed from: b */
        private boolean m22167b(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m22230W(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !m22167b((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImpl.this.m22236Q(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(AppCompatResources.m22069d(getContext(), i));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState.class */
    public static final class PanelFeatureState {

        /* renamed from: a */
        int f237a;

        /* renamed from: b */
        int f238b;

        /* renamed from: c */
        int f239c;

        /* renamed from: d */
        int f240d;

        /* renamed from: e */
        int f241e;

        /* renamed from: f */
        int f242f;

        /* renamed from: g */
        ViewGroup f243g;

        /* renamed from: h */
        View f244h;

        /* renamed from: i */
        View f245i;

        /* renamed from: j */
        MenuBuilder f246j;

        /* renamed from: k */
        ListMenuPresenter f247k;

        /* renamed from: l */
        Context f248l;

        /* renamed from: m */
        boolean f249m;

        /* renamed from: n */
        boolean f250n;

        /* renamed from: o */
        boolean f251o;

        /* renamed from: p */
        public boolean f252p;

        /* renamed from: q */
        boolean f253q = false;

        /* renamed from: r */
        boolean f254r;

        /* renamed from: s */
        Bundle f255s;

        /* JADX INFO: Access modifiers changed from: private */
        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState.class */
        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState.1
                /* renamed from: a */
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.m22162a(parcel, null);
                }

                /* renamed from: b */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.m22162a(parcel, classLoader);
                }

                /* renamed from: c */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };

            /* renamed from: f */
            int f256f;

            /* renamed from: g */
            boolean f257g;

            /* renamed from: h */
            Bundle f258h;

            SavedState() {
            }

            /* renamed from: a */
            static SavedState m22162a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f256f = parcel.readInt();
                boolean z = true;
                if (parcel.readInt() != 1) {
                    z = false;
                }
                savedState.f257g = z;
                if (z) {
                    savedState.f258h = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f256f);
                parcel.writeInt(this.f257g ? 1 : 0);
                if (this.f257g) {
                    parcel.writeBundle(this.f258h);
                }
            }
        }

        PanelFeatureState(int i) {
            this.f237a = i;
        }

        /* renamed from: a */
        MenuView m22166a(MenuPresenter.Callback callback) {
            if (this.f246j == null) {
                return null;
            }
            if (this.f247k == null) {
                ListMenuPresenter listMenuPresenter = new ListMenuPresenter(this.f248l, C0042R.layout.abc_list_menu_item_layout);
                this.f247k = listMenuPresenter;
                listMenuPresenter.mo9519h(callback);
                this.f246j.m21874b(this.f247k);
            }
            return this.f247k.m21904b(this.f243g);
        }

        /* renamed from: b */
        public boolean m22165b() {
            boolean z = false;
            if (this.f244h == null) {
                return false;
            }
            if (this.f245i != null) {
                return true;
            }
            if (this.f247k.m21905a().getCount() > 0) {
                z = true;
            }
            return z;
        }

        /* renamed from: c */
        void m22164c(MenuBuilder menuBuilder) {
            ListMenuPresenter listMenuPresenter;
            MenuBuilder menuBuilder2 = this.f246j;
            if (menuBuilder != menuBuilder2) {
                if (menuBuilder2 != null) {
                    menuBuilder2.m21884Q(this.f247k);
                }
                this.f246j = menuBuilder;
                if (menuBuilder != null && (listMenuPresenter = this.f247k) != null) {
                    menuBuilder.m21874b(listMenuPresenter);
                }
            }
        }

        /* renamed from: d */
        void m22163d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(C0042R.attr.actionBarPopupTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                newTheme.applyStyle(i, true);
            }
            newTheme.resolveAttribute(C0042R.attr.panelMenuListTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                newTheme.applyStyle(i2, true);
            } else {
                newTheme.applyStyle(C0042R.style.Theme_AppCompat_CompactMenu, true);
            }
            androidx.appcompat.view.ContextThemeWrapper contextThemeWrapper = new androidx.appcompat.view.ContextThemeWrapper(context, 0);
            contextThemeWrapper.getTheme().setTo(newTheme);
            this.f248l = contextThemeWrapper;
            TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(C0042R.styleable.AppCompatTheme);
            this.f238b = obtainStyledAttributes.getResourceId(C0042R.styleable.AppCompatTheme_panelBackground, 0);
            this.f242f = obtainStyledAttributes.getResourceId(C0042R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelMenuPresenterCallback.class */
    public final class PanelMenuPresenterCallback implements MenuPresenter.Callback {
        PanelMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        /* renamed from: c */
        public void mo21698c(@NonNull MenuBuilder menuBuilder, boolean z) {
            MenuBuilder F = menuBuilder.mo21788F();
            boolean z2 = F != menuBuilder;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                menuBuilder = F;
            }
            PanelFeatureState b0 = appCompatDelegateImpl.m22225b0(menuBuilder);
            if (b0 == null) {
                return;
            }
            if (z2) {
                AppCompatDelegateImpl.this.m22242N(b0.f237a, b0, F);
                AppCompatDelegateImpl.this.m22235R(b0, true);
                return;
            }
            AppCompatDelegateImpl.this.m22235R(b0, z);
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        /* renamed from: d */
        public boolean mo21697d(@NonNull MenuBuilder menuBuilder) {
            Window.Callback i0;
            if (menuBuilder != menuBuilder.mo21788F()) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.f171F || (i0 = appCompatDelegateImpl.m22215i0()) == null || AppCompatDelegateImpl.this.f183R) {
                return true;
            }
            i0.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    static {
        boolean z = false;
        f161g0 = Build.VERSION.SDK_INT < 21;
        f162h0 = new int[]{16842836};
        f163i0 = !"robolectric".equals(Build.FINGERPRINT);
        if (Build.VERSION.SDK_INT >= 17) {
            z = true;
        }
        f164j0 = z;
        if (f161g0 && !f165k0) {
            final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.1
                /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
                    if (r0.contains("Drawable") != false) goto L_0x002f;
                 */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private boolean m22183a(java.lang.Throwable r4) {
                    /*
                        r3 = this;
                        r0 = r4
                        boolean r0 = r0 instanceof android.content.res.Resources.NotFoundException
                        r5 = r0
                        r0 = 0
                        r6 = r0
                        r0 = r6
                        r7 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x0032
                        r0 = r4
                        java.lang.String r0 = r0.getMessage()
                        r4 = r0
                        r0 = r6
                        r7 = r0
                        r0 = r4
                        if (r0 == 0) goto L_0x0032
                        r0 = r4
                        java.lang.String r1 = "drawable"
                        boolean r0 = r0.contains(r1)
                        if (r0 != 0) goto L_0x002f
                        r0 = r6
                        r7 = r0
                        r0 = r4
                        java.lang.String r1 = "Drawable"
                        boolean r0 = r0.contains(r1)
                        if (r0 == 0) goto L_0x0032
                    L_0x002f:
                        r0 = 1
                        r7 = r0
                    L_0x0032:
                        r0 = r7
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.C00571.m22183a(java.lang.Throwable):boolean");
                }

                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th) {
                    if (m22183a(th)) {
                        Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                        notFoundException.initCause(th.getCause());
                        notFoundException.setStackTrace(th.getStackTrace());
                        defaultUncaughtExceptionHandler.uncaughtException(thread, notFoundException);
                        return;
                    }
                    defaultUncaughtExceptionHandler.uncaughtException(thread, th);
                }
            });
            f165k0 = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImpl(Activity activity, AppCompatCallback appCompatCallback) {
        this(activity, null, appCompatCallback, activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImpl(Dialog dialog, AppCompatCallback appCompatCallback) {
        this(dialog.getContext(), dialog.getWindow(), appCompatCallback, dialog);
    }

    private AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback, Object obj) {
        Integer num;
        AppCompatActivity L0;
        this.f212x = null;
        this.f213y = true;
        this.f184S = -100;
        this.f192a0 = new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.2
            @Override // java.lang.Runnable
            public void run() {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                if ((appCompatDelegateImpl.f191Z & 1) != 0) {
                    appCompatDelegateImpl.m22229X(0);
                }
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                if ((appCompatDelegateImpl2.f191Z & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0) {
                    appCompatDelegateImpl2.m22229X(108);
                }
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.f190Y = false;
                appCompatDelegateImpl3.f191Z = 0;
            }
        };
        this.f198j = context;
        this.f201m = appCompatCallback;
        this.f197i = obj;
        if (this.f184S == -100 && (obj instanceof Dialog) && (L0 = m22245L0()) != null) {
            this.f184S = L0.getDelegate().mo22211l();
        }
        if (this.f184S == -100 && (num = f160f0.get(this.f197i.getClass().getName())) != null) {
            this.f184S = num.intValue();
            f160f0.remove(this.f197i.getClass().getName());
        }
        if (window != null) {
            m22246L(window);
        }
        AppCompatDrawableManager.m21631h();
    }

    /* renamed from: A0 */
    private void m22266A0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i;
        ViewGroup.LayoutParams layoutParams;
        if (!panelFeatureState.f251o && !this.f183R) {
            if (panelFeatureState.f237a == 0) {
                if ((this.f198j.getResources().getConfiguration().screenLayout & 15) == 4) {
                    return;
                }
            }
            Window.Callback i0 = m22215i0();
            if (i0 == null || i0.onMenuOpened(panelFeatureState.f237a, panelFeatureState.f246j)) {
                WindowManager windowManager = (WindowManager) this.f198j.getSystemService("window");
                if (windowManager != null && m22261D0(panelFeatureState, keyEvent)) {
                    if (panelFeatureState.f243g == null || panelFeatureState.f253q) {
                        ViewGroup viewGroup = panelFeatureState.f243g;
                        if (viewGroup == null) {
                            if (!m22210l0(panelFeatureState) || panelFeatureState.f243g == null) {
                                return;
                            }
                        } else if (panelFeatureState.f253q && viewGroup.getChildCount() > 0) {
                            panelFeatureState.f243g.removeAllViews();
                        }
                        if (!m22212k0(panelFeatureState) || !panelFeatureState.m22165b()) {
                            panelFeatureState.f253q = true;
                            return;
                        }
                        ViewGroup.LayoutParams layoutParams2 = panelFeatureState.f244h.getLayoutParams();
                        ViewGroup.LayoutParams layoutParams3 = layoutParams2;
                        if (layoutParams2 == null) {
                            layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
                        }
                        panelFeatureState.f243g.setBackgroundResource(panelFeatureState.f238b);
                        ViewParent parent = panelFeatureState.f244h.getParent();
                        if (parent instanceof ViewGroup) {
                            ((ViewGroup) parent).removeView(panelFeatureState.f244h);
                        }
                        panelFeatureState.f243g.addView(panelFeatureState.f244h, layoutParams3);
                        if (!panelFeatureState.f244h.hasFocus()) {
                            panelFeatureState.f244h.requestFocus();
                        }
                    } else {
                        View view = panelFeatureState.f245i;
                        if (!(view == null || (layoutParams = view.getLayoutParams()) == null || layoutParams.width != -1)) {
                            i = -1;
                            panelFeatureState.f250n = false;
                            WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i, -2, panelFeatureState.f240d, panelFeatureState.f241e, CloseCodes.PROTOCOL_ERROR, 8519680, -3);
                            layoutParams4.gravity = panelFeatureState.f239c;
                            layoutParams4.windowAnimations = panelFeatureState.f242f;
                            windowManager.addView(panelFeatureState.f243g, layoutParams4);
                            panelFeatureState.f251o = true;
                            return;
                        }
                    }
                    i = -2;
                    panelFeatureState.f250n = false;
                    WindowManager.LayoutParams layoutParams42 = new WindowManager.LayoutParams(i, -2, panelFeatureState.f240d, panelFeatureState.f241e, CloseCodes.PROTOCOL_ERROR, 8519680, -3);
                    layoutParams42.gravity = panelFeatureState.f239c;
                    layoutParams42.windowAnimations = panelFeatureState.f242f;
                    windowManager.addView(panelFeatureState.f243g, layoutParams42);
                    panelFeatureState.f251o = true;
                    return;
                }
                return;
            }
            m22235R(panelFeatureState, true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (m22261D0(r6, r8) != false) goto L_0x0024;
     */
    /* renamed from: C0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m22263C0(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r6, int r7, android.view.KeyEvent r8, int r9) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0.isSystem()
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0010
            r0 = 0
            return r0
        L_0x0010:
            r0 = r6
            boolean r0 = r0.f249m
            if (r0 != 0) goto L_0x0024
            r0 = r11
            r10 = r0
            r0 = r5
            r1 = r6
            r2 = r8
            boolean r0 = r0.m22261D0(r1, r2)
            if (r0 == 0) goto L_0x003e
        L_0x0024:
            r0 = r6
            androidx.appcompat.view.menu.MenuBuilder r0 = r0.f246j
            r12 = r0
            r0 = r11
            r10 = r0
            r0 = r12
            if (r0 == 0) goto L_0x003e
            r0 = r12
            r1 = r7
            r2 = r8
            r3 = r9
            boolean r0 = r0.performShortcut(r1, r2, r3)
            r10 = r0
        L_0x003e:
            r0 = r10
            if (r0 == 0) goto L_0x0057
            r0 = r9
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L_0x0057
            r0 = r5
            androidx.appcompat.widget.DecorContentParent r0 = r0.f205q
            if (r0 != 0) goto L_0x0057
            r0 = r5
            r1 = r6
            r2 = 1
            r0.m22235R(r1, r2)
        L_0x0057:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m22263C0(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, int, android.view.KeyEvent, int):boolean");
    }

    /* renamed from: D0 */
    private boolean m22261D0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        DecorContentParent decorContentParent;
        DecorContentParent decorContentParent2;
        DecorContentParent decorContentParent3;
        if (this.f183R) {
            return false;
        }
        if (panelFeatureState.f249m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.f178M;
        if (!(panelFeatureState2 == null || panelFeatureState2 == panelFeatureState)) {
            m22235R(panelFeatureState2, false);
        }
        Window.Callback i0 = m22215i0();
        if (i0 != null) {
            panelFeatureState.f245i = i0.onCreatePanelView(panelFeatureState.f237a);
        }
        int i = panelFeatureState.f237a;
        boolean z = i == 0 || i == 108;
        if (z && (decorContentParent3 = this.f205q) != null) {
            decorContentParent3.setMenuPrepared();
        }
        if (panelFeatureState.f245i == null && (!z || !(m22265B0() instanceof ToolbarActionBar))) {
            if (panelFeatureState.f246j == null || panelFeatureState.f254r) {
                if (panelFeatureState.f246j == null && (!m22208m0(panelFeatureState) || panelFeatureState.f246j == null)) {
                    return false;
                }
                if (z && this.f205q != null) {
                    if (this.f206r == null) {
                        this.f206r = new ActionMenuPresenterCallback();
                    }
                    this.f205q.setMenu(panelFeatureState.f246j, this.f206r);
                }
                panelFeatureState.f246j.m21863h0();
                if (!i0.onCreatePanelMenu(panelFeatureState.f237a, panelFeatureState.f246j)) {
                    panelFeatureState.m22164c(null);
                    if (!z || (decorContentParent2 = this.f205q) == null) {
                        return false;
                    }
                    decorContentParent2.setMenu(null, this.f206r);
                    return false;
                }
                panelFeatureState.f254r = false;
            }
            panelFeatureState.f246j.m21863h0();
            Bundle bundle = panelFeatureState.f255s;
            if (bundle != null) {
                panelFeatureState.f246j.m21883R(bundle);
                panelFeatureState.f255s = null;
            }
            if (!i0.onPreparePanel(0, panelFeatureState.f245i, panelFeatureState.f246j)) {
                if (z && (decorContentParent = this.f205q) != null) {
                    decorContentParent.setMenu(null, this.f206r);
                }
                panelFeatureState.f246j.m21864g0();
                return false;
            }
            boolean z2 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.f252p = z2;
            panelFeatureState.f246j.setQwertyMode(z2);
            panelFeatureState.f246j.m21864g0();
        }
        panelFeatureState.f249m = true;
        panelFeatureState.f250n = false;
        this.f178M = panelFeatureState;
        return true;
    }

    /* renamed from: E0 */
    private void m22259E0(boolean z) {
        DecorContentParent decorContentParent = this.f205q;
        if (decorContentParent == null || !decorContentParent.mo21511b() || (ViewConfiguration.get(this.f198j).hasPermanentMenuKey() && !this.f205q.mo21510c())) {
            PanelFeatureState g0 = m22218g0(0, true);
            g0.f253q = true;
            m22235R(g0, false);
            m22266A0(g0, null);
            return;
        }
        Window.Callback i0 = m22215i0();
        if (this.f205q.mo21512a() && z) {
            this.f205q.mo21509d();
            if (!this.f183R) {
                i0.onPanelClosed(108, m22218g0(0, true).f246j);
            }
        } else if (i0 != null && !this.f183R) {
            if (this.f190Y && (this.f191Z & 1) != 0) {
                this.f199k.getDecorView().removeCallbacks(this.f192a0);
                this.f192a0.run();
            }
            PanelFeatureState g02 = m22218g0(0, true);
            MenuBuilder menuBuilder = g02.f246j;
            if (menuBuilder != null && !g02.f254r && i0.onPreparePanel(0, g02.f245i, menuBuilder)) {
                i0.onMenuOpened(108, g02.f246j);
                this.f205q.mo21508e();
            }
        }
    }

    /* renamed from: F0 */
    private int m22257F0(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        int i2 = i;
        if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i2 = 109;
        }
        return i2;
    }

    /* renamed from: H0 */
    private boolean m22253H0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f199k.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || ViewCompat.m19219R((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    /* renamed from: J */
    private boolean m22250J(boolean z) {
        if (this.f183R) {
            return false;
        }
        int M = m22244M();
        boolean M0 = m22243M0(m22200q0(this.f198j, M), z);
        if (M == 0) {
            m22219f0(this.f198j).m22175e();
        } else {
            AutoNightModeManager autoNightModeManager = this.f188W;
            if (autoNightModeManager != null) {
                autoNightModeManager.m22176a();
            }
        }
        if (M == 3) {
            m22221e0(this.f198j).m22175e();
        } else {
            AutoNightModeManager autoNightModeManager2 = this.f189X;
            if (autoNightModeManager2 != null) {
                autoNightModeManager2.m22176a();
            }
        }
        return M0;
    }

    /* renamed from: K */
    private void m22248K() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f166A.findViewById(16908290);
        View decorView = this.f199k.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f198j.obtainStyledAttributes(C0042R.styleable.AppCompatTheme);
        obtainStyledAttributes.getValue(C0042R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(C0042R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(C0042R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(C0042R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(C0042R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(C0042R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(C0042R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(C0042R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(C0042R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(C0042R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* renamed from: K0 */
    private void m22247K0() {
        if (this.f214z) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    /* renamed from: L */
    private void m22246L(@NonNull Window window) {
        if (this.f199k == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof AppCompatWindowCallback)) {
                AppCompatWindowCallback appCompatWindowCallback = new AppCompatWindowCallback(callback);
                this.f200l = appCompatWindowCallback;
                window.setCallback(appCompatWindowCallback);
                TintTypedArray u = TintTypedArray.m21245u(this.f198j, null, f162h0);
                Drawable h = u.m21258h(0);
                if (h != null) {
                    window.setBackgroundDrawable(h);
                }
                u.m21243w();
                this.f199k = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    @Nullable
    /* renamed from: L0 */
    private AppCompatActivity m22245L0() {
        for (Context context = this.f198j; context != null; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof AppCompatActivity) {
                return (AppCompatActivity) context;
            }
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: M */
    private int m22244M() {
        int i = this.f184S;
        if (i == -100) {
            i = AppCompatDelegate.m22270j();
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0098  */
    /* renamed from: M0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m22243M0(int r6, boolean r7) {
        /*
            r5 = this;
            r0 = r5
            r1 = r5
            android.content.Context r1 = r1.f198j
            r2 = r6
            r3 = 0
            android.content.res.Configuration r0 = r0.m22234S(r1, r2, r3)
            r8 = r0
            r0 = r5
            boolean r0 = r0.m22204o0()
            r9 = r0
            r0 = r5
            android.content.Context r0 = r0.f198j
            android.content.res.Resources r0 = r0.getResources()
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r0 = r0.uiMode
            r1 = 48
            r0 = r0 & r1
            r10 = r0
            r0 = r8
            int r0 = r0.uiMode
            r1 = 48
            r0 = r0 & r1
            r11 = r0
            r0 = 1
            r12 = r0
            r0 = r10
            r1 = r11
            if (r0 == r1) goto L_0x0078
            r0 = r7
            if (r0 == 0) goto L_0x0078
            r0 = r9
            if (r0 != 0) goto L_0x0078
            r0 = r5
            boolean r0 = r0.f180O
            if (r0 == 0) goto L_0x0078
            boolean r0 = androidx.appcompat.app.AppCompatDelegateImpl.f163i0
            if (r0 != 0) goto L_0x0053
            r0 = r5
            boolean r0 = r0.f181P
            if (r0 == 0) goto L_0x0078
        L_0x0053:
            r0 = r5
            java.lang.Object r0 = r0.f197i
            r8 = r0
            r0 = r8
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x0078
            r0 = r8
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChild()
            if (r0 != 0) goto L_0x0078
            r0 = r5
            java.lang.Object r0 = r0.f197i
            android.app.Activity r0 = (android.app.Activity) r0
            androidx.core.app.ActivityCompat.m19857m(r0)
            r0 = 1
            r7 = r0
            goto L_0x007a
        L_0x0078:
            r0 = 0
            r7 = r0
        L_0x007a:
            r0 = r7
            if (r0 != 0) goto L_0x0094
            r0 = r10
            r1 = r11
            if (r0 == r1) goto L_0x0094
            r0 = r5
            r1 = r11
            r2 = r9
            r3 = 0
            r0.m22241N0(r1, r2, r3)
            r0 = r12
            r7 = r0
            goto L_0x0094
        L_0x0094:
            r0 = r7
            if (r0 == 0) goto L_0x00ac
            r0 = r5
            java.lang.Object r0 = r0.f197i
            r8 = r0
            r0 = r8
            boolean r0 = r0 instanceof androidx.appcompat.app.AppCompatActivity
            if (r0 == 0) goto L_0x00ac
            r0 = r8
            androidx.appcompat.app.AppCompatActivity r0 = (androidx.appcompat.app.AppCompatActivity) r0
            r1 = r6
            r0.onNightModeChanged(r1)
        L_0x00ac:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m22243M0(int, boolean):boolean");
    }

    /* renamed from: N0 */
    private void m22241N0(int i, boolean z, @Nullable Configuration configuration) {
        Resources resources = this.f198j.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration2, null);
        if (Build.VERSION.SDK_INT < 26) {
            ResourcesFlusher.m22137a(resources);
        }
        int i2 = this.f185T;
        if (i2 != 0) {
            this.f198j.setTheme(i2);
            if (Build.VERSION.SDK_INT >= 23) {
                this.f198j.getTheme().applyStyle(this.f185T, true);
            }
        }
        if (z) {
            Object obj = this.f197i;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof LifecycleOwner) {
                    if (((LifecycleOwner) activity).getLifecycle().mo18230b().isAtLeast(Lifecycle.State.STARTED)) {
                        activity.onConfigurationChanged(configuration2);
                    }
                } else if (this.f182Q) {
                    activity.onConfigurationChanged(configuration2);
                }
            }
        }
    }

    /* renamed from: P */
    private void m22238P() {
        AutoNightModeManager autoNightModeManager = this.f188W;
        if (autoNightModeManager != null) {
            autoNightModeManager.m22176a();
        }
        AutoNightModeManager autoNightModeManager2 = this.f189X;
        if (autoNightModeManager2 != null) {
            autoNightModeManager2.m22176a();
        }
    }

    /* renamed from: P0 */
    private void m22237P0(View view) {
        view.setBackgroundColor((ViewCompat.m19225L(view) & 8192) != 0 ? ContextCompat.m19675d(this.f198j, C0042R.C0043color.abc_decor_view_status_guard_light) : ContextCompat.m19675d(this.f198j, C0042R.C0043color.abc_decor_view_status_guard));
    }

    @NonNull
    /* renamed from: S */
    private Configuration m22234S(@NonNull Context context, int i, @Nullable Configuration configuration) {
        int i2 = i != 1 ? i != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    /* renamed from: T */
    private ViewGroup m22233T() {
        ViewGroup viewGroup;
        TypedArray obtainStyledAttributes = this.f198j.obtainStyledAttributes(C0042R.styleable.AppCompatTheme);
        if (obtainStyledAttributes.hasValue(C0042R.styleable.AppCompatTheme_windowActionBar)) {
            if (obtainStyledAttributes.getBoolean(C0042R.styleable.AppCompatTheme_windowNoTitle, false)) {
                mo22267A(1);
            } else if (obtainStyledAttributes.getBoolean(C0042R.styleable.AppCompatTheme_windowActionBar, false)) {
                mo22267A(108);
            }
            if (obtainStyledAttributes.getBoolean(C0042R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
                mo22267A(109);
            }
            if (obtainStyledAttributes.getBoolean(C0042R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
                mo22267A(10);
            }
            this.f174I = obtainStyledAttributes.getBoolean(C0042R.styleable.AppCompatTheme_android_windowIsFloating, false);
            obtainStyledAttributes.recycle();
            m22226a0();
            this.f199k.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f198j);
            if (this.f175J) {
                viewGroup = this.f173H ? (ViewGroup) from.inflate(C0042R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(C0042R.layout.abc_screen_simple, (ViewGroup) null);
            } else if (this.f174I) {
                viewGroup = (ViewGroup) from.inflate(C0042R.layout.abc_dialog_title_material, (ViewGroup) null);
                this.f172G = false;
                this.f171F = false;
            } else if (this.f171F) {
                TypedValue typedValue = new TypedValue();
                this.f198j.getTheme().resolveAttribute(C0042R.attr.actionBarTheme, typedValue, true);
                ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new androidx.appcompat.view.ContextThemeWrapper(this.f198j, typedValue.resourceId) : this.f198j).inflate(C0042R.layout.abc_screen_toolbar, (ViewGroup) null);
                DecorContentParent decorContentParent = (DecorContentParent) viewGroup2.findViewById(C0042R.C0045id.decor_content_parent);
                this.f205q = decorContentParent;
                decorContentParent.setWindowCallback(m22215i0());
                if (this.f172G) {
                    this.f205q.mo21507f(109);
                }
                if (this.f169D) {
                    this.f205q.mo21507f(2);
                }
                viewGroup = viewGroup2;
                if (this.f170E) {
                    this.f205q.mo21507f(5);
                    viewGroup = viewGroup2;
                }
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                if (Build.VERSION.SDK_INT >= 21) {
                    ViewCompat.m19243A0(viewGroup, new OnApplyWindowInsetsListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.3
                        @Override // androidx.core.view.OnApplyWindowInsetsListener
                        /* renamed from: a */
                        public WindowInsetsCompat mo9036a(View view, WindowInsetsCompat windowInsetsCompat) {
                            int h = windowInsetsCompat.m19093h();
                            int O0 = AppCompatDelegateImpl.this.m22239O0(windowInsetsCompat, null);
                            WindowInsetsCompat windowInsetsCompat2 = windowInsetsCompat;
                            if (h != O0) {
                                windowInsetsCompat2 = windowInsetsCompat.m19087n(windowInsetsCompat.m19095f(), O0, windowInsetsCompat.m19094g(), windowInsetsCompat.m19096e());
                            }
                            return ViewCompat.m19211Z(view, windowInsetsCompat2);
                        }
                    });
                } else if (viewGroup instanceof FitWindowsViewGroup) {
                    ((FitWindowsViewGroup) viewGroup).setOnFitSystemWindowsListener(new FitWindowsViewGroup.OnFitSystemWindowsListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.4
                        @Override // androidx.appcompat.widget.FitWindowsViewGroup.OnFitSystemWindowsListener
                        /* renamed from: a */
                        public void mo21486a(Rect rect) {
                            rect.top = AppCompatDelegateImpl.this.m22239O0(null, rect);
                        }
                    });
                }
                if (this.f205q == null) {
                    this.f167B = (TextView) viewGroup.findViewById(C0042R.C0045id.title);
                }
                ViewUtils.m21148c(viewGroup);
                ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(C0042R.C0045id.action_bar_activity_content);
                ViewGroup viewGroup3 = (ViewGroup) this.f199k.findViewById(16908290);
                if (viewGroup3 != null) {
                    while (viewGroup3.getChildCount() > 0) {
                        View childAt = viewGroup3.getChildAt(0);
                        viewGroup3.removeViewAt(0);
                        contentFrameLayout.addView(childAt);
                    }
                    viewGroup3.setId(-1);
                    contentFrameLayout.setId(16908290);
                    if (viewGroup3 instanceof FrameLayout) {
                        ((FrameLayout) viewGroup3).setForeground(null);
                    }
                }
                this.f199k.setContentView(viewGroup);
                contentFrameLayout.setAttachListener(new ContentFrameLayout.OnAttachListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.5
                    @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
                    /* renamed from: a */
                    public void mo21513a() {
                    }

                    @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
                    public void onDetachedFromWindow() {
                        AppCompatDelegateImpl.this.m22231V();
                    }
                });
                return viewGroup;
            }
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f171F + ", windowActionBarOverlay: " + this.f172G + ", android:windowIsFloating: " + this.f174I + ", windowActionModeOverlay: " + this.f173H + ", windowNoTitle: " + this.f175J + " }");
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    /* renamed from: Z */
    private void m22227Z() {
        if (!this.f214z) {
            this.f166A = m22233T();
            CharSequence h0 = m22217h0();
            if (!TextUtils.isEmpty(h0)) {
                DecorContentParent decorContentParent = this.f205q;
                if (decorContentParent != null) {
                    decorContentParent.setWindowTitle(h0);
                } else if (m22265B0() != null) {
                    m22265B0().mo22114B(h0);
                } else {
                    TextView textView = this.f167B;
                    if (textView != null) {
                        textView.setText(h0);
                    }
                }
            }
            m22248K();
            m22184z0(this.f166A);
            this.f214z = true;
            PanelFeatureState g0 = m22218g0(0, false);
            if (this.f183R) {
                return;
            }
            if (g0 == null || g0.f246j == null) {
                m22206n0(108);
            }
        }
    }

    /* renamed from: a0 */
    private void m22226a0() {
        if (this.f199k == null) {
            Object obj = this.f197i;
            if (obj instanceof Activity) {
                m22246L(((Activity) obj).getWindow());
            }
        }
        if (this.f199k == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    @NonNull
    /* renamed from: c0 */
    private static Configuration m22224c0(@NonNull Configuration configuration, @Nullable Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (!(configuration2 == null || configuration.diff(configuration2) == 0)) {
            float f = configuration.fontScale;
            float f2 = configuration2.fontScale;
            if (f != f2) {
                configuration3.fontScale = f2;
            }
            int i = configuration.mcc;
            int i2 = configuration2.mcc;
            if (i != i2) {
                configuration3.mcc = i2;
            }
            int i3 = configuration.mnc;
            int i4 = configuration2.mnc;
            if (i3 != i4) {
                configuration3.mnc = i4;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                ConfigurationImplApi24.m22170a(configuration, configuration2, configuration3);
            } else if (!ObjectsCompat.m19346a(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i5 = configuration.touchscreen;
            int i6 = configuration2.touchscreen;
            if (i5 != i6) {
                configuration3.touchscreen = i6;
            }
            int i7 = configuration.keyboard;
            int i8 = configuration2.keyboard;
            if (i7 != i8) {
                configuration3.keyboard = i8;
            }
            int i9 = configuration.keyboardHidden;
            int i10 = configuration2.keyboardHidden;
            if (i9 != i10) {
                configuration3.keyboardHidden = i10;
            }
            int i11 = configuration.navigation;
            int i12 = configuration2.navigation;
            if (i11 != i12) {
                configuration3.navigation = i12;
            }
            int i13 = configuration.navigationHidden;
            int i14 = configuration2.navigationHidden;
            if (i13 != i14) {
                configuration3.navigationHidden = i14;
            }
            int i15 = configuration.orientation;
            int i16 = configuration2.orientation;
            if (i15 != i16) {
                configuration3.orientation = i16;
            }
            int i17 = configuration.screenLayout;
            int i18 = configuration2.screenLayout;
            if ((i17 & 15) != (i18 & 15)) {
                configuration3.screenLayout |= i18 & 15;
            }
            int i19 = configuration.screenLayout;
            int i20 = configuration2.screenLayout;
            if ((i19 & 192) != (i20 & 192)) {
                configuration3.screenLayout |= i20 & 192;
            }
            int i21 = configuration.screenLayout;
            int i22 = configuration2.screenLayout;
            if ((i21 & 48) != (i22 & 48)) {
                configuration3.screenLayout |= i22 & 48;
            }
            int i23 = configuration.screenLayout;
            int i24 = configuration2.screenLayout;
            if ((i23 & 768) != (i24 & 768)) {
                configuration3.screenLayout |= i24 & 768;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                ConfigurationImplApi26.m22169a(configuration, configuration2, configuration3);
            }
            int i25 = configuration.uiMode;
            int i26 = configuration2.uiMode;
            if ((i25 & 15) != (i26 & 15)) {
                configuration3.uiMode |= i26 & 15;
            }
            int i27 = configuration.uiMode;
            int i28 = configuration2.uiMode;
            if ((i27 & 48) != (i28 & 48)) {
                configuration3.uiMode |= i28 & 48;
            }
            int i29 = configuration.screenWidthDp;
            int i30 = configuration2.screenWidthDp;
            if (i29 != i30) {
                configuration3.screenWidthDp = i30;
            }
            int i31 = configuration.screenHeightDp;
            int i32 = configuration2.screenHeightDp;
            if (i31 != i32) {
                configuration3.screenHeightDp = i32;
            }
            int i33 = configuration.smallestScreenWidthDp;
            int i34 = configuration2.smallestScreenWidthDp;
            if (i33 != i34) {
                configuration3.smallestScreenWidthDp = i34;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                ConfigurationImplApi17.m22171a(configuration, configuration2, configuration3);
            }
        }
        return configuration3;
    }

    /* renamed from: e0 */
    private AutoNightModeManager m22221e0(@NonNull Context context) {
        if (this.f189X == null) {
            this.f189X = new AutoBatteryNightModeManager(context);
        }
        return this.f189X;
    }

    /* renamed from: f0 */
    private AutoNightModeManager m22219f0(@NonNull Context context) {
        if (this.f188W == null) {
            this.f188W = new AutoTimeNightModeManager(TwilightManager.m22121a(context));
        }
        return this.f188W;
    }

    /* renamed from: j0 */
    private void m22214j0() {
        m22227Z();
        if (this.f171F && this.f202n == null) {
            Object obj = this.f197i;
            if (obj instanceof Activity) {
                this.f202n = new WindowDecorActionBar((Activity) this.f197i, this.f172G);
            } else if (obj instanceof Dialog) {
                this.f202n = new WindowDecorActionBar((Dialog) this.f197i);
            }
            ActionBar actionBar = this.f202n;
            if (actionBar != null) {
                actionBar.mo22089r(this.f193b0);
            }
        }
    }

    /* renamed from: k0 */
    private boolean m22212k0(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.f245i;
        boolean z = true;
        if (view != null) {
            panelFeatureState.f244h = view;
            return true;
        } else if (panelFeatureState.f246j == null) {
            return false;
        } else {
            if (this.f207s == null) {
                this.f207s = new PanelMenuPresenterCallback();
            }
            View view2 = (View) panelFeatureState.m22166a(this.f207s);
            panelFeatureState.f244h = view2;
            if (view2 == null) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: l0 */
    private boolean m22210l0(PanelFeatureState panelFeatureState) {
        panelFeatureState.m22163d(m22222d0());
        panelFeatureState.f243g = new ListMenuDecorView(panelFeatureState.f248l);
        panelFeatureState.f239c = 81;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r0 == 108) goto L_0x0017;
     */
    /* renamed from: m0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m22208m0(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r6) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m22208m0(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState):boolean");
    }

    /* renamed from: n0 */
    private void m22206n0(int i) {
        this.f191Z = (1 << i) | this.f191Z;
        if (!this.f190Y) {
            ViewCompat.m19199f0(this.f199k.getDecorView(), this.f192a0);
            this.f190Y = true;
        }
    }

    /* renamed from: o0 */
    private boolean m22204o0() {
        if (!this.f187V && (this.f197i instanceof Activity)) {
            PackageManager packageManager = this.f198j.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f198j, this.f197i.getClass()), Build.VERSION.SDK_INT >= 29 ? 269221888 : Build.VERSION.SDK_INT >= 24 ? 786432 : 0);
                this.f186U = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException e) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
                this.f186U = false;
            }
        }
        this.f187V = true;
        return this.f186U;
    }

    /* renamed from: t0 */
    private boolean m22194t0(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        PanelFeatureState g0 = m22218g0(i, true);
        if (!g0.f251o) {
            return m22261D0(g0, keyEvent);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00d5  */
    /* renamed from: w0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m22188w0(int r5, android.view.KeyEvent r6) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m22188w0(int, android.view.KeyEvent):boolean");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: A */
    public boolean mo22267A(int i) {
        int F0 = m22257F0(i);
        if (this.f175J && F0 == 108) {
            return false;
        }
        if (this.f171F && F0 == 1) {
            this.f171F = false;
        }
        if (F0 == 1) {
            m22247K0();
            this.f175J = true;
            return true;
        } else if (F0 == 2) {
            m22247K0();
            this.f169D = true;
            return true;
        } else if (F0 == 5) {
            m22247K0();
            this.f170E = true;
            return true;
        } else if (F0 == 10) {
            m22247K0();
            this.f173H = true;
            return true;
        } else if (F0 == 108) {
            m22247K0();
            this.f171F = true;
            return true;
        } else if (F0 != 109) {
            return this.f199k.requestFeature(F0);
        } else {
            m22247K0();
            this.f172G = true;
            return true;
        }
    }

    /* renamed from: B0 */
    final ActionBar m22265B0() {
        return this.f202n;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: C */
    public void mo22264C(int i) {
        m22227Z();
        ViewGroup viewGroup = (ViewGroup) this.f166A.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f198j).inflate(i, viewGroup);
        this.f200l.m21935a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: D */
    public void mo22262D(View view) {
        m22227Z();
        ViewGroup viewGroup = (ViewGroup) this.f166A.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f200l.m21935a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: E */
    public void mo22260E(View view, ViewGroup.LayoutParams layoutParams) {
        m22227Z();
        ViewGroup viewGroup = (ViewGroup) this.f166A.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f200l.m21935a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: F */
    public void mo22258F(Toolbar toolbar) {
        if (this.f197i instanceof Activity) {
            ActionBar n = mo22207n();
            if (!(n instanceof WindowDecorActionBar)) {
                this.f203o = null;
                if (n != null) {
                    n.mo22126n();
                }
                if (toolbar != null) {
                    ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, m22217h0(), this.f200l);
                    this.f202n = toolbarActionBar;
                    this.f199k.setCallback(toolbarActionBar.m22131E());
                } else {
                    this.f202n = null;
                    this.f199k.setCallback(this.f200l);
                }
                mo22203p();
                return;
            }
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: G */
    public void mo22256G(@StyleRes int i) {
        this.f185T = i;
    }

    /* renamed from: G0 */
    final boolean m22255G0() {
        ViewGroup viewGroup;
        return this.f214z && (viewGroup = this.f166A) != null && ViewCompat.m19218S(viewGroup);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: H */
    public final void mo22254H(CharSequence charSequence) {
        this.f204p = charSequence;
        DecorContentParent decorContentParent = this.f205q;
        if (decorContentParent != null) {
            decorContentParent.setWindowTitle(charSequence);
        } else if (m22265B0() != null) {
            m22265B0().mo22114B(charSequence);
        } else {
            TextView textView = this.f167B;
            if (textView != null) {
                textView.setText(charSequence);
            }
        }
    }

    /* renamed from: I */
    public boolean m22252I() {
        return m22250J(true);
    }

    /* renamed from: I0 */
    public androidx.appcompat.view.ActionMode m22251I0(@NonNull ActionMode.Callback callback) {
        AppCompatCallback appCompatCallback;
        if (callback != null) {
            androidx.appcompat.view.ActionMode actionMode = this.f208t;
            if (actionMode != null) {
                actionMode.mo21976c();
            }
            ActionModeCallbackWrapperV9 actionModeCallbackWrapperV9 = new ActionModeCallbackWrapperV9(callback);
            ActionBar n = mo22207n();
            if (n != null) {
                androidx.appcompat.view.ActionMode C = n.mo22113C(actionModeCallbackWrapperV9);
                this.f208t = C;
                if (!(C == null || (appCompatCallback = this.f201m) == null)) {
                    appCompatCallback.onSupportActionModeStarted(C);
                }
            }
            if (this.f208t == null) {
                this.f208t = m22249J0(actionModeCallbackWrapperV9);
            }
            return this.f208t;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    /* renamed from: J0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    androidx.appcompat.view.ActionMode m22249J0(@androidx.annotation.NonNull androidx.appcompat.view.ActionMode.Callback r8) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m22249J0(androidx.appcompat.view.ActionMode$Callback):androidx.appcompat.view.ActionMode");
    }

    /* renamed from: N */
    void m22242N(int i, PanelFeatureState panelFeatureState, Menu menu) {
        PanelFeatureState panelFeatureState2 = panelFeatureState;
        Menu menu2 = menu;
        if (menu == null) {
            PanelFeatureState panelFeatureState3 = panelFeatureState;
            if (panelFeatureState == null) {
                panelFeatureState3 = panelFeatureState;
                if (i >= 0) {
                    PanelFeatureState[] panelFeatureStateArr = this.f177L;
                    panelFeatureState3 = panelFeatureState;
                    if (i < panelFeatureStateArr.length) {
                        panelFeatureState3 = panelFeatureStateArr[i];
                    }
                }
            }
            panelFeatureState2 = panelFeatureState3;
            menu2 = menu;
            if (panelFeatureState3 != null) {
                menu2 = panelFeatureState3.f246j;
                panelFeatureState2 = panelFeatureState3;
            }
        }
        if ((panelFeatureState2 == null || panelFeatureState2.f251o) && !this.f183R) {
            this.f200l.m21935a().onPanelClosed(i, menu2);
        }
    }

    /* renamed from: O */
    void m22240O(@NonNull MenuBuilder menuBuilder) {
        if (!this.f176K) {
            this.f176K = true;
            this.f205q.mo21506g();
            Window.Callback i0 = m22215i0();
            if (i0 != null && !this.f183R) {
                i0.onPanelClosed(108, menuBuilder);
            }
            this.f176K = false;
        }
    }

    /* renamed from: O0 */
    final int m22239O0(@Nullable WindowInsetsCompat windowInsetsCompat, @Nullable Rect rect) {
        int i;
        boolean z;
        boolean z2;
        int i2 = 0;
        int h = windowInsetsCompat != null ? windowInsetsCompat.m19093h() : rect != null ? rect.top : 0;
        ActionBarContextView actionBarContextView = this.f209u;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
            i = h;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f209u.getLayoutParams();
            boolean z3 = true;
            boolean z4 = true;
            if (this.f209u.isShown()) {
                if (this.f194c0 == null) {
                    this.f194c0 = new Rect();
                    this.f195d0 = new Rect();
                }
                Rect rect2 = this.f194c0;
                Rect rect3 = this.f195d0;
                if (windowInsetsCompat == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(windowInsetsCompat.m19095f(), windowInsetsCompat.m19093h(), windowInsetsCompat.m19094g(), windowInsetsCompat.m19096e());
                }
                ViewUtils.m21150a(this.f166A, rect2, rect3);
                int i3 = rect2.top;
                int i4 = rect2.left;
                int i5 = rect2.right;
                WindowInsetsCompat I = ViewCompat.m19228I(this.f166A);
                int f = I == null ? 0 : I.m19095f();
                int g = I == null ? 0 : I.m19094g();
                if (marginLayoutParams.topMargin == i3 && marginLayoutParams.leftMargin == i4 && marginLayoutParams.rightMargin == i5) {
                    z3 = false;
                } else {
                    marginLayoutParams.topMargin = i3;
                    marginLayoutParams.leftMargin = i4;
                    marginLayoutParams.rightMargin = i5;
                    z3 = true;
                }
                if (i3 <= 0 || this.f168C != null) {
                    View view = this.f168C;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        if (!(marginLayoutParams2.height == marginLayoutParams.topMargin && marginLayoutParams2.leftMargin == f && marginLayoutParams2.rightMargin == g)) {
                            marginLayoutParams2.height = marginLayoutParams.topMargin;
                            marginLayoutParams2.leftMargin = f;
                            marginLayoutParams2.rightMargin = g;
                            this.f168C.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f198j);
                    this.f168C = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = f;
                    layoutParams.rightMargin = g;
                    this.f166A.addView(this.f168C, -1, layoutParams);
                }
                if (this.f168C == null) {
                    z4 = false;
                }
                if (z4 && this.f168C.getVisibility() != 0) {
                    m22237P0(this.f168C);
                }
                h = h;
                if (!this.f173H) {
                    h = h;
                    if (z4) {
                        h = 0;
                    }
                }
                z2 = z4;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z2 = false;
                z3 = false;
            }
            i = h;
            z = z2;
            if (z3) {
                this.f209u.setLayoutParams(marginLayoutParams);
                i = h;
                z = z2;
            }
        }
        View view3 = this.f168C;
        if (view3 != null) {
            if (!z) {
                i2 = 8;
            }
            view3.setVisibility(i2);
        }
        return i;
    }

    /* renamed from: Q */
    void m22236Q(int i) {
        m22235R(m22218g0(i, true), true);
    }

    /* renamed from: R */
    void m22235R(PanelFeatureState panelFeatureState, boolean z) {
        ViewGroup viewGroup;
        DecorContentParent decorContentParent;
        if (!z || panelFeatureState.f237a != 0 || (decorContentParent = this.f205q) == null || !decorContentParent.mo21512a()) {
            WindowManager windowManager = (WindowManager) this.f198j.getSystemService("window");
            if (!(windowManager == null || !panelFeatureState.f251o || (viewGroup = panelFeatureState.f243g) == null)) {
                windowManager.removeView(viewGroup);
                if (z) {
                    m22242N(panelFeatureState.f237a, panelFeatureState, null);
                }
            }
            panelFeatureState.f249m = false;
            panelFeatureState.f250n = false;
            panelFeatureState.f251o = false;
            panelFeatureState.f244h = null;
            panelFeatureState.f253q = true;
            if (this.f178M == panelFeatureState) {
                this.f178M = null;
                return;
            }
            return;
        }
        m22240O(panelFeatureState.f246j);
    }

    /* renamed from: U */
    public View m22232U(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        boolean z = false;
        if (this.f196e0 == null) {
            String string = this.f198j.obtainStyledAttributes(C0042R.styleable.AppCompatTheme).getString(C0042R.styleable.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.f196e0 = new AppCompatViewInflater();
            } else {
                try {
                    this.f196e0 = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f196e0 = new AppCompatViewInflater();
                }
            }
        }
        if (!f161g0) {
            z = false;
        } else if (!(attributeSet instanceof XmlPullParser)) {
            z = m22253H0((ViewParent) view);
        } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
            z = true;
        }
        return this.f196e0.m22143q(view, str, context, attributeSet, z, f161g0, true, VectorEnabledTintResources.m21154c());
    }

    /* renamed from: V */
    void m22231V() {
        MenuBuilder menuBuilder;
        DecorContentParent decorContentParent = this.f205q;
        if (decorContentParent != null) {
            decorContentParent.mo21506g();
        }
        if (this.f210v != null) {
            this.f199k.getDecorView().removeCallbacks(this.f211w);
            if (this.f210v.isShowing()) {
                try {
                    this.f210v.dismiss();
                } catch (IllegalArgumentException e) {
                }
            }
            this.f210v = null;
        }
        m22228Y();
        PanelFeatureState g0 = m22218g0(0, false);
        if (g0 != null && (menuBuilder = g0.f246j) != null) {
            menuBuilder.close();
        }
    }

    /* renamed from: W */
    boolean m22230W(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f197i;
        boolean z = true;
        if (((obj instanceof KeyEventDispatcher.Component) || (obj instanceof AppCompatDialog)) && (decorView = this.f199k.getDecorView()) != null && KeyEventDispatcher.m19300d(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f200l.m21935a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() != 0) {
            z = false;
        }
        return z ? m22196s0(keyCode, keyEvent) : m22190v0(keyCode, keyEvent);
    }

    /* renamed from: X */
    void m22229X(int i) {
        PanelFeatureState g0;
        PanelFeatureState g02 = m22218g0(i, true);
        if (g02.f246j != null) {
            Bundle bundle = new Bundle();
            g02.f246j.m21881T(bundle);
            if (bundle.size() > 0) {
                g02.f255s = bundle;
            }
            g02.f246j.m21863h0();
            g02.f246j.clear();
        }
        g02.f254r = true;
        g02.f253q = true;
        if ((i == 108 || i == 0) && this.f205q != null && (g0 = m22218g0(0, false)) != null) {
            g0.f249m = false;
            m22261D0(g0, null);
        }
    }

    /* renamed from: Y */
    void m22228Y() {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f212x;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.m19114b();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    /* renamed from: a */
    public boolean mo9407a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        PanelFeatureState b0;
        Window.Callback i0 = m22215i0();
        if (i0 == null || this.f183R || (b0 = m22225b0(menuBuilder.mo21788F())) == null) {
            return false;
        }
        return i0.onMenuItemSelected(b0.f237a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    /* renamed from: b */
    public void mo9406b(@NonNull MenuBuilder menuBuilder) {
        m22259E0(true);
    }

    /* renamed from: b0 */
    PanelFeatureState m22225b0(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.f177L;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.f246j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: d */
    public void mo22223d(View view, ViewGroup.LayoutParams layoutParams) {
        m22227Z();
        ((ViewGroup) this.f166A.findViewById(16908290)).addView(view, layoutParams);
        this.f200l.m21935a().onContentChanged();
    }

    /* renamed from: d0 */
    final Context m22222d0() {
        ActionBar n = mo22207n();
        Context k = n != null ? n.mo22092k() : null;
        Context context = k;
        if (k == null) {
            context = this.f198j;
        }
        return context;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @NonNull
    @CallSuper
    /* renamed from: f */
    public Context mo22220f(@NonNull Context context) {
        boolean z = true;
        this.f180O = true;
        int q0 = m22200q0(context, m22244M());
        Configuration configuration = null;
        if (f164j0 && (context instanceof ContextThemeWrapper)) {
            try {
                ContextThemeWrapperCompatApi17Impl.m22168a((ContextThemeWrapper) context, m22234S(context, q0, null));
                return context;
            } catch (IllegalStateException e) {
            }
        }
        if (context instanceof androidx.appcompat.view.ContextThemeWrapper) {
            try {
                ((androidx.appcompat.view.ContextThemeWrapper) context).m21981a(m22234S(context, q0, null));
                return context;
            } catch (IllegalStateException e2) {
            }
        }
        if (!f163i0) {
            super.mo22220f(context);
            return context;
        }
        try {
            Configuration configuration2 = context.getPackageManager().getResourcesForApplication(context.getApplicationInfo()).getConfiguration();
            Configuration configuration3 = context.getResources().getConfiguration();
            if (!configuration2.equals(configuration3)) {
                configuration = m22224c0(configuration2, configuration3);
            }
            Configuration S = m22234S(context, q0, configuration);
            androidx.appcompat.view.ContextThemeWrapper contextThemeWrapper = new androidx.appcompat.view.ContextThemeWrapper(context, C0042R.style.Theme_AppCompat_Empty);
            contextThemeWrapper.m21981a(S);
            z = false;
            try {
                if (context.getTheme() == null) {
                    z = false;
                }
            } catch (NullPointerException e3) {
            }
            if (z) {
                ResourcesCompat.ThemeCompat.m19605a(contextThemeWrapper.getTheme());
            }
            super.mo22220f(contextThemeWrapper);
            return contextThemeWrapper;
        } catch (PackageManager.NameNotFoundException e4) {
            throw new RuntimeException("Application failed to obtain resources from itself", e4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r0.length <= r7) goto L_0x0012;
     */
    /* renamed from: g0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState m22218g0(int r7, boolean r8) {
        /*
            r6 = this;
            r0 = r6
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = r0.f177L
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0012
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.length
            r1 = r7
            if (r0 > r1) goto L_0x002e
        L_0x0012:
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[r0]
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0028
            r0 = r9
            r1 = 0
            r2 = r10
            r3 = 0
            r4 = r9
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
        L_0x0028:
            r0 = r6
            r1 = r10
            r0.f177L = r1
        L_0x002e:
            r0 = r10
            r1 = r7
            r0 = r0[r1]
            r11 = r0
            r0 = r11
            r9 = r0
            r0 = r11
            if (r0 != 0) goto L_0x004a
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r9 = r0
            r0 = r10
            r1 = r7
            r2 = r9
            r0[r1] = r2
        L_0x004a:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m22218g0(int, boolean):androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState");
    }

    /* renamed from: h0 */
    final CharSequence m22217h0() {
        Object obj = this.f197i;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.f204p;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @Nullable
    /* renamed from: i */
    public <T extends View> T mo22216i(@IdRes int i) {
        m22227Z();
        return (T) this.f199k.findViewById(i);
    }

    /* renamed from: i0 */
    final Window.Callback m22215i0() {
        return this.f199k.getCallback();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: k */
    public final ActionBarDrawerToggle.Delegate mo22213k() {
        return new ActionBarDrawableToggleImpl();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: l */
    public int mo22211l() {
        return this.f184S;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: m */
    public MenuInflater mo22209m() {
        if (this.f203o == null) {
            m22214j0();
            ActionBar actionBar = this.f202n;
            this.f203o = new SupportMenuInflater(actionBar != null ? actionBar.mo22092k() : this.f198j);
        }
        return this.f203o;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: n */
    public ActionBar mo22207n() {
        m22214j0();
        return this.f202n;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: o */
    public void mo22205o() {
        LayoutInflater from = LayoutInflater.from(this.f198j);
        if (from.getFactory() == null) {
            LayoutInflaterCompat.m19296b(from, this);
        } else if (!(from.getFactory2() instanceof AppCompatDelegateImpl)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return m22232U(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: p */
    public void mo22203p() {
        ActionBar n = mo22207n();
        if (n == null || !n.mo22127l()) {
            m22206n0(0);
        }
    }

    /* renamed from: p0 */
    public boolean m22202p0() {
        return this.f213y;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: q */
    public void mo22201q(Configuration configuration) {
        ActionBar n;
        if (this.f171F && this.f214z && (n = mo22207n()) != null) {
            n.mo22091m(configuration);
        }
        AppCompatDrawableManager.m21637b().m21632g(this.f198j);
        m22250J(false);
    }

    /* renamed from: q0 */
    int m22200q0(@NonNull Context context, int i) {
        if (i == -100) {
            return -1;
        }
        if (i != -1) {
            if (i != 0) {
                if (!(i == 1 || i == 2)) {
                    if (i == 3) {
                        return m22221e0(context).mo22173c();
                    }
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
            } else if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService(UiModeManager.class)).getNightMode() != 0) {
                return m22219f0(context).mo22173c();
            } else {
                return -1;
            }
        }
        return i;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: r */
    public void mo22199r(Bundle bundle) {
        this.f180O = true;
        m22250J(false);
        m22226a0();
        Object obj = this.f197i;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = NavUtils.m19808c((Activity) obj);
            } catch (IllegalArgumentException e) {
            }
            if (str != null) {
                ActionBar B0 = m22265B0();
                if (B0 == null) {
                    this.f193b0 = true;
                } else {
                    B0.mo22089r(true);
                }
            }
            AppCompatDelegate.m22274c(this);
        }
        this.f181P = true;
    }

    /* renamed from: r0 */
    boolean m22198r0() {
        androidx.appcompat.view.ActionMode actionMode = this.f208t;
        if (actionMode != null) {
            actionMode.mo21976c();
            return true;
        }
        ActionBar n = mo22207n();
        return n != null && n.mo22095h();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo22197s() {
        /*
            r4 = this;
            r0 = r4
            java.lang.Object r0 = r0.f197i
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x000e
            r0 = r4
            androidx.appcompat.app.AppCompatDelegate.m22269y(r0)
        L_0x000e:
            r0 = r4
            boolean r0 = r0.f190Y
            if (r0 == 0) goto L_0x0024
            r0 = r4
            android.view.Window r0 = r0.f199k
            android.view.View r0 = r0.getDecorView()
            r1 = r4
            java.lang.Runnable r1 = r1.f192a0
            boolean r0 = r0.removeCallbacks(r1)
        L_0x0024:
            r0 = r4
            r1 = 0
            r0.f182Q = r1
            r0 = r4
            r1 = 1
            r0.f183R = r1
            r0 = r4
            int r0 = r0.f184S
            r1 = -100
            if (r0 == r1) goto L_0x0068
            r0 = r4
            java.lang.Object r0 = r0.f197i
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x0068
            r0 = r5
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L_0x0068
            androidx.collection.SimpleArrayMap<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.f160f0
            r1 = r4
            java.lang.Object r1 = r1.f197i
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r2 = r4
            int r2 = r2.f184S
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x0079
        L_0x0068:
            androidx.collection.SimpleArrayMap<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.f160f0
            r1 = r4
            java.lang.Object r1 = r1.f197i
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.Object r0 = r0.remove(r1)
        L_0x0079:
            r0 = r4
            androidx.appcompat.app.ActionBar r0 = r0.f202n
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0086
            r0 = r5
            r0.mo22126n()
        L_0x0086:
            r0 = r4
            r0.m22238P()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.mo22197s():void");
    }

    /* renamed from: s0 */
    boolean m22196s0(int i, KeyEvent keyEvent) {
        boolean z = true;
        if (i == 4) {
            if ((keyEvent.getFlags() & 128) == 0) {
                z = false;
            }
            this.f179N = z;
            return false;
        } else if (i != 82) {
            return false;
        } else {
            m22194t0(0, keyEvent);
            return true;
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: t */
    public void mo22195t(Bundle bundle) {
        m22227Z();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: u */
    public void mo22193u() {
        ActionBar n = mo22207n();
        if (n != null) {
            n.mo22082y(true);
        }
    }

    /* renamed from: u0 */
    boolean m22192u0(int i, KeyEvent keyEvent) {
        ActionBar n = mo22207n();
        if (n != null && n.mo22090o(i, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.f178M;
        if (panelFeatureState != null && m22263C0(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            PanelFeatureState panelFeatureState2 = this.f178M;
            if (panelFeatureState2 == null) {
                return true;
            }
            panelFeatureState2.f250n = true;
            return true;
        } else if (this.f178M != null) {
            return false;
        } else {
            PanelFeatureState g0 = m22218g0(0, true);
            m22261D0(g0, keyEvent);
            boolean C0 = m22263C0(g0, keyEvent.getKeyCode(), keyEvent, 1);
            g0.f249m = false;
            return C0;
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: v */
    public void mo22191v(Bundle bundle) {
    }

    /* renamed from: v0 */
    boolean m22190v0(int i, KeyEvent keyEvent) {
        if (i == 4) {
            boolean z = this.f179N;
            this.f179N = false;
            PanelFeatureState g0 = m22218g0(0, false);
            if (g0 == null || !g0.f251o) {
                return m22198r0();
            }
            if (z) {
                return true;
            }
            m22235R(g0, true);
            return true;
        } else if (i != 82) {
            return false;
        } else {
            m22188w0(0, keyEvent);
            return true;
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: w */
    public void mo22189w() {
        this.f182Q = true;
        m22252I();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: x */
    public void mo22187x() {
        this.f182Q = false;
        ActionBar n = mo22207n();
        if (n != null) {
            n.mo22082y(false);
        }
    }

    /* renamed from: x0 */
    void m22186x0(int i) {
        ActionBar n;
        if (i == 108 && (n = mo22207n()) != null) {
            n.mo22094i(true);
        }
    }

    /* renamed from: y0 */
    void m22185y0(int i) {
        if (i == 108) {
            ActionBar n = mo22207n();
            if (n != null) {
                n.mo22094i(false);
            }
        } else if (i == 0) {
            PanelFeatureState g0 = m22218g0(i, true);
            if (g0.f251o) {
                m22235R(g0, false);
            }
        }
    }

    /* renamed from: z0 */
    void m22184z0(ViewGroup viewGroup) {
    }
}
