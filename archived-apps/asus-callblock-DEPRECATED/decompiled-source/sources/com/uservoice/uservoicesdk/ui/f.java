package com.uservoice.uservoicesdk.ui;

import android.widget.AbsListView;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/f.class */
public class f implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    private final e<?> f4782a;

    public f(e<?> eVar) {
        this.f4782a = eVar;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (i + i2 >= i3) {
            this.f4782a.a();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
