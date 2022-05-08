package com.jakewharton.rxbinding2.view;

import android.support.annotation.NonNull;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/AutoValue_ViewLayoutChangeEvent.class */
final class AutoValue_ViewLayoutChangeEvent extends ViewLayoutChangeEvent {
    private final int bottom;
    private final int left;
    private final int oldBottom;
    private final int oldLeft;
    private final int oldRight;
    private final int oldTop;
    private final int right;
    private final int top;
    private final View view;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_ViewLayoutChangeEvent(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (view == null) {
            throw new NullPointerException("Null view");
        }
        this.view = view;
        this.left = i;
        this.top = i2;
        this.right = i3;
        this.bottom = i4;
        this.oldLeft = i5;
        this.oldTop = i6;
        this.oldRight = i7;
        this.oldBottom = i8;
    }

    @Override // com.jakewharton.rxbinding2.view.ViewLayoutChangeEvent
    public int bottom() {
        return this.bottom;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ViewLayoutChangeEvent)) {
            return false;
        }
        ViewLayoutChangeEvent viewLayoutChangeEvent = (ViewLayoutChangeEvent) obj;
        if (!(this.view.equals(viewLayoutChangeEvent.view()) && this.left == viewLayoutChangeEvent.left() && this.top == viewLayoutChangeEvent.top() && this.right == viewLayoutChangeEvent.right() && this.bottom == viewLayoutChangeEvent.bottom() && this.oldLeft == viewLayoutChangeEvent.oldLeft() && this.oldTop == viewLayoutChangeEvent.oldTop() && this.oldRight == viewLayoutChangeEvent.oldRight() && this.oldBottom == viewLayoutChangeEvent.oldBottom())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((((((((((this.view.hashCode() ^ 1000003) * 1000003) ^ this.left) * 1000003) ^ this.top) * 1000003) ^ this.right) * 1000003) ^ this.bottom) * 1000003) ^ this.oldLeft) * 1000003) ^ this.oldTop) * 1000003) ^ this.oldRight) * 1000003) ^ this.oldBottom;
    }

    @Override // com.jakewharton.rxbinding2.view.ViewLayoutChangeEvent
    public int left() {
        return this.left;
    }

    @Override // com.jakewharton.rxbinding2.view.ViewLayoutChangeEvent
    public int oldBottom() {
        return this.oldBottom;
    }

    @Override // com.jakewharton.rxbinding2.view.ViewLayoutChangeEvent
    public int oldLeft() {
        return this.oldLeft;
    }

    @Override // com.jakewharton.rxbinding2.view.ViewLayoutChangeEvent
    public int oldRight() {
        return this.oldRight;
    }

    @Override // com.jakewharton.rxbinding2.view.ViewLayoutChangeEvent
    public int oldTop() {
        return this.oldTop;
    }

    @Override // com.jakewharton.rxbinding2.view.ViewLayoutChangeEvent
    public int right() {
        return this.right;
    }

    public String toString() {
        return "ViewLayoutChangeEvent{view=" + this.view + ", left=" + this.left + ", top=" + this.top + ", right=" + this.right + ", bottom=" + this.bottom + ", oldLeft=" + this.oldLeft + ", oldTop=" + this.oldTop + ", oldRight=" + this.oldRight + ", oldBottom=" + this.oldBottom + "}";
    }

    @Override // com.jakewharton.rxbinding2.view.ViewLayoutChangeEvent
    public int top() {
        return this.top;
    }

    @Override // com.jakewharton.rxbinding2.view.ViewLayoutChangeEvent
    @NonNull
    public View view() {
        return this.view;
    }
}
