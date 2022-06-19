package p193e.p194a.p372b0.p373a.p374a;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.truecaller.common.C3656R;
import p1727n3.p1734b.p1735a.DialogC25424p;
/* renamed from: e.a.b0.a.a.g */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/g.class */
public class DialogC8229g extends DialogC25424p implements TextWatcher, AdapterView.OnItemClickListener {

    /* renamed from: c */
    public final ListAdapter f25382c;

    /* renamed from: d */
    public final boolean f25383d = true;

    /* renamed from: e */
    public AdapterView.OnItemClickListener f25384e;

    /* renamed from: f */
    public int f25385f;

    /* renamed from: g */
    public int f25386g;

    /* renamed from: h */
    public int f25387h;

    public DialogC8229g(Context context, ListAdapter listAdapter) {
        super(context, C3656R.style.Theme_AppCompat_Light_Dialog_Alert);
        this.f25382c = listAdapter;
        m3587a().mo3605u(1);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (this.f25383d) {
            ((Filterable) this.f25382c).getFilter().filter(editable);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    /* renamed from: d */
    public final void m28765d(int i) {
        TextView textView = (TextView) findViewById(C3656R.C3658id.title);
        if (textView == null) {
            return;
        }
        if (i != 0) {
            textView.setText(i);
        } else {
            textView.setVisibility(8);
        }
    }

    @Override // p1727n3.p1734b.p1735a.DialogC25424p, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C3656R.layout.dialog_filterable);
        EditText editText = (EditText) findViewById(C3656R.C3658id.editor);
        if (!this.f25383d) {
            editText.setVisibility(8);
        } else {
            editText.addTextChangedListener(this);
            editText.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, this.f25386g, 0);
            int i = this.f25385f;
            if (i != 0) {
                editText.setHint(i);
            }
        }
        m28765d(this.f25387h);
        ListView listView = (ListView) findViewById(C3656R.C3658id.list);
        listView.setAdapter(this.f25382c);
        listView.setOnItemClickListener(this);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        dismiss();
        AdapterView.OnItemClickListener onItemClickListener = this.f25384e;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(adapterView, view, i, j);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // p1727n3.p1734b.p1735a.DialogC25424p, android.app.Dialog
    public void setTitle(int i) {
        this.f25387h = i;
        m28765d(i);
    }
}
