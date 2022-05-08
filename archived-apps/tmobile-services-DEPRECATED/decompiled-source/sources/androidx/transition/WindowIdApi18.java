package androidx.transition;

import android.view.View;
import android.view.WindowId;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/transition/WindowIdApi18.class */
class WindowIdApi18 implements WindowIdImpl {

    /* renamed from: a */
    private final WindowId f5337a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WindowIdApi18(@NonNull View view) {
        this.f5337a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof WindowIdApi18) && ((WindowIdApi18) obj).f5337a.equals(this.f5337a);
    }

    public int hashCode() {
        return this.f5337a.hashCode();
    }
}
