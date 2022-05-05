package com.vladlee.easyblacklist;

import android.content.Context;
import android.widget.CompoundButton;
import android.widget.CursorAdapter;
import android.widget.ListView;
/* renamed from: com.vladlee.easyblacklist.bc */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bc.class */
final class C3291bc implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ Context f19356a;

    /* renamed from: b */
    final /* synthetic */ C3284aw f19357b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3291bc(C3284aw awVar, Context context) {
        this.f19357b = awVar;
        this.f19356a = context;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.f19357b.isResumed()) {
            C3392ee.m74b(this.f19356a, "pref_hide_blocked_messages", z);
            ListView listView = (ListView) this.f19357b.getActivity().findViewById(2131296470);
            ((CursorAdapter) listView.getAdapter()).notifyDataSetChanged();
            listView.invalidateViews();
        }
    }
}
