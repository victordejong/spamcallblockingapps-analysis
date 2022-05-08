package com.google.android.material.badge;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.ParcelableSparseArray;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/badge/BadgeUtils.class */
public class BadgeUtils {

    /* renamed from: a */
    public static final boolean f10073a;

    static {
        f10073a = Build.VERSION.SDK_INT < 18;
    }

    private BadgeUtils() {
    }

    /* renamed from: a */
    public static void m10576a(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @NonNull FrameLayout frameLayout) {
        m10572e(badgeDrawable, view, frameLayout);
        if (f10073a) {
            frameLayout.setForeground(badgeDrawable);
        } else {
            view.getOverlay().add(badgeDrawable);
        }
    }

    @NonNull
    /* renamed from: b */
    public static SparseArray<BadgeDrawable> m10575b(Context context, @NonNull ParcelableSparseArray parcelableSparseArray) {
        SparseArray<BadgeDrawable> sparseArray = new SparseArray<>(parcelableSparseArray.size());
        for (int i = 0; i < parcelableSparseArray.size(); i++) {
            int keyAt = parcelableSparseArray.keyAt(i);
            BadgeDrawable.SavedState savedState = (BadgeDrawable.SavedState) parcelableSparseArray.valueAt(i);
            if (savedState != null) {
                sparseArray.put(keyAt, BadgeDrawable.m10619e(context, savedState));
            } else {
                throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
            }
        }
        return sparseArray;
    }

    @NonNull
    /* renamed from: c */
    public static ParcelableSparseArray m10574c(@NonNull SparseArray<BadgeDrawable> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i = 0; i < sparseArray.size(); i++) {
            int keyAt = sparseArray.keyAt(i);
            BadgeDrawable valueAt = sparseArray.valueAt(i);
            if (valueAt != null) {
                parcelableSparseArray.put(keyAt, valueAt.m10613k());
            } else {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
        }
        return parcelableSparseArray;
    }

    /* renamed from: d */
    public static void m10573d(@Nullable BadgeDrawable badgeDrawable, @NonNull View view, @NonNull FrameLayout frameLayout) {
        if (badgeDrawable != null) {
            if (f10073a) {
                frameLayout.setForeground(null);
            } else {
                view.getOverlay().remove(badgeDrawable);
            }
        }
    }

    /* renamed from: e */
    public static void m10572e(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @NonNull FrameLayout frameLayout) {
        Rect rect = new Rect();
        (f10073a ? frameLayout : view).getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.m10599y(view, frameLayout);
    }

    /* renamed from: f */
    public static void m10571f(@NonNull Rect rect, float f, float f2, float f3, float f4) {
        rect.set((int) (f - f3), (int) (f2 - f4), (int) (f + f3), (int) (f2 + f4));
    }
}
