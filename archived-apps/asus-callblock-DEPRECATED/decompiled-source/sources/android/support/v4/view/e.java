package android.support.v4.view;

import android.os.Build;
import android.view.KeyEvent;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static final d f228a;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/e$a.class */
    static class a implements d {
        a() {
        }

        private static int a(int i, int i2, int i3, int i4) {
            int i5;
            boolean z = true;
            boolean z2 = (i2 & 1) != 0;
            int i6 = i3 | i4;
            if ((i6 & 1) == 0) {
                z = false;
            }
            if (!z2) {
                i5 = i;
                if (z) {
                    i5 = i & (i2 ^ (-1));
                }
            } else if (z) {
                throw new IllegalArgumentException("bad arguments");
            } else {
                i5 = i & (i6 ^ (-1));
            }
            return i5;
        }

        public int a(int i) {
            if ((i & 192) != 0) {
                i |= 1;
            }
            int i2 = i;
            if ((i & 48) != 0) {
                i2 = i | 2;
            }
            return i2 & 247;
        }

        @Override // android.support.v4.view.e.d
        public void a(KeyEvent keyEvent) {
        }

        @Override // android.support.v4.view.e.d
        public boolean b(int i) {
            boolean z = true;
            if (a(a(a(i) & 247, 1, 64, 128), 2, 16, 32) != 1) {
                z = false;
            }
            return z;
        }

        @Override // android.support.v4.view.e.d
        public boolean c(int i) {
            return (a(i) & 247) == 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/e$b.class */
    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.e.a, android.support.v4.view.e.d
        public final void a(KeyEvent keyEvent) {
            keyEvent.startTracking();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/e$c.class */
    static final class c extends b {
        c() {
        }

        @Override // android.support.v4.view.e.a
        public final int a(int i) {
            return KeyEvent.normalizeMetaState(i);
        }

        @Override // android.support.v4.view.e.a, android.support.v4.view.e.d
        public final boolean b(int i) {
            return KeyEvent.metaStateHasModifiers(i, 1);
        }

        @Override // android.support.v4.view.e.a, android.support.v4.view.e.d
        public final boolean c(int i) {
            return KeyEvent.metaStateHasNoModifiers(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/e$d.class */
    interface d {
        void a(KeyEvent keyEvent);

        boolean b(int i);

        boolean c(int i);
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            f228a = new c();
        } else {
            f228a = new a();
        }
    }

    public static boolean a(KeyEvent keyEvent) {
        return f228a.b(keyEvent.getMetaState());
    }

    public static boolean b(KeyEvent keyEvent) {
        return f228a.c(keyEvent.getMetaState());
    }

    public static void c(KeyEvent keyEvent) {
        f228a.a(keyEvent);
    }
}
