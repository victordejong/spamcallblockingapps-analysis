package androidx.transition;

import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.transition.bu */
/* loaded from: classes-dex2jar.jar:androidx/transition/bu.class */
final class C1241bu extends Property<View, Rect> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1241bu(Class cls, String str) {
        super(cls, str);
    }

    @Override // android.util.Property
    public final /* synthetic */ Rect get(View view) {
        return C0741t.m8371D(view);
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(View view, Rect rect) {
        C0741t.m8352a(view, rect);
    }
}
