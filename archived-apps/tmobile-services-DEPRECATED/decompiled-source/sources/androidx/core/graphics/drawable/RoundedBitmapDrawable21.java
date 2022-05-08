package androidx.core.graphics.drawable;

import android.graphics.Outline;
import android.graphics.Rect;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/RoundedBitmapDrawable21.class */
class RoundedBitmapDrawable21 extends RoundedBitmapDrawable {
    @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
    /* renamed from: b */
    void mo19468b(int i, int i2, int i3, Rect rect, Rect rect2) {
        Gravity.apply(i, i2, i3, rect, rect2, 0);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(@NonNull Outline outline) {
        m19469e();
        outline.setRoundRect(this.f3067g, m19472a());
    }
}
