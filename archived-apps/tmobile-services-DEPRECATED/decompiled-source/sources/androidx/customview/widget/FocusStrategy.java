package androidx.customview.widget;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/customview/widget/FocusStrategy.class */
class FocusStrategy {

    /* loaded from: classes-dex2jar.jar:androidx/customview/widget/FocusStrategy$BoundsAdapter.class */
    public interface BoundsAdapter<T> {
        /* renamed from: a */
        void mo18737a(T t, Rect rect);
    }

    /* loaded from: classes-dex2jar.jar:androidx/customview/widget/FocusStrategy$CollectionAdapter.class */
    public interface CollectionAdapter<T, V> {
        /* renamed from: a */
        V mo18736a(T t, int i);

        /* renamed from: b */
        int mo18735b(T t);
    }

    /* loaded from: classes-dex2jar.jar:androidx/customview/widget/FocusStrategy$SequentialComparator.class */
    private static class SequentialComparator<T> implements Comparator<T> {

        /* renamed from: f */
        private final Rect f3482f = new Rect();

        /* renamed from: g */
        private final Rect f3483g = new Rect();

        /* renamed from: h */
        private final boolean f3484h;

        /* renamed from: i */
        private final BoundsAdapter<T> f3485i;

        SequentialComparator(boolean z, BoundsAdapter<T> boundsAdapter) {
            this.f3484h = z;
            this.f3485i = boundsAdapter;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            Rect rect = this.f3482f;
            Rect rect2 = this.f3483g;
            this.f3485i.mo18737a(t, rect);
            this.f3485i.mo18737a(t2, rect2);
            int i = rect.top;
            int i2 = rect2.top;
            int i3 = -1;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            int i4 = rect.left;
            int i5 = rect2.left;
            if (i4 < i5) {
                if (this.f3484h) {
                    i3 = 1;
                }
                return i3;
            } else if (i4 > i5) {
                if (!this.f3484h) {
                    i3 = 1;
                }
                return i3;
            } else {
                int i6 = rect.bottom;
                int i7 = rect2.bottom;
                if (i6 < i7) {
                    return -1;
                }
                if (i6 > i7) {
                    return 1;
                }
                int i8 = rect.right;
                int i9 = rect2.right;
                if (i8 < i9) {
                    if (this.f3484h) {
                        i3 = 1;
                    }
                    return i3;
                } else if (i8 <= i9) {
                    return 0;
                } else {
                    if (!this.f3484h) {
                        i3 = 1;
                    }
                    return i3;
                }
            }
        }
    }

    private FocusStrategy() {
    }

    /* renamed from: a */
    private static boolean m18752a(int i, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean b = m18751b(i, rect, rect2);
        boolean z = false;
        if (m18751b(i, rect, rect3) || !b) {
            return false;
        }
        if (!m18743j(i, rect, rect3) || i == 17 || i == 66) {
            return true;
        }
        if (m18742k(i, rect, rect2) < m18740m(i, rect, rect3)) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    private static boolean m18751b(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        boolean z = true;
        boolean z2 = true;
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            if (rect2.right < rect.left || rect2.left > rect.right) {
                z2 = false;
            }
            return z2;
        }
        if (rect2.bottom < rect.top || rect2.top > rect.bottom) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public static <L, T> T m18750c(@NonNull L l, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t, @NonNull Rect rect, int i) {
        Rect rect2 = new Rect(rect);
        if (i == 17) {
            rect2.offset(rect.width() + 1, 0);
        } else if (i == 33) {
            rect2.offset(0, rect.height() + 1);
        } else if (i == 66) {
            rect2.offset(-(rect.width() + 1), 0);
        } else if (i == 130) {
            rect2.offset(0, -(rect.height() + 1));
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        T t2 = null;
        int b = collectionAdapter.mo18735b(l);
        Rect rect3 = new Rect();
        for (int i2 = 0; i2 < b; i2++) {
            T a = collectionAdapter.mo18736a(l, i2);
            if (a != t) {
                boundsAdapter.mo18737a(a, rect3);
                if (m18745h(i, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t2 = a;
                }
            }
        }
        return t2;
    }

    /* renamed from: d */
    public static <L, T> T m18749d(@NonNull L l, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t, int i, boolean z, boolean z2) {
        int b = collectionAdapter.mo18735b(l);
        ArrayList arrayList = new ArrayList(b);
        for (int i2 = 0; i2 < b; i2++) {
            arrayList.add(collectionAdapter.mo18736a(l, i2));
        }
        Collections.sort(arrayList, new SequentialComparator(z, boundsAdapter));
        if (i == 1) {
            return (T) m18747f(t, arrayList, z2);
        }
        if (i == 2) {
            return (T) m18748e(t, arrayList, z2);
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
    }

    /* renamed from: e */
    private static <T> T m18748e(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int lastIndexOf = (t == null ? -1 : arrayList.lastIndexOf(t)) + 1;
        if (lastIndexOf < size) {
            return arrayList.get(lastIndexOf);
        }
        if (!z || size <= 0) {
            return null;
        }
        return arrayList.get(0);
    }

    /* renamed from: f */
    private static <T> T m18747f(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int indexOf = (t == null ? size : arrayList.indexOf(t)) - 1;
        if (indexOf >= 0) {
            return arrayList.get(indexOf);
        }
        if (!z || size <= 0) {
            return null;
        }
        return arrayList.get(size - 1);
    }

    /* renamed from: g */
    private static int m18746g(int i, int i2) {
        return (i * 13 * i) + (i2 * i2);
    }

    /* renamed from: h */
    private static boolean m18745h(int i, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean z = false;
        if (!m18744i(rect, rect2, i)) {
            return false;
        }
        if (!m18744i(rect, rect3, i) || m18752a(i, rect, rect2, rect3)) {
            return true;
        }
        if (m18752a(i, rect, rect3, rect2)) {
            return false;
        }
        if (m18746g(m18742k(i, rect, rect2), m18738o(i, rect, rect2)) < m18746g(m18742k(i, rect, rect3), m18738o(i, rect, rect3))) {
            z = true;
        }
        return z;
    }

    /* renamed from: i */
    private static boolean m18744i(@NonNull Rect rect, @NonNull Rect rect2, int i) {
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = true;
        if (i == 17) {
            int i2 = rect.right;
            int i3 = rect2.right;
            if ((i2 <= i3 && rect.left < i3) || rect.left <= rect2.left) {
                z3 = false;
            }
            return z3;
        } else if (i == 33) {
            int i4 = rect.bottom;
            int i5 = rect2.bottom;
            if ((i4 <= i5 && rect.top < i5) || rect.top <= rect2.top) {
                z2 = false;
            }
            return z2;
        } else if (i == 66) {
            int i6 = rect.left;
            int i7 = rect2.left;
            if ((i6 >= i7 && rect.right > i7) || rect.right >= rect2.right) {
                z = false;
            }
            return z;
        } else if (i == 130) {
            int i8 = rect.top;
            int i9 = rect2.top;
            if ((i8 >= i9 && rect.bottom > i9) || rect.bottom >= rect2.bottom) {
                z4 = false;
            }
            return z4;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
    }

    /* renamed from: j */
    private static boolean m18743j(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = true;
        if (i == 17) {
            if (rect.left < rect2.right) {
                z3 = false;
            }
            return z3;
        } else if (i == 33) {
            if (rect.top < rect2.bottom) {
                z2 = false;
            }
            return z2;
        } else if (i == 66) {
            if (rect.right > rect2.left) {
                z = false;
            }
            return z;
        } else if (i == 130) {
            if (rect.bottom > rect2.top) {
                z4 = false;
            }
            return z4;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
    }

    /* renamed from: k */
    private static int m18742k(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(0, m18741l(i, rect, rect2));
    }

    /* renamed from: l */
    private static int m18741l(int i, @NonNull Rect rect, @NonNull Rect rect2) {
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

    /* renamed from: m */
    private static int m18740m(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(1, m18739n(i, rect, rect2));
    }

    /* renamed from: n */
    private static int m18739n(int i, @NonNull Rect rect, @NonNull Rect rect2) {
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

    /* renamed from: o */
    private static int m18738o(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs((rect.left + (rect.width() / 2)) - (rect2.left + (rect2.width() / 2)));
        }
        return Math.abs((rect.top + (rect.height() / 2)) - (rect2.top + (rect2.height() / 2)));
    }
}
