package androidx.appcompat.widget;

import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
/* renamed from: androidx.appcompat.widget.s */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/s.class */
final class C0521s {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static InputConnection m8975a(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = view.getParent();
            while (true) {
                if (!(parent instanceof View)) {
                    break;
                } else if (parent instanceof AbstractC0500cb) {
                    editorInfo.hintText = ((AbstractC0500cb) parent).m9028a();
                    break;
                } else {
                    parent = parent.getParent();
                }
            }
        }
        return inputConnection;
    }
}
