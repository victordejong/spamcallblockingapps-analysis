package p459j.p460a.p474c0.p491g;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.PopupWindow;
import com.google.common.base.Joiner;
import gogolook.callgogolook2.R$integer;
import gogolook.callgogolook2.gson.UserProfile;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p491g.C12111t;
import p459j.p460a.p474c0.p499h.C12143b;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12196p0;
import p459j.p460a.p474c0.p499h.C12212s0;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.g.v */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/v.class */
public class C12118v {

    /* renamed from: j */
    public static C12118v f27222j;

    /* renamed from: a */
    public final Runnable f27223a = new RunnableC12119a();

    /* renamed from: b */
    public final View.OnTouchListener f27224b = new View$OnTouchListenerC12120b();

    /* renamed from: c */
    public final C12111t.AbstractC12116e f27225c = new C12121c();

    /* renamed from: d */
    public final int f27226d = AbstractC11516a.m9413n().mo9412a().getResources().getInteger(R$integer.snackbar_translation_duration_ms);

    /* renamed from: e */
    public final Handler f27227e = new Handler();

    /* renamed from: f */
    public C12111t f27228f;

    /* renamed from: g */
    public C12111t f27229g;

    /* renamed from: h */
    public boolean f27230h;

    /* renamed from: i */
    public PopupWindow f27231i;

    /* renamed from: j.a.c0.g.v$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/v$a.class */
    public class RunnableC12119a implements Runnable {
        public RunnableC12119a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C12118v.this.m7119a();
        }
    }

    /* renamed from: j.a.c0.g.v$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/v$b.class */
    public class View$OnTouchListenerC12120b implements View.OnTouchListener {
        public View$OnTouchListenerC12120b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            C12118v.this.m7119a();
            return false;
        }
    }

    /* renamed from: j.a.c0.g.v$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/v$c.class */
    public class C12121c implements C12111t.AbstractC12116e {
        public C12121c() {
        }

        @Override // p459j.p460a.p474c0.p491g.C12111t.AbstractC12116e
        /* renamed from: a */
        public void mo7096a() {
            C12118v.this.m7119a();
        }
    }

    /* renamed from: j.a.c0.g.v$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/v$d.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC12122d implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f27235a;

        /* renamed from: b */
        public final /* synthetic */ C12111t f27236b;

        public ViewTreeObserver$OnGlobalLayoutListenerC12122d(View view, C12111t tVar) {
            this.f27235a = view;
            this.f27236b = tVar;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            C12118v.this.f27231i.update(this.f27235a, 0, C12118v.this.m7101e(this.f27236b), this.f27235a.getWidth(), -2);
        }
    }

    /* renamed from: j.a.c0.g.v$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/v$e.class */
    public class C12123e implements PopupWindow.OnDismissListener {

        /* renamed from: a */
        public final /* synthetic */ View f27238a;

        /* renamed from: b */
        public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f27239b;

        public C12123e(C12118v vVar, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            this.f27238a = view;
            this.f27239b = onGlobalLayoutListener;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            this.f27238a.getViewTreeObserver().removeOnGlobalLayoutListener(this.f27239b);
        }
    }

    /* renamed from: j.a.c0.g.v$f */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/v$f.class */
    public class RunnableC12124f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C12111t f27240a;

        public RunnableC12124f(C12111t tVar) {
            this.f27240a = tVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C12118v.this.f27228f.m7152a(true);
            C12118v.this.m7111b();
            String e = this.f27240a.m7147e();
            if (!TextUtils.isEmpty(e) && TextUtils.getTrimmedLength(e) > 0) {
                String trim = e.trim();
                String a = this.f27240a.m7155a();
                String str = trim;
                if (!C12196p0.m6834a(a)) {
                    str = Joiner.m31135on(UserProfile.CARD_CATE_SEPARATOR).join(trim, a, new Object[0]);
                }
                C12143b.m7027a(this.f27240a.m7143i(), (AccessibilityManager) null, str);
            }
        }
    }

    /* renamed from: j.a.c0.g.v$g */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/v$g.class */
    public class RunnableC12125g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f27242a;

        public RunnableC12125g(View view) {
            this.f27242a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f27242a.setVisibility(8);
            try {
                C12118v.this.f27231i.dismiss();
            } catch (IllegalArgumentException e) {
            }
            C12118v.this.f27228f = null;
            C12118v.this.f27230h = false;
            if (C12118v.this.f27229g != null) {
                C12111t tVar = C12118v.this.f27229g;
                C12118v.this.f27229g = null;
                C12118v.this.m7097i(tVar);
            }
        }
    }

    /* renamed from: c */
    public static C12118v m7107c() {
        if (f27222j == null) {
            synchronized (C12118v.class) {
                try {
                    if (f27222j == null) {
                        f27222j = new C12118v();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f27222j;
    }

    /* renamed from: a */
    public final ViewPropertyAnimator m7116a(ViewPropertyAnimator viewPropertyAnimator) {
        return viewPropertyAnimator.setInterpolator(C12212s0.f27372d).setDuration(this.f27226d);
    }

    /* renamed from: a */
    public final WindowManager m7118a(Context context) {
        return (WindowManager) context.getSystemService("window");
    }

    /* renamed from: a */
    public C12111t.C12114c m7117a(View view) {
        return new C12111t.C12114c(this, view);
    }

    /* renamed from: a */
    public void m7119a() {
        this.f27227e.removeCallbacks(this.f27223a);
        C12111t tVar = this.f27228f;
        if (tVar != null && !this.f27230h) {
            C12153d0.m6991a("MessagingApp", "Dismissing snack bar.");
            this.f27230h = true;
            tVar.m7152a(false);
            m7106c(tVar).withEndAction(new RunnableC12125g(tVar.m7144h()));
            m7115a(tVar);
        }
    }

    /* renamed from: a */
    public final void m7115a(C12111t tVar) {
        ViewPropertyAnimator a;
        for (AbstractC12117u uVar : tVar.m7148d()) {
            if (!(uVar == null || (a = uVar.m7121a(tVar)) == null)) {
                m7116a(a);
            }
        }
    }

    /* renamed from: b */
    public final void m7111b() {
        this.f27228f.m7144h().setOnTouchListener(this.f27224b);
        this.f27228f.m7143i().setOnTouchListener(this.f27224b);
    }

    /* renamed from: b */
    public final void m7110b(C12111t tVar) {
        ViewPropertyAnimator b;
        for (AbstractC12117u uVar : tVar.m7148d()) {
            if (!(uVar == null || (b = uVar.m7120b(tVar)) == null)) {
                m7116a(b);
            }
        }
    }

    /* renamed from: c */
    public final ViewPropertyAnimator m7106c(C12111t tVar) {
        return m7116a(tVar.m7143i().animate()).translationY(tVar.m7144h().getHeight());
    }

    /* renamed from: d */
    public final ViewPropertyAnimator m7103d(C12111t tVar) {
        return m7116a(tVar.m7143i().animate()).translationX(0.0f).translationY(0.0f);
    }

    /* renamed from: e */
    public final int m7101e(C12111t tVar) {
        C12111t.C12115d g = tVar.m7145g();
        C12151d.m7000b(g);
        View b = g.m7122b();
        if (g.m7124a()) {
            return (-tVar.m7144h().getMeasuredHeight()) - b.getHeight();
        }
        return 0;
    }

    /* renamed from: f */
    public final int m7100f(C12111t tVar) {
        WindowManager a = m7118a(tVar.m7151b());
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (C14017g4.m2805s()) {
            a.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            a.getDefaultDisplay().getMetrics(displayMetrics);
        }
        int i = displayMetrics.heightPixels;
        if (!C14017g4.m2805s()) {
            return 0;
        }
        Rect rect = new Rect();
        tVar.m7146f().getRootView().getWindowVisibleDisplayFrame(rect);
        return i - rect.bottom;
    }

    /* renamed from: g */
    public final void m7099g(C12111t tVar) {
        View h = tVar.m7144h();
        Point point = new Point();
        m7118a(tVar.m7151b()).getDefaultDisplay().getSize(point);
        h.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(point.x, 1073741824), 0, -1), ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(point.y, 1073741824), 0, -2));
    }

    /* renamed from: h */
    public final void m7098h(C12111t tVar) {
        tVar.m7143i().setTranslationY(tVar.m7144h().getMeasuredHeight());
    }

    /* renamed from: i */
    public void m7097i(C12111t tVar) {
        C12151d.m7000b(tVar);
        if (this.f27228f != null) {
            C12153d0.m6991a("MessagingApp", "Showing snack bar, but currentSnackBar was not null.");
            this.f27229g = tVar;
            m7119a();
            return;
        }
        this.f27228f = tVar;
        tVar.m7154a(this.f27225c);
        this.f27227e.removeCallbacks(this.f27223a);
        this.f27227e.postDelayed(this.f27223a, tVar.m7149c());
        tVar.m7152a(false);
        View h = tVar.m7144h();
        if (C12153d0.m6992a("MessagingApp", 3)) {
            C12153d0.m6991a("MessagingApp", "Showing snack bar: " + tVar);
        }
        m7099g(tVar);
        this.f27231i = new PopupWindow(tVar.m7151b());
        this.f27231i.setWidth(-1);
        this.f27231i.setHeight(-2);
        this.f27231i.setBackgroundDrawable(null);
        this.f27231i.setContentView(h);
        C12111t.C12115d g = tVar.m7145g();
        if (g == null) {
            this.f27231i.showAtLocation(tVar.m7146f(), 8388691, 0, m7100f(tVar));
        } else {
            View b = g.m7122b();
            ViewTreeObserver$OnGlobalLayoutListenerC12122d dVar = new ViewTreeObserver$OnGlobalLayoutListenerC12122d(b, tVar);
            b.getViewTreeObserver().addOnGlobalLayoutListener(dVar);
            this.f27231i.setOnDismissListener(new C12123e(this, b, dVar));
            this.f27231i.showAsDropDown(b, 0, m7101e(tVar));
        }
        m7098h(tVar);
        m7103d(tVar).withEndAction(new RunnableC12124f(tVar));
        m7110b(tVar);
    }
}
