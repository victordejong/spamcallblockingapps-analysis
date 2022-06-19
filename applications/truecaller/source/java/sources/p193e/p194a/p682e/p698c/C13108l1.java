package p193e.p194a.p682e.p698c;

import android.content.DialogInterface;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.truecaller.C2752R;
import com.truecaller.calling.dialer.call_log.data.CallLogItemType;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import com.truecaller.p183ui.components.DropdownMenuTextView;
import java.util.ArrayList;
import n3.b.a.h;
import n3.r.a.l;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1734b.p1743f.C25508g0;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1048l3.AbstractAsyncTaskC17402a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1114o5.AbstractC19102s1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p682e.AbstractC13258g1;
import p193e.p194a.p682e.p699c2.C13218y;
import p193e.p194a.p937j4.p938a.AbstractC15558b;
/* renamed from: e.a.e.c.l1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/l1.class */
public class C13108l1 extends AbstractC13258g1 implements AbstractC25450a.AbstractC25451a {

    /* renamed from: q */
    public static final /* synthetic */ int f38038q = 0;

    /* renamed from: e */
    public AbstractC25450a f38039e;

    /* renamed from: f */
    public DropdownMenuTextView f38040f;

    /* renamed from: g */
    public C13218y f38041g;

    /* renamed from: h */
    public Contact f38042h;

    /* renamed from: i */
    public final ContentObserver f38043i = new C13109a(new Handler(Looper.getMainLooper()));

    /* renamed from: j */
    public AbstractC19870l f38044j;

    /* renamed from: k */
    public AbstractC19854f<AbstractC17348c> f38045k;

    /* renamed from: l */
    public AbstractC19844a f38046l;

    /* renamed from: m */
    public CallRecordingManager f38047m;

    /* renamed from: n */
    public AbstractC19102s1 f38048n;

    /* renamed from: o */
    public InitiateCallHelper f38049o;

    /* renamed from: p */
    public AbstractC11476s1 f38050p;

    /* renamed from: e.a.e.c.l1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/l1$a.class */
    public class C13109a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13109a(Handler handler) {
            super(handler);
            C13108l1.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            C13108l1 c13108l1 = C13108l1.this;
            int i = C13108l1.f38038q;
            c13108l1.m22053eB();
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    /* renamed from: PA */
    public void mo10110PA() {
        C13218y c13218y = this.f38041g;
        if (c13218y != null) {
            Cursor cursor = c13218y.f74576c;
            if (cursor != null) {
                cursor.unregisterContentObserver(this.f38043i);
            }
            this.f38041g.m1528g(null);
        }
        AbstractC19844a abstractC19844a = this.f38046l;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
    /* renamed from: c9 */
    public boolean mo3503c9(AbstractC25450a abstractC25450a, Menu menu) {
        l activity = getActivity();
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        ListView m21974aB = m21974aB();
        if (m21974aB != null) {
            m21974aB.setChoiceMode(2);
            m21974aB.clearChoices();
            this.f38041g.notifyDataSetChanged();
        }
        abstractC25450a.mo3516f().inflate(C2752R.C2756menu.history_menu_action_mode, menu);
        View inflate = LayoutInflater.from(activity).inflate(C2752R.layout.actionmode_history, (ViewGroup) null);
        DropdownMenuTextView dropdownMenuTextView = (DropdownMenuTextView) inflate.findViewById(C2752R.C2754id.action_mode_drop_down);
        this.f38040f = dropdownMenuTextView;
        dropdownMenuTextView.setOnMenuItemClickListener(new C25508g0.AbstractC25510b() { // from class: e.a.e.c.f
            @Override // p1727n3.p1734b.p1743f.C25508g0.AbstractC25510b
            public final boolean onMenuItemClick(MenuItem menuItem) {
                C13108l1 c13108l1 = C13108l1.this;
                return c13108l1.mo3501sd(c13108l1.f38039e, menuItem);
            }
        });
        abstractC25450a.mo3511k(inflate);
        return true;
    }

    /* renamed from: cB */
    public final void m22055cB(final int i, int i2) {
        if (i2 > 0) {
            g$a g_a = new g$a(getActivity());
            g_a.f70854a.f156f = getResources().getQuantityString(C2752R.plurals.HistoryActionConfirmDeleteMessage, i2, Integer.valueOf(i2));
            g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.c.h
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    ArrayList arrayList;
                    int size;
                    C13108l1 c13108l1 = C13108l1.this;
                    if (i == 2131363344) {
                        ListView m21974aB = c13108l1.m21974aB();
                        int i4 = AbstractAsyncTaskC17402a.f48748e;
                        SparseBooleanArray checkedItemPositions = m21974aB == null ? null : m21974aB.getCheckedItemPositions();
                        if (checkedItemPositions != null && (size = checkedItemPositions.size()) > 0) {
                            ArrayList arrayList2 = new ArrayList(size);
                            int i5 = 0;
                            int i6 = -1;
                            while (true) {
                                int i7 = i6;
                                if (i5 >= size) {
                                    break;
                                }
                                int i8 = i7;
                                try {
                                    if (checkedItemPositions.valueAt(i5)) {
                                        int keyAt = checkedItemPositions.keyAt(i5);
                                        Object itemAtPosition = m21974aB.getItemAtPosition(keyAt);
                                        i8 = i7;
                                        if (itemAtPosition instanceof Cursor) {
                                            Cursor cursor = (Cursor) itemAtPosition;
                                            int i9 = i7;
                                            if (i7 == -1) {
                                                i9 = cursor.getColumnIndexOrThrow("call_log_id");
                                            }
                                            long itemIdAtPosition = m21974aB.getItemIdAtPosition(keyAt);
                                            long j = cursor.getLong(i9);
                                            i8 = i9;
                                            if (itemIdAtPosition != 0) {
                                                arrayList2.add(new Pair(Long.valueOf(itemIdAtPosition), Long.valueOf(j)));
                                                i8 = i9;
                                            }
                                        }
                                    }
                                    i5++;
                                    i6 = i8;
                                } catch (IllegalArgumentException e) {
                                    C10480a.m26061I1(e);
                                }
                            }
                            arrayList = arrayList2;
                        }
                        arrayList = null;
                    } else {
                        ListView m21974aB2 = c13108l1.m21974aB();
                        int i10 = AbstractAsyncTaskC17402a.f48748e;
                        if (m21974aB2 != null) {
                            int count = m21974aB2.getCount();
                            ArrayList arrayList3 = new ArrayList(count);
                            int i11 = 0;
                            while (true) {
                                arrayList = arrayList3;
                                if (i11 >= count) {
                                    break;
                                }
                                Object itemAtPosition2 = m21974aB2.getItemAtPosition(i11);
                                if (itemAtPosition2 instanceof Cursor) {
                                    Cursor cursor2 = (Cursor) itemAtPosition2;
                                    long itemIdAtPosition2 = m21974aB2.getItemIdAtPosition(i11);
                                    long j2 = cursor2.getLong(cursor2.getColumnIndexOrThrow("call_log_id"));
                                    if (itemIdAtPosition2 != 0) {
                                        arrayList3.add(new Pair(Long.valueOf(itemIdAtPosition2), Long.valueOf(j2)));
                                    }
                                }
                                i11++;
                            }
                        }
                        arrayList = null;
                    }
                    if (arrayList != null && !arrayList.isEmpty()) {
                        AbstractC15558b.m18688b(new AsyncTaskC13113m1(c13108l1, c13108l1, arrayList), new Object[0]);
                    }
                    c13108l1.m22054dB();
                }
            });
            g_a.m3662g(2131887867, null);
            g_a.m3652q();
        }
    }

    /* renamed from: dB */
    public final void m22054dB() {
        AbstractC25450a abstractC25450a = this.f38039e;
        if (abstractC25450a != null) {
            abstractC25450a.mo3519c();
        }
    }

    /* renamed from: eB */
    public final void m22053eB() {
        if (this.f38042h.getId() != null) {
            this.f38046l = this.f38045k.mo11854a().mo16246b(this.f38042h, null).mo11830e(this.f38044j.mo11845d(), new AbstractC19851d0() { // from class: e.a.e.c.d
                @Override // p193e.p194a.p1187r2.AbstractC19851d0
                public final void onResult(Object obj) {
                    C13108l1 c13108l1 = C13108l1.this;
                    AbstractC17373b abstractC17373b = (AbstractC17373b) obj;
                    Cursor cursor = c13108l1.f38041g.f74576c;
                    if (cursor != null) {
                        cursor.unregisterContentObserver(c13108l1.f38043i);
                    }
                    if (abstractC17373b != null) {
                        abstractC17373b.registerContentObserver(c13108l1.f38043i);
                    }
                    c13108l1.f38041g.m1528g(abstractC17373b);
                    C13218y c13218y = c13108l1.f38041g;
                    ListView m21974aB = c13108l1.m21974aB();
                    if (m21974aB != null) {
                        m21974aB.setAdapter((ListAdapter) c13218y);
                    }
                    c13108l1.m22051gB();
                }
            });
        } else {
            Number m35493v = this.f38042h.m35493v();
            if (m35493v != null) {
                this.f38046l = this.f38045k.mo11854a().mo16247a(m35493v.m35479e(), null).mo11830e(this.f38044j.mo11845d(), new AbstractC19851d0() { // from class: e.a.e.c.d
                    @Override // p193e.p194a.p1187r2.AbstractC19851d0
                    public final void onResult(Object obj) {
                        C13108l1 c13108l1 = C13108l1.this;
                        AbstractC17373b abstractC17373b = (AbstractC17373b) obj;
                        Cursor cursor = c13108l1.f38041g.f74576c;
                        if (cursor != null) {
                            cursor.unregisterContentObserver(c13108l1.f38043i);
                        }
                        if (abstractC17373b != null) {
                            abstractC17373b.registerContentObserver(c13108l1.f38043i);
                        }
                        c13108l1.f38041g.m1528g(abstractC17373b);
                        C13218y c13218y = c13108l1.f38041g;
                        ListView m21974aB = c13108l1.m21974aB();
                        if (m21974aB != null) {
                            m21974aB.setAdapter((ListAdapter) c13218y);
                        }
                        c13108l1.m22051gB();
                    }
                });
            }
        }
        m22051gB();
    }

    /* renamed from: fB */
    public final void m22052fB(int i, int i2) {
        int i3 = 0;
        this.f38040f.setText(getResources().getQuantityString(C2752R.plurals.HistoryActionSelected, i2, Integer.valueOf(i2)));
        DropdownMenuTextView dropdownMenuTextView = this.f38040f;
        if (i == i2) {
            i3 = 8;
        }
        dropdownMenuTextView.setVisibility(i3);
    }

    /* renamed from: gB */
    public void m22051gB() {
        ListView m21974aB = m21974aB();
        if (m21974aB != null) {
            boolean z = m21974aB.getAdapter() == null;
            boolean z2 = false;
            if (!z) {
                z2 = false;
                if (this.f38041g.isEmpty()) {
                    z2 = true;
                }
            }
            View m21918VA = m21918VA();
            C19045j0.m14194v(m21918VA != null ? m21918VA.findViewById(C2752R.C2754id.loading_indicator) : null, z, true);
            C19045j0.m14194v(m21977WA(), z2, true);
            C19045j0.m14194v(mo10108YA(), z2, true);
        }
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
    /* renamed from: gi */
    public boolean mo3502gi(AbstractC25450a abstractC25450a, Menu menu) {
        return false;
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        C13108l1.super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(C2752R.C2756menu.details_call_log_menu, menu);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l activity = getActivity();
        try {
            Intent intent = activity.getIntent();
            if (intent != null) {
                this.f38042h = (Contact) intent.getParcelableExtra("ARG_CONTACT");
            }
        } catch (RuntimeException e) {
            C10480a.m26061I1(e);
        }
        if (this.f38042h == null) {
            activity.finish();
        }
        return layoutInflater.inflate(C2752R.layout.view_details_call_log, viewGroup, false);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 2131361958) {
            ListView m21974aB = m21974aB();
            if (m21974aB == null) {
                return true;
            }
            m22055cB(C2752R.C2754id.dialog_id_details_call_log_delete_all_items, m21974aB.getCount());
            return true;
        }
        return C13108l1.super.onOptionsItemSelected(menuItem);
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getActivity().getApplication()).mo10154s();
        this.f38044j = mo10154s.mo12119z1();
        this.f38045k = mo10154s.mo12471Z0();
        this.f38047m = mo10154s.mo12655L4();
        this.f38048n = mo10154s.mo12170v4();
        this.f38049o = mo10154s.mo12389f3();
        this.f38050p = mo10154s.mo12679J6();
        if (this.f38042h != null) {
            getActivity().setTitle(C2752R.string.DetailsCallHistory);
            setHasOptionsMenu(true);
            String m35491w = this.f38042h.m35491w();
            String str = m35491w;
            if (TextUtils.isEmpty(m35491w)) {
                str = this.f38042h.m35496t();
            }
            m21973bB(getString((int) C2752R.string.CallerTabsPhonelogNoLog, new Object[]{str}), null, 0);
            ListView m21974aB = m21974aB();
            if (m21974aB != null) {
                m21974aB.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: e.a.e.c.g
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                        HistoryEvent mo16159n;
                        C13108l1 c13108l1 = C13108l1.this;
                        if (c13108l1.getActivity() == null) {
                            return;
                        }
                        if (c13108l1.f38039e != null) {
                            int checkedItemCount = ((ListView) adapterView).getCheckedItemCount();
                            if (checkedItemCount == 0) {
                                c13108l1.m22054dB();
                                return;
                            } else {
                                c13108l1.m22052fB(adapterView.getCount(), checkedItemCount);
                                return;
                            }
                        }
                        Object itemAtPosition = adapterView.getItemAtPosition(i);
                        if (!(itemAtPosition instanceof AbstractC17373b) || (mo16159n = ((AbstractC17373b) itemAtPosition).mo16159n()) == null) {
                            return;
                        }
                        String str2 = mo16159n.f11536c;
                        String str3 = str2;
                        if (TextUtils.isEmpty(str2)) {
                            str3 = mo16159n.f11535b;
                        }
                        if (TextUtils.isEmpty(str3)) {
                            return;
                        }
                        CallLogItemType resolve = CallLogItemType.resolve(mo16159n, c13108l1.f38048n);
                        Contact contact = mo16159n.f11539f;
                        String m35491w2 = contact != null ? c13108l1.f38042h.m35491w() : "";
                        if (TextUtils.isEmpty(m35491w2)) {
                            m35491w2 = str3;
                        }
                        String str4 = mo16159n.f11535b;
                        String str5 = str4;
                        if (TextUtils.isEmpty(str4)) {
                            str5 = str3;
                        }
                        s1.z.c.l.e("contactCallHistory", "analyticsContext");
                        InitiateCallHelper.CallContextOption.ShowOnBoarded showOnBoarded = InitiateCallHelper.CallContextOption.ShowOnBoarded.a;
                        int ordinal = resolve.getPrimaryAction().ordinal();
                        if (ordinal == 3) {
                            c13108l1.f38049o.m35744b(new InitiateCallHelper.CallOptions(str3, "contactCallHistory", m35491w2, null, false, false, null, false, showOnBoarded));
                        } else if (ordinal == 4) {
                            c13108l1.f38049o.m35744b(new InitiateCallHelper.CallOptions(str3, "contactCallHistory", m35491w2, null, true, false, null, false, showOnBoarded));
                        } else if (ordinal == 5) {
                            C18334g0.m15215n(c13108l1.getActivity(), contact, str5, "call", "callHistory");
                        } else if (ordinal == 6) {
                            C18334g0.m15215n(c13108l1.getActivity(), contact, str5, "video", "callHistory");
                        } else if (ordinal != 7) {
                        } else {
                            c13108l1.f38050p.mo24616h(c13108l1.getActivity(), contact, "callLog");
                        }
                    }
                });
                m21974aB.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: e.a.e.c.i
                    @Override // android.widget.AdapterView.OnItemLongClickListener
                    public final boolean onItemLongClick(AdapterView adapterView, View view2, int i, long j) {
                        C13108l1 c13108l1 = C13108l1.this;
                        h activity = c13108l1.getActivity();
                        if (c13108l1.f38039e == null && activity != null) {
                            c13108l1.f38039e = activity.startSupportActionMode(c13108l1);
                        }
                        adapterView.performItemClick(view2, i, j);
                        return true;
                    }
                });
            }
            C13218y c13218y = new C13218y(getActivity(), this.f38047m, null, false);
            this.f38041g = c13218y;
            c13218y.registerDataSetObserver(new C13119n1(this));
            m22053eB();
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0, p193e.p194a.p682e.AbstractC13335y0
    /* renamed from: or */
    public boolean mo21904or() {
        if (this.f38039e != null) {
            m22054dB();
            return true;
        }
        return false;
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
    /* renamed from: sd */
    public boolean mo3501sd(AbstractC25450a abstractC25450a, MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 2131361957) {
            ListView m21974aB = m21974aB();
            if (m21974aB == null) {
                return true;
            }
            m22055cB(C2752R.C2754id.dialog_id_details_call_log_delete_item, m21974aB.getCheckedItemCount());
            return true;
        }
        if (itemId != 2131362019) {
            return false;
        }
        ListView m21974aB2 = m21974aB();
        if (m21974aB2 == null) {
            return true;
        }
        int count = m21974aB2.getCount();
        for (int i = 0; i < count; i++) {
            m21974aB2.setItemChecked(i, true);
        }
        m22052fB(count, count);
        return true;
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
    /* renamed from: zn */
    public void mo3500zn(AbstractC25450a abstractC25450a) {
        AbstractC25450a abstractC25450a2 = this.f38039e;
        if (abstractC25450a2 != abstractC25450a || abstractC25450a2 == null) {
            return;
        }
        this.f38040f = null;
        abstractC25450a2.mo3511k(null);
        this.f38039e = null;
        final ListView m21974aB = m21974aB();
        if (m21974aB == null) {
            return;
        }
        SparseBooleanArray checkedItemPositions = m21974aB.getCheckedItemPositions();
        for (int i = 0; i < checkedItemPositions.size(); i++) {
            m21974aB.setItemChecked(checkedItemPositions.keyAt(i), false);
        }
        m21974aB.clearChoices();
        m21974aB.post(new Runnable() { // from class: e.a.e.c.e
            @Override // java.lang.Runnable
            public final void run() {
                ListView listView = m21974aB;
                int i2 = C13108l1.f38038q;
                listView.setChoiceMode(0);
            }
        });
    }
}
