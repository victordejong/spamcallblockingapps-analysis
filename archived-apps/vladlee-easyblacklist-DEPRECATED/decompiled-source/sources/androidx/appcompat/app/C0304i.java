package androidx.appcompat.app;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertController;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.app.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/i.class */
public final class C0304i extends ArrayAdapter<CharSequence> {

    /* renamed from: a */
    final /* synthetic */ AlertController.RecycleListView f1317a;

    /* renamed from: b */
    final /* synthetic */ AlertController.C0261a f1318b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0304i(AlertController.C0261a aVar, Context context, int i, CharSequence[] charSequenceArr, AlertController.RecycleListView recycleListView) {
        super(context, i, 16908308, charSequenceArr);
        this.f1318b = aVar;
        this.f1317a = recycleListView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        if (this.f1318b.f1071F != null && this.f1318b.f1071F[i]) {
            this.f1317a.setItemChecked(i, true);
        }
        return view2;
    }
}
