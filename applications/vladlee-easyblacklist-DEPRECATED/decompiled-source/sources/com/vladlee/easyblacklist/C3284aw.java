package com.vladlee.easyblacklist;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.Fragment;
import androidx.p043e.p044a.AbstractC0816a;
import androidx.p043e.p045b.C0825b;
import androidx.p043e.p045b.C0826c;
import androidx.preference.C1001ac;
import com.vladlee.easyblacklist.C3318by;
import java.util.ArrayList;
/* renamed from: com.vladlee.easyblacklist.aw */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/aw.class */
public final class C3284aw extends Fragment implements AbstractC0816a.AbstractC0817a<Cursor> {

    /* renamed from: a */
    private C3281av f19345a = null;

    /* renamed from: b */
    private ListView f19346b = null;

    /* renamed from: c */
    private ActionMode f19347c = null;

    /* renamed from: d */
    private ActionMode.Callback f19348d = new ActionMode$CallbackC3285ax(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m257a(C3284aw awVar, Context context, int i) {
        Cursor cursor = (Cursor) awVar.f19345a.getItem(i);
        int i2 = cursor.getInt(cursor.getColumnIndex("type"));
        String string = cursor.getString(cursor.getColumnIndex("phone"));
        String d = C3311bt.m229a(context).m213d(context, string);
        ArrayList arrayList = new ArrayList();
        boolean c = C3318by.m182c(C3318by.C3323e.f19429a, context, string);
        boolean d2 = C3318by.m179d(context, string);
        boolean b = C3307bs.m237b(string);
        boolean a = C3307bs.m241a(string);
        if (!a && !d2 && !c) {
            arrayList.add(awVar.getString(2131623967));
        }
        arrayList.add(awVar.getString(2131624042));
        if (i2 == 1) {
            arrayList.add(awVar.getString(C1001ac.C1007f.f4162a));
            arrayList.add(awVar.getString(2131624182));
        }
        if (b) {
            arrayList.add(awVar.getString(2131624004));
        }
        if (i2 == 1) {
            arrayList.add(awVar.getString(C3392ee.m80a(context, "pref_hide_blocked_messages", true) ? 2131624189 : 2131624087));
        }
        if (!a && !d2 && !c) {
            arrayList.add(awVar.getString(2131623969));
        }
        DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(context);
        if (!C3307bs.m241a(string)) {
            aVar.m9797a(C3456gn.m28b(d));
        } else {
            aVar.m9804a(2131624085);
        }
        aVar.m9794a((CharSequence[]) arrayList.toArray(new CharSequence[0]), new DialogInterface$OnClickListenerC3293be(awVar.f19346b, i, context));
        aVar.m9792b().show();
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: a */
    public final /* synthetic */ void mo20a(Cursor cursor) {
        ActionMode actionMode;
        Cursor cursor2 = cursor;
        this.f19345a.swapCursor(cursor2);
        if (getActivity() != null) {
            ((TextView) getActivity().findViewById(2131296601)).setVisibility((cursor2 == null || cursor2.getCount() <= 0) ? 0 : 8);
            ListView listView = (ListView) getActivity().findViewById(2131296470);
            if (listView != null) {
                this.f19345a.notifyDataSetChanged();
                listView.invalidate();
            }
            if ((cursor2 == null || cursor2.getCount() == 0) && (actionMode = this.f19347c) != null) {
                actionMode.finish();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setHasOptionsMenu(true);
        this.f19346b = (ListView) getActivity().findViewById(2131296470);
        C3335ch.m154a(getContext(), 172800000L, false);
        this.f19346b.setAdapter((ListAdapter) this.f19345a);
        this.f19346b.setItemsCanFocus(false);
        getActivity();
        this.f19346b.setOnItemLongClickListener(new C3289ba(this));
        this.f19346b.setOnItemClickListener(new C3290bb(this));
        View view = getView();
        Context context = view.getContext();
        SwitchCompat switchCompat = (SwitchCompat) getActivity().findViewById(2131296571);
        if (switchCompat != null) {
            switchCompat.setChecked(C3392ee.m80a(view.getContext(), "pref_hide_blocked_messages", true));
            switchCompat.setOnCheckedChangeListener(new C3291bc(this, context));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f19345a = new C3281av(getActivity());
        getLoaderManager().mo8003a(2, this);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        return layoutInflater.inflate(2131492898, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        ActionMode actionMode = this.f19347c;
        if (actionMode != null) {
            actionMode.finish();
            this.f19347c = null;
        }
        getLoaderManager().mo8004a(2);
        C3281av avVar = this.f19345a;
        if (avVar != null) {
            avVar.m259b();
            this.f19345a = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        C3381dz.m109a(getActivity());
        C3335ch.m154a(getContext(), 172800000L, false);
        ((SwitchCompat) getActivity().findViewById(2131296571)).setChecked(C3392ee.m80a((Context) getActivity(), "pref_hide_blocked_messages", true));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: r_ */
    public final C0826c<Cursor> mo8r_() {
        return new C0825b(getContext(), C3318by.C3319a.f19425a, new String[]{"_id", "phone", "message", "time", "type"}, null, null, "time DESC");
    }

    @Override // androidx.p043e.p044a.AbstractC0816a.AbstractC0817a
    /* renamed from: s_ */
    public final void mo7s_() {
        this.f19345a.swapCursor(null);
    }
}
