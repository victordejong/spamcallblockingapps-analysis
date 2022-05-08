package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1027R;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/MaterialToolbar.class */
public class MaterialToolbar extends Toolbar {

    /* renamed from: U */
    private static final int f10032U = C1027R.style.Widget_MaterialComponents_Toolbar;

    public MaterialToolbar(@NonNull Context context) {
        this(context, null);
    }

    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.toolbarStyle);
    }

    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10032U), attributeSet, i);
        m10636K(getContext());
    }

    /* renamed from: K */
    private void m10636K(Context context) {
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.m9328W(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            materialShapeDrawable.m9338M(context);
            materialShapeDrawable.m9329V(ViewCompat.m19168v(this));
            ViewCompat.m19177q0(this, materialShapeDrawable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.m9282e(this);
    }

    @Override // android.view.View
    @RequiresApi
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.m9283d(this, f);
    }
}
