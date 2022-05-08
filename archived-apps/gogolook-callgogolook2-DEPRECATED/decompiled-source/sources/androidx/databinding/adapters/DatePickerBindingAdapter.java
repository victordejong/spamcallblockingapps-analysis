package androidx.databinding.adapters;

import android.widget.DatePicker;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethod;
import androidx.databinding.InverseBindingMethods;
import androidx.databinding.library.baseAdapters.C0306R;
@InverseBindingMethods({@InverseBindingMethod(attribute = "android:year", type = DatePicker.class), @InverseBindingMethod(attribute = "android:month", type = DatePicker.class), @InverseBindingMethod(attribute = "android:day", method = "getDayOfMonth", type = DatePicker.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/DatePickerBindingAdapter.class */
public class DatePickerBindingAdapter {

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener.class */
    public static class DateChangedListener implements DatePicker.OnDateChangedListener {
        public InverseBindingListener mDayChanged;
        public DatePicker.OnDateChangedListener mListener;
        public InverseBindingListener mMonthChanged;
        public InverseBindingListener mYearChanged;

        public DateChangedListener() {
        }

        @Override // android.widget.DatePicker.OnDateChangedListener
        public void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
            DatePicker.OnDateChangedListener onDateChangedListener = this.mListener;
            if (onDateChangedListener != null) {
                onDateChangedListener.onDateChanged(datePicker, i, i2, i3);
            }
            InverseBindingListener inverseBindingListener = this.mYearChanged;
            if (inverseBindingListener != null) {
                inverseBindingListener.onChange();
            }
            InverseBindingListener inverseBindingListener2 = this.mMonthChanged;
            if (inverseBindingListener2 != null) {
                inverseBindingListener2.onChange();
            }
            InverseBindingListener inverseBindingListener3 = this.mDayChanged;
            if (inverseBindingListener3 != null) {
                inverseBindingListener3.onChange();
            }
        }

        public void setListeners(DatePicker.OnDateChangedListener onDateChangedListener, InverseBindingListener inverseBindingListener, InverseBindingListener inverseBindingListener2, InverseBindingListener inverseBindingListener3) {
            this.mListener = onDateChangedListener;
            this.mYearChanged = inverseBindingListener;
            this.mMonthChanged = inverseBindingListener2;
            this.mDayChanged = inverseBindingListener3;
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:year", "android:month", "android:day", "android:onDateChanged", "android:yearAttrChanged", "android:monthAttrChanged", "android:dayAttrChanged"})
    public static void setListeners(DatePicker datePicker, int i, int i2, int i3, DatePicker.OnDateChangedListener onDateChangedListener, InverseBindingListener inverseBindingListener, InverseBindingListener inverseBindingListener2, InverseBindingListener inverseBindingListener3) {
        int i4 = i;
        if (i == 0) {
            i4 = datePicker.getYear();
        }
        int i5 = i3;
        if (i3 == 0) {
            i5 = datePicker.getDayOfMonth();
        }
        if (inverseBindingListener == null && inverseBindingListener2 == null && inverseBindingListener3 == null) {
            datePicker.init(i4, i2, i5, onDateChangedListener);
            return;
        }
        DateChangedListener dateChangedListener = (DateChangedListener) ListenerUtil.getListener(datePicker, C0306R.C0307id.onDateChanged);
        DateChangedListener dateChangedListener2 = dateChangedListener;
        if (dateChangedListener == null) {
            dateChangedListener2 = new DateChangedListener();
            ListenerUtil.trackListener(datePicker, dateChangedListener2, C0306R.C0307id.onDateChanged);
        }
        dateChangedListener2.setListeners(onDateChangedListener, inverseBindingListener, inverseBindingListener2, inverseBindingListener3);
        datePicker.init(i4, i2, i5, dateChangedListener2);
    }
}
