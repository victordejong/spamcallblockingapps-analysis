package com.android.contacts.dialpad;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.j;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.android.contacts.ezmode.h;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/DigitsEditText.class */
public class DigitsEditText extends EditText {
    public DigitsEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setInputType(getInputType() | 524288);
        setShowSoftInputOnFocus(false);
        if (h.a(context)) {
            setGravity(21);
        } else {
            setGravity(17);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getApplicationContext().getSystemService("input_method");
        if (inputMethodManager != null && inputMethodManager.isActive(this)) {
            inputMethodManager.hideSoftInputFromWindow(getApplicationWindowToken(), 0);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        switch (j.a(motionEvent)) {
            case 1:
                if (!getText().toString().isEmpty()) {
                    setCursorVisible(true);
                    break;
                }
                break;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getApplicationContext().getSystemService("input_method");
        if (inputMethodManager != null && inputMethodManager.isActive(this)) {
            inputMethodManager.hideSoftInputFromWindow(getApplicationWindowToken(), 0);
        }
        return onTouchEvent;
    }

    @Override // android.widget.TextView, android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 16) {
            int addedCount = accessibilityEvent.getAddedCount();
            int removedCount = accessibilityEvent.getRemovedCount();
            int length = accessibilityEvent.getBeforeText().length();
            if (addedCount > removedCount) {
                accessibilityEvent.setRemovedCount(0);
                accessibilityEvent.setAddedCount(1);
                accessibilityEvent.setFromIndex(length);
            } else if (removedCount > addedCount) {
                accessibilityEvent.setRemovedCount(1);
                accessibilityEvent.setAddedCount(0);
                accessibilityEvent.setFromIndex(length - 1);
            } else {
                return;
            }
        } else if (accessibilityEvent.getEventType() == 8) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }
}
