package androidx.transition;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewOverlayImpl.class */
public interface ViewOverlayImpl {
    void add(@NonNull Drawable drawable);

    void clear();

    void remove(@NonNull Drawable drawable);
}
