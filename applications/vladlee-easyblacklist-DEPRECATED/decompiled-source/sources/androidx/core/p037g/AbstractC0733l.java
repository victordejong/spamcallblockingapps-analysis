package androidx.core.p037g;

import android.view.View;
/* renamed from: androidx.core.g.l */
/* loaded from: classes-dex2jar.jar:androidx/core/g/l.class */
public interface AbstractC0733l {
    boolean onNestedFling(View view, float f, float f2, boolean z);

    boolean onNestedPreFling(View view, float f, float f2);

    void onNestedPreScroll(View view, int i, int i2, int[] iArr);

    void onNestedScroll(View view, int i, int i2, int i3, int i4);

    void onNestedScrollAccepted(View view, View view2, int i);

    boolean onStartNestedScroll(View view, View view2, int i);

    void onStopNestedScroll(View view);
}
