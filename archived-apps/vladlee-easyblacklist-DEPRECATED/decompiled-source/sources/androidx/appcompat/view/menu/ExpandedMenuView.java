package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.widget.C0484bm;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ExpandedMenuView.class */
public final class ExpandedMenuView extends ListView implements AdapterView.OnItemClickListener, C0371k.AbstractC0373b, AbstractC0388t {

    /* renamed from: a */
    private static final int[] f1535a = {16842964, 16843049};

    /* renamed from: b */
    private C0371k f1536b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        C0484bm a = C0484bm.m9092a(context, attributeSet, f1535a, i, 0);
        if (a.m9079i(0)) {
            setBackgroundDrawable(a.m9099a(0));
        }
        if (a.m9079i(1)) {
            setDivider(a.m9099a(1));
        }
        a.m9100a();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t
    /* renamed from: a */
    public final void mo1063a(C0371k kVar) {
        this.f1536b = kVar;
    }

    @Override // androidx.appcompat.view.menu.C0371k.AbstractC0373b
    /* renamed from: a */
    public final boolean mo9472a(C0375m mVar) {
        return this.f1536b.m9617a(mVar, 0);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo9472a((C0375m) getAdapter().getItem(i));
    }
}
