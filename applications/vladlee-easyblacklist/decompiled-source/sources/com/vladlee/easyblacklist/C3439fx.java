package com.vladlee.easyblacklist;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Telephony;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p043e.p044a.AbstractC0816a;
import androidx.p043e.p045b.C0825b;
import androidx.p043e.p045b.C0826c;
/* renamed from: com.vladlee.easyblacklist.fx */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fx.class */
public final class C3439fx extends Fragment implements AbstractC0816a.AbstractC0817a<Cursor> {

    /* renamed from: a */
    private ContentObserver f19611a = null;

    /* renamed from: b */
    private C3314bw f19612b = null;

    /* renamed from: c */
    private ActionMode f19613c = null;

    /* renamed from: d */
    private ActionMode.Callback f19614d = new ActionMode$CallbackC3440fy(this);

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: a */
    public final /* synthetic */ void mo20a(Cursor cursor) {
        ListView listView;
        this.f19612b.swapCursor(cursor);
        if (getActivity() != null && (listView = (ListView) getActivity().findViewById(2131296470)) != null) {
            this.f19612b.notifyDataSetChanged();
            listView.invalidate();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setHasOptionsMenu(true);
        if (Build.VERSION.SDK_INT >= 19) {
            FragmentActivity activity = getActivity();
            Uri uri = Telephony.Mms.CONTENT_URI;
            ContentValues contentValues = new ContentValues();
            contentValues.put("read", (Integer) 1);
            activity.getContentResolver().update(uri, contentValues, "read <> ?", new String[]{"1"});
        }
        ListView listView = (ListView) getView().findViewById(2131296473);
        listView.setAdapter((ListAdapter) this.f19612b);
        listView.setItemsCanFocus(false);
        FragmentActivity activity2 = getActivity();
        listView.setOnItemLongClickListener(new C3446gd(this, activity2));
        listView.setOnItemClickListener(new C3447ge(this, activity2));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f19612b = new C3314bw(getContext());
        getLoaderManager().mo8003a(0, this);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        return layoutInflater.inflate(2131492978, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        ActionMode actionMode = this.f19613c;
        if (actionMode != null) {
            actionMode.finish();
            this.f19613c = null;
        }
        getLoaderManager().mo8004a(0);
        C3314bw bwVar = this.f19612b;
        if (bwVar != null) {
            bwVar.m205c();
            this.f19612b = null;
        }
        if (this.f19611a != null) {
            getActivity().getContentResolver().unregisterContentObserver(this.f19611a);
            this.f19611a = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 2131296502) {
            startActivity(new Intent(getActivity(), SmsNewMessageActivity.class));
        } else if (itemId == 2131296548) {
            C3392ee.m82a(getActivity(), "pref_default_tab", 0);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        C3318by.m200a(getActivity(), "sms_tab_running", "1");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        C3318by.m200a(getActivity(), "sms_tab_running", "");
        super.onStop();
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: r_ */
    public final C0826c<Cursor> mo8r_() {
        return new C0825b(getContext(), Uri.parse("content://mms-sms/conversations?simple=true"), new String[]{"_id", "snippet", "read", "recipient_ids", "date"}, "snippet NOT NULL", null, "date DESC");
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: s_ */
    public final void mo7s_() {
        this.f19612b.swapCursor(null);
    }
}
