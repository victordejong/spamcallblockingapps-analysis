package androidx.appcompat.widget;

import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
/* renamed from: androidx.appcompat.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/k.class */
class C0114k {
    /* renamed from: a */
    public static InputConnection m6553a(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = view.getParent();
            while (true) {
                ViewParent viewParent = parent;
                if (!(viewParent instanceof View)) {
                    break;
                } else if (viewParent instanceof AbstractC0098c1) {
                    editorInfo.hintText = ((AbstractC0098c1) viewParent).m6613a();
                    break;
                } else {
                    parent = viewParent.getParent();
                }
            }
        }
        return inputConnection;
    }
}
