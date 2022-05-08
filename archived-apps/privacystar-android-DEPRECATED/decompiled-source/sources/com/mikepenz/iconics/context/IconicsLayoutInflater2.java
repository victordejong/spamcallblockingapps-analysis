package com.mikepenz.iconics.context;

import android.content.Context;
import android.support.p004v7.app.AppCompatDelegate;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/context/IconicsLayoutInflater2.class */
public class IconicsLayoutInflater2 implements LayoutInflater.Factory2 {
    private AppCompatDelegate appCompatDelegate;
    private final IconicsFactory mIconicsFactory = new IconicsFactory();

    public IconicsLayoutInflater2(AppCompatDelegate appCompatDelegate) {
        this.appCompatDelegate = appCompatDelegate;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mIconicsFactory.onViewCreated(this.appCompatDelegate.createView(view, str, context, attributeSet), context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return this.mIconicsFactory.onViewCreated(this.appCompatDelegate.createView(null, str, context, attributeSet), context, attributeSet);
    }
}
