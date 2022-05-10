package androidx.fragment.app;

import android.animation.Animator;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;
import p012b.p042i.p043h.AbstractC0866l;
import p012b.p042i.p053o.C0941a;
import p012b.p042i.p054p.C0987f;
import p012b.p063m.p064a.AbstractC1055c;
import p012b.p063m.p064a.AbstractC1058f;
import p012b.p063m.p064a.AbstractC1059g;
import p012b.p063m.p064a.C1057e;
import p012b.p063m.p064a.C1096n;
import p012b.p063m.p064a.LayoutInflater$Factory2C1062h;
import p012b.p068o.AbstractC1107e;
import p012b.p068o.AbstractC1109g;
import p012b.p068o.AbstractC1126s;
import p012b.p068o.C1110h;
import p012b.p068o.C1116l;
import p012b.p068o.C1125r;
import p012b.p069p.p070a.AbstractC1127a;
import p012b.p124w.AbstractC1947b;
import p012b.p124w.C1946a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment.class */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, AbstractC1109g, AbstractC1126s, AbstractC1947b {

    /* renamed from: W */
    public static final Object f1259W = new Object();

    /* renamed from: A */
    public boolean f1260A;

    /* renamed from: B */
    public boolean f1261B;

    /* renamed from: C */
    public boolean f1262C;

    /* renamed from: E */
    public boolean f1264E;

    /* renamed from: F */
    public ViewGroup f1265F;

    /* renamed from: G */
    public View f1266G;

    /* renamed from: H */
    public View f1267H;

    /* renamed from: I */
    public boolean f1268I;

    /* renamed from: K */
    public C0224d f1270K;

    /* renamed from: L */
    public boolean f1271L;

    /* renamed from: M */
    public boolean f1272M;

    /* renamed from: N */
    public float f1273N;

    /* renamed from: O */
    public LayoutInflater f1274O;

    /* renamed from: P */
    public boolean f1275P;

    /* renamed from: R */
    public C1110h f1277R;

    /* renamed from: S */
    public C1096n f1278S;

    /* renamed from: U */
    public C1946a f1280U;

    /* renamed from: V */
    public int f1281V;

    /* renamed from: b */
    public Bundle f1283b;

    /* renamed from: c */
    public SparseArray<Parcelable> f1284c;

    /* renamed from: d */
    public Boolean f1285d;

    /* renamed from: f */
    public Bundle f1287f;

    /* renamed from: g */
    public Fragment f1288g;

    /* renamed from: i */
    public int f1290i;

    /* renamed from: k */
    public boolean f1292k;

    /* renamed from: l */
    public boolean f1293l;

    /* renamed from: m */
    public boolean f1294m;

    /* renamed from: n */
    public boolean f1295n;

    /* renamed from: o */
    public boolean f1296o;

    /* renamed from: p */
    public boolean f1297p;

    /* renamed from: q */
    public int f1298q;

    /* renamed from: r */
    public LayoutInflater$Factory2C1062h f1299r;

    /* renamed from: s */
    public AbstractC1058f f1300s;

    /* renamed from: u */
    public Fragment f1302u;

    /* renamed from: v */
    public int f1303v;

    /* renamed from: w */
    public int f1304w;

    /* renamed from: x */
    public String f1305x;

    /* renamed from: y */
    public boolean f1306y;

    /* renamed from: z */
    public boolean f1307z;

    /* renamed from: a */
    public int f1282a = 0;

    /* renamed from: e */
    public String f1286e = UUID.randomUUID().toString();

    /* renamed from: h */
    public String f1289h = null;

    /* renamed from: j */
    public Boolean f1291j = null;

    /* renamed from: t */
    public LayoutInflater$Factory2C1062h f1301t = new LayoutInflater$Factory2C1062h();

    /* renamed from: D */
    public boolean f1263D = true;

    /* renamed from: J */
    public boolean f1269J = true;

    /* renamed from: Q */
    public Lifecycle.State f1276Q = Lifecycle.State.RESUMED;

    /* renamed from: T */
    public C1116l<AbstractC1109g> f1279T = new C1116l<>();

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$InstantiationException.class */
    public static class InstantiationException extends RuntimeException {
        public InstantiationException(String str, Exception exc) {
            super(str, exc);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0220a();

        /* renamed from: a */
        public final Bundle f1309a;

        /* renamed from: androidx.fragment.app.Fragment$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$SavedState$a.class */
        public static final class C0220a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle readBundle = parcel.readBundle();
            this.f1309a = readBundle;
            if (classLoader != null && readBundle != null) {
                readBundle.setClassLoader(classLoader);
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.f1309a);
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$a.class */
    public class RunnableC0221a implements Runnable {
        public RunnableC0221a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.m38346w0();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$b.class */
    public class RunnableC0222b implements Runnable {
        public RunnableC0222b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.m38392f();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$c.class */
    public class C0223c extends AbstractC1055c {
        public C0223c() {
        }

        @Override // p012b.p063m.p064a.AbstractC1055c
        /* renamed from: a */
        public View mo34919a(int i) {
            View view = Fragment.this.f1266G;
            if (view != null) {
                return view.findViewById(i);
            }
            throw new IllegalStateException("Fragment " + this + " does not have a view");
        }

        @Override // p012b.p063m.p064a.AbstractC1055c
        /* renamed from: c */
        public boolean mo34912c() {
            return Fragment.this.f1266G != null;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$d.class */
    public static class C0224d {

        /* renamed from: a */
        public View f1313a;

        /* renamed from: b */
        public Animator f1314b;

        /* renamed from: c */
        public int f1315c;

        /* renamed from: d */
        public int f1316d;

        /* renamed from: e */
        public int f1317e;

        /* renamed from: f */
        public int f1318f;

        /* renamed from: h */
        public Object f1320h;

        /* renamed from: j */
        public Object f1322j;

        /* renamed from: l */
        public Object f1324l;

        /* renamed from: m */
        public Boolean f1325m;

        /* renamed from: n */
        public Boolean f1326n;

        /* renamed from: q */
        public boolean f1329q;

        /* renamed from: r */
        public AbstractC0225e f1330r;

        /* renamed from: s */
        public boolean f1331s;

        /* renamed from: g */
        public Object f1319g = null;

        /* renamed from: i */
        public Object f1321i = null;

        /* renamed from: k */
        public Object f1323k = null;

        /* renamed from: o */
        public AbstractC0866l f1327o = null;

        /* renamed from: p */
        public AbstractC0866l f1328p = null;

        public C0224d() {
            Object obj = Fragment.f1259W;
            this.f1320h = obj;
            this.f1322j = obj;
            this.f1324l = obj;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$e.class */
    public interface AbstractC0225e {
        /* renamed from: a */
        void mo34764a();

        /* renamed from: b */
        void mo34763b();
    }

    public Fragment() {
        new RunnableC0221a();
        m38449M();
    }

    @Deprecated
    /* renamed from: a */
    public static Fragment m38428a(Context context, String str, Bundle bundle) {
        try {
            Fragment fragment = (Fragment) C1057e.m34920d(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.m38367m(bundle);
            }
            return fragment;
        } catch (IllegalAccessException e) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }

    /* renamed from: A */
    public Object m38461A() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return null;
        }
        Object obj = dVar.f1322j;
        Object obj2 = obj;
        if (obj == f1259W) {
            obj2 = m38357r();
        }
        return obj2;
    }

    /* renamed from: B */
    public final Resources m38460B() {
        return m38352t0().getResources();
    }

    /* renamed from: C */
    public final boolean m38459C() {
        return this.f1260A;
    }

    /* renamed from: D */
    public Object m38458D() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return null;
        }
        Object obj = dVar.f1320h;
        Object obj2 = obj;
        if (obj == f1259W) {
            obj2 = m38361p();
        }
        return obj2;
    }

    /* renamed from: E */
    public Object m38457E() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return null;
        }
        return dVar.f1323k;
    }

    /* renamed from: F */
    public Object m38456F() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return null;
        }
        Object obj = dVar.f1324l;
        Object obj2 = obj;
        if (obj == f1259W) {
            obj2 = m38457E();
        }
        return obj2;
    }

    /* renamed from: G */
    public int m38455G() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return 0;
        }
        return dVar.f1315c;
    }

    /* renamed from: H */
    public final String m38454H() {
        return this.f1305x;
    }

    /* renamed from: I */
    public final Fragment m38453I() {
        String str;
        Fragment fragment = this.f1288g;
        if (fragment != null) {
            return fragment;
        }
        LayoutInflater$Factory2C1062h hVar = this.f1299r;
        if (hVar == null || (str = this.f1289h) == null) {
            return null;
        }
        return hVar.f4456g.get(str);
    }

    /* renamed from: J */
    public final int m38452J() {
        return this.f1290i;
    }

    @Deprecated
    /* renamed from: K */
    public boolean m38451K() {
        return this.f1269J;
    }

    /* renamed from: L */
    public View m38450L() {
        return this.f1266G;
    }

    /* renamed from: M */
    public final void m38449M() {
        this.f1277R = new C1110h(this);
        this.f1280U = C1946a.m31508a(this);
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1277R.mo34659a(new AbstractC1107e() { // from class: androidx.fragment.app.Fragment.2
                @Override // p012b.p068o.AbstractC1107e
                /* renamed from: a */
                public void mo34664a(AbstractC1109g gVar, Lifecycle.Event event) {
                    View view;
                    if (event == Lifecycle.Event.ON_STOP && (view = Fragment.this.f1266G) != null) {
                        view.cancelPendingInputEvents();
                    }
                }
            });
        }
    }

    /* renamed from: N */
    public void m38448N() {
        m38449M();
        this.f1286e = UUID.randomUUID().toString();
        this.f1292k = false;
        this.f1293l = false;
        this.f1294m = false;
        this.f1295n = false;
        this.f1296o = false;
        this.f1298q = 0;
        this.f1299r = null;
        this.f1301t = new LayoutInflater$Factory2C1062h();
        this.f1300s = null;
        this.f1303v = 0;
        this.f1304w = 0;
        this.f1305x = null;
        this.f1306y = false;
        this.f1307z = false;
    }

    /* renamed from: O */
    public final boolean m38447O() {
        return this.f1300s != null && this.f1292k;
    }

    /* renamed from: P */
    public final boolean m38446P() {
        return this.f1307z;
    }

    /* renamed from: Q */
    public final boolean m38445Q() {
        return this.f1306y;
    }

    /* renamed from: R */
    public boolean m38444R() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return false;
        }
        return dVar.f1331s;
    }

    /* renamed from: S */
    public final boolean m38443S() {
        return this.f1298q > 0;
    }

    /* renamed from: T */
    public final boolean m38442T() {
        return this.f1295n;
    }

    /* renamed from: U */
    public boolean m38441U() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return false;
        }
        return dVar.f1329q;
    }

    /* renamed from: V */
    public final boolean m38440V() {
        return this.f1293l;
    }

    /* renamed from: W */
    public final boolean m38439W() {
        return this.f1282a >= 4;
    }

    /* renamed from: X */
    public final boolean m38438X() {
        LayoutInflater$Factory2C1062h hVar = this.f1299r;
        if (hVar == null) {
            return false;
        }
        return hVar.m34885C();
    }

    /* renamed from: Y */
    public final boolean m38437Y() {
        View view;
        return m38447O() && !m38445Q() && (view = this.f1266G) != null && view.getWindowToken() != null && this.f1266G.getVisibility() == 0;
    }

    /* renamed from: Z */
    public void m38436Z() {
        this.f1301t.m34884D();
    }

    @Deprecated
    /* renamed from: a */
    public LayoutInflater m38423a(Bundle bundle) {
        AbstractC1058f fVar = this.f1300s;
        if (fVar != null) {
            LayoutInflater j = fVar.mo34907j();
            LayoutInflater$Factory2C1062h hVar = this.f1301t;
            hVar.m34768z();
            C0987f.m35299b(j, hVar);
            return j;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    /* renamed from: a */
    public View m38422a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.f1281V;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    /* renamed from: a */
    public Animation m38433a(int i, boolean z, int i2) {
        return null;
    }

    /* renamed from: a */
    public Fragment m38414a(String str) {
        return str.equals(this.f1286e) ? this : this.f1301t.m34829b(str);
    }

    @Override // p012b.p068o.AbstractC1109g
    /* renamed from: a */
    public Lifecycle mo34644a() {
        return this.f1277R;
    }

    /* renamed from: a */
    public void m38435a(int i) {
        if (this.f1270K != null || i != 0) {
            m38389g().f1316d = i;
        }
    }

    /* renamed from: a */
    public void m38434a(int i, int i2) {
        if (this.f1270K != null || i != 0 || i2 != 0) {
            m38389g();
            C0224d dVar = this.f1270K;
            dVar.f1317e = i;
            dVar.f1318f = i2;
        }
    }

    /* renamed from: a */
    public void mo17447a(int i, int i2, Intent intent) {
    }

    /* renamed from: a */
    public void mo19631a(int i, String[] strArr, int[] iArr) {
    }

    /* renamed from: a */
    public void m38432a(Animator animator) {
        m38389g().f1314b = animator;
    }

    @Deprecated
    /* renamed from: a */
    public void m38431a(Activity activity) {
        this.f1264E = true;
    }

    @Deprecated
    /* renamed from: a */
    public void m38430a(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.f1264E = true;
    }

    /* renamed from: a */
    public void mo19630a(Context context) {
        this.f1264E = true;
        AbstractC1058f fVar = this.f1300s;
        Activity f = fVar == null ? null : fVar.m34911f();
        if (f != null) {
            this.f1264E = false;
            m38431a(f);
        }
    }

    /* renamed from: a */
    public void m38429a(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.f1264E = true;
        AbstractC1058f fVar = this.f1300s;
        Activity f = fVar == null ? null : fVar.m34911f();
        if (f != null) {
            this.f1264E = false;
            m38430a(f, attributeSet, bundle);
        }
    }

    /* renamed from: a */
    public void m38427a(Intent intent) {
        m38425a(intent, (Bundle) null);
    }

    /* renamed from: a */
    public void m38426a(Intent intent, int i, Bundle bundle) {
        AbstractC1058f fVar = this.f1300s;
        if (fVar != null) {
            fVar.mo34917a(this, intent, i, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    /* renamed from: a */
    public void m38425a(Intent intent, Bundle bundle) {
        AbstractC1058f fVar = this.f1300s;
        if (fVar != null) {
            fVar.mo34917a(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    /* renamed from: a */
    public void m38424a(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.f1301t.m34871a(configuration);
    }

    /* renamed from: a */
    public void m38421a(Menu menu) {
    }

    /* renamed from: a */
    public void m38420a(Menu menu, MenuInflater menuInflater) {
    }

    /* renamed from: a */
    public void m38418a(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    /* renamed from: a */
    public void m38417a(View view, Bundle bundle) {
    }

    /* renamed from: a */
    public void m38416a(AbstractC0225e eVar) {
        m38389g();
        AbstractC0225e eVar2 = this.f1270K.f1330r;
        if (eVar != eVar2) {
            if (eVar == null || eVar2 == null) {
                C0224d dVar = this.f1270K;
                if (dVar.f1329q) {
                    dVar.f1330r = eVar;
                }
                if (eVar != null) {
                    eVar.mo34764a();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
    }

    /* renamed from: a */
    public void m38415a(Fragment fragment) {
    }

    /* renamed from: a */
    public void mo17443a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.f1303v));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.f1304w));
        printWriter.print(" mTag=");
        printWriter.println(this.f1305x);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f1282a);
        printWriter.print(" mWho=");
        printWriter.print(this.f1286e);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.f1298q);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.f1292k);
        printWriter.print(" mRemoving=");
        printWriter.print(this.f1293l);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.f1294m);
        printWriter.print(" mInLayout=");
        printWriter.println(this.f1295n);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.f1306y);
        printWriter.print(" mDetached=");
        printWriter.print(this.f1307z);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.f1263D);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.f1262C);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.f1260A);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.f1269J);
        if (this.f1299r != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.f1299r);
        }
        if (this.f1300s != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.f1300s);
        }
        if (this.f1302u != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.f1302u);
        }
        if (this.f1287f != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f1287f);
        }
        if (this.f1283b != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f1283b);
        }
        if (this.f1284c != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f1284c);
        }
        Fragment I = m38453I();
        if (I != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(I);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.f1290i);
        }
        if (m38347w() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(m38347w());
        }
        if (this.f1265F != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.f1265F);
        }
        if (this.f1266G != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.f1266G);
        }
        if (this.f1267H != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.f1266G);
        }
        if (m38375k() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(m38375k());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(m38455G());
        }
        if (m38363o() != null) {
            AbstractC1127a.m34621a(this).mo34619a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.f1301t + ":");
        LayoutInflater$Factory2C1062h hVar = this.f1301t;
        hVar.mo34847a(str + "  ", fileDescriptor, printWriter, strArr);
    }

    /* renamed from: a */
    public void m38413a(boolean z) {
    }

    /* renamed from: a */
    public final void m38412a(String[] strArr, int i) {
        AbstractC1058f fVar = this.f1300s;
        if (fVar != null) {
            fVar.mo34916a(this, strArr, i);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    /* renamed from: a */
    public boolean m38419a(MenuItem menuItem) {
        return false;
    }

    /* renamed from: a0 */
    public void mo17441a0() {
        this.f1264E = true;
    }

    /* renamed from: b */
    public Animator m38410b(int i, boolean z, int i2) {
        return null;
    }

    /* renamed from: b */
    public void m38411b(int i) {
        m38389g().f1315c = i;
    }

    /* renamed from: b */
    public void mo34953b(Bundle bundle) {
        this.f1264E = true;
    }

    /* renamed from: b */
    public void m38409b(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f1301t.m34884D();
        this.f1297p = true;
        this.f1278S = new C1096n();
        View a = m38422a(layoutInflater, viewGroup, bundle);
        this.f1266G = a;
        if (a != null) {
            this.f1278S.m34681c();
            this.f1279T.mo34616a((C1116l<AbstractC1109g>) this.f1278S);
        } else if (!this.f1278S.m34680d()) {
            this.f1278S = null;
        } else {
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        }
    }

    /* renamed from: b */
    public void m38408b(Menu menu) {
    }

    /* renamed from: b */
    public void m38405b(View view) {
        m38389g().f1313a = view;
    }

    /* renamed from: b */
    public void m38403b(boolean z) {
    }

    /* renamed from: b */
    public boolean m38407b(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (!this.f1306y) {
            boolean z2 = false;
            if (this.f1262C) {
                z2 = false;
                if (this.f1263D) {
                    z2 = true;
                    m38420a(menu, menuInflater);
                }
            }
            z = z2 | this.f1301t.m34866a(menu, menuInflater);
        }
        return z;
    }

    /* renamed from: b */
    public boolean m38406b(MenuItem menuItem) {
        return false;
    }

    /* renamed from: b */
    public boolean m38404b(String str) {
        AbstractC1058f fVar = this.f1300s;
        if (fVar != null) {
            return fVar.mo34915a(str);
        }
        return false;
    }

    /* renamed from: b0 */
    public void m38402b0() {
    }

    /* renamed from: c */
    public void mo17438c(Bundle bundle) {
        this.f1264E = true;
        m38374k(bundle);
        if (!this.f1301t.m34817d(1)) {
            this.f1301t.m34794l();
        }
    }

    /* renamed from: c */
    public void m38401c(Menu menu) {
        if (!this.f1306y) {
            if (this.f1262C && this.f1263D) {
                m38421a(menu);
            }
            this.f1301t.m34867a(menu);
        }
    }

    /* renamed from: c */
    public void m38399c(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    /* renamed from: c */
    public void m38398c(boolean z) {
    }

    /* renamed from: c */
    public boolean m38400c(MenuItem menuItem) {
        if (!this.f1306y) {
            return m38419a(menuItem) || this.f1301t.m34865a(menuItem);
        }
        return false;
    }

    /* renamed from: c0 */
    public void mo34952c0() {
        this.f1264E = true;
    }

    /* renamed from: d */
    public LayoutInflater mo34951d(Bundle bundle) {
        return m38423a(bundle);
    }

    @Override // p012b.p068o.AbstractC1126s
    /* renamed from: d */
    public C1125r mo34622d() {
        LayoutInflater$Factory2C1062h hVar = this.f1299r;
        if (hVar != null) {
            return hVar.m34799i(this);
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    /* renamed from: d */
    public void m38395d(boolean z) {
    }

    /* renamed from: d */
    public boolean m38397d(Menu menu) {
        boolean z = false;
        if (!this.f1306y) {
            boolean z2 = false;
            if (this.f1262C) {
                z2 = false;
                if (this.f1263D) {
                    z2 = true;
                    m38408b(menu);
                }
            }
            z = z2 | this.f1301t.m34838b(menu);
        }
        return z;
    }

    /* renamed from: d */
    public boolean m38396d(MenuItem menuItem) {
        if (!this.f1306y) {
            return (this.f1262C && this.f1263D && m38406b(menuItem)) || this.f1301t.m34837b(menuItem);
        }
        return false;
    }

    /* renamed from: d0 */
    public void mo34950d0() {
        this.f1264E = true;
    }

    @Override // p012b.p124w.AbstractC1947b
    /* renamed from: e */
    public final SavedStateRegistry mo31506e() {
        return this.f1280U.m31510a();
    }

    /* renamed from: e */
    public void mo17437e(Bundle bundle) {
    }

    /* renamed from: e */
    public void m38394e(boolean z) {
        m38403b(z);
        this.f1301t.m34842a(z);
    }

    /* renamed from: e0 */
    public void m38393e0() {
        this.f1264E = true;
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* renamed from: f */
    public void m38392f() {
        C0224d dVar = this.f1270K;
        AbstractC0225e eVar = null;
        if (dVar != null) {
            dVar.f1329q = false;
            eVar = dVar.f1330r;
            dVar.f1330r = null;
        }
        if (eVar != null) {
            eVar.mo34763b();
        }
    }

    /* renamed from: f */
    public void m38391f(Bundle bundle) {
        this.f1264E = true;
    }

    /* renamed from: f */
    public void m38390f(boolean z) {
        m38398c(z);
        this.f1301t.m34826b(z);
    }

    /* renamed from: f0 */
    public void mo17436f0() {
        this.f1264E = true;
    }

    /* renamed from: g */
    public final C0224d m38389g() {
        if (this.f1270K == null) {
            this.f1270K = new C0224d();
        }
        return this.f1270K;
    }

    /* renamed from: g */
    public void m38388g(Bundle bundle) {
        this.f1301t.m34884D();
        this.f1282a = 2;
        this.f1264E = false;
        mo34953b(bundle);
        if (this.f1264E) {
            this.f1301t.m34796k();
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    /* renamed from: g */
    public void m38387g(boolean z) {
        if (this.f1262C != z) {
            this.f1262C = z;
            if (m38447O() && !m38445Q()) {
                this.f1300s.mo34904m();
            }
        }
    }

    /* renamed from: g0 */
    public void mo17435g0() {
        this.f1264E = true;
    }

    /* renamed from: h */
    public final FragmentActivity m38386h() {
        AbstractC1058f fVar = this.f1300s;
        return fVar == null ? null : (FragmentActivity) fVar.m34911f();
    }

    /* renamed from: h */
    public void m38385h(Bundle bundle) {
        this.f1301t.m34884D();
        this.f1282a = 1;
        this.f1264E = false;
        this.f1280U.m31509a(bundle);
        mo17438c(bundle);
        this.f1275P = true;
        if (this.f1264E) {
            this.f1277R.m34662a(Lifecycle.Event.ON_CREATE);
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onCreate()");
    }

    /* renamed from: h */
    public void m38384h(boolean z) {
        m38389g().f1331s = z;
    }

    /* renamed from: h0 */
    public void mo17434h0() {
        this.f1264E = true;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    /* renamed from: i */
    public LayoutInflater m38382i(Bundle bundle) {
        LayoutInflater d = mo34951d(bundle);
        this.f1274O = d;
        return d;
    }

    /* renamed from: i */
    public void m38381i(boolean z) {
        if (this.f1263D != z) {
            this.f1263D = z;
            if (this.f1262C && m38447O() && !m38445Q()) {
                this.f1300s.mo34904m();
            }
        }
    }

    /* renamed from: i */
    public boolean m38383i() {
        Boolean bool;
        C0224d dVar = this.f1270K;
        return (dVar == null || (bool = dVar.f1326n) == null) ? true : bool.booleanValue();
    }

    /* renamed from: i0 */
    public void m38380i0() {
        this.f1301t.m34852a(this.f1300s, new C0223c(), this);
        this.f1264E = false;
        mo19630a(this.f1300s.m34910g());
        if (!this.f1264E) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onAttach()");
        }
    }

    /* renamed from: j */
    public void m38378j(Bundle bundle) {
        mo17437e(bundle);
        this.f1280U.m31507b(bundle);
        Parcelable F = this.f1301t.m34882F();
        if (F != null) {
            bundle.putParcelable("android:support:fragments", F);
        }
    }

    /* renamed from: j */
    public void m38377j(boolean z) {
        this.f1260A = z;
        LayoutInflater$Factory2C1062h hVar = this.f1299r;
        if (hVar == null) {
            this.f1261B = true;
        } else if (z) {
            hVar.m34864a(this);
        } else {
            hVar.m34779s(this);
        }
    }

    /* renamed from: j */
    public boolean m38379j() {
        Boolean bool;
        C0224d dVar = this.f1270K;
        return (dVar == null || (bool = dVar.f1325m) == null) ? true : bool.booleanValue();
    }

    /* renamed from: j0 */
    public void m38376j0() {
        this.f1301t.m34792m();
        this.f1277R.m34662a(Lifecycle.Event.ON_DESTROY);
        this.f1282a = 0;
        this.f1264E = false;
        this.f1275P = false;
        mo17441a0();
        if (!this.f1264E) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroy()");
        }
    }

    /* renamed from: k */
    public View m38375k() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return null;
        }
        return dVar.f1313a;
    }

    /* renamed from: k */
    public void m38374k(Bundle bundle) {
        Parcelable parcelable;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            this.f1301t.m34868a(parcelable);
            this.f1301t.m34794l();
        }
    }

    @Deprecated
    /* renamed from: k */
    public void m38373k(boolean z) {
        if (!this.f1269J && z && this.f1282a < 3 && this.f1299r != null && m38447O() && this.f1275P) {
            this.f1299r.m34783q(this);
        }
        this.f1269J = z;
        this.f1268I = this.f1282a < 3 && !z;
        if (this.f1283b != null) {
            this.f1285d = Boolean.valueOf(z);
        }
    }

    /* renamed from: k0 */
    public void m38372k0() {
        this.f1301t.m34790n();
        if (this.f1266G != null) {
            this.f1278S.m34682a(Lifecycle.Event.ON_DESTROY);
        }
        this.f1282a = 1;
        this.f1264E = false;
        mo34952c0();
        if (this.f1264E) {
            AbstractC1127a.m34621a(this).mo34620a();
            this.f1297p = false;
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroyView()");
    }

    /* renamed from: l */
    public Animator m38371l() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return null;
        }
        return dVar.f1314b;
    }

    /* renamed from: l */
    public final void m38370l(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.f1284c;
        if (sparseArray != null) {
            this.f1267H.restoreHierarchyState(sparseArray);
            this.f1284c = null;
        }
        this.f1264E = false;
        m38391f(bundle);
        if (!this.f1264E) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onViewStateRestored()");
        } else if (this.f1266G != null) {
            this.f1278S.m34682a(Lifecycle.Event.ON_CREATE);
        }
    }

    /* renamed from: l0 */
    public void m38369l0() {
        this.f1264E = false;
        mo34950d0();
        this.f1274O = null;
        if (!this.f1264E) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDetach()");
        } else if (!this.f1301t.mo34813e()) {
            this.f1301t.m34792m();
            this.f1301t = new LayoutInflater$Factory2C1062h();
        }
    }

    /* renamed from: m */
    public final Bundle m38368m() {
        return this.f1287f;
    }

    /* renamed from: m */
    public void m38367m(Bundle bundle) {
        if (this.f1299r == null || !m38438X()) {
            this.f1287f = bundle;
            return;
        }
        throw new IllegalStateException("Fragment already added and state has been saved");
    }

    /* renamed from: m0 */
    public void m38366m0() {
        onLowMemory();
        this.f1301t.m34788o();
    }

    /* renamed from: n */
    public final AbstractC1059g m38365n() {
        if (this.f1300s != null) {
            return this.f1301t;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    /* renamed from: n0 */
    public void m38364n0() {
        this.f1301t.m34786p();
        if (this.f1266G != null) {
            this.f1278S.m34682a(Lifecycle.Event.ON_PAUSE);
        }
        this.f1277R.m34662a(Lifecycle.Event.ON_PAUSE);
        this.f1282a = 3;
        this.f1264E = false;
        m38393e0();
        if (!this.f1264E) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onPause()");
        }
    }

    /* renamed from: o */
    public Context m38363o() {
        AbstractC1058f fVar = this.f1300s;
        return fVar == null ? null : fVar.m34910g();
    }

    /* renamed from: o0 */
    public void m38362o0() {
        boolean l = this.f1299r.m34793l(this);
        Boolean bool = this.f1291j;
        if (bool == null || bool.booleanValue() != l) {
            this.f1291j = Boolean.valueOf(l);
            m38395d(l);
            this.f1301t.m34784q();
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.f1264E = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        m38354s0().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f1264E = true;
    }

    /* renamed from: p */
    public Object m38361p() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return null;
        }
        return dVar.f1319g;
    }

    /* renamed from: p0 */
    public void m38360p0() {
        this.f1301t.m34884D();
        this.f1301t.m34772w();
        this.f1282a = 4;
        this.f1264E = false;
        mo17436f0();
        if (this.f1264E) {
            this.f1277R.m34662a(Lifecycle.Event.ON_RESUME);
            if (this.f1266G != null) {
                this.f1278S.m34682a(Lifecycle.Event.ON_RESUME);
            }
            this.f1301t.m34782r();
            this.f1301t.m34772w();
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onResume()");
    }

    /* renamed from: q */
    public AbstractC0866l m38359q() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return null;
        }
        return dVar.f1327o;
    }

    /* renamed from: q0 */
    public void m38358q0() {
        this.f1301t.m34884D();
        this.f1301t.m34772w();
        this.f1282a = 3;
        this.f1264E = false;
        mo17435g0();
        if (this.f1264E) {
            this.f1277R.m34662a(Lifecycle.Event.ON_START);
            if (this.f1266G != null) {
                this.f1278S.m34682a(Lifecycle.Event.ON_START);
            }
            this.f1301t.m34780s();
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStart()");
    }

    /* renamed from: r */
    public Object m38357r() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return null;
        }
        return dVar.f1321i;
    }

    /* renamed from: r0 */
    public void m38356r0() {
        this.f1301t.m34778t();
        if (this.f1266G != null) {
            this.f1278S.m34682a(Lifecycle.Event.ON_STOP);
        }
        this.f1277R.m34662a(Lifecycle.Event.ON_STOP);
        this.f1282a = 2;
        this.f1264E = false;
        mo17434h0();
        if (!this.f1264E) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStop()");
        }
    }

    /* renamed from: s */
    public AbstractC0866l m38355s() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return null;
        }
        return dVar.f1328p;
    }

    /* renamed from: s0 */
    public final FragmentActivity m38354s0() {
        FragmentActivity h = m38386h();
        if (h != null) {
            return h;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public void startActivityForResult(Intent intent, int i) {
        m38426a(intent, i, (Bundle) null);
    }

    /* renamed from: t */
    public final AbstractC1059g m38353t() {
        return this.f1299r;
    }

    /* renamed from: t0 */
    public final Context m38352t0() {
        Context o = m38363o();
        if (o != null) {
            return o;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        C0941a.m35451a(this, sb);
        sb.append(" (");
        sb.append(this.f1286e);
        sb.append(")");
        if (this.f1303v != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f1303v));
        }
        if (this.f1305x != null) {
            sb.append(" ");
            sb.append(this.f1305x);
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: u */
    public final Object m38351u() {
        AbstractC1058f fVar = this.f1300s;
        return fVar == null ? null : fVar.mo34908i();
    }

    /* renamed from: u0 */
    public final AbstractC1059g m38350u0() {
        AbstractC1059g t = m38353t();
        if (t != null) {
            return t;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    /* renamed from: v */
    public final int m38349v() {
        return this.f1303v;
    }

    /* renamed from: v0 */
    public final View m38348v0() {
        View L = m38450L();
        if (L != null) {
            return L;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    /* renamed from: w */
    public int m38347w() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return 0;
        }
        return dVar.f1316d;
    }

    /* renamed from: w0 */
    public void m38346w0() {
        LayoutInflater$Factory2C1062h hVar = this.f1299r;
        if (hVar == null || hVar.f4466q == null) {
            m38389g().f1329q = false;
        } else if (Looper.myLooper() != this.f1299r.f4466q.m34909h().getLooper()) {
            this.f1299r.f4466q.m34909h().postAtFrontOfQueue(new RunnableC0222b());
        } else {
            m38392f();
        }
    }

    /* renamed from: x */
    public int m38345x() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return 0;
        }
        return dVar.f1317e;
    }

    /* renamed from: y */
    public int m38344y() {
        C0224d dVar = this.f1270K;
        if (dVar == null) {
            return 0;
        }
        return dVar.f1318f;
    }

    /* renamed from: z */
    public final Fragment m38343z() {
        return this.f1302u;
    }
}
