package android.support.p001v4.widget;

import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: android.support.v4.widget.FocusStrategy */
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/FocusStrategy.class */
class FocusStrategy {

    /* renamed from: android.support.v4.widget.FocusStrategy$BoundsAdapter */
    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/FocusStrategy$BoundsAdapter.class */
    public interface BoundsAdapter<T> {
        void obtainBounds(T t, Rect rect);
    }

    /* renamed from: android.support.v4.widget.FocusStrategy$CollectionAdapter */
    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/FocusStrategy$CollectionAdapter.class */
    public interface CollectionAdapter<T, V> {
        V get(T t, int i);

        int size(T t);
    }

    /* renamed from: android.support.v4.widget.FocusStrategy$SequentialComparator */
    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/FocusStrategy$SequentialComparator.class */
    private static class SequentialComparator<T> implements Comparator<T> {
        private final BoundsAdapter<T> mAdapter;
        private final boolean mIsLayoutRtl;
        private final Rect mTemp1 = new Rect();
        private final Rect mTemp2 = new Rect();

        SequentialComparator(boolean z, BoundsAdapter<T> boundsAdapter) {
            this.mIsLayoutRtl = z;
            this.mAdapter = boundsAdapter;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            Rect rect = this.mTemp1;
            Rect rect2 = this.mTemp2;
            this.mAdapter.obtainBounds(t, rect);
            this.mAdapter.obtainBounds(t2, rect2);
            int i = -1;
            if (rect.top < rect2.top) {
                return -1;
            }
            if (rect.top > rect2.top) {
                return 1;
            }
            if (rect.left < rect2.left) {
                if (this.mIsLayoutRtl) {
                    i = 1;
                }
                return i;
            } else if (rect.left > rect2.left) {
                if (!this.mIsLayoutRtl) {
                    i = 1;
                }
                return i;
            } else if (rect.bottom < rect2.bottom) {
                return -1;
            } else {
                if (rect.bottom > rect2.bottom) {
                    return 1;
                }
                if (rect.right < rect2.right) {
                    if (this.mIsLayoutRtl) {
                        i = 1;
                    }
                    return i;
                } else if (rect.right <= rect2.right) {
                    return 0;
                } else {
                    if (!this.mIsLayoutRtl) {
                        i = 1;
                    }
                    return i;
                }
            }
        }
    }

    private FocusStrategy() {
    }

    private static boolean beamBeats(int i, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean beamsOverlap = beamsOverlap(i, rect, rect2);
        if (beamsOverlap(i, rect, rect3) || !beamsOverlap) {
            return false;
        }
        boolean z = true;
        if (!isToDirectionOf(i, rect, rect3) || i == 17 || i == 66) {
            return true;
        }
        if (majorAxisDistance(i, rect, rect2) >= majorAxisDistanceToFarEdge(i, rect, rect3)) {
            z = false;
        }
        return z;
    }

    private static boolean beamsOverlap(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            boolean z = false;
            if (rect2.right >= rect.left) {
                z = false;
                if (rect2.left <= rect.right) {
                    z = true;
                }
            }
            return z;
        }
        boolean z2 = false;
        if (rect2.bottom >= rect.top) {
            z2 = false;
            if (rect2.top <= rect.bottom) {
                z2 = true;
            }
        }
        return z2;
    }

    public static <L, T> T findNextFocusInAbsoluteDirection(@NonNull L l, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t, @NonNull Rect rect, int i) {
        Rect rect2 = new Rect(rect);
        if (i == 17) {
            rect2.offset(rect.width() + 1, 0);
        } else if (i == 33) {
            rect2.offset(0, rect.height() + 1);
        } else if (i == 66) {
            rect2.offset(-(rect.width() + 1), 0);
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            rect2.offset(0, -(rect.height() + 1));
        }
        T t2 = null;
        int size = collectionAdapter.size(l);
        Rect rect3 = new Rect();
        for (int i2 = 0; i2 < size; i2++) {
            T t3 = collectionAdapter.get(l, i2);
            if (t3 != t) {
                boundsAdapter.obtainBounds(t3, rect3);
                if (isBetterCandidate(i, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t2 = t3;
                }
            }
        }
        return t2;
    }

    public static <L, T> T findNextFocusInRelativeDirection(@NonNull L l, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t, int i, boolean z, boolean z2) {
        int size = collectionAdapter.size(l);
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(collectionAdapter.get(l, i2));
        }
        Collections.sort(arrayList, new SequentialComparator(z, boundsAdapter));
        switch (i) {
            case 1:
                return (T) getPreviousFocusable(t, arrayList, z2);
            case 2:
                return (T) getNextFocusable(t, arrayList, z2);
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
        }
    }

    private static <T> T getNextFocusable(T t, ArrayList<T> arrayList, boolean z) {
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

    private static <T> T getPreviousFocusable(T t, ArrayList<T> arrayList, boolean z) {
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

    private static int getWeightedDistanceFor(int i, int i2) {
        return (i * 13 * i) + (i2 * i2);
    }

    private static boolean isBetterCandidate(int i, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean z = false;
        if (!isCandidate(rect, rect2, i)) {
            return false;
        }
        if (!isCandidate(rect, rect3, i) || beamBeats(i, rect, rect2, rect3)) {
            return true;
        }
        if (beamBeats(i, rect, rect3, rect2)) {
            return false;
        }
        if (getWeightedDistanceFor(majorAxisDistance(i, rect, rect2), minorAxisDistance(i, rect, rect2)) < getWeightedDistanceFor(majorAxisDistance(i, rect, rect3), minorAxisDistance(i, rect, rect3))) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
        if (r4.bottom <= r5.top) goto L_0x0048;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0073, code lost:
        if (r4.right <= r5.left) goto L_0x0076;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a1, code lost:
        if (r4.top >= r5.bottom) goto L_0x00a4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d0, code lost:
        if (r4.left >= r5.right) goto L_0x00d3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isCandidate(@android.support.annotation.NonNull android.graphics.Rect r4, @android.support.annotation.NonNull android.graphics.Rect r5, int r6) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.widget.FocusStrategy.isCandidate(android.graphics.Rect, android.graphics.Rect, int):boolean");
    }

    private static boolean isToDirectionOf(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        if (i == 17) {
            if (rect.left >= rect2.right) {
                z3 = true;
            }
            return z3;
        } else if (i == 33) {
            if (rect.top >= rect2.bottom) {
                z2 = true;
            }
            return z2;
        } else if (i == 66) {
            if (rect.right <= rect2.left) {
                z = true;
            }
            return z;
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            if (rect.bottom <= rect2.top) {
                z4 = true;
            }
            return z4;
        }
    }

    private static int majorAxisDistance(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(0, majorAxisDistanceRaw(i, rect, rect2));
    }

    private static int majorAxisDistanceRaw(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i == 17) {
            return rect.left - rect2.right;
        }
        if (i == 33) {
            return rect.top - rect2.bottom;
        }
        if (i == 66) {
            return rect2.left - rect.right;
        }
        if (i == 130) {
            return rect2.top - rect.bottom;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    private static int majorAxisDistanceToFarEdge(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(1, majorAxisDistanceToFarEdgeRaw(i, rect, rect2));
    }

    private static int majorAxisDistanceToFarEdgeRaw(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i == 17) {
            return rect.left - rect2.left;
        }
        if (i == 33) {
            return rect.top - rect2.top;
        }
        if (i == 66) {
            return rect2.right - rect.right;
        }
        if (i == 130) {
            return rect2.bottom - rect.bottom;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    private static int minorAxisDistance(int i, @NonNull Rect rect, @NonNull Rect rect2) {
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
