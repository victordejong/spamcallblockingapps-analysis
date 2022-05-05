package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.text.Html;
import android.view.ActionMode;
import android.view.MenuItem;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.p043e.p044a.AbstractC0816a;
import androidx.p043e.p045b.C0826c;
import com.vladlee.easyblacklist.C3318by;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/WhitelistActivity.class */
public class WhitelistActivity extends AppCompatActivity implements AbstractC0816a.AbstractC0817a<Cursor> {

    /* renamed from: k */
    final int f19284k = 10001;

    /* renamed from: l */
    private C3374dt f19285l = null;

    /* renamed from: m */
    private ActionMode f19286m = null;

    /* renamed from: n */
    private ActionMode.Callback f19287n = new ActionMode$CallbackC3457go(this);

    /* renamed from: com.vladlee.easyblacklist.WhitelistActivity$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/WhitelistActivity$a.class */
    public final class DialogInterface$OnClickListenerC3257a implements DialogInterface.OnClickListener {

        /* renamed from: b */
        private int f19289b;

        public DialogInterface$OnClickListenerC3257a(int i) {
            WhitelistActivity.this = r4;
            this.f19289b = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                WhitelistActivity.this.findViewById(2131296480);
                if (WhitelistActivity.this.f19285l.getCount() > this.f19289b) {
                    Cursor cursor = (Cursor) WhitelistActivity.this.f19285l.getItem(this.f19289b);
                    String string = cursor.getString(cursor.getColumnIndex("phone"));
                    C3305bq c = C3311bt.m229a(WhitelistActivity.this).m216c(WhitelistActivity.this, string);
                    if (c != null) {
                        c.m249a(string);
                        C3318by.m186b(C3318by.C3323e.f19429a, WhitelistActivity.this, c.f19377b);
                        C3318by.m195a(C3318by.C3323e.f19429a, WhitelistActivity.this, c.f19376a);
                        return;
                    }
                    C3318by.m187b(C3318by.C3323e.f19429a, WhitelistActivity.this, string);
                }
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ C3374dt m272a(WhitelistActivity whitelistActivity) {
        return whitelistActivity.f19285l;
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: a */
    public final /* synthetic */ void mo20a(Cursor cursor) {
        Cursor cursor2 = cursor;
        this.f19285l.swapCursor(cursor2);
        boolean z = cursor2.getCount() > 0;
        TextView textView = (TextView) findViewById(2131296602);
        if (z) {
            textView.setVisibility(8);
        } else {
            textView.setText(Html.fromHtml(String.format(getString(2131624117), "<b>+</b>")));
            textView.setVisibility(0);
        }
        ListView listView = (ListView) findViewById(2131296482);
        if (listView != null) {
            this.f19285l.notifyDataSetChanged();
            listView.invalidate();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492989);
        this.f19285l = new C3374dt(this, 0);
        ((ListView) findViewById(2131296482)).setAdapter((ListAdapter) this.f19285l);
        ListView listView = (ListView) findViewById(2131296482);
        listView.setOnItemLongClickListener(new C3460gr(this));
        listView.setOnItemClickListener(new C3461gs(this));
        findViewById(2131296344).setOnClickListener(new View$OnClickListenerC3462gt(this));
        SwitchCompat switchCompat = (SwitchCompat) findViewById(2131296577);
        switchCompat.setChecked(C3392ee.m80a((Context) this, "pref_whitelist", true));
        switchCompat.setOnCheckedChangeListener(new C3463gu(this));
        TextView textView = (TextView) findViewById(2131296610);
        textView.setText(C3392ee.m80a((Context) this, "pref_whitelist", true) ? 2131624221 : 2131624104);
        textView.setOnClickListener(new View$OnClickListenerC3464gv(this));
        m9927a((Toolbar) findViewById(2131296622));
        m9926b().mo9825b(false);
        m9926b().mo9830a(true);
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: r_ */
    public final C0826c<Cursor> mo8r_() {
        return C3318by.m188b(C3318by.C3323e.f19429a, this);
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: s_ */
    public final void mo7s_() {
        this.f19285l.swapCursor(null);
    }
}
