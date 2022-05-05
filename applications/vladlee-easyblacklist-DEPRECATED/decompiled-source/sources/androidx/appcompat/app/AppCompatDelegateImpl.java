package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
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
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
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
import androidx.appcompat.C0247a;
import androidx.appcompat.app.C0274a;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.appcompat.view.AbstractC0343b;
import androidx.appcompat.view.C0346d;
import androidx.appcompat.view.C0347e;
import androidx.appcompat.view.C0348f;
import androidx.appcompat.view.C0350g;
import androidx.appcompat.view.Window$CallbackC0355j;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.appcompat.view.menu.AbstractC0388t;
import androidx.appcompat.view.menu.C0368i;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.widget.AbstractC0435af;
import androidx.appcompat.widget.AbstractC0441aj;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.C0484bm;
import androidx.appcompat.widget.C0497bz;
import androidx.appcompat.widget.C0499ca;
import androidx.appcompat.widget.C0519q;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.core.app.C0610h;
import androidx.core.p037g.C0712aa;
import androidx.core.p037g.C0726e;
import androidx.core.p037g.C0741t;
import androidx.core.widget.C0785j;
import androidx.p026b.C0529a;
import com.google.android.gms.ads.AdRequest;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl.class */
public final class AppCompatDelegateImpl extends AbstractC0311o implements LayoutInflater.Factory2, C0371k.AbstractC0372a {

    /* renamed from: t */
    private static final Map<Class<?>, Integer> f1110t = new C0529a();

    /* renamed from: u */
    private static final boolean f1111u;

    /* renamed from: v */
    private static final int[] f1112v;

    /* renamed from: w */
    private static boolean f1113w;

    /* renamed from: x */
    private static final boolean f1114x;

    /* renamed from: A */
    private AbstractC0435af f1115A;

    /* renamed from: B */
    private C0265b f1116B;

    /* renamed from: C */
    private C0272i f1117C;

    /* renamed from: D */
    private boolean f1118D;

    /* renamed from: E */
    private boolean f1119E;

    /* renamed from: F */
    private ViewGroup f1120F;

    /* renamed from: G */
    private TextView f1121G;

    /* renamed from: H */
    private View f1122H;

    /* renamed from: I */
    private boolean f1123I;

    /* renamed from: J */
    private boolean f1124J;

    /* renamed from: K */
    private boolean f1125K;

    /* renamed from: L */
    private PanelFeatureState[] f1126L;

    /* renamed from: M */
    private PanelFeatureState f1127M;

    /* renamed from: N */
    private boolean f1128N;

    /* renamed from: O */
    private boolean f1129O;

    /* renamed from: P */
    private boolean f1130P;

    /* renamed from: Q */
    private boolean f1131Q;

    /* renamed from: R */
    private int f1132R;

    /* renamed from: S */
    private int f1133S;

    /* renamed from: T */
    private boolean f1134T;

    /* renamed from: U */
    private boolean f1135U;

    /* renamed from: V */
    private AbstractC0269f f1136V;

    /* renamed from: W */
    private AbstractC0269f f1137W;

    /* renamed from: X */
    private final Runnable f1138X;

    /* renamed from: Y */
    private boolean f1139Y;

    /* renamed from: Z */
    private Rect f1140Z;

    /* renamed from: a */
    final Object f1141a;

    /* renamed from: aa */
    private Rect f1142aa;

    /* renamed from: ab */
    private AppCompatViewInflater f1143ab;

    /* renamed from: b */
    final Context f1144b;

    /* renamed from: c */
    Window f1145c;

    /* renamed from: d */
    final AbstractC0310n f1146d;

    /* renamed from: e */
    ActionBar f1147e;

    /* renamed from: f */
    MenuInflater f1148f;

    /* renamed from: g */
    AbstractC0343b f1149g;

    /* renamed from: h */
    ActionBarContextView f1150h;

    /* renamed from: i */
    PopupWindow f1151i;

    /* renamed from: j */
    Runnable f1152j;

    /* renamed from: k */
    C0712aa f1153k;

    /* renamed from: l */
    boolean f1154l;

    /* renamed from: m */
    boolean f1155m;

    /* renamed from: n */
    boolean f1156n;

    /* renamed from: o */
    boolean f1157o;

    /* renamed from: p */
    boolean f1158p;

    /* renamed from: q */
    boolean f1159q;

    /* renamed from: r */
    boolean f1160r;

    /* renamed from: s */
    int f1161s;

    /* renamed from: y */
    private C0267d f1162y;

    /* renamed from: z */
    private CharSequence f1163z;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState.class */
    public static final class PanelFeatureState {

        /* renamed from: a */
        int f1164a;

        /* renamed from: b */
        int f1165b;

        /* renamed from: c */
        int f1166c;

        /* renamed from: d */
        int f1167d;

        /* renamed from: e */
        int f1168e;

        /* renamed from: f */
        int f1169f;

        /* renamed from: g */
        ViewGroup f1170g;

        /* renamed from: h */
        View f1171h;

        /* renamed from: i */
        View f1172i;

        /* renamed from: j */
        C0371k f1173j;

        /* renamed from: k */
        C0368i f1174k;

        /* renamed from: l */
        Context f1175l;

        /* renamed from: m */
        boolean f1176m;

        /* renamed from: n */
        boolean f1177n;

        /* renamed from: o */
        boolean f1178o;

        /* renamed from: p */
        public boolean f1179p;

        /* renamed from: q */
        boolean f1180q = false;

        /* renamed from: r */
        boolean f1181r;

        /* renamed from: s */
        Bundle f1182s;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState.class */
        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new C0322z();

            /* renamed from: a */
            int f1183a;

            /* renamed from: b */
            boolean f1184b;

            /* renamed from: c */
            Bundle f1185c;

            SavedState() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: a */
            public static SavedState m9875a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f1183a = parcel.readInt();
                boolean z = true;
                if (parcel.readInt() != 1) {
                    z = false;
                }
                savedState.f1184b = z;
                if (savedState.f1184b) {
                    savedState.f1185c = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f1183a);
                parcel.writeInt(this.f1184b ? 1 : 0);
                if (this.f1184b) {
                    parcel.writeBundle(this.f1185c);
                }
            }
        }

        PanelFeatureState(int i) {
            this.f1164a = i;
        }

        /* renamed from: a */
        final AbstractC0388t m9876a(AbstractC0386s.AbstractC0387a aVar) {
            if (this.f1173j == null) {
                return null;
            }
            if (this.f1174k == null) {
                this.f1174k = new C0368i(this.f1175l, C0247a.C0254g.f710l);
                this.f1174k.mo1002a(aVar);
                this.f1173j.m9614a(this.f1174k);
            }
            return this.f1174k.m9632a(this.f1170g);
        }

        /* renamed from: a */
        final void m9878a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(C0247a.C0248a.f560a, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(C0247a.C0248a.f550H, typedValue, true);
            newTheme.applyStyle(typedValue.resourceId != 0 ? typedValue.resourceId : C0247a.C0256i.f738d, true);
            C0346d dVar = new C0346d(context, 0);
            dVar.getTheme().setTo(newTheme);
            this.f1175l = dVar;
            TypedArray obtainStyledAttributes = dVar.obtainStyledAttributes(C0247a.C0257j.f768aB);
            this.f1165b = obtainStyledAttributes.getResourceId(C0247a.C0257j.f771aE, 0);
            this.f1169f = obtainStyledAttributes.getResourceId(C0247a.C0257j.f770aD, 0);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        final void m9877a(C0371k kVar) {
            C0368i iVar;
            C0371k kVar2 = this.f1173j;
            if (kVar != kVar2) {
                if (kVar2 != null) {
                    kVar2.m9605b(this.f1174k);
                }
                this.f1173j = kVar;
                if (kVar != null && (iVar = this.f1174k) != null) {
                    kVar.m9614a(iVar);
                }
            }
        }

        /* renamed from: a */
        public final boolean m9879a() {
            if (this.f1171h == null) {
                return false;
            }
            return this.f1172i != null || this.f1174k.m9633a().getCount() > 0;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$a.class */
    private final class C0264a implements C0274a.AbstractC0275a {
        C0264a() {
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: a */
        public final Drawable mo9863a() {
            C0484bm a = C0484bm.m9093a(AppCompatDelegateImpl.this.m9890p(), (AttributeSet) null, new int[]{C0247a.C0248a.f546D});
            Drawable a2 = a.m9099a(0);
            a.m9100a();
            return a2;
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: a */
        public final void mo9862a(int i) {
            ActionBar a = AppCompatDelegateImpl.this.mo9786a();
            if (a != null) {
                a.mo9838a(i);
            }
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: a */
        public final void mo9861a(Drawable drawable, int i) {
            ActionBar a = AppCompatDelegateImpl.this.mo9786a();
            if (a != null) {
                a.mo9834a(drawable);
                a.mo9838a(i);
            }
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: b */
        public final Context mo9860b() {
            return AppCompatDelegateImpl.this.m9890p();
        }

        @Override // androidx.appcompat.app.C0274a.AbstractC0275a
        /* renamed from: c */
        public final boolean mo9859c() {
            ActionBar a = AppCompatDelegateImpl.this.mo9786a();
            return (a == null || (a.mo9840a() & 4) == 0) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$b.class */
    public final class C0265b implements AbstractC0386s.AbstractC0387a {
        C0265b() {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s.AbstractC0387a
        /* renamed from: a */
        public final void mo9453a(C0371k kVar, boolean z) {
            AppCompatDelegateImpl.this.m9900b(kVar);
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s.AbstractC0387a
        /* renamed from: a */
        public final boolean mo9454a(C0371k kVar) {
            Window.Callback callback = AppCompatDelegateImpl.this.f1145c.getCallback();
            if (callback == null) {
                return true;
            }
            callback.onMenuOpened(108, kVar);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$c.class */
    public final class C0266c implements AbstractC0343b.AbstractC0344a {

        /* renamed from: b */
        private AbstractC0343b.AbstractC0344a f1189b;

        public C0266c(AbstractC0343b.AbstractC0344a aVar) {
            this.f1189b = aVar;
        }

        @Override // androidx.appcompat.view.AbstractC0343b.AbstractC0344a
        /* renamed from: a */
        public final void mo51a(AbstractC0343b bVar) {
            this.f1189b.mo51a(bVar);
            if (AppCompatDelegateImpl.this.f1151i != null) {
                AppCompatDelegateImpl.this.f1145c.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.f1152j);
            }
            if (AppCompatDelegateImpl.this.f1150h != null) {
                AppCompatDelegateImpl.this.m9887s();
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                appCompatDelegateImpl.f1153k = C0741t.m8317n(appCompatDelegateImpl.f1150h).m8452a(0.0f);
                AppCompatDelegateImpl.this.f1153k.m8448a(new C0320x(this));
            }
            AppCompatDelegateImpl.this.f1149g = null;
        }

        @Override // androidx.appcompat.view.AbstractC0343b.AbstractC0344a
        /* renamed from: a */
        public final boolean mo50a(AbstractC0343b bVar, Menu menu) {
            return this.f1189b.mo50a(bVar, menu);
        }

        @Override // androidx.appcompat.view.AbstractC0343b.AbstractC0344a
        /* renamed from: a */
        public final boolean mo49a(AbstractC0343b bVar, MenuItem menuItem) {
            return this.f1189b.mo49a(bVar, menuItem);
        }

        @Override // androidx.appcompat.view.AbstractC0343b.AbstractC0344a
        /* renamed from: b */
        public final boolean mo48b(AbstractC0343b bVar, Menu menu) {
            return this.f1189b.mo48b(bVar, menu);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$d.class */
    public final class C0267d extends Window$CallbackC0355j {
        C0267d(Window.Callback callback) {
            super(callback);
        }

        /* renamed from: a */
        private ActionMode m9874a(ActionMode.Callback callback) {
            C0348f.C0349a aVar = new C0348f.C0349a(AppCompatDelegateImpl.this.f1144b, callback);
            AbstractC0343b a = AppCompatDelegateImpl.this.mo9778a(aVar);
            if (a != null) {
                return aVar.m9677b(a);
            }
            return null;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0355j, android.view.Window.Callback
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m9912a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0355j, android.view.Window.Callback
        public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.m9915a(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0355j, android.view.Window.Callback
        public final void onContentChanged() {
        }

        @Override // androidx.appcompat.view.Window$CallbackC0355j, android.view.Window.Callback
        public final boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof C0371k)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0355j, android.view.Window.Callback
        public final boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl.this.m9897f(i);
            return true;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0355j, android.view.Window.Callback
        public final void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl.this.m9898e(i);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0355j, android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            C0371k kVar = menu instanceof C0371k ? (C0371k) menu : null;
            if (i == 0 && kVar == null) {
                return false;
            }
            if (kVar != null) {
                kVar.m9603c(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (kVar != null) {
                kVar.m9603c(false);
            }
            return onPreparePanel;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0355j, android.view.Window.Callback
        public final void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            PanelFeatureState g = AppCompatDelegateImpl.this.m9896g(0);
            if (g == null || g.f1173j == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, g.f1173j, i);
            }
        }

        @Override // androidx.appcompat.view.Window$CallbackC0355j, android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return AppCompatDelegateImpl.this.m9888r() ? m9874a(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0355j, android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            return (!AppCompatDelegateImpl.this.m9888r() || i != 0) ? super.onWindowStartingActionMode(callback, i) : m9874a(callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$e.class */
    public final class C0268e extends AbstractC0269f {

        /* renamed from: c */
        private final PowerManager f1192c;

        C0268e(Context context) {
            super();
            this.f1192c = (PowerManager) context.getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0269f
        /* renamed from: a */
        public final int mo9871a() {
            return (Build.VERSION.SDK_INT < 21 || !this.f1192c.isPowerSaveMode()) ? 1 : 2;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0269f
        /* renamed from: b */
        public final void mo9870b() {
            AppCompatDelegateImpl.this.m9884v();
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0269f
        /* renamed from: c */
        final IntentFilter mo9869c() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$f.class */
    public abstract class AbstractC0269f {

        /* renamed from: a */
        private BroadcastReceiver f1193a;

        AbstractC0269f() {
        }

        /* renamed from: a */
        abstract int mo9871a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public abstract void mo9870b();

        /* renamed from: c */
        abstract IntentFilter mo9869c();

        /* renamed from: d */
        final void m9873d() {
            m9872e();
            IntentFilter c = mo9869c();
            if (c != null && c.countActions() != 0) {
                if (this.f1193a == null) {
                    this.f1193a = new C0321y(this);
                }
                AppCompatDelegateImpl.this.f1144b.registerReceiver(this.f1193a, c);
            }
        }

        /* renamed from: e */
        final void m9872e() {
            if (this.f1193a != null) {
                try {
                    AppCompatDelegateImpl.this.f1144b.unregisterReceiver(this.f1193a);
                } catch (IllegalArgumentException e) {
                }
                this.f1193a = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$g.class */
    public final class C0270g extends AbstractC0269f {

        /* renamed from: c */
        private final C0289ah f1196c;

        C0270g(C0289ah ahVar) {
            super();
            this.f1196c = ahVar;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0269f
        /* renamed from: a */
        public final int mo9871a() {
            return this.f1196c.m9843a() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0269f
        /* renamed from: b */
        public final void mo9870b() {
            AppCompatDelegateImpl.this.m9884v();
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0269f
        /* renamed from: c */
        final IntentFilter mo9869c() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$h.class */
    public final class C0271h extends ContentFrameLayout {
        public C0271h(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m9912a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    AppCompatDelegateImpl.this.m9886t();
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public final void setBackgroundResource(int i) {
            setBackgroundDrawable(C0258a.m9951b(getContext(), i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$i */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$i.class */
    public final class C0272i implements AbstractC0386s.AbstractC0387a {
        C0272i() {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s.AbstractC0387a
        /* renamed from: a */
        public final void mo9453a(C0371k kVar, boolean z) {
            C0371k p = kVar.mo9531p();
            boolean z2 = p != kVar;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                kVar = p;
            }
            PanelFeatureState a = appCompatDelegateImpl.m9911a((Menu) kVar);
            if (a == null) {
                return;
            }
            if (z2) {
                AppCompatDelegateImpl.this.m9914a(a.f1164a, a, p);
                AppCompatDelegateImpl.this.m9904a(a, true);
                return;
            }
            AppCompatDelegateImpl.this.m9904a(a, z);
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s.AbstractC0387a
        /* renamed from: a */
        public final boolean mo9454a(C0371k kVar) {
            Window.Callback callback;
            if (kVar != null || !AppCompatDelegateImpl.this.f1154l || (callback = AppCompatDelegateImpl.this.f1145c.getCallback()) == null || AppCompatDelegateImpl.this.f1159q) {
                return true;
            }
            callback.onMenuOpened(108, kVar);
            return true;
        }
    }

    static {
        f1111u = Build.VERSION.SDK_INT < 21;
        f1112v = new int[]{16842836};
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 21) {
            z = false;
            if (Build.VERSION.SDK_INT <= 25) {
                z = true;
            }
        }
        f1114x = z;
        if (f1111u && !f1113w) {
            Thread.setDefaultUncaughtExceptionHandler(new C0312p(Thread.getDefaultUncaughtExceptionHandler()));
            f1113w = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImpl(Activity activity, AbstractC0310n nVar) {
        this(activity, null, nVar, activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImpl(Dialog dialog, AbstractC0310n nVar) {
        this(dialog.getContext(), dialog.getWindow(), nVar, dialog);
    }

    private AppCompatDelegateImpl(Context context, Window window, AbstractC0310n nVar, Object obj) {
        Integer num;
        AppCompatActivity appCompatActivity;
        this.f1153k = null;
        this.f1118D = true;
        this.f1132R = -100;
        this.f1138X = new RunnableC0313q(this);
        this.f1144b = context;
        this.f1146d = nVar;
        this.f1141a = obj;
        if (this.f1132R == -100 && (this.f1141a instanceof Dialog)) {
            Context context2 = this.f1144b;
            while (true) {
                appCompatActivity = null;
                if (context2 != null) {
                    if (!(context2 instanceof AppCompatActivity)) {
                        appCompatActivity = null;
                        if (!(context2 instanceof ContextWrapper)) {
                            break;
                        }
                        context2 = ((ContextWrapper) context2).getBaseContext();
                    } else {
                        appCompatActivity = (AppCompatActivity) context2;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (appCompatActivity != null) {
                this.f1132R = appCompatActivity.m9925e().mo9757n();
            }
        }
        if (this.f1132R == -100 && (num = f1110t.get(this.f1141a.getClass())) != null) {
            this.f1132R = num.intValue();
            f1110t.remove(this.f1141a.getClass());
        }
        if (window != null) {
            m9908a(window);
        }
        C0519q.m8992a();
    }

    /* renamed from: A */
    private ViewGroup m9923A() {
        ViewGroup viewGroup;
        TypedArray obtainStyledAttributes = this.f1144b.obtainStyledAttributes(C0247a.C0257j.f768aB);
        if (obtainStyledAttributes.hasValue(C0247a.C0257j.f773aG)) {
            if (obtainStyledAttributes.getBoolean(C0247a.C0257j.f782aP, false)) {
                mo9767d(1);
            } else if (obtainStyledAttributes.getBoolean(C0247a.C0257j.f773aG, false)) {
                mo9767d(108);
            }
            if (obtainStyledAttributes.getBoolean(C0247a.C0257j.f774aH, false)) {
                mo9767d(109);
            }
            if (obtainStyledAttributes.getBoolean(C0247a.C0257j.f775aI, false)) {
                mo9767d(10);
            }
            this.f1157o = obtainStyledAttributes.getBoolean(C0247a.C0257j.f769aC, false);
            obtainStyledAttributes.recycle();
            m9881y();
            this.f1145c.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f1144b);
            if (this.f1158p) {
                viewGroup = (ViewGroup) from.inflate(this.f1156n ? C0247a.C0254g.f715q : C0247a.C0254g.f714p, (ViewGroup) null);
                if (Build.VERSION.SDK_INT >= 21) {
                    C0741t.m8346a(viewGroup, new C0314r(this));
                } else {
                    ((AbstractC0441aj) viewGroup).mo9164a(new C0315s(this));
                }
            } else if (this.f1157o) {
                viewGroup = (ViewGroup) from.inflate(C0247a.C0254g.f706h, (ViewGroup) null);
                this.f1155m = false;
                this.f1154l = false;
            } else if (this.f1154l) {
                TypedValue typedValue = new TypedValue();
                this.f1144b.getTheme().resolveAttribute(C0247a.C0248a.f565f, typedValue, true);
                ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C0346d(this.f1144b, typedValue.resourceId) : this.f1144b).inflate(C0247a.C0254g.f716r, (ViewGroup) null);
                this.f1115A = (AbstractC0435af) viewGroup2.findViewById(C0247a.C0253f.f689q);
                this.f1115A.mo9181a(this.f1145c.getCallback());
                if (this.f1155m) {
                    this.f1115A.mo9183a(109);
                }
                if (this.f1123I) {
                    this.f1115A.mo9183a(2);
                }
                viewGroup = viewGroup2;
                if (this.f1124J) {
                    this.f1115A.mo9183a(5);
                    viewGroup = viewGroup2;
                }
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                if (this.f1115A == null) {
                    this.f1121G = (TextView) viewGroup.findViewById(C0247a.C0253f.f669S);
                }
                C0499ca.m9029b(viewGroup);
                ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(C0247a.C0253f.f674b);
                ViewGroup viewGroup3 = (ViewGroup) this.f1145c.findViewById(16908290);
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
                this.f1145c.setContentView(viewGroup);
                contentFrameLayout.m9410a(new C0316t(this));
                return viewGroup;
            }
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f1154l + ", windowActionBarOverlay: " + this.f1155m + ", android:windowIsFloating: " + this.f1157o + ", windowActionModeOverlay: " + this.f1156n + ", windowNoTitle: " + this.f1158p + " }");
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    /* renamed from: B */
    private void m9922B() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f1120F.findViewById(16908290);
        View decorView = this.f1145c.getDecorView();
        contentFrameLayout.m9412a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f1144b.obtainStyledAttributes(C0247a.C0257j.f768aB);
        obtainStyledAttributes.getValue(C0247a.C0257j.f780aN, contentFrameLayout.m9413a());
        obtainStyledAttributes.getValue(C0247a.C0257j.f781aO, contentFrameLayout.m9409b());
        if (obtainStyledAttributes.hasValue(C0247a.C0257j.f778aL)) {
            obtainStyledAttributes.getValue(C0247a.C0257j.f778aL, contentFrameLayout.m9408c());
        }
        if (obtainStyledAttributes.hasValue(C0247a.C0257j.f779aM)) {
            obtainStyledAttributes.getValue(C0247a.C0257j.f779aM, contentFrameLayout.m9407d());
        }
        if (obtainStyledAttributes.hasValue(C0247a.C0257j.f776aJ)) {
            obtainStyledAttributes.getValue(C0247a.C0257j.f776aJ, contentFrameLayout.m9406e());
        }
        if (obtainStyledAttributes.hasValue(C0247a.C0257j.f777aK)) {
            obtainStyledAttributes.getValue(C0247a.C0257j.f777aK, contentFrameLayout.m9405f());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* renamed from: C */
    private CharSequence m9921C() {
        Object obj = this.f1141a;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.f1163z;
    }

    /* renamed from: D */
    private void m9920D() {
        if (this.f1119E) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    /* renamed from: E */
    private int m9919E() {
        int i = this.f1132R;
        return i != -100 ? i : m9756o();
    }

    /* renamed from: F */
    private AbstractC0269f m9918F() {
        if (this.f1136V == null) {
            this.f1136V = new C0270g(C0289ah.m9842a(this.f1144b));
        }
        return this.f1136V;
    }

    /* renamed from: G */
    private AbstractC0269f m9917G() {
        if (this.f1137W == null) {
            this.f1137W = new C0268e(this.f1144b);
        }
        return this.f1137W;
    }

    /* renamed from: H */
    private boolean m9916H() {
        if (!this.f1135U && (this.f1141a instanceof Activity)) {
            PackageManager packageManager = this.f1144b.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f1144b, this.f1141a.getClass()), 0);
                this.f1134T = (activityInfo == null || (activityInfo.configChanges & AdRequest.MAX_CONTENT_URL_LENGTH) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException e) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
                this.f1134T = false;
            }
        }
        this.f1135U = true;
        return this.f1134T;
    }

    /* renamed from: a */
    private View m9910a(View view, String str, Context context, AttributeSet attributeSet) {
        AppCompatViewInflater appCompatViewInflater;
        if (this.f1143ab == null) {
            String string = this.f1144b.obtainStyledAttributes(C0247a.C0257j.f768aB).getString(C0247a.C0257j.f772aF);
            if (string == null || AppCompatViewInflater.class.getName().equals(string)) {
                appCompatViewInflater = new AppCompatViewInflater();
            } else {
                try {
                    this.f1143ab = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    appCompatViewInflater = new AppCompatViewInflater();
                }
            }
            this.f1143ab = appCompatViewInflater;
        }
        boolean z = false;
        if (f1111u) {
            if (attributeSet instanceof XmlPullParser) {
                z = false;
                if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    z = true;
                }
            } else {
                z = m9909a((ViewParent) view);
            }
        }
        return this.f1143ab.createView(view, str, context, attributeSet, z, f1111u, true, C0497bz.m9033a());
    }

    /* renamed from: a */
    private void m9908a(Window window) {
        if (this.f1145c == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof C0267d)) {
                this.f1162y = new C0267d(callback);
                window.setCallback(this.f1162y);
                C0484bm a = C0484bm.m9093a(this.f1144b, (AttributeSet) null, f1112v);
                Drawable b = a.m9091b(0);
                if (b != null) {
                    window.setBackgroundDrawable(b);
                }
                a.m9100a();
                this.f1145c = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    /* renamed from: a */
    private void m9905a(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i;
        ViewGroup.LayoutParams layoutParams;
        if (!panelFeatureState.f1178o && !this.f1159q) {
            if (panelFeatureState.f1164a == 0) {
                if ((this.f1144b.getResources().getConfiguration().screenLayout & 15) == 4) {
                    return;
                }
            }
            Window.Callback callback = this.f1145c.getCallback();
            if (callback == null || callback.onMenuOpened(panelFeatureState.f1164a, panelFeatureState.f1173j)) {
                WindowManager windowManager = (WindowManager) this.f1144b.getSystemService("window");
                if (windowManager != null && m9901b(panelFeatureState, keyEvent)) {
                    if (panelFeatureState.f1170g == null || panelFeatureState.f1180q) {
                        if (panelFeatureState.f1170g == null) {
                            m9907a(panelFeatureState);
                            if (panelFeatureState.f1170g == null) {
                                return;
                            }
                        } else if (panelFeatureState.f1180q && panelFeatureState.f1170g.getChildCount() > 0) {
                            panelFeatureState.f1170g.removeAllViews();
                        }
                        if (m9899c(panelFeatureState) && panelFeatureState.m9879a()) {
                            ViewGroup.LayoutParams layoutParams2 = panelFeatureState.f1171h.getLayoutParams();
                            ViewGroup.LayoutParams layoutParams3 = layoutParams2;
                            if (layoutParams2 == null) {
                                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
                            }
                            panelFeatureState.f1170g.setBackgroundResource(panelFeatureState.f1165b);
                            ViewParent parent = panelFeatureState.f1171h.getParent();
                            if (parent instanceof ViewGroup) {
                                ((ViewGroup) parent).removeView(panelFeatureState.f1171h);
                            }
                            panelFeatureState.f1170g.addView(panelFeatureState.f1171h, layoutParams3);
                            if (!panelFeatureState.f1171h.hasFocus()) {
                                panelFeatureState.f1171h.requestFocus();
                            }
                        } else {
                            return;
                        }
                    } else if (!(panelFeatureState.f1172i == null || (layoutParams = panelFeatureState.f1172i.getLayoutParams()) == null || layoutParams.width != -1)) {
                        i = -1;
                        panelFeatureState.f1177n = false;
                        WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i, -2, panelFeatureState.f1167d, panelFeatureState.f1168e, 1002, 8519680, -3);
                        layoutParams4.gravity = panelFeatureState.f1166c;
                        layoutParams4.windowAnimations = panelFeatureState.f1169f;
                        windowManager.addView(panelFeatureState.f1170g, layoutParams4);
                        panelFeatureState.f1178o = true;
                        return;
                    }
                    i = -2;
                    panelFeatureState.f1177n = false;
                    WindowManager.LayoutParams layoutParams42 = new WindowManager.LayoutParams(i, -2, panelFeatureState.f1167d, panelFeatureState.f1168e, 1002, 8519680, -3);
                    layoutParams42.gravity = panelFeatureState.f1166c;
                    layoutParams42.windowAnimations = panelFeatureState.f1169f;
                    windowManager.addView(panelFeatureState.f1170g, layoutParams42);
                    panelFeatureState.f1178o = true;
                    return;
                }
                return;
            }
            m9904a(panelFeatureState, true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
        if (r6 != r0) goto L_0x004b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0104, code lost:
        if (r5.f1130P != false) goto L_0x0107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01d2, code lost:
        if (((androidx.lifecycle.AbstractC0932i) r0).getLifecycle().mo7584a().m7585a(androidx.lifecycle.AbstractC0927f.EnumC0929b.STARTED) != false) goto L_0x01d5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01d5, code lost:
        r0.onConfigurationChanged(r0);
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01e9, code lost:
        if (r5.f1131Q != false) goto L_0x01d5;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m9913a(int r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m9913a(int, boolean):boolean");
    }

    /* renamed from: a */
    private boolean m9909a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f1145c.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || C0741t.m8370E((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    /* renamed from: a */
    private boolean m9907a(PanelFeatureState panelFeatureState) {
        panelFeatureState.m9878a(m9890p());
        panelFeatureState.f1170g = new C0271h(panelFeatureState.f1175l);
        panelFeatureState.f1166c = 81;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (m9901b(r6, r8) != false) goto L_0x0024;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m9906a(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r6, int r7, android.view.KeyEvent r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0.isSystem()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0010
            r0 = 0
            return r0
        L_0x0010:
            r0 = r6
            boolean r0 = r0.f1176m
            if (r0 != 0) goto L_0x0024
            r0 = r10
            r9 = r0
            r0 = r5
            r1 = r6
            r2 = r8
            boolean r0 = r0.m9901b(r1, r2)
            if (r0 == 0) goto L_0x003b
        L_0x0024:
            r0 = r10
            r9 = r0
            r0 = r6
            androidx.appcompat.view.menu.k r0 = r0.f1173j
            if (r0 == 0) goto L_0x003b
            r0 = r6
            androidx.appcompat.view.menu.k r0 = r0.f1173j
            r1 = r7
            r2 = r8
            r3 = 1
            boolean r0 = r0.performShortcut(r1, r2, r3)
            r9 = r0
        L_0x003b:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m9906a(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, int, android.view.KeyEvent):boolean");
    }

    /* renamed from: a */
    private boolean m9903a(boolean z) {
        if (this.f1159q) {
            return false;
        }
        int E = m9919E();
        boolean a = m9913a(m9891l(E), z);
        if (E == 0) {
            m9918F().m9873d();
        } else {
            AbstractC0269f fVar = this.f1136V;
            if (fVar != null) {
                fVar.m9872e();
            }
        }
        if (E == 3) {
            m9917G().m9873d();
        } else {
            AbstractC0269f fVar2 = this.f1137W;
            if (fVar2 != null) {
                fVar2.m9872e();
            }
        }
        return a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r6.f1164a == 108) goto L_0x0017;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m9902b(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r6) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m9902b(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState):boolean");
    }

    /* renamed from: b */
    private boolean m9901b(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        AbstractC0435af afVar;
        AbstractC0435af afVar2;
        AbstractC0435af afVar3;
        if (this.f1159q) {
            return false;
        }
        if (panelFeatureState.f1176m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.f1127M;
        if (!(panelFeatureState2 == null || panelFeatureState2 == panelFeatureState)) {
            m9904a(panelFeatureState2, false);
        }
        Window.Callback callback = this.f1145c.getCallback();
        if (callback != null) {
            panelFeatureState.f1172i = callback.onCreatePanelView(panelFeatureState.f1164a);
        }
        boolean z = panelFeatureState.f1164a == 0 || panelFeatureState.f1164a == 108;
        if (z && (afVar3 = this.f1115A) != null) {
            afVar3.mo9174h();
        }
        if (panelFeatureState.f1172i == null && (!z || !(this.f1147e instanceof C0282ad))) {
            if (panelFeatureState.f1173j == null || panelFeatureState.f1181r) {
                if (panelFeatureState.f1173j == null) {
                    m9902b(panelFeatureState);
                    if (panelFeatureState.f1173j == null) {
                        return false;
                    }
                }
                if (z && this.f1115A != null) {
                    if (this.f1116B == null) {
                        this.f1116B = new C0265b();
                    }
                    this.f1115A.mo9182a(panelFeatureState.f1173j, this.f1116B);
                }
                panelFeatureState.f1173j.m9599h();
                if (!callback.onCreatePanelMenu(panelFeatureState.f1164a, panelFeatureState.f1173j)) {
                    panelFeatureState.m9877a((C0371k) null);
                    if (!z || (afVar2 = this.f1115A) == null) {
                        return false;
                    }
                    afVar2.mo9182a(null, this.f1116B);
                    return false;
                }
                panelFeatureState.f1181r = false;
            }
            panelFeatureState.f1173j.m9599h();
            if (panelFeatureState.f1182s != null) {
                panelFeatureState.f1173j.m9602d(panelFeatureState.f1182s);
                panelFeatureState.f1182s = null;
            }
            if (!callback.onPreparePanel(0, panelFeatureState.f1172i, panelFeatureState.f1173j)) {
                if (z && (afVar = this.f1115A) != null) {
                    afVar.mo9182a(null, this.f1116B);
                }
                panelFeatureState.f1173j.m9598i();
                return false;
            }
            panelFeatureState.f1179p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.f1173j.setQwertyMode(panelFeatureState.f1179p);
            panelFeatureState.f1173j.m9598i();
        }
        panelFeatureState.f1176m = true;
        panelFeatureState.f1177n = false;
        this.f1127M = panelFeatureState;
        return true;
    }

    /* renamed from: c */
    private boolean m9899c(PanelFeatureState panelFeatureState) {
        if (panelFeatureState.f1172i != null) {
            panelFeatureState.f1171h = panelFeatureState.f1172i;
            return true;
        } else if (panelFeatureState.f1173j == null) {
            return false;
        } else {
            if (this.f1117C == null) {
                this.f1117C = new C0272i();
            }
            panelFeatureState.f1171h = (View) panelFeatureState.m9876a(this.f1117C);
            return panelFeatureState.f1171h != null;
        }
    }

    /* renamed from: j */
    private void m9893j(int i) {
        this.f1161s = (1 << i) | this.f1161s;
        if (!this.f1160r) {
            C0741t.m8344a(this.f1145c.getDecorView(), this.f1138X);
            this.f1160r = true;
        }
    }

    /* renamed from: k */
    private static int m9892k(int i) {
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

    /* renamed from: l */
    private int m9891l(int i) {
        AbstractC0269f F;
        if (i == -100) {
            return -1;
        }
        if (i != -1) {
            if (i != 0) {
                if (!(i == 1 || i == 2)) {
                    if (i == 3) {
                        F = m9917G();
                    } else {
                        throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                    }
                }
            } else if (Build.VERSION.SDK_INT >= 23 && ((UiModeManager) this.f1144b.getSystemService(UiModeManager.class)).getNightMode() == 0) {
                return -1;
            } else {
                F = m9918F();
            }
            return F.mo9871a();
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m9883w() {
        /*
            r5 = this;
            r0 = r5
            r0.m9880z()
            r0 = r5
            boolean r0 = r0.f1154l
            if (r0 == 0) goto L_0x0060
            r0 = r5
            androidx.appcompat.app.ActionBar r0 = r0.f1147e
            if (r0 == 0) goto L_0x0015
            goto L_0x0060
        L_0x0015:
            r0 = r5
            java.lang.Object r0 = r0.f1141a
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x0039
            androidx.appcompat.app.ai r0 = new androidx.appcompat.app.ai
            r1 = r0
            r2 = r6
            android.app.Activity r2 = (android.app.Activity) r2
            r3 = r5
            boolean r3 = r3.f1155m
            r1.<init>(r2, r3)
            r6 = r0
        L_0x0031:
            r0 = r5
            r1 = r6
            r0.f1147e = r1
            goto L_0x004f
        L_0x0039:
            r0 = r6
            boolean r0 = r0 instanceof android.app.Dialog
            if (r0 == 0) goto L_0x004f
            androidx.appcompat.app.ai r0 = new androidx.appcompat.app.ai
            r1 = r0
            r2 = r6
            android.app.Dialog r2 = (android.app.Dialog) r2
            r1.<init>(r2)
            r6 = r0
            goto L_0x0031
        L_0x004f:
            r0 = r5
            androidx.appcompat.app.ActionBar r0 = r0.f1147e
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0060
            r0 = r6
            r1 = r5
            boolean r1 = r1.f1139Y
            r0.mo9823c(r1)
        L_0x0060:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m9883w():void");
    }

    /* renamed from: x */
    private void m9882x() {
        AbstractC0269f fVar = this.f1136V;
        if (fVar != null) {
            fVar.m9872e();
        }
        AbstractC0269f fVar2 = this.f1137W;
        if (fVar2 != null) {
            fVar2.m9872e();
        }
    }

    /* renamed from: y */
    private void m9881y() {
        if (this.f1145c == null) {
            Object obj = this.f1141a;
            if (obj instanceof Activity) {
                m9908a(((Activity) obj).getWindow());
            }
        }
        if (this.f1145c == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    /* renamed from: z */
    private void m9880z() {
        if (!this.f1119E) {
            this.f1120F = m9923A();
            CharSequence C = m9921C();
            if (!TextUtils.isEmpty(C)) {
                AbstractC0435af afVar = this.f1115A;
                if (afVar != null) {
                    afVar.mo9180a(C);
                } else {
                    ActionBar actionBar = this.f1147e;
                    if (actionBar != null) {
                        actionBar.mo9826b(C);
                    } else {
                        TextView textView = this.f1121G;
                        if (textView != null) {
                            textView.setText(C);
                        }
                    }
                }
            }
            m9922B();
            this.f1119E = true;
            PanelFeatureState g = m9896g(0);
            if (this.f1159q) {
                return;
            }
            if (g == null || g.f1173j == null) {
                m9893j(108);
            }
        }
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: a */
    public final ActionBar mo9786a() {
        m9883w();
        return this.f1147e;
    }

    /* renamed from: a */
    final PanelFeatureState m9911a(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.f1126L;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.f1173j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: a */
    public final AbstractC0343b mo9778a(AbstractC0343b.AbstractC0344a aVar) {
        Context context;
        if (aVar != null) {
            AbstractC0343b bVar = this.f1149g;
            if (bVar != null) {
                bVar.mo9684c();
            }
            C0266c cVar = new C0266c(aVar);
            ActionBar a = mo9786a();
            if (a != null) {
                this.f1149g = a.mo9832a(cVar);
            }
            if (this.f1149g == null) {
                m9887s();
                AbstractC0343b bVar2 = this.f1149g;
                if (bVar2 != null) {
                    bVar2.mo9684c();
                }
                boolean z = true;
                if (this.f1150h == null) {
                    if (this.f1157o) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = this.f1144b.getTheme();
                        theme.resolveAttribute(C0247a.C0248a.f565f, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            Resources.Theme newTheme = this.f1144b.getResources().newTheme();
                            newTheme.setTo(theme);
                            newTheme.applyStyle(typedValue.resourceId, true);
                            context = new C0346d(this.f1144b, 0);
                            context.getTheme().setTo(newTheme);
                        } else {
                            context = this.f1144b;
                        }
                        this.f1150h = new ActionBarContextView(context);
                        this.f1151i = new PopupWindow(context, (AttributeSet) null, C0247a.C0248a.f568i);
                        C0785j.m8137a(this.f1151i, 2);
                        this.f1151i.setContentView(this.f1150h);
                        this.f1151i.setWidth(-1);
                        context.getTheme().resolveAttribute(C0247a.C0248a.f561b, typedValue, true);
                        this.f1150h.mo9245a(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                        this.f1151i.setHeight(-2);
                        this.f1152j = new RunnableC0317u(this);
                    } else {
                        ViewStubCompat viewStubCompat = (ViewStubCompat) this.f1120F.findViewById(C0247a.C0253f.f680h);
                        if (viewStubCompat != null) {
                            viewStubCompat.m9247a(LayoutInflater.from(m9890p()));
                            this.f1150h = (ActionBarContextView) viewStubCompat.m9248a();
                        }
                    }
                }
                if (this.f1150h != null) {
                    m9887s();
                    this.f1150h.m9516e();
                    Context context2 = this.f1150h.getContext();
                    ActionBarContextView actionBarContextView = this.f1150h;
                    if (this.f1151i != null) {
                        z = false;
                    }
                    C0347e eVar = new C0347e(context2, actionBarContextView, cVar, z);
                    if (cVar.mo50a(eVar, eVar.mo9687b())) {
                        eVar.mo9683d();
                        this.f1150h.m9523a(eVar);
                        this.f1149g = eVar;
                        if (m9889q()) {
                            this.f1150h.setAlpha(0.0f);
                            this.f1153k = C0741t.m8317n(this.f1150h).m8452a(1.0f);
                            this.f1153k.m8448a(new C0319w(this));
                        } else {
                            this.f1150h.setAlpha(1.0f);
                            this.f1150h.setVisibility(0);
                            this.f1150h.sendAccessibilityEvent(32);
                            if (this.f1150h.getParent() instanceof View) {
                                C0741t.m8312s((View) this.f1150h.getParent());
                            }
                        }
                        if (this.f1151i != null) {
                            this.f1145c.getDecorView().post(this.f1152j);
                        }
                    } else {
                        this.f1149g = null;
                    }
                }
                this.f1149g = this.f1149g;
            }
            return this.f1149g;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: a */
    public final void mo9785a(int i) {
        this.f1133S = i;
    }

    /* renamed from: a */
    final void m9914a(int i, PanelFeatureState panelFeatureState, Menu menu) {
        PanelFeatureState panelFeatureState2 = panelFeatureState;
        Menu menu2 = menu;
        if (menu == null) {
            PanelFeatureState panelFeatureState3 = panelFeatureState;
            if (panelFeatureState == null) {
                panelFeatureState3 = panelFeatureState;
                if (i >= 0) {
                    PanelFeatureState[] panelFeatureStateArr = this.f1126L;
                    panelFeatureState3 = panelFeatureState;
                    if (i < panelFeatureStateArr.length) {
                        panelFeatureState3 = panelFeatureStateArr[i];
                    }
                }
            }
            panelFeatureState2 = panelFeatureState3;
            menu2 = menu;
            if (panelFeatureState3 != null) {
                menu2 = panelFeatureState3.f1173j;
                panelFeatureState2 = panelFeatureState3;
            }
        }
        if ((panelFeatureState2 == null || panelFeatureState2.f1178o) && !this.f1159q) {
            this.f1162y.m9657a().onPanelClosed(i, menu2);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: a */
    public final void mo9782a(Configuration configuration) {
        ActionBar a;
        if (this.f1154l && this.f1119E && (a = mo9786a()) != null) {
            a.mo9835a(configuration);
        }
        C0519q.m8987b().m8990a(this.f1144b);
        m9903a(false);
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: a */
    public final void mo9781a(View view) {
        m9880z();
        ViewGroup viewGroup = (ViewGroup) this.f1120F.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f1162y.m9657a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: a */
    public final void mo9780a(View view, ViewGroup.LayoutParams layoutParams) {
        m9880z();
        ViewGroup viewGroup = (ViewGroup) this.f1120F.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f1162y.m9657a().onContentChanged();
    }

    /* renamed from: a */
    final void m9904a(PanelFeatureState panelFeatureState, boolean z) {
        AbstractC0435af afVar;
        if (!z || panelFeatureState.f1164a != 0 || (afVar = this.f1115A) == null || !afVar.mo9178d()) {
            WindowManager windowManager = (WindowManager) this.f1144b.getSystemService("window");
            if (!(windowManager == null || !panelFeatureState.f1178o || panelFeatureState.f1170g == null)) {
                windowManager.removeView(panelFeatureState.f1170g);
                if (z) {
                    m9914a(panelFeatureState.f1164a, panelFeatureState, (Menu) null);
                }
            }
            panelFeatureState.f1176m = false;
            panelFeatureState.f1177n = false;
            panelFeatureState.f1178o = false;
            panelFeatureState.f1171h = null;
            panelFeatureState.f1180q = true;
            if (this.f1127M == panelFeatureState) {
                this.f1127M = null;
                return;
            }
            return;
        }
        m9900b(panelFeatureState.f1173j);
    }

    @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
    /* renamed from: a */
    public final void mo949a(C0371k kVar) {
        AbstractC0435af afVar = this.f1115A;
        if (afVar == null || !afVar.mo9179c() || (ViewConfiguration.get(this.f1144b).hasPermanentMenuKey() && !this.f1115A.mo9177e())) {
            PanelFeatureState g = m9896g(0);
            g.f1180q = true;
            m9904a(g, false);
            m9905a(g, (KeyEvent) null);
            return;
        }
        Window.Callback callback = this.f1145c.getCallback();
        if (this.f1115A.mo9178d()) {
            this.f1115A.mo9175g();
            if (!this.f1159q) {
                callback.onPanelClosed(108, m9896g(0).f1173j);
            }
        } else if (callback != null && !this.f1159q) {
            if (this.f1160r && (1 & this.f1161s) != 0) {
                this.f1145c.getDecorView().removeCallbacks(this.f1138X);
                this.f1138X.run();
            }
            PanelFeatureState g2 = m9896g(0);
            if (g2.f1173j != null && !g2.f1181r && callback.onPreparePanel(0, g2.f1172i, g2.f1173j)) {
                callback.onMenuOpened(108, g2.f1173j);
                this.f1115A.mo9176f();
            }
        }
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: a */
    public final void mo9777a(Toolbar toolbar) {
        Window window;
        Window.Callback callback;
        if (this.f1141a instanceof Activity) {
            ActionBar a = mo9786a();
            if (!(a instanceof C0291ai)) {
                this.f1148f = null;
                if (a != null) {
                    a.mo9848h();
                }
                if (toolbar != null) {
                    C0282ad adVar = new C0282ad(toolbar, m9921C(), this.f1162y);
                    this.f1147e = adVar;
                    window = this.f1145c;
                    callback = adVar.f1231c;
                } else {
                    this.f1147e = null;
                    window = this.f1145c;
                    callback = this.f1162y;
                }
                window.setCallback(callback);
                mo9762i();
                return;
            }
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: a */
    public final void mo9776a(CharSequence charSequence) {
        this.f1163z = charSequence;
        AbstractC0435af afVar = this.f1115A;
        if (afVar != null) {
            afVar.mo9180a(charSequence);
            return;
        }
        ActionBar actionBar = this.f1147e;
        if (actionBar != null) {
            actionBar.mo9826b(charSequence);
            return;
        }
        TextView textView = this.f1121G;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: a */
    final boolean m9915a(int i, KeyEvent keyEvent) {
        ActionBar a = mo9786a();
        if (a != null && a.mo9836a(i, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.f1127M;
        if (panelFeatureState != null && m9906a(panelFeatureState, keyEvent.getKeyCode(), keyEvent)) {
            PanelFeatureState panelFeatureState2 = this.f1127M;
            if (panelFeatureState2 == null) {
                return true;
            }
            panelFeatureState2.f1177n = true;
            return true;
        } else if (this.f1127M != null) {
            return false;
        } else {
            PanelFeatureState g = m9896g(0);
            m9901b(g, keyEvent);
            boolean a2 = m9906a(g, keyEvent.getKeyCode(), keyEvent);
            g.f1176m = false;
            return a2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0200 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0202 A[ORIG_RETURN, RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final boolean m9912a(android.view.KeyEvent r5) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m9912a(android.view.KeyEvent):boolean");
    }

    @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
    /* renamed from: a */
    public final boolean mo948a(C0371k kVar, MenuItem menuItem) {
        PanelFeatureState a;
        Window.Callback callback = this.f1145c.getCallback();
        if (callback == null || this.f1159q || (a = m9911a((Menu) kVar.mo9531p())) == null) {
            return false;
        }
        return callback.onMenuItemSelected(a.f1164a, menuItem);
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: b */
    public final MenuInflater mo9775b() {
        if (this.f1148f == null) {
            m9883w();
            ActionBar actionBar = this.f1147e;
            this.f1148f = new C0350g(actionBar != null ? actionBar.mo9828b() : this.f1144b);
        }
        return this.f1148f;
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: b */
    public final <T extends View> T mo9774b(int i) {
        m9880z();
        return (T) this.f1145c.findViewById(i);
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: b */
    public final void mo9773b(View view, ViewGroup.LayoutParams layoutParams) {
        m9880z();
        ((ViewGroup) this.f1120F.findViewById(16908290)).addView(view, layoutParams);
        this.f1162y.m9657a().onContentChanged();
    }

    /* renamed from: b */
    final void m9900b(C0371k kVar) {
        if (!this.f1125K) {
            this.f1125K = true;
            this.f1115A.mo9173i();
            Window.Callback callback = this.f1145c.getCallback();
            if (callback != null && !this.f1159q) {
                callback.onPanelClosed(108, kVar);
            }
            this.f1125K = false;
        }
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: c */
    public final void mo9771c() {
        this.f1129O = true;
        m9903a(false);
        m9881y();
        Object obj = this.f1141a;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = C0610h.m8739b((Activity) obj);
            } catch (IllegalArgumentException e) {
            }
            if (str != null) {
                ActionBar actionBar = this.f1147e;
                if (actionBar == null) {
                    this.f1139Y = true;
                } else {
                    actionBar.mo9823c(true);
                }
            }
        }
        this.f1130P = true;
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: c */
    public final void mo9770c(int i) {
        m9880z();
        ViewGroup viewGroup = (ViewGroup) this.f1120F.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f1144b).inflate(i, viewGroup);
        this.f1162y.m9657a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: d */
    public final void mo9768d() {
        m9880z();
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: d */
    public final boolean mo9767d(int i) {
        int k = m9892k(i);
        if (this.f1158p && k == 108) {
            return false;
        }
        if (this.f1154l && k == 1) {
            this.f1154l = false;
        }
        if (k == 1) {
            m9920D();
            this.f1158p = true;
            return true;
        } else if (k == 2) {
            m9920D();
            this.f1123I = true;
            return true;
        } else if (k == 5) {
            m9920D();
            this.f1124J = true;
            return true;
        } else if (k == 10) {
            m9920D();
            this.f1156n = true;
            return true;
        } else if (k == 108) {
            m9920D();
            this.f1154l = true;
            return true;
        } else if (k != 109) {
            return this.f1145c.requestFeature(k);
        } else {
            m9920D();
            this.f1155m = true;
            return true;
        }
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: e */
    public final void mo9766e() {
        this.f1131Q = true;
        m9903a(true);
        m9779a(this);
    }

    /* renamed from: e */
    final void m9898e(int i) {
        if (i == 108) {
            ActionBar a = mo9786a();
            if (a != null) {
                a.mo9821e(false);
            }
        } else if (i == 0) {
            PanelFeatureState g = m9896g(i);
            if (g.f1178o) {
                m9904a(g, false);
            }
        }
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: f */
    public final void mo9765f() {
        this.f1131Q = false;
        m9772b(this);
        ActionBar a = mo9786a();
        if (a != null) {
            a.mo9822d(false);
        }
        if (this.f1141a instanceof Dialog) {
            m9882x();
        }
    }

    /* renamed from: f */
    final void m9897f(int i) {
        ActionBar a;
        if (i == 108 && (a = mo9786a()) != null) {
            a.mo9821e(true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r0.length <= r7) goto L_0x0011;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState m9896g(int r7) {
        /*
            r6 = this;
            r0 = r6
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = r0.f1126L
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0011
            r0 = r8
            r9 = r0
            r0 = r8
            int r0 = r0.length
            r1 = r7
            if (r0 > r1) goto L_0x002a
        L_0x0011:
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[r0]
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0025
            r0 = r8
            r1 = 0
            r2 = r9
            r3 = 0
            r4 = r8
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
        L_0x0025:
            r0 = r6
            r1 = r9
            r0.f1126L = r1
        L_0x002a:
            r0 = r9
            r1 = r7
            r0 = r0[r1]
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0044
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r8 = r0
            r0 = r9
            r1 = r7
            r2 = r8
            r0[r1] = r2
        L_0x0044:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m9896g(int):androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState");
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: g */
    public final void mo9764g() {
        ActionBar a = mo9786a();
        if (a != null) {
            a.mo9822d(true);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: h */
    public final void mo9763h() {
        m9903a(false);
        this.f1129O = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m9895h(int i) {
        PanelFeatureState g;
        PanelFeatureState g2 = m9896g(i);
        if (g2.f1173j != null) {
            Bundle bundle = new Bundle();
            g2.f1173j.m9604c(bundle);
            if (bundle.size() > 0) {
                g2.f1182s = bundle;
            }
            g2.f1173j.m9599h();
            g2.f1173j.clear();
        }
        g2.f1181r = true;
        g2.f1180q = true;
        if ((i == 108 || i == 0) && this.f1115A != null && (g = m9896g(0)) != null) {
            g.f1176m = false;
            m9901b(g, (KeyEvent) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final int m9894i(int i) {
        boolean z;
        int i2;
        boolean z2;
        boolean z3;
        boolean z4;
        ActionBarContextView actionBarContextView = this.f1150h;
        int i3 = 0;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1150h.getLayoutParams();
            boolean z5 = true;
            if (this.f1150h.isShown()) {
                if (this.f1140Z == null) {
                    this.f1140Z = new Rect();
                    this.f1142aa = new Rect();
                }
                Rect rect = this.f1140Z;
                Rect rect2 = this.f1142aa;
                rect.set(0, i, 0, 0);
                C0499ca.m9030a(this.f1120F, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    marginLayoutParams.topMargin = i;
                    View view = this.f1122H;
                    if (view == null) {
                        this.f1122H = new View(this.f1144b);
                        this.f1122H.setBackgroundColor(this.f1144b.getResources().getColor(C0247a.C0250c.f587a));
                        this.f1120F.addView(this.f1122H, -1, new ViewGroup.LayoutParams(-1, i));
                    } else {
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.f1122H.setLayoutParams(layoutParams);
                        }
                    }
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (this.f1122H == null) {
                    z5 = false;
                }
                z2 = z4;
                z3 = z5;
                i2 = i;
                if (!this.f1156n) {
                    z2 = z4;
                    z3 = z5;
                    i2 = i;
                    if (z5) {
                        i2 = 0;
                        z2 = z4;
                        z3 = z5;
                    }
                }
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = true;
                z3 = false;
                i2 = i;
            } else {
                z2 = false;
                z3 = false;
                i2 = i;
            }
            z = z3;
            i = i2;
            if (z2) {
                this.f1150h.setLayoutParams(marginLayoutParams);
                z = z3;
                i = i2;
            }
        }
        View view2 = this.f1122H;
        if (view2 != null) {
            if (!z) {
                i3 = 8;
            }
            view2.setVisibility(i3);
        }
        return i;
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: i */
    public final void mo9762i() {
        ActionBar a = mo9786a();
        if (a == null || !a.mo9849f()) {
            m9893j(0);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: j */
    public final void mo9761j() {
        m9772b(this);
        if (this.f1160r) {
            this.f1145c.getDecorView().removeCallbacks(this.f1138X);
        }
        this.f1131Q = false;
        this.f1159q = true;
        ActionBar actionBar = this.f1147e;
        if (actionBar != null) {
            actionBar.mo9848h();
        }
        m9882x();
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: k */
    public final C0274a.AbstractC0275a mo9760k() {
        return new C0264a();
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: l */
    public final void mo9759l() {
        LayoutInflater from = LayoutInflater.from(this.f1144b);
        if (from.getFactory() == null) {
            C0726e.m8408a(from, this);
        } else if (!(from.getFactory2() instanceof AppCompatDelegateImpl)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: m */
    public final void mo9758m() {
        if (this.f1132R != -100) {
            f1110t.put(this.f1141a.getClass(), Integer.valueOf(this.f1132R));
        }
    }

    @Override // androidx.appcompat.app.AbstractC0311o
    /* renamed from: n */
    public final int mo9757n() {
        return this.f1132R;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return m9910a(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* renamed from: p */
    final Context m9890p() {
        ActionBar a = mo9786a();
        Context b = a != null ? a.mo9828b() : null;
        Context context = b;
        if (b == null) {
            context = this.f1144b;
        }
        return context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public final boolean m9889q() {
        ViewGroup viewGroup;
        return this.f1119E && (viewGroup = this.f1120F) != null && C0741t.m8373B(viewGroup);
    }

    /* renamed from: r */
    public final boolean m9888r() {
        return this.f1118D;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public final void m9887s() {
        C0712aa aaVar = this.f1153k;
        if (aaVar != null) {
            aaVar.m8446b();
        }
    }

    /* renamed from: t */
    final void m9886t() {
        m9904a(m9896g(0), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public final void m9885u() {
        AbstractC0435af afVar = this.f1115A;
        if (afVar != null) {
            afVar.mo9173i();
        }
        if (this.f1151i != null) {
            this.f1145c.getDecorView().removeCallbacks(this.f1152j);
            if (this.f1151i.isShowing()) {
                try {
                    this.f1151i.dismiss();
                } catch (IllegalArgumentException e) {
                }
            }
            this.f1151i = null;
        }
        m9887s();
        PanelFeatureState g = m9896g(0);
        if (g != null && g.f1173j != null) {
            g.f1173j.close();
        }
    }

    /* renamed from: v */
    public final boolean m9884v() {
        return m9903a(true);
    }
}
