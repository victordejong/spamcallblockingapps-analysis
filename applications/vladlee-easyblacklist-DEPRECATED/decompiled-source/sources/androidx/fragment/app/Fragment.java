package androidx.fragment.app;

import android.animation.Animator;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
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
import androidx.core.app.AbstractC0620n;
import androidx.core.p036f.C0679a;
import androidx.core.p037g.C0726e;
import androidx.lifecycle.AbstractC0927f;
import androidx.lifecycle.AbstractC0930g;
import androidx.lifecycle.AbstractC0932i;
import androidx.lifecycle.AbstractC0950w;
import androidx.lifecycle.C0933j;
import androidx.lifecycle.C0940p;
import androidx.lifecycle.C0949v;
import androidx.lifecycle.LiveData;
import androidx.p043e.p044a.AbstractC0816a;
import androidx.savedstate.AbstractC1154c;
import androidx.savedstate.C1150a;
import androidx.savedstate.C1153b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment.class */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, AbstractC0932i, AbstractC0950w, AbstractC1154c {

    /* renamed from: j */
    static final Object f3545j = new Object();

    /* renamed from: A */
    LayoutInflater$Factory2C0898n f3546A;

    /* renamed from: B */
    AbstractC0896l f3547B;

    /* renamed from: C */
    LayoutInflater$Factory2C0898n f3548C;

    /* renamed from: D */
    Fragment f3549D;

    /* renamed from: E */
    int f3550E;

    /* renamed from: F */
    int f3551F;

    /* renamed from: G */
    String f3552G;

    /* renamed from: H */
    boolean f3553H;

    /* renamed from: I */
    boolean f3554I;

    /* renamed from: J */
    boolean f3555J;

    /* renamed from: K */
    boolean f3556K;

    /* renamed from: L */
    boolean f3557L;

    /* renamed from: M */
    boolean f3558M;

    /* renamed from: N */
    ViewGroup f3559N;

    /* renamed from: O */
    View f3560O;

    /* renamed from: P */
    View f3561P;

    /* renamed from: Q */
    boolean f3562Q;

    /* renamed from: R */
    boolean f3563R;

    /* renamed from: S */
    C0860a f3564S;

    /* renamed from: T */
    Runnable f3565T;

    /* renamed from: U */
    boolean f3566U;

    /* renamed from: V */
    boolean f3567V;

    /* renamed from: W */
    float f3568W;

    /* renamed from: X */
    LayoutInflater f3569X;

    /* renamed from: Y */
    boolean f3570Y;

    /* renamed from: Z */
    AbstractC0927f.EnumC0929b f3571Z;

    /* renamed from: a */
    private Boolean f3572a;

    /* renamed from: aa */
    C0933j f3573aa;

    /* renamed from: ab */
    C0884aq f3574ab;

    /* renamed from: ac */
    C0940p<AbstractC0932i> f3575ac;

    /* renamed from: ad */
    C1153b f3576ad;

    /* renamed from: b */
    private boolean f3577b;

    /* renamed from: c */
    private int f3578c;

    /* renamed from: k */
    int f3579k;

    /* renamed from: l */
    Bundle f3580l;

    /* renamed from: m */
    SparseArray<Parcelable> f3581m;

    /* renamed from: n */
    Boolean f3582n;

    /* renamed from: o */
    String f3583o;

    /* renamed from: p */
    Bundle f3584p;

    /* renamed from: q */
    Fragment f3585q;

    /* renamed from: r */
    String f3586r;

    /* renamed from: s */
    int f3587s;

    /* renamed from: t */
    boolean f3588t;

    /* renamed from: u */
    boolean f3589u;

    /* renamed from: v */
    boolean f3590v;

    /* renamed from: w */
    boolean f3591w;

    /* renamed from: x */
    boolean f3592x;

    /* renamed from: y */
    boolean f3593y;

    /* renamed from: z */
    int f3594z;

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0892h();

        /* renamed from: a */
        final Bundle f3596a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Bundle bundle) {
            this.f3596a = bundle;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle bundle;
            this.f3596a = parcel.readBundle();
            if (classLoader != null && (bundle = this.f3596a) != null) {
                bundle.setClassLoader(classLoader);
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.f3596a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.Fragment$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$a.class */
    public static final class C0860a {

        /* renamed from: a */
        View f3597a;

        /* renamed from: b */
        Animator f3598b;

        /* renamed from: c */
        int f3599c;

        /* renamed from: d */
        int f3600d;

        /* renamed from: e */
        int f3601e;

        /* renamed from: f */
        int f3602f;

        /* renamed from: m */
        Boolean f3609m;

        /* renamed from: n */
        Boolean f3610n;

        /* renamed from: q */
        boolean f3613q;

        /* renamed from: r */
        AbstractC0862c f3614r;

        /* renamed from: s */
        boolean f3615s;

        /* renamed from: g */
        Object f3603g = null;

        /* renamed from: h */
        Object f3604h = Fragment.f3545j;

        /* renamed from: i */
        Object f3605i = null;

        /* renamed from: j */
        Object f3606j = Fragment.f3545j;

        /* renamed from: k */
        Object f3607k = null;

        /* renamed from: l */
        Object f3608l = Fragment.f3545j;

        /* renamed from: o */
        AbstractC0620n f3611o = null;

        /* renamed from: p */
        AbstractC0620n f3612p = null;

        C0860a() {
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$b.class */
    public static final class C0861b extends RuntimeException {
        public C0861b(String str, Exception exc) {
            super(str, exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.Fragment$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$c.class */
    public interface AbstractC0862c {
        /* renamed from: a */
        void mo7624a();

        /* renamed from: b */
        void mo7623b();
    }

    public Fragment() {
        this.f3579k = 0;
        this.f3583o = UUID.randomUUID().toString();
        this.f3586r = null;
        this.f3572a = null;
        this.f3548C = new LayoutInflater$Factory2C0898n();
        this.f3558M = true;
        this.f3563R = true;
        this.f3565T = new RunnableC0889e(this);
        this.f3571Z = AbstractC0927f.EnumC0929b.RESUMED;
        this.f3575ac = new C0940p<>();
        m7864x();
    }

    public Fragment(int i) {
        this();
        this.f3578c = i;
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment fragment = (Fragment) C0895k.m7756b(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.setArguments(bundle);
            }
            return fragment;
        } catch (IllegalAccessException e) {
            throw new C0861b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new C0861b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new C0861b("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new C0861b("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }

    /* renamed from: x */
    private void m7864x() {
        this.f3573aa = new C0933j(this);
        this.f3576ad = C1153b.m6693a(this);
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3573aa.mo7580a(new AbstractC0930g() { // from class: androidx.fragment.app.Fragment.2
                @Override // androidx.lifecycle.AbstractC0930g
                /* renamed from: a */
                public final void mo6700a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar) {
                    if (aVar == AbstractC0927f.EnumC0928a.ON_STOP && Fragment.this.f3560O != null) {
                        Fragment.this.f3560O.cancelPendingInputEvents();
                    }
                }
            });
        }
    }

    /* renamed from: y */
    private C0860a m7863y() {
        if (this.f3564S == null) {
            this.f3564S = new C0860a();
        }
        return this.f3564S;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Fragment m7898a(String str) {
        return str.equals(this.f3583o) ? this : this.f3548C.m7683b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7909a(int i) {
        if (this.f3564S != null || i != 0) {
            m7863y().f3600d = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7908a(int i, int i2) {
        if (this.f3564S != null || i != 0 || i2 != 0) {
            m7863y();
            C0860a aVar = this.f3564S;
            aVar.f3601e = i;
            aVar.f3602f = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7907a(Animator animator) {
        m7863y().f3598b = animator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7906a(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.f3548C.m7721a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7905a(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.f3581m;
        if (sparseArray != null) {
            this.f3561P.restoreHierarchyState(sparseArray);
            this.f3581m = null;
        }
        this.f3577b = false;
        onViewStateRestored(bundle);
        if (!this.f3577b) {
            throw new C0885ar("Fragment " + this + " did not call through to super.onViewStateRestored()");
        } else if (this.f3560O != null) {
            this.f3574ab.m7785a(AbstractC0927f.EnumC0928a.ON_CREATE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7904a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f3548C.m7653m();
        this.f3593y = true;
        this.f3574ab = new C0884aq();
        this.f3560O = onCreateView(layoutInflater, viewGroup, bundle);
        if (this.f3560O != null) {
            this.f3574ab.m7786a();
            this.f3575ac.mo7559b((C0940p<AbstractC0932i>) this.f3574ab);
        } else if (!this.f3574ab.m7784b()) {
            this.f3574ab = null;
        } else {
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7900a(View view) {
        m7863y().f3597a = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7899a(AbstractC0862c cVar) {
        m7863y();
        if (cVar != this.f3564S.f3614r) {
            if (cVar == null || this.f3564S.f3614r == null) {
                if (this.f3564S.f3613q) {
                    this.f3564S.f3614r = cVar;
                }
                if (cVar != null) {
                    cVar.mo7623b();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on ".concat(String.valueOf(this)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7897a(boolean z) {
        onMultiWindowModeChanged(z);
        this.f3548C.m7693a(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m7910a() {
        return this.f3594z > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m7903a(Menu menu) {
        boolean z = false;
        if (!this.f3553H) {
            boolean z2 = false;
            if (this.f3557L) {
                z2 = false;
                if (this.f3558M) {
                    z2 = true;
                    onPrepareOptionsMenu(menu);
                }
            }
            z = z2 | this.f3548C.m7717a(menu);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m7902a(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (!this.f3553H) {
            boolean z2 = false;
            if (this.f3557L) {
                z2 = false;
                if (this.f3558M) {
                    z2 = true;
                    onCreateOptionsMenu(menu, menuInflater);
                }
            }
            z = z2 | this.f3548C.m7716a(menu, menuInflater);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m7901a(MenuItem menuItem) {
        if (!this.f3553H) {
            return (this.f3557L && this.f3558M && onOptionsItemSelected(menuItem)) || this.f3548C.m7715a(menuItem);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final LayoutInflater m7894b(Bundle bundle) {
        this.f3569X = onGetLayoutInflater(bundle);
        return this.f3569X;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m7896b() {
        m7864x();
        this.f3583o = UUID.randomUUID().toString();
        this.f3588t = false;
        this.f3589u = false;
        this.f3590v = false;
        this.f3591w = false;
        this.f3592x = false;
        this.f3594z = 0;
        this.f3546A = null;
        this.f3548C = new LayoutInflater$Factory2C0898n();
        this.f3547B = null;
        this.f3550E = 0;
        this.f3551F = 0;
        this.f3552G = null;
        this.f3553H = false;
        this.f3554I = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m7895b(int i) {
        m7863y().f3599c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m7893b(Menu menu) {
        if (!this.f3553H) {
            if (this.f3557L && this.f3558M) {
                onOptionsMenuClosed(menu);
            }
            this.f3548C.m7690b(menu);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m7891b(boolean z) {
        onPictureInPictureModeChanged(z);
        this.f3548C.m7680b(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m7892b(MenuItem menuItem) {
        if (!this.f3553H) {
            return onContextItemSelected(menuItem) || this.f3548C.m7689b(menuItem);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m7890c() {
        AbstractC0862c cVar;
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            cVar = null;
        } else {
            aVar.f3613q = false;
            cVar = aVar.f3614r;
            this.f3564S.f3614r = null;
        }
        if (cVar != null) {
            cVar.mo7624a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m7889c(Bundle bundle) {
        Parcelable parcelable;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            this.f3548C.m7718a(parcelable);
            this.f3548C.m7651n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m7888c(boolean z) {
        m7863y().f3615s = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m7887d() {
        this.f3548C.m7702a(this.f3547B, new C0891g(this), this);
        this.f3577b = false;
        onAttach(this.f3547B.m7740i());
        if (!this.f3577b) {
            throw new C0885ar("Fragment " + this + " did not call through to super.onAttach()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m7886d(Bundle bundle) {
        this.f3548C.m7653m();
        this.f3579k = 1;
        this.f3577b = false;
        this.f3576ad.m6694a(bundle);
        onCreate(bundle);
        this.f3570Y = true;
        if (this.f3577b) {
            this.f3573aa.m7583a(AbstractC0927f.EnumC0928a.ON_CREATE);
            return;
        }
        throw new C0885ar("Fragment " + this + " did not call through to super.onCreate()");
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.f3550E));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.f3551F));
        printWriter.print(" mTag=");
        printWriter.println(this.f3552G);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f3579k);
        printWriter.print(" mWho=");
        printWriter.print(this.f3583o);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.f3594z);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.f3588t);
        printWriter.print(" mRemoving=");
        printWriter.print(this.f3589u);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.f3590v);
        printWriter.print(" mInLayout=");
        printWriter.println(this.f3591w);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.f3553H);
        printWriter.print(" mDetached=");
        printWriter.print(this.f3554I);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.f3558M);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.f3557L);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.f3555J);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.f3563R);
        if (this.f3546A != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.f3546A);
        }
        if (this.f3547B != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.f3547B);
        }
        if (this.f3549D != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.f3549D);
        }
        if (this.f3584p != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f3584p);
        }
        if (this.f3580l != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f3580l);
        }
        if (this.f3581m != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f3581m);
        }
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.f3587s);
        }
        if (m7874n() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(m7874n());
        }
        if (this.f3559N != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.f3559N);
        }
        if (this.f3560O != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.f3560O);
        }
        if (this.f3561P != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.f3560O);
        }
        if (m7869s() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(m7869s());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(m7867u());
        }
        if (getContext() != null) {
            AbstractC0816a.m8006a(this).mo8000a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.f3548C + ":");
        LayoutInflater$Factory2C0898n nVar = this.f3548C;
        nVar.mo7698a(str + "  ", fileDescriptor, printWriter, strArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m7885e() {
        this.f3548C.m7653m();
        this.f3548C.m7657k();
        this.f3579k = 3;
        this.f3577b = false;
        onStart();
        if (this.f3577b) {
            this.f3573aa.m7583a(AbstractC0927f.EnumC0928a.ON_START);
            if (this.f3560O != null) {
                this.f3574ab.m7785a(AbstractC0927f.EnumC0928a.ON_START);
            }
            this.f3548C.m7647p();
            return;
        }
        throw new C0885ar("Fragment " + this + " did not call through to super.onStart()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m7884e(Bundle bundle) {
        this.f3548C.m7653m();
        this.f3579k = 2;
        this.f3577b = false;
        onActivityCreated(bundle);
        if (this.f3577b) {
            this.f3548C.m7649o();
            return;
        }
        throw new C0885ar("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m7883f() {
        this.f3548C.m7653m();
        this.f3548C.m7657k();
        this.f3579k = 4;
        this.f3577b = false;
        onResume();
        if (this.f3577b) {
            this.f3573aa.m7583a(AbstractC0927f.EnumC0928a.ON_RESUME);
            if (this.f3560O != null) {
                this.f3574ab.m7785a(AbstractC0927f.EnumC0928a.ON_RESUME);
            }
            this.f3548C.m7645q();
            this.f3548C.m7657k();
            return;
        }
        throw new C0885ar("Fragment " + this + " did not call through to super.onResume()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m7882f(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.f3576ad.m6692b(bundle);
        Parcelable l = this.f3548C.m7655l();
        if (l != null) {
            bundle.putParcelable("android:support:fragments", l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m7881g() {
        boolean b = this.f3546A.m7687b(this);
        Boolean bool = this.f3572a;
        if (bool == null || bool.booleanValue() != b) {
            this.f3572a = Boolean.valueOf(b);
            onPrimaryNavigationFragmentChanged(b);
            this.f3548C.m7633w();
        }
    }

    public final FragmentActivity getActivity() {
        AbstractC0896l lVar = this.f3547B;
        if (lVar == null) {
            return null;
        }
        return (FragmentActivity) lVar.m7741h();
    }

    public boolean getAllowEnterTransitionOverlap() {
        C0860a aVar = this.f3564S;
        if (aVar == null || aVar.f3610n == null) {
            return true;
        }
        return this.f3564S.f3610n.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        C0860a aVar = this.f3564S;
        if (aVar == null || aVar.f3609m == null) {
            return true;
        }
        return this.f3564S.f3609m.booleanValue();
    }

    public final Bundle getArguments() {
        return this.f3584p;
    }

    public final AbstractC0897m getChildFragmentManager() {
        if (this.f3547B != null) {
            return this.f3548C;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public Context getContext() {
        AbstractC0896l lVar = this.f3547B;
        if (lVar == null) {
            return null;
        }
        return lVar.m7740i();
    }

    public Object getEnterTransition() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return null;
        }
        return aVar.f3603g;
    }

    public Object getExitTransition() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return null;
        }
        return aVar.f3605i;
    }

    public final AbstractC0897m getFragmentManager() {
        return this.f3546A;
    }

    public final Object getHost() {
        AbstractC0896l lVar = this.f3547B;
        if (lVar == null) {
            return null;
        }
        return lVar.mo7742g();
    }

    public final int getId() {
        return this.f3550E;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.f3569X;
        return layoutInflater == null ? m7894b((Bundle) null) : layoutInflater;
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        AbstractC0896l lVar = this.f3547B;
        if (lVar != null) {
            LayoutInflater c = lVar.mo7746c();
            C0726e.m8408a(c, this.f3548C);
            return c;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Override // androidx.lifecycle.AbstractC0932i
    public AbstractC0927f getLifecycle() {
        return this.f3573aa;
    }

    @Deprecated
    public AbstractC0816a getLoaderManager() {
        return AbstractC0816a.m8006a(this);
    }

    public final Fragment getParentFragment() {
        return this.f3549D;
    }

    public Object getReenterTransition() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return null;
        }
        return aVar.f3606j == f3545j ? getExitTransition() : this.f3564S.f3606j;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    public final boolean getRetainInstance() {
        return this.f3555J;
    }

    public Object getReturnTransition() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return null;
        }
        return aVar.f3604h == f3545j ? getEnterTransition() : this.f3564S.f3604h;
    }

    @Override // androidx.savedstate.AbstractC1154c
    public final C1150a getSavedStateRegistry() {
        return this.f3576ad.m6695a();
    }

    public Object getSharedElementEnterTransition() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return null;
        }
        return aVar.f3607k;
    }

    public Object getSharedElementReturnTransition() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return null;
        }
        return aVar.f3608l == f3545j ? getSharedElementEnterTransition() : this.f3564S.f3608l;
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final String getString(int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final String getTag() {
        return this.f3552G;
    }

    public final Fragment getTargetFragment() {
        Fragment fragment = this.f3585q;
        if (fragment != null) {
            return fragment;
        }
        LayoutInflater$Factory2C0898n nVar = this.f3546A;
        if (nVar == null || this.f3586r == null) {
            return null;
        }
        return nVar.f3789g.get(this.f3586r);
    }

    public final int getTargetRequestCode() {
        return this.f3587s;
    }

    public final CharSequence getText(int i) {
        return getResources().getText(i);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.f3563R;
    }

    public View getView() {
        return this.f3560O;
    }

    public AbstractC0932i getViewLifecycleOwner() {
        C0884aq aqVar = this.f3574ab;
        if (aqVar != null) {
            return aqVar;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public LiveData<AbstractC0932i> getViewLifecycleOwnerLiveData() {
        return this.f3575ac;
    }

    @Override // androidx.lifecycle.AbstractC0950w
    public C0949v getViewModelStore() {
        LayoutInflater$Factory2C0898n nVar = this.f3546A;
        if (nVar != null) {
            return nVar.m7677c(this);
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m7880h() {
        onLowMemory();
        this.f3548C.m7635v();
    }

    public final boolean hasOptionsMenu() {
        return this.f3557L;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final void m7879i() {
        this.f3548C.m7643r();
        if (this.f3560O != null) {
            this.f3574ab.m7785a(AbstractC0927f.EnumC0928a.ON_PAUSE);
        }
        this.f3573aa.m7583a(AbstractC0927f.EnumC0928a.ON_PAUSE);
        this.f3579k = 3;
        this.f3577b = false;
        onPause();
        if (!this.f3577b) {
            throw new C0885ar("Fragment " + this + " did not call through to super.onPause()");
        }
    }

    public final boolean isAdded() {
        return this.f3547B != null && this.f3588t;
    }

    public final boolean isDetached() {
        return this.f3554I;
    }

    public final boolean isHidden() {
        return this.f3553H;
    }

    public final boolean isInLayout() {
        return this.f3591w;
    }

    public final boolean isMenuVisible() {
        return this.f3558M;
    }

    public final boolean isRemoving() {
        return this.f3589u;
    }

    public final boolean isResumed() {
        return this.f3579k >= 4;
    }

    public final boolean isStateSaved() {
        LayoutInflater$Factory2C0898n nVar = this.f3546A;
        if (nVar == null) {
            return false;
        }
        return nVar.m7661i();
    }

    public final boolean isVisible() {
        View view;
        return isAdded() && !isHidden() && (view = this.f3560O) != null && view.getWindowToken() != null && this.f3560O.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final void m7878j() {
        this.f3548C.m7641s();
        if (this.f3560O != null) {
            this.f3574ab.m7785a(AbstractC0927f.EnumC0928a.ON_STOP);
        }
        this.f3573aa.m7583a(AbstractC0927f.EnumC0928a.ON_STOP);
        this.f3579k = 2;
        this.f3577b = false;
        onStop();
        if (!this.f3577b) {
            throw new C0885ar("Fragment " + this + " did not call through to super.onStop()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public final void m7877k() {
        this.f3548C.m7639t();
        if (this.f3560O != null) {
            this.f3574ab.m7785a(AbstractC0927f.EnumC0928a.ON_DESTROY);
        }
        this.f3579k = 1;
        this.f3577b = false;
        onDestroyView();
        if (this.f3577b) {
            AbstractC0816a.m8006a(this).mo8005a();
            this.f3593y = false;
            return;
        }
        throw new C0885ar("Fragment " + this + " did not call through to super.onDestroyView()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public final void m7876l() {
        this.f3548C.m7637u();
        this.f3573aa.m7583a(AbstractC0927f.EnumC0928a.ON_DESTROY);
        this.f3579k = 0;
        this.f3577b = false;
        this.f3570Y = false;
        onDestroy();
        if (!this.f3577b) {
            throw new C0885ar("Fragment " + this + " did not call through to super.onDestroy()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public final void m7875m() {
        this.f3577b = false;
        onDetach();
        this.f3569X = null;
        if (!this.f3577b) {
            throw new C0885ar("Fragment " + this + " did not call through to super.onDetach()");
        } else if (!this.f3548C.f3803u) {
            this.f3548C.m7637u();
            this.f3548C = new LayoutInflater$Factory2C0898n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public final int m7874n() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return 0;
        }
        return aVar.f3600d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public final int m7873o() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return 0;
        }
        return aVar.f3601e;
    }

    public void onActivityCreated(Bundle bundle) {
        this.f3577b = true;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.f3577b = true;
    }

    public void onAttach(Context context) {
        this.f3577b = true;
        AbstractC0896l lVar = this.f3547B;
        Activity h = lVar == null ? null : lVar.m7741h();
        if (h != null) {
            this.f3577b = false;
            onAttach(h);
        }
    }

    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.f3577b = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        boolean z = true;
        this.f3577b = true;
        m7889c(bundle);
        if (this.f3548C.f3795m <= 0) {
            z = false;
        }
        if (!z) {
            this.f3548C.m7651n();
        }
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    public Animator onCreateAnimator(int i, boolean z, int i2) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.f3578c;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.f3577b = true;
    }

    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.f3577b = true;
    }

    public void onDetach() {
        this.f3577b = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.f3577b = true;
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.f3577b = true;
        AbstractC0896l lVar = this.f3547B;
        Activity h = lVar == null ? null : lVar.m7741h();
        if (h != null) {
            this.f3577b = false;
            onInflate(h, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f3577b = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.f3577b = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.f3577b = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.f3577b = true;
    }

    public void onStop() {
        this.f3577b = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.f3577b = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public final int m7872p() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return 0;
        }
        return aVar.f3602f;
    }

    public void postponeEnterTransition() {
        m7863y().f3613q = true;
    }

    public final void postponeEnterTransition(long j, TimeUnit timeUnit) {
        m7863y().f3613q = true;
        LayoutInflater$Factory2C0898n nVar = this.f3546A;
        Handler j2 = nVar != null ? nVar.f3796n.m7739j() : new Handler(Looper.getMainLooper());
        j2.removeCallbacks(this.f3565T);
        j2.postDelayed(this.f3565T, timeUnit.toMillis(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public final AbstractC0620n m7871q() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return null;
        }
        return aVar.f3611o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public final AbstractC0620n m7870r() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return null;
        }
        return aVar.f3612p;
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public final void requestPermissions(String[] strArr, int i) {
        AbstractC0896l lVar = this.f3547B;
        if (lVar != null) {
            lVar.mo7750a(this, strArr, i);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public final FragmentActivity requireActivity() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public final AbstractC0897m requireFragmentManager() {
        AbstractC0897m fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a host.");
    }

    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException("Fragment " + this + " is not attached to any Fragment or host");
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public final View m7869s() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return null;
        }
        return aVar.f3597a;
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        m7863y().f3610n = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        m7863y().f3609m = Boolean.valueOf(z);
    }

    public void setArguments(Bundle bundle) {
        if (this.f3546A == null || !isStateSaved()) {
            this.f3584p = bundle;
            return;
        }
        throw new IllegalStateException("Fragment already added and state has been saved");
    }

    public void setEnterSharedElementCallback(AbstractC0620n nVar) {
        m7863y().f3611o = nVar;
    }

    public void setEnterTransition(Object obj) {
        m7863y().f3603g = obj;
    }

    public void setExitSharedElementCallback(AbstractC0620n nVar) {
        m7863y().f3612p = nVar;
    }

    public void setExitTransition(Object obj) {
        m7863y().f3605i = obj;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.f3557L != z) {
            this.f3557L = z;
            if (isAdded() && !isHidden()) {
                this.f3547B.mo7745d();
            }
        }
    }

    public void setInitialSavedState(SavedState savedState) {
        if (this.f3546A == null) {
            this.f3580l = (savedState == null || savedState.f3596a == null) ? null : savedState.f3596a;
            return;
        }
        throw new IllegalStateException("Fragment already added");
    }

    public void setMenuVisibility(boolean z) {
        if (this.f3558M != z) {
            this.f3558M = z;
            if (this.f3557L && isAdded() && !isHidden()) {
                this.f3547B.mo7745d();
            }
        }
    }

    public void setReenterTransition(Object obj) {
        m7863y().f3606j = obj;
    }

    public void setRetainInstance(boolean z) {
        this.f3555J = z;
        LayoutInflater$Factory2C0898n nVar = this.f3546A;
        if (nVar == null) {
            this.f3556K = true;
        } else if (z) {
            nVar.m7671d(this);
        } else {
            nVar.m7668e(this);
        }
    }

    public void setReturnTransition(Object obj) {
        m7863y().f3604h = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        m7863y().f3607k = obj;
    }

    public void setSharedElementReturnTransition(Object obj) {
        m7863y().f3608l = obj;
    }

    public void setTargetFragment(Fragment fragment, int i) {
        AbstractC0897m fragmentManager = getFragmentManager();
        AbstractC0897m fragmentManager2 = fragment != null ? fragment.getFragmentManager() : null;
        if (fragmentManager == null || fragmentManager2 == null || fragmentManager == fragmentManager2) {
            for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.getTargetFragment()) {
                if (fragment2 == this) {
                    throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
                }
            }
            if (fragment == null) {
                this.f3586r = null;
            } else if (this.f3546A == null || fragment.f3546A == null) {
                this.f3586r = null;
                this.f3585q = fragment;
                this.f3587s = i;
                return;
            } else {
                this.f3586r = fragment.f3583o;
            }
            this.f3585q = null;
            this.f3587s = i;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " must share the same FragmentManager to be set as a target fragment");
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.f3563R && z && this.f3579k < 3 && this.f3546A != null && isAdded() && this.f3570Y) {
            this.f3546A.m7666f(this);
        }
        this.f3563R = z;
        this.f3562Q = this.f3579k < 3 && !z;
        if (this.f3580l != null) {
            this.f3582n = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        AbstractC0896l lVar = this.f3547B;
        if (lVar != null) {
            return lVar.mo7749a(str);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(Intent intent, Bundle bundle) {
        AbstractC0896l lVar = this.f3547B;
        if (lVar != null) {
            lVar.mo7752a(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startActivityForResult(Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        AbstractC0896l lVar = this.f3547B;
        if (lVar != null) {
            lVar.mo7752a(this, intent, i, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        AbstractC0896l lVar = this.f3547B;
        if (lVar != null) {
            lVar.mo7751a(this, intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void startPostponedEnterTransition() {
        LayoutInflater$Factory2C0898n nVar = this.f3546A;
        if (nVar == null || nVar.f3796n == null) {
            m7863y().f3613q = false;
        } else if (Looper.myLooper() != this.f3546A.f3796n.m7739j().getLooper()) {
            this.f3546A.f3796n.m7739j().postAtFrontOfQueue(new RunnableC0890f(this));
        } else {
            m7890c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public final Animator m7868t() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return null;
        }
        return aVar.f3598b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        C0679a.m8556a(this, sb);
        sb.append(" (");
        sb.append(this.f3583o);
        sb.append(")");
        if (this.f3550E != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f3550E));
        }
        if (this.f3552G != null) {
            sb.append(" ");
            sb.append(this.f3552G);
        }
        sb.append('}');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public final int m7867u() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return 0;
        }
        return aVar.f3599c;
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public final boolean m7866v() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return false;
        }
        return aVar.f3613q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public final boolean m7865w() {
        C0860a aVar = this.f3564S;
        if (aVar == null) {
            return false;
        }
        return aVar.f3615s;
    }
}
