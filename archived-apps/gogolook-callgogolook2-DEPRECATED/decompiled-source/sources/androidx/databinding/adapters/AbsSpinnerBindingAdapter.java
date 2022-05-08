package androidx.databinding.adapters;

import android.widget.AbsSpinner;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/AbsSpinnerBindingAdapter.class */
public class AbsSpinnerBindingAdapter {
    @BindingAdapter({"android:entries"})
    public static <T> void setEntries(AbsSpinner absSpinner, List<T> list) {
        if (list != null) {
            SpinnerAdapter adapter = absSpinner.getAdapter();
            if (adapter instanceof ObservableListAdapter) {
                ((ObservableListAdapter) adapter).setList(list);
            } else {
                absSpinner.setAdapter((SpinnerAdapter) new ObservableListAdapter(absSpinner.getContext(), list, 17367048, 17367049, 0));
            }
        } else {
            absSpinner.setAdapter((SpinnerAdapter) null);
        }
    }

    @BindingAdapter({"android:entries"})
    public static <T extends CharSequence> void setEntries(AbsSpinner absSpinner, T[] tArr) {
        if (tArr != null) {
            SpinnerAdapter adapter = absSpinner.getAdapter();
            boolean z = true;
            if (adapter != null) {
                z = true;
                if (adapter.getCount() == tArr.length) {
                    int i = 0;
                    while (true) {
                        if (i >= tArr.length) {
                            z = false;
                            break;
                        } else if (!tArr[i].equals(adapter.getItem(i))) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
            if (z) {
                ArrayAdapter arrayAdapter = new ArrayAdapter(absSpinner.getContext(), 17367048, tArr);
                arrayAdapter.setDropDownViewResource(17367049);
                absSpinner.setAdapter((SpinnerAdapter) arrayAdapter);
                return;
            }
            return;
        }
        absSpinner.setAdapter((SpinnerAdapter) null);
    }
}
