package com.android.contacts.widget;

import android.app.ListActivity;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/PinnedHeaderListDemoActivity.class */
public class PinnedHeaderListDemoActivity extends ListActivity {

    /* renamed from: a  reason: collision with root package name */
    private Handler f2194a = new Handler();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/widget/PinnedHeaderListDemoActivity$a.class */
    public static final class a extends d {
        String[] d;
        private int e;

        public a(Context context) {
            super(context);
            this.Y = true;
        }

        @Override // com.android.contacts.widget.d, com.android.contacts.widget.PinnedHeaderListView.b
        public final View a(int i, View view, ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(this.f407a).inflate(2131427600, viewGroup, false);
            inflate.setFocusable(false);
            inflate.setEnabled(false);
            a(inflate, i, (Cursor) null);
            return inflate;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.a.b.a
        public final View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
            return LayoutInflater.from(context).inflate(17367043, (ViewGroup) null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.a.b.a
        public final View a(Context context, int i, ViewGroup viewGroup) {
            return LayoutInflater.from(context).inflate(2131427600, (ViewGroup) null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.a.b.a
        public final void a(View view, int i, Cursor cursor) {
            ((TextView) view.findViewById(2131296930)).setText(this.d[i]);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.a.b.a
        public final void a(View view, int i, Cursor cursor, int i2) {
            ((TextView) view.findViewById(16908308)).setText(cursor.getString(1));
        }

        @Override // com.android.contacts.widget.d, com.android.contacts.widget.PinnedHeaderListView.b
        public final int c_() {
            return this.e;
        }
    }

    private static Cursor a(String str, int i) {
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"_id", str});
        for (int i2 = 0; i2 < i; i2++) {
            matrixCursor.addRow(new Object[]{Integer.valueOf(i2), str + "[" + i2 + "]"});
        }
        return matrixCursor;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427618);
        final a aVar = new a(this);
        Bundle extras = getIntent().getExtras();
        int[] intArray = extras.getIntArray("counts");
        String[] stringArray = extras.getStringArray("names");
        boolean[] booleanArray = extras.getBooleanArray("showIfEmpty");
        extras.getBooleanArray("headers");
        int[] intArray2 = extras.getIntArray("delays");
        if (intArray == null || stringArray == null || booleanArray == null || intArray2 == null) {
            throw new IllegalArgumentException("Missing required extras");
        }
        aVar.d = stringArray;
        for (int i = 0; i < intArray.length; i++) {
            aVar.a(booleanArray[i], stringArray[i] != null);
            aVar.e = stringArray.length;
        }
        setListAdapter(aVar);
        for (final int i2 = 0; i2 < intArray.length; i2++) {
            final Cursor a2 = a(stringArray[i2], intArray[i2]);
            this.f2194a.postDelayed(new Runnable() { // from class: com.android.contacts.widget.PinnedHeaderListDemoActivity.1
                @Override // java.lang.Runnable
                public final void run() {
                    aVar.a(i2, a2);
                }
            }, intArray2[i2]);
        }
    }
}
