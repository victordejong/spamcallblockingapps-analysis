package androidx.customview.p039a;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: androidx.customview.a.d */
/* loaded from: classes-dex2jar.jar:androidx/customview/a/d.class */
final class C0795d {

    /* renamed from: androidx.customview.a.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/d$a.class */
    public interface AbstractC0796a<T> {
        /* renamed from: a */
        void mo8087a(T t, Rect rect);
    }

    /* renamed from: androidx.customview.a.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/d$b.class */
    public interface AbstractC0797b<T, V> {
        /* renamed from: a */
        int mo8086a(T t);

        /* renamed from: a */
        V mo8085a(T t, int i);
    }

    /* renamed from: androidx.customview.a.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/d$c.class */
    private static final class C0798c<T> implements Comparator<T> {

        /* renamed from: a */
        private final Rect f3276a = new Rect();

        /* renamed from: b */
        private final Rect f3277b = new Rect();

        /* renamed from: c */
        private final boolean f3278c;

        /* renamed from: d */
        private final AbstractC0796a<T> f3279d;

        C0798c(boolean z, AbstractC0796a<T> aVar) {
            this.f3278c = z;
            this.f3279d = aVar;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            Rect rect = this.f3276a;
            Rect rect2 = this.f3277b;
            this.f3279d.mo8087a(t, rect);
            this.f3279d.mo8087a(t2, rect2);
            if (rect.top < rect2.top) {
                return -1;
            }
            if (rect.top > rect2.top) {
                return 1;
            }
            if (rect.left < rect2.left) {
                return this.f3278c ? 1 : -1;
            }
            if (rect.left > rect2.left) {
                return this.f3278c ? -1 : 1;
            }
            if (rect.bottom < rect2.bottom) {
                return -1;
            }
            if (rect.bottom > rect2.bottom) {
                return 1;
            }
            if (rect.right < rect2.right) {
                return this.f3278c ? 1 : -1;
            }
            if (rect.right > rect2.right) {
                return this.f3278c ? -1 : 1;
            }
            return 0;
        }
    }

    /* renamed from: a */
    private static int m8099a(int i, int i2) {
        return (i * 13 * i) + (i2 * i2);
    }

    /* renamed from: a */
    public static <L, T> T m8095a(L l, AbstractC0797b<L, T> bVar, AbstractC0796a<T> aVar, T t, int i, boolean z) {
        int a = bVar.mo8086a(l);
        ArrayList arrayList = new ArrayList(a);
        for (int i2 = 0; i2 < a; i2++) {
            arrayList.add(bVar.mo8085a(l, i2));
        }
        Collections.sort(arrayList, new C0798c(z, aVar));
        T t2 = null;
        T t3 = null;
        if (i == 1) {
            int size = arrayList.size();
            if (t != null) {
                size = arrayList.indexOf(t);
            }
            int i3 = size - 1;
            if (i3 >= 0) {
                t2 = (T) arrayList.get(i3);
            }
            return t2;
        } else if (i == 2) {
            int size2 = arrayList.size();
            int lastIndexOf = (t == null ? -1 : arrayList.lastIndexOf(t)) + 1;
            if (lastIndexOf < size2) {
                t3 = (T) arrayList.get(lastIndexOf);
            }
            return t3;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0090  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <L, T> T m8094a(L r6, androidx.customview.p039a.C0795d.AbstractC0797b<L, T> r7, androidx.customview.p039a.C0795d.AbstractC0796a<T> r8, T r9, android.graphics.Rect r10, int r11) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.p039a.C0795d.m8094a(java.lang.Object, androidx.customview.a.d$b, androidx.customview.a.d$a, java.lang.Object, android.graphics.Rect, int):java.lang.Object");
    }

    /* renamed from: a */
    private static boolean m8098a(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    /* renamed from: a */
    private static boolean m8097a(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean a = m8098a(i, rect, rect2);
        if (m8098a(i, rect, rect3) || !a) {
            return false;
        }
        return !m8093b(i, rect, rect3) || i == 17 || i == 66 || m8092c(i, rect, rect2) < m8090e(i, rect, rect3);
    }

    /* renamed from: a */
    private static boolean m8096a(Rect rect, Rect rect2, int i) {
        if (i == 17) {
            return (rect.right > rect2.right || rect.left >= rect2.right) && rect.left > rect2.left;
        }
        if (i == 33) {
            return (rect.bottom > rect2.bottom || rect.top >= rect2.bottom) && rect.top > rect2.top;
        }
        if (i == 66) {
            return (rect.left < rect2.left || rect.right <= rect2.left) && rect.right < rect2.right;
        }
        if (i == 130) {
            return (rect.top < rect2.top || rect.bottom <= rect2.top) && rect.bottom < rect2.bottom;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    /* renamed from: b */
    private static boolean m8093b(int i, Rect rect, Rect rect2) {
        if (i == 17) {
            return rect.left >= rect2.right;
        }
        if (i == 33) {
            return rect.top >= rect2.bottom;
        }
        if (i == 66) {
            return rect.right <= rect2.left;
        }
        if (i == 130) {
            return rect.bottom <= rect2.top;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    /* renamed from: c */
    private static int m8092c(int i, Rect rect, Rect rect2) {
        return Math.max(0, m8091d(i, rect, rect2));
    }

    /* renamed from: d */
    private static int m8091d(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i2 = rect.left;
            i3 = rect2.right;
        } else if (i == 33) {
            i2 = rect.top;
            i3 = rect2.bottom;
        } else if (i == 66) {
            i2 = rect2.left;
            i3 = rect.right;
        } else if (i == 130) {
            i2 = rect2.top;
            i3 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i2 - i3;
    }

    /* renamed from: e */
    private static int m8090e(int i, Rect rect, Rect rect2) {
        return Math.max(1, m8089f(i, rect, rect2));
    }

    /* renamed from: f */
    private static int m8089f(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i2 = rect.left;
            i3 = rect2.left;
        } else if (i == 33) {
            i2 = rect.top;
            i3 = rect2.top;
        } else if (i == 66) {
            i2 = rect2.right;
            i3 = rect.right;
        } else if (i == 130) {
            i2 = rect2.bottom;
            i3 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i2 - i3;
    }

    /* renamed from: g */
    private static int m8088g(int i, Rect rect, Rect rect2) {
        int height;
        int i2;
        int height2;
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            height = rect.left + (rect.width() / 2);
            i2 = rect2.left;
            height2 = rect2.width();
            return Math.abs(height - (i2 + (height2 / 2)));
        }
        height = rect.top + (rect.height() / 2);
        i2 = rect2.top;
        height2 = rect2.height();
        return Math.abs(height - (i2 + (height2 / 2)));
    }
}
