package androidx.databinding.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.databinding.ObservableList;
import java.util.List;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ObservableListAdapter.class */
class ObservableListAdapter<T> extends BaseAdapter {

    /* renamed from: f */
    private List<T> f3598f;

    /* renamed from: g */
    private final Context f3599g;

    /* renamed from: h */
    private final int f3600h;

    /* renamed from: i */
    private final int f3601i;

    /* renamed from: j */
    private final int f3602j;

    /* renamed from: k */
    private final LayoutInflater f3603k;

    /* renamed from: androidx.databinding.adapters.ObservableListAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ObservableListAdapter$1.class */
    class C02791 extends ObservableList.OnListChangedCallback {

        /* renamed from: a */
        final /* synthetic */ ObservableListAdapter f3604a;

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        /* renamed from: a */
        public void mo18584a(ObservableList observableList) {
            this.f3604a.notifyDataSetChanged();
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        /* renamed from: d */
        public void mo18583d(ObservableList observableList, int i, int i2) {
            this.f3604a.notifyDataSetChanged();
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        /* renamed from: e */
        public void mo18582e(ObservableList observableList, int i, int i2) {
            this.f3604a.notifyDataSetChanged();
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        /* renamed from: f */
        public void mo18581f(ObservableList observableList, int i, int i2, int i3) {
            this.f3604a.notifyDataSetChanged();
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        /* renamed from: g */
        public void mo18580g(ObservableList observableList, int i, int i2) {
            this.f3604a.notifyDataSetChanged();
        }
    }

    /* renamed from: a */
    public View m18585a(int i, int i2, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = i == 0 ? new TextView(this.f3599g) : this.f3603k.inflate(i, viewGroup, false);
        }
        int i3 = this.f3602j;
        TextView textView = (TextView) (i3 == 0 ? view2 : view2.findViewById(i3));
        T t = this.f3598f.get(i2);
        textView.setText(t instanceof CharSequence ? (CharSequence) t : String.valueOf(t));
        return view2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f3598f.size();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return m18585a(this.f3600h, i, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f3598f.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return m18585a(this.f3601i, i, view, viewGroup);
    }
}
