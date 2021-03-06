package com.facebook.stetho.common.android;

import android.support.annotation.Nullable;
import android.support.p001v4.view.ViewCompat;
import android.support.p001v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import android.widget.Spinner;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/android/AccessibilityUtil.class */
public final class AccessibilityUtil {
    private AccessibilityUtil() {
    }

    /* JADX WARN: Finally extract failed */
    public static boolean hasFocusableAncestor(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, @Nullable View view) {
        if (accessibilityNodeInfoCompat == null || view == null) {
            return false;
        }
        ViewParent parentForAccessibility = ViewCompat.getParentForAccessibility(view);
        if (!(parentForAccessibility instanceof View)) {
            return false;
        }
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
        try {
            ViewCompat.onInitializeAccessibilityNodeInfo((View) parentForAccessibility, obtain);
            if (obtain == null) {
                obtain.recycle();
                return false;
            } else if (isAccessibilityFocusable(obtain, (View) parentForAccessibility)) {
                obtain.recycle();
                return true;
            } else if (hasFocusableAncestor(obtain, (View) parentForAccessibility)) {
                obtain.recycle();
                return true;
            } else {
                obtain.recycle();
                return false;
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    public static boolean hasNonActionableSpeakingDescendants(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, @Nullable View view) {
        if (accessibilityNodeInfoCompat == null || view == null || !(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt != null) {
                AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
                try {
                    ViewCompat.onInitializeAccessibilityNodeInfo(childAt, obtain);
                    if (!isAccessibilityFocusable(obtain, childAt) && isSpeakingNode(obtain, childAt)) {
                        obtain.recycle();
                        return true;
                    }
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain.recycle();
                    throw th;
                }
            }
        }
        return false;
    }

    public static boolean hasText(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        boolean z = false;
        if (accessibilityNodeInfoCompat == null) {
            return false;
        }
        if (!TextUtils.isEmpty(accessibilityNodeInfoCompat.getText()) || !TextUtils.isEmpty(accessibilityNodeInfoCompat.getContentDescription())) {
            z = true;
        }
        return z;
    }

    public static boolean isAccessibilityFocusable(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, @Nullable View view) {
        if (accessibilityNodeInfoCompat == null || view == null || !accessibilityNodeInfoCompat.isVisibleToUser()) {
            return false;
        }
        if (isActionableForAccessibility(accessibilityNodeInfoCompat)) {
            return true;
        }
        boolean z = false;
        if (isTopLevelScrollItem(accessibilityNodeInfoCompat, view)) {
            z = false;
            if (isSpeakingNode(accessibilityNodeInfoCompat, view)) {
                z = true;
            }
        }
        return z;
    }

    public static boolean isActionableForAccessibility(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        boolean z = false;
        if (accessibilityNodeInfoCompat == null) {
            return false;
        }
        if (accessibilityNodeInfoCompat.isClickable() || accessibilityNodeInfoCompat.isLongClickable() || accessibilityNodeInfoCompat.isFocusable()) {
            return true;
        }
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> actionList = accessibilityNodeInfoCompat.getActionList();
        if (actionList.contains(16) || actionList.contains(32) || actionList.contains(1)) {
            z = true;
        }
        return z;
    }

    public static boolean isSpeakingNode(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, @Nullable View view) {
        int importantForAccessibility;
        boolean z = false;
        if (accessibilityNodeInfoCompat == null || view == null || !accessibilityNodeInfoCompat.isVisibleToUser() || (importantForAccessibility = ViewCompat.getImportantForAccessibility(view)) == 4) {
            return false;
        }
        if (importantForAccessibility == 2 && accessibilityNodeInfoCompat.getChildCount() <= 0) {
            return false;
        }
        if (accessibilityNodeInfoCompat.isCheckable() || hasText(accessibilityNodeInfoCompat) || hasNonActionableSpeakingDescendants(accessibilityNodeInfoCompat, view)) {
            z = true;
        }
        return z;
    }

    public static boolean isTopLevelScrollItem(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, @Nullable View view) {
        View view2;
        boolean z = false;
        if (accessibilityNodeInfoCompat == null || view == null || (view2 = (View) ViewCompat.getParentForAccessibility(view)) == null) {
            return false;
        }
        if (accessibilityNodeInfoCompat.isScrollable()) {
            return true;
        }
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> actionList = accessibilityNodeInfoCompat.getActionList();
        if (actionList.contains(4096) || actionList.contains(8192)) {
            return true;
        }
        if (view2 instanceof Spinner) {
            return false;
        }
        if ((view2 instanceof AdapterView) || (view2 instanceof ScrollView) || (view2 instanceof HorizontalScrollView)) {
            z = true;
        }
        return z;
    }
}
