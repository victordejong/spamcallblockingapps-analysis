package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$e$a.class */
class v$e$a implements AdapterView.OnItemClickListener {

    /* renamed from: f */
    final /* synthetic */ v.e f587f;

    v$e$a(v.e eVar, v vVar) {
        this.f587f = eVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f587f.R.setSelection(i);
        if (this.f587f.R.getOnItemClickListener() != null) {
            v.e eVar = this.f587f;
            eVar.R.performItemClick(view, i, eVar.O.getItemId(i));
        }
        this.f587f.dismiss();
    }
}
