package com.vladlee.easyblacklist;

import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p043e.p044a.AbstractC0816a;
import androidx.p043e.p045b.C0826c;
import com.vladlee.easyblacklist.C3318by;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/MutelistActivity.class */
public class MutelistActivity extends AppCompatActivity implements AbstractC0816a.AbstractC0817a<Cursor> {

    /* renamed from: k */
    final int f19266k = 10002;

    /* renamed from: l */
    private C3374dt f19267l = null;

    /* renamed from: com.vladlee.easyblacklist.MutelistActivity$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/MutelistActivity$a.class */
    public final class DialogInterface$OnClickListenerC3256a implements DialogInterface.OnClickListener {

        /* renamed from: b */
        private int f19269b;

        public DialogInterface$OnClickListenerC3256a(int i) {
            this.f19269b = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                MutelistActivity.this.findViewById(2131296480);
                if (MutelistActivity.this.f19267l.getCount() > this.f19269b) {
                    Cursor cursor = (Cursor) MutelistActivity.this.f19267l.getItem(this.f19269b);
                    String string = cursor.getString(cursor.getColumnIndex("phone"));
                    C3305bq c = C3311bt.m229a(MutelistActivity.this).m216c(MutelistActivity.this, string);
                    if (c != null) {
                        c.m249a(string);
                        C3318by.m186b(C3318by.C3320b.f19426a, MutelistActivity.this, c.f19377b);
                        C3318by.m195a(C3318by.C3320b.f19426a, MutelistActivity.this, c.f19376a);
                        return;
                    }
                    C3318by.m187b(C3318by.C3320b.f19426a, MutelistActivity.this, string);
                }
            }
        }
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: a */
    public final /* synthetic */ void mo20a(Cursor cursor) {
        this.f19267l.swapCursor(cursor);
        ListView listView = (ListView) findViewById(2131296480);
        if (listView != null) {
            this.f19267l.notifyDataSetChanged();
            listView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492937);
        this.f19267l = new C3374dt(this, 1);
        ((ListView) findViewById(2131296480)).setAdapter((ListAdapter) this.f19267l);
        ((ListView) findViewById(2131296480)).setOnItemClickListener(new C3379dx(this));
        findViewById(2131296344).setOnClickListener(new View$OnClickListenerC3380dy(this));
        m7851g().mo8003a(3, this);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: r_ */
    public final C0826c<Cursor> mo8r_() {
        return C3318by.m188b(C3318by.C3320b.f19426a, this);
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: s_ */
    public final void mo7s_() {
        this.f19267l.swapCursor(null);
    }
}
