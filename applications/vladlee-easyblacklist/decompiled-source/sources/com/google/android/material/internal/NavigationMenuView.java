package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.view.menu.AbstractC0388t;
import androidx.appcompat.view.menu.C0371k;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuView.class */
public class NavigationMenuView extends RecyclerView implements AbstractC0388t {
    public NavigationMenuView(Context context) {
        this(context, null);
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m7252a(new LinearLayoutManager((byte) 0));
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t
    /* renamed from: a */
    public final void mo1063a(C0371k kVar) {
    }
}
