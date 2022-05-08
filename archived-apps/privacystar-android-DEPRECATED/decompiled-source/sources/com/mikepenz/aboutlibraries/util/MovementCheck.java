package com.mikepenz.aboutlibraries.util;

import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/util/MovementCheck.class */
public class MovementCheck extends LinkMovementMethod {
    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(textView, spannable, motionEvent);
        } catch (Exception e) {
            return true;
        }
    }
}
