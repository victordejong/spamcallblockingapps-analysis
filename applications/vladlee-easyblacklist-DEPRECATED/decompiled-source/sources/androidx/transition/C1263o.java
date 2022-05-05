package androidx.transition;

import android.widget.ImageView;
/* renamed from: androidx.transition.o */
/* loaded from: classes-dex2jar.jar:androidx/transition/o.class */
final /* synthetic */ class C1263o {

    /* renamed from: a */
    static final /* synthetic */ int[] f5320a = new int[ImageView.ScaleType.values().length];

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
    static {
        try {
            f5320a[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f5320a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
