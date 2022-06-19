package androidx.appcompat.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.C0092a0;
import androidx.appcompat.widget.C0105g;
import androidx.appcompat.widget.C0130s;
import androidx.appcompat.widget.C0132t;
import androidx.appcompat.widget.d;
import androidx.appcompat.widget.f;
import androidx.appcompat.widget.j;
import androidx.appcompat.widget.l;
import androidx.appcompat.widget.n;
import androidx.appcompat.widget.o;
import androidx.appcompat.widget.r;
import androidx.appcompat.widget.v;
import androidx.appcompat.widget.y;
import f.e.g;
import f.h.l.t;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.app.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h.class */
public class C0070h {

    /* renamed from: b */
    private static final Class<?>[] f239b = {Context.class, AttributeSet.class};

    /* renamed from: c */
    private static final int[] f240c = {16843375};

    /* renamed from: d */
    private static final String[] f241d = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: e */
    private static final g<String, Constructor<? extends View>> f242e = new g<>();

    /* renamed from: a */
    private final Object[] f243a = new Object[2];

    /* renamed from: androidx.appcompat.app.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$a.class */
    public static class View$OnClickListenerC0071a implements View.OnClickListener {

        /* renamed from: f */
        private final View f244f;

        /* renamed from: g */
        private final String f245g;

        /* renamed from: h */
        private Method f246h;

        /* renamed from: i */
        private Context f247i;

        public View$OnClickListenerC0071a(View view, String str) {
            this.f244f = view;
            this.f245g = str;
        }

        /* renamed from: a */
        private void m6804a(Context context) {
            int id;
            String str;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f245g, View.class)) != null) {
                        this.f246h = method;
                        this.f247i = context;
                        return;
                    }
                } catch (NoSuchMethodException e) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            if (this.f244f.getId() == -1) {
                str = "";
            } else {
                str = " with id '" + this.f244f.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f245g + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f244f.getClass() + str);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f246h == null) {
                m6804a(this.f244f.getContext());
            }
            try {
                this.f246h.invoke(this.f247i, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }
    }

    /* renamed from: a */
    private void m6825a(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT >= 15 && !t.L(view)) {
                return;
            }
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f240c);
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new View$OnClickListenerC0071a(view, string));
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: r */
    private View m6808r(Context context, String str, String str2) throws ClassNotFoundException, InflateException {
        String str3;
        g<String, Constructor<? extends View>> gVar = f242e;
        Constructor constructor = (Constructor) gVar.get(str);
        Constructor constructor2 = constructor;
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception e) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor2 = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f239b);
            gVar.put(str, constructor2);
        }
        constructor2.setAccessible(true);
        return (View) constructor2.newInstance(this.f243a);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: s */
    private View m6807s(Context context, String str, AttributeSet attributeSet) {
        String str2 = str;
        if (str.equals("view")) {
            str2 = attributeSet.getAttributeValue(null, "class");
        }
        try {
            Object[] objArr = this.f243a;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (-1 != str2.indexOf(46)) {
                View m6808r = m6808r(context, str2, null);
                Object[] objArr2 = this.f243a;
                objArr2[0] = null;
                objArr2[1] = null;
                return m6808r;
            }
            int i = 0;
            while (true) {
                String[] strArr = f241d;
                if (i >= strArr.length) {
                    Object[] objArr3 = this.f243a;
                    objArr3[0] = null;
                    objArr3[1] = null;
                    return null;
                }
                View m6808r2 = m6808r(context, str2, strArr[i]);
                if (m6808r2 != null) {
                    Object[] objArr4 = this.f243a;
                    objArr4[0] = null;
                    objArr4[1] = null;
                    return m6808r2;
                }
                i++;
            }
        } catch (Exception e) {
            Object[] objArr5 = this.f243a;
            objArr5[0] = null;
            objArr5[1] = null;
            return null;
        } catch (Throwable th) {
            Object[] objArr6 = this.f243a;
            objArr6[0] = null;
            objArr6[1] = null;
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
        if (((f.a.o.d) r6).c() != r11) goto L19;
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.content.Context m6806t(android.content.Context r6, android.util.AttributeSet r7, boolean r8, boolean r9) {
        /*
            r0 = r6
            r1 = r7
            int[] r2 = f.a.j.A3
            r3 = 0
            r4 = 0
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L1c
            r0 = r7
            int r1 = f.a.j.B3
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)
            r10 = r0
            goto L1f
        L1c:
            r0 = 0
            r10 = r0
        L1f:
            r0 = r10
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L4f
            r0 = r10
            r11 = r0
            r0 = r10
            if (r0 != 0) goto L4f
            r0 = r7
            int r1 = f.a.j.C3
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L4f
            java.lang.String r0 = "AppCompatViewInflater"
            java.lang.String r1 = "app:theme is now deprecated. Please move to using android:theme instead."
            int r0 = android.util.Log.i(r0, r1)
            r0 = r10
            r11 = r0
        L4f:
            r0 = r7
            r0.recycle()
            r0 = r6
            r7 = r0
            r0 = r11
            if (r0 == 0) goto L7a
            r0 = r6
            boolean r0 = r0 instanceof f.a.o.d
            if (r0 == 0) goto L6f
            r0 = r6
            r7 = r0
            r0 = r6
            f.a.o.d r0 = (f.a.o.d) r0
            int r0 = r0.c()
            r1 = r11
            if (r0 == r1) goto L7a
        L6f:
            f.a.o.d r0 = new f.a.o.d
            r1 = r0
            r2 = r6
            r3 = r11
            r1.<init>(r2, r3)
            r7 = r0
        L7a:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.C0070h.m6806t(android.content.Context, android.util.AttributeSet, boolean, boolean):android.content.Context");
    }

    /* renamed from: u */
    private void m6805u(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    /* renamed from: b */
    protected d m6824b(Context context, AttributeSet attributeSet) {
        return new d(context, attributeSet);
    }

    /* renamed from: c */
    protected AppCompatButton m6823c(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    /* renamed from: d */
    protected f m6822d(Context context, AttributeSet attributeSet) {
        return new f(context, attributeSet);
    }

    /* renamed from: e */
    protected C0105g m6821e(Context context, AttributeSet attributeSet) {
        return new C0105g(context, attributeSet);
    }

    /* renamed from: f */
    protected j m6820f(Context context, AttributeSet attributeSet) {
        return new j(context, attributeSet);
    }

    /* renamed from: g */
    protected l m6819g(Context context, AttributeSet attributeSet) {
        return new l(context, attributeSet);
    }

    /* renamed from: h */
    protected n m6818h(Context context, AttributeSet attributeSet) {
        return new n(context, attributeSet);
    }

    /* renamed from: i */
    protected o m6817i(Context context, AttributeSet attributeSet) {
        return new o(context, attributeSet);
    }

    /* renamed from: j */
    protected r m6816j(Context context, AttributeSet attributeSet) {
        return new r(context, attributeSet);
    }

    /* renamed from: k */
    protected C0130s m6815k(Context context, AttributeSet attributeSet) {
        return new C0130s(context, attributeSet);
    }

    /* renamed from: l */
    protected C0132t m6814l(Context context, AttributeSet attributeSet) {
        return new C0132t(context, attributeSet);
    }

    /* renamed from: m */
    protected v m6813m(Context context, AttributeSet attributeSet) {
        return new v(context, attributeSet);
    }

    /* renamed from: n */
    protected y m6812n(Context context, AttributeSet attributeSet) {
        return new y(context, attributeSet);
    }

    /* renamed from: o */
    protected C0092a0 m6811o(Context context, AttributeSet attributeSet) {
        return new C0092a0(context, attributeSet);
    }

    /* renamed from: p */
    protected View m6810p(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
        if (r12 != false) goto L12;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final android.view.View m6809q(android.view.View r6, java.lang.String r7, android.content.Context r8, android.util.AttributeSet r9, boolean r10, boolean r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 849
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.C0070h.m6809q(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet, boolean, boolean, boolean, boolean):android.view.View");
    }
}
