package androidx.appcompat.widget;

import android.view.KeyEvent;
import android.widget.TextView;
/* renamed from: androidx.appcompat.widget.bb */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bb.class */
final class C0472bb implements TextView.OnEditorActionListener {

    /* renamed from: a */
    final /* synthetic */ SearchView f2294a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0472bb(SearchView searchView) {
        this.f2294a = searchView;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        this.f2294a.m9344d();
        return true;
    }
}
