package androidx.appcompat.app;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import androidx.appcompat.app.AlertController;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.app.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j.class */
public final class C0305j extends CursorAdapter {

    /* renamed from: a */
    final /* synthetic */ AlertController.RecycleListView f1319a;

    /* renamed from: b */
    final /* synthetic */ AlertController f1320b;

    /* renamed from: c */
    final /* synthetic */ AlertController.C0261a f1321c;

    /* renamed from: d */
    private final int f1322d;

    /* renamed from: e */
    private final int f1323e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0305j(AlertController.C0261a aVar, Context context, Cursor cursor, AlertController.RecycleListView recycleListView, AlertController alertController) {
        super(context, cursor, false);
        this.f1321c = aVar;
        this.f1319a = recycleListView;
        this.f1320b = alertController;
        Cursor cursor2 = getCursor();
        this.f1322d = cursor2.getColumnIndexOrThrow(this.f1321c.f1077L);
        this.f1323e = cursor2.getColumnIndexOrThrow(this.f1321c.f1078M);
    }

    @Override // android.widget.CursorAdapter
    public final void bindView(View view, Context context, Cursor cursor) {
        ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f1322d));
        AlertController.RecycleListView recycleListView = this.f1319a;
        int position = cursor.getPosition();
        boolean z = true;
        if (cursor.getInt(this.f1323e) != 1) {
            z = false;
        }
        recycleListView.setItemChecked(position, z);
    }

    @Override // android.widget.CursorAdapter
    public final View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f1321c.f1082b.inflate(this.f1320b.f1050m, viewGroup, false);
    }
}
