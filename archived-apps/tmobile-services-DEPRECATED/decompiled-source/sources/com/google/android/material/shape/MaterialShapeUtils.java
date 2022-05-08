package com.google.android.material.shape;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.internal.ViewUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/MaterialShapeUtils.class */
public class MaterialShapeUtils {
    private MaterialShapeUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: a */
    public static CornerTreatment m9286a(int i) {
        return i != 0 ? i != 1 ? m9285b() : new CutCornerTreatment() : new RoundedCornerTreatment();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: b */
    public static CornerTreatment m9285b() {
        return new RoundedCornerTreatment();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: c */
    public static EdgeTreatment m9284c() {
        return new EdgeTreatment();
    }

    /* renamed from: d */
    public static void m9283d(@NonNull View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) background).m9329V(f);
        }
    }

    /* renamed from: e */
    public static void m9282e(@NonNull View view) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            m9281f(view, (MaterialShapeDrawable) background);
        }
    }

    /* renamed from: f */
    public static void m9281f(@NonNull View view, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        if (materialShapeDrawable.m9336O()) {
            materialShapeDrawable.m9324a0(ViewUtils.m9429g(view));
        }
    }
}
