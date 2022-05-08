package com.android.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Spinner;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/NotifyingSpinner.class */
public class NotifyingSpinner extends Spinner {

    /* renamed from: a  reason: collision with root package name */
    private a f2193a;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/widget/NotifyingSpinner$a.class */
    public interface a {
    }

    public NotifyingSpinner(Context context) {
        super(context);
    }

    public NotifyingSpinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.AbsSpinner, android.widget.AdapterView
    public void setSelection(int i) {
        super.setSelection(i);
    }

    public void setSetSelectionListener(a aVar) {
        this.f2193a = aVar;
    }
}
