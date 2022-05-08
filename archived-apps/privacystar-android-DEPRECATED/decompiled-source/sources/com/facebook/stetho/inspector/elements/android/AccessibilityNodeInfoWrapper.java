package com.facebook.stetho.inspector.elements.android;

import android.support.annotation.Nullable;
import android.support.p001v4.view.ViewCompat;
import android.support.p001v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.EditText;
import com.facebook.stetho.common.android.AccessibilityUtil;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/AccessibilityNodeInfoWrapper.class */
public final class AccessibilityNodeInfoWrapper {
    public static AccessibilityNodeInfoCompat createNodeInfoFromView(View view) {
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
        ViewCompat.onInitializeAccessibilityNodeInfo(view, obtain);
        return obtain;
    }

    @Nullable
    public static String getActions(View view) {
        AccessibilityNodeInfoCompat createNodeInfoFromView = createNodeInfoFromView(view);
        try {
            StringBuilder sb = new StringBuilder();
            for (AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat : createNodeInfoFromView.getActionList()) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                switch (accessibilityActionCompat.getId()) {
                    case 1:
                        sb.append("focus");
                        break;
                    case 2:
                        sb.append("clear-focus");
                        break;
                    case 4:
                        sb.append("select");
                        break;
                    case 8:
                        sb.append("clear-selection");
                        break;
                    case 16:
                        sb.append("click");
                        break;
                    case 32:
                        sb.append("long-click");
                        break;
                    case 64:
                        sb.append("accessibility-focus");
                        break;
                    case 128:
                        sb.append("clear-accessibility-focus");
                        break;
                    case 256:
                        sb.append("next-at-movement-granularity");
                        break;
                    case 512:
                        sb.append("previous-at-movement-granularity");
                        break;
                    case 1024:
                        sb.append("next-html-element");
                        break;
                    case 2048:
                        sb.append("previous-html-element");
                        break;
                    case 4096:
                        sb.append("scroll-forward");
                        break;
                    case 8192:
                        sb.append("scroll-backward");
                        break;
                    case 16384:
                        sb.append("copy");
                        break;
                    case 32768:
                        sb.append("paste");
                        break;
                    case 65536:
                        sb.append("cut");
                        break;
                    case 131072:
                        sb.append("set-selection");
                        break;
                    default:
                        CharSequence label = accessibilityActionCompat.getLabel();
                        if (label != null) {
                            sb.append(label);
                            break;
                        } else {
                            sb.append("unknown");
                            break;
                        }
                }
            }
            return sb.length() > 0 ? sb.toString() : null;
        } finally {
            createNodeInfoFromView.recycle();
        }
    }

    @Nullable
    public static CharSequence getDescription(View view) {
        AccessibilityNodeInfoCompat createNodeInfoFromView = createNodeInfoFromView(view);
        try {
            CharSequence contentDescription = createNodeInfoFromView.getContentDescription();
            CharSequence text = createNodeInfoFromView.getText();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = view instanceof EditText;
            if (!(TextUtils.isEmpty(contentDescription) || (z2 && z))) {
                return contentDescription;
            }
            if (z) {
                return text;
            }
            boolean z3 = view instanceof ViewGroup;
            String str = null;
            if (z3) {
                StringBuilder sb = new StringBuilder();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
                    ViewCompat.onInitializeAccessibilityNodeInfo(childAt, obtain);
                    CharSequence description = (!AccessibilityUtil.isSpeakingNode(obtain, childAt) || AccessibilityUtil.isAccessibilityFocusable(obtain, childAt)) ? null : getDescription(childAt);
                    if (!TextUtils.isEmpty(description)) {
                        if (sb.length() > 0) {
                            sb.append(", ");
                        }
                        sb.append(description);
                    }
                    obtain.recycle();
                }
                if (sb.length() > 0) {
                    str = sb.toString();
                }
                return str;
            }
            createNodeInfoFromView.recycle();
            return null;
        } finally {
            createNodeInfoFromView.recycle();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Nullable
    public static String getFocusableReasons(View view) {
        AccessibilityNodeInfoCompat createNodeInfoFromView = createNodeInfoFromView(view);
        try {
            boolean hasText = AccessibilityUtil.hasText(createNodeInfoFromView);
            boolean isCheckable = createNodeInfoFromView.isCheckable();
            boolean hasNonActionableSpeakingDescendants = AccessibilityUtil.hasNonActionableSpeakingDescendants(createNodeInfoFromView, view);
            if (AccessibilityUtil.isActionableForAccessibility(createNodeInfoFromView)) {
                if (createNodeInfoFromView.getChildCount() <= 0) {
                    createNodeInfoFromView.recycle();
                    return "View is actionable and has no children.";
                } else if (hasText) {
                    createNodeInfoFromView.recycle();
                    return "View is actionable and has a description.";
                } else if (isCheckable) {
                    createNodeInfoFromView.recycle();
                    return "View is actionable and checkable.";
                } else if (hasNonActionableSpeakingDescendants) {
                    createNodeInfoFromView.recycle();
                    return "View is actionable and has non-actionable descendants with descriptions.";
                }
            }
            if (AccessibilityUtil.isTopLevelScrollItem(createNodeInfoFromView, view)) {
                if (hasText) {
                    createNodeInfoFromView.recycle();
                    return "View is a direct child of a scrollable container and has a description.";
                } else if (isCheckable) {
                    createNodeInfoFromView.recycle();
                    return "View is a direct child of a scrollable container and is checkable.";
                } else if (hasNonActionableSpeakingDescendants) {
                    createNodeInfoFromView.recycle();
                    return "View is a direct child of a scrollable container and has non-actionable descendants with descriptions.";
                }
            }
            if (hasText) {
                createNodeInfoFromView.recycle();
                return "View has a description and is not actionable, but has no actionable ancestor.";
            }
            createNodeInfoFromView.recycle();
            return null;
        } catch (Throwable th) {
            createNodeInfoFromView.recycle();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    public static boolean getIgnored(View view) {
        int importantForAccessibility = ViewCompat.getImportantForAccessibility(view);
        if (importantForAccessibility == 2 || importantForAccessibility == 4) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (ViewCompat.getImportantForAccessibility((View) parent) == 4) {
                return true;
            }
        }
        AccessibilityNodeInfoCompat createNodeInfoFromView = createNodeInfoFromView(view);
        try {
            if (!createNodeInfoFromView.isVisibleToUser()) {
                createNodeInfoFromView.recycle();
                return true;
            } else if (AccessibilityUtil.isAccessibilityFocusable(createNodeInfoFromView, view)) {
                if (createNodeInfoFromView.getChildCount() <= 0) {
                    createNodeInfoFromView.recycle();
                    return false;
                } else if (AccessibilityUtil.isSpeakingNode(createNodeInfoFromView, view)) {
                    createNodeInfoFromView.recycle();
                    return false;
                } else {
                    createNodeInfoFromView.recycle();
                    return true;
                }
            } else if (AccessibilityUtil.hasFocusableAncestor(createNodeInfoFromView, view) || !AccessibilityUtil.hasText(createNodeInfoFromView)) {
                createNodeInfoFromView.recycle();
                return true;
            } else {
                createNodeInfoFromView.recycle();
                return false;
            }
        } catch (Throwable th) {
            createNodeInfoFromView.recycle();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    public static String getIgnoredReasons(View view) {
        int importantForAccessibility = ViewCompat.getImportantForAccessibility(view);
        if (importantForAccessibility == 2) {
            return "View has importantForAccessibility set to 'NO'.";
        }
        if (importantForAccessibility == 4) {
            return "View has importantForAccessibility set to 'NO_HIDE_DESCENDANTS'.";
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (ViewCompat.getImportantForAccessibility((View) parent) == 4) {
                return "An ancestor View has importantForAccessibility set to 'NO_HIDE_DESCENDANTS'.";
            }
        }
        AccessibilityNodeInfoCompat createNodeInfoFromView = createNodeInfoFromView(view);
        try {
            if (!createNodeInfoFromView.isVisibleToUser()) {
                createNodeInfoFromView.recycle();
                return "View is not visible.";
            } else if (AccessibilityUtil.isAccessibilityFocusable(createNodeInfoFromView, view)) {
                createNodeInfoFromView.recycle();
                return "View is actionable, but has no description.";
            } else if (AccessibilityUtil.hasText(createNodeInfoFromView)) {
                createNodeInfoFromView.recycle();
                return "View is not actionable, and an ancestor View has co-opted its description.";
            } else {
                createNodeInfoFromView.recycle();
                return "View is not actionable and has no description.";
            }
        } catch (Throwable th) {
            createNodeInfoFromView.recycle();
            throw th;
        }
    }

    public static boolean getIsAccessibilityFocused(View view) {
        AccessibilityNodeInfoCompat createNodeInfoFromView = createNodeInfoFromView(view);
        boolean isAccessibilityFocused = createNodeInfoFromView.isAccessibilityFocused();
        createNodeInfoFromView.recycle();
        return isAccessibilityFocused;
    }
}
