package androidx.databinding.adapters;

import android.widget.DatePicker;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;
@InverseBindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/DatePickerBindingAdapter.class */
public class DatePickerBindingAdapter {

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener.class */
    private static class DateChangedListener implements DatePicker.OnDateChangedListener {

        /* renamed from: f */
        DatePicker.OnDateChangedListener f3592f;

        /* renamed from: g */
        InverseBindingListener f3593g;

        /* renamed from: h */
        InverseBindingListener f3594h;

        /* renamed from: i */
        InverseBindingListener f3595i;

        private DateChangedListener() {
        }

        @Override // android.widget.DatePicker.OnDateChangedListener
        public void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
            DatePicker.OnDateChangedListener onDateChangedListener = this.f3592f;
            if (onDateChangedListener != null) {
                onDateChangedListener.onDateChanged(datePicker, i, i2, i3);
            }
            InverseBindingListener inverseBindingListener = this.f3593g;
            if (inverseBindingListener != null) {
                inverseBindingListener.m18673a();
            }
            InverseBindingListener inverseBindingListener2 = this.f3594h;
            if (inverseBindingListener2 != null) {
                inverseBindingListener2.m18673a();
            }
            InverseBindingListener inverseBindingListener3 = this.f3595i;
            if (inverseBindingListener3 != null) {
                inverseBindingListener3.m18673a();
            }
        }
    }
}
