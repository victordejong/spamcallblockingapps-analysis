package android.support.v4.view;

import android.os.Build;
import android.view.ViewConfiguration;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/x.class */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    static final e f246a;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/x$a.class */
    static class a implements e {
        a() {
        }

        @Override // android.support.v4.view.x.e
        public int a(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledTouchSlop();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/x$b.class */
    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.x.a, android.support.v4.view.x.e
        public final int a(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledPagingTouchSlop();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/x$c.class */
    static class c extends b {
        c() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/x$d.class */
    static final class d extends c {
        d() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/x$e.class */
    interface e {
        int a(ViewConfiguration viewConfiguration);
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            f246a = new d();
        } else if (Build.VERSION.SDK_INT >= 11) {
            f246a = new c();
        } else if (Build.VERSION.SDK_INT >= 8) {
            f246a = new b();
        } else {
            f246a = new a();
        }
    }

    public static int a(ViewConfiguration viewConfiguration) {
        return f246a.a(viewConfiguration);
    }
}
