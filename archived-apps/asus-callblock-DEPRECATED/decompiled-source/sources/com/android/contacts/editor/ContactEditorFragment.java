package com.android.contacts.editor;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.LoaderManager;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemClock;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListPopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.AsusGroupEditorActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.ContactEditorActivity;
import com.android.contacts.activities.RequestCameraPermissionsActivity;
import com.android.contacts.b;
import com.android.contacts.detail.PhotoSelectionHandler;
import com.android.contacts.editor.AggregationSuggestionView;
import com.android.contacts.editor.KindSectionView;
import com.android.contacts.editor.RawContactReadOnlyEditorView;
import com.android.contacts.editor.a;
import com.android.contacts.editor.d;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.model.a.k;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.account.a;
import com.android.contacts.simcardmanage.SimCardContact;
import com.android.contacts.u;
import com.android.contacts.util.ContactPhotoUtils;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.MemoryUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
import com.google.a.b.ae;
import com.google.a.b.m;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/ContactEditorFragment.class */
public class ContactEditorFragment extends Fragment implements AggregationSuggestionView.a, KindSectionView.a, RawContactReadOnlyEditorView.a, a.b {
    private ViewIdGenerator A;
    private long B;
    private com.android.contacts.editor.a C;
    private long D;
    private View E;
    private ListPopupWindow F;
    private AsusDisplayNamePhotoSelector G;
    private AsusDisplayNamePhotoData H;
    private MenuItem M;
    private boolean R;
    private boolean T;
    public e c;
    RawContactDeltaList d;
    int e;
    private SimCardContact g;
    private boolean i;
    private AccountWithDataSet k;
    private long m;
    private g n;
    private Cursor p;
    private String q;
    private Context s;
    private String t;
    private Uri u;
    private Bundle v;
    private long w;
    private boolean x;
    private com.android.contacts.editor.c y;
    private LinearLayout z;
    private static final String f = ContactEditorFragment.class.getSimpleName();
    private static boolean W = false;
    private boolean h = false;
    private Bitmap j = null;

    /* renamed from: a  reason: collision with root package name */
    boolean f1106a = false;

    /* renamed from: b  reason: collision with root package name */
    boolean f1107b = false;
    private Map<Integer, List<SimCardContact>> l = new HashMap();
    private final c o = new c(this, (byte) 0);
    private Bundle r = new Bundle();
    private boolean I = true;
    private boolean J = true;
    private boolean K = false;
    private boolean L = true;
    private boolean N = true;
    private boolean O = false;
    private AlertDialog P = null;
    private AdapterView.OnItemClickListener Q = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.editor.ContactEditorFragment.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
            boolean z;
            AggregationSuggestionView aggregationSuggestionView = (AggregationSuggestionView) view;
            if (aggregationSuggestionView.f1090a != null && aggregationSuggestionView.isEnabled()) {
                if (aggregationSuggestionView.e) {
                    com.android.contacts.model.a a2 = com.android.contacts.model.a.a(aggregationSuggestionView.getContext());
                    for (a.c cVar : aggregationSuggestionView.d) {
                        String str = cVar.f1207b;
                        String str2 = cVar.d;
                        if (str != null) {
                            if (a2.a(str, str2).d()) {
                                z = true;
                                break;
                            }
                        } else {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (z) {
                    aggregationSuggestionView.f1090a.a(ContactsContract.Contacts.getLookupUri(aggregationSuggestionView.f1091b, aggregationSuggestionView.c));
                } else {
                    ArrayList arrayList = new ArrayList();
                    for (a.c cVar2 : aggregationSuggestionView.d) {
                        arrayList.add(Long.valueOf(cVar2.f1206a));
                    }
                    aggregationSuggestionView.f1090a.a(arrayList);
                }
            }
            ContactEditorFragment.this.F.dismiss();
            ContactEditorFragment.this.F = null;
        }
    };
    private boolean S = true;
    private boolean U = false;
    private boolean V = false;
    private final LoaderManager.LoaderCallbacks<com.android.contacts.model.c> X = new LoaderManager.LoaderCallbacks<com.android.contacts.model.c>() { // from class: com.android.contacts.editor.ContactEditorFragment.7
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<com.android.contacts.model.c> onCreateLoader(int i2, Bundle bundle) {
            ContactEditorFragment.this.B = SystemClock.elapsedRealtime();
            return new com.android.contacts.model.d(ContactEditorFragment.this.s, ContactEditorFragment.this.u);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<com.android.contacts.model.c> loader, com.android.contacts.model.c cVar) {
            com.android.contacts.model.c cVar2 = cVar;
            Log.v(ContactEditorFragment.f, "Time needed for loading: " + (SystemClock.elapsedRealtime() - ContactEditorFragment.this.B));
            if (!cVar2.d()) {
                Log.i(ContactEditorFragment.f, "No contact found. Closing activity");
                if (ContactEditorFragment.this.c != null) {
                    ContactEditorFragment.this.c.onContactNotFound();
                    return;
                }
                return;
            }
            ContactEditorFragment.this.e = 1;
            ContactEditorFragment.this.u = cVar2.f2023b;
            ContactEditorFragment.this.i = cVar2.E;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            ContactEditorFragment.this.a(cVar2);
            Log.v(ContactEditorFragment.f, "Time needed for setting UI: " + (SystemClock.elapsedRealtime() - elapsedRealtime));
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<com.android.contacts.model.c> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> Y = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.editor.ContactEditorFragment.8
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ Loader<Cursor> onCreateLoader(int i2, Bundle bundle) {
            return PhoneCapabilityTester.IsAsusDevice() ? new com.android.contacts.c(ContactEditorFragment.this.s) : new u(ContactEditorFragment.this.s, ContactsContract.Groups.CONTENT_URI);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            ContactEditorFragment.this.p = cursor;
            ContactEditorFragment.this.j();
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/ContactEditorFragment$a.class */
    private static final class a extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final Activity f1125a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f1126b;
        private final AggregationSuggestionView.a c;
        private final List<a.d> d;

        public a(Activity activity, boolean z, AggregationSuggestionView.a aVar, List<a.d> list) {
            this.f1125a = activity;
            this.f1126b = z;
            this.c = aVar;
            this.d = list;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.d.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return this.d.get(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            a.d dVar = (a.d) getItem(i);
            AggregationSuggestionView aggregationSuggestionView = (AggregationSuggestionView) this.f1125a.getLayoutInflater().inflate(2131427345, (ViewGroup) null);
            aggregationSuggestionView.setNewContact(this.f1126b);
            aggregationSuggestionView.setListener(this.c);
            aggregationSuggestionView.f1091b = dVar.f1208a;
            aggregationSuggestionView.c = dVar.f1209b;
            aggregationSuggestionView.d = dVar.h;
            ImageView imageView = (ImageView) aggregationSuggestionView.findViewById(2131296327);
            if (dVar.g != null) {
                imageView.setImageBitmap(BitmapFactory.decodeByteArray(dVar.g, 0, dVar.g.length));
            } else {
                imageView.setImageResource(2131165278);
            }
            ((TextView) aggregationSuggestionView.findViewById(2131296326)).setText(dVar.c);
            ((TextView) aggregationSuggestionView.findViewById(2131296325)).setText(dVar.f != null ? dVar.f : dVar.e != null ? dVar.e : dVar.d != null ? dVar.d : null);
            return aggregationSuggestionView;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/ContactEditorFragment$b.class */
    public static final class b extends DialogFragment {
        public static void a(ContactEditorFragment contactEditorFragment) {
            b bVar = new b();
            bVar.setTargetFragment(contactEditorFragment, 0);
            bVar.show(contactEditorFragment.getFragmentManager(), "cancelEditor");
        }

        @Override // android.app.DialogFragment
        public final Dialog onCreateDialog(Bundle bundle) {
            return new AlertDialog.Builder(getActivity()).setIconAttribute(16843605).setMessage(2131755347).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.editor.ContactEditorFragment.b.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    boolean unused = ContactEditorFragment.W = true;
                    ((ContactEditorFragment) b.this.getTargetFragment()).l();
                }
            }).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).create();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/ContactEditorFragment$c.class */
    public final class c implements Comparator<RawContactDelta> {
        private c() {
        }

        /* synthetic */ c(ContactEditorFragment contactEditorFragment, byte b2) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:44:0x010b, code lost:
            if (r0 == 0) goto L_0x010e;
         */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final /* synthetic */ int compare(com.android.contacts.model.RawContactDelta r6, com.android.contacts.model.RawContactDelta r7) {
            /*
                Method dump skipped, instructions count: 376
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.editor.ContactEditorFragment.c.compare(java.lang.Object, java.lang.Object):int");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/ContactEditorFragment$d.class */
    public static final class d extends DialogFragment {
        @Override // android.app.DialogFragment
        public final Dialog onCreateDialog(Bundle bundle) {
            return new AlertDialog.Builder(getActivity()).setIconAttribute(16843605).setMessage(2131755047).setPositiveButton(17039379, new DialogInterface.OnClickListener() { // from class: com.android.contacts.editor.ContactEditorFragment.d.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ContactEditorFragment contactEditorFragment = (ContactEditorFragment) d.this.getTargetFragment();
                    long[] longArray = d.this.getArguments().getLongArray("rawContactIds");
                    if (contactEditorFragment.b() && contactEditorFragment.e == 1) {
                        contactEditorFragment.d.f1991b = longArray;
                        contactEditorFragment.a(1);
                    }
                }
            }).setNegativeButton(17039369, (DialogInterface.OnClickListener) null).create();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/ContactEditorFragment$e.class */
    public interface e {
        void onContactNotFound();

        void onContactSplit(Uri uri);

        void onContactsSaveAuto(Uri uri, Bundle bundle);

        void onCustomCreateContactActivityRequested(AccountWithDataSet accountWithDataSet, Bundle bundle);

        void onCustomEditContactActivityRequested(AccountWithDataSet accountWithDataSet, Uri uri, Bundle bundle, boolean z);

        void onEditOtherContactRequested(Uri uri, ArrayList<ContentValues> arrayList);

        void onReverted();

        void onSaveFinished(Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/ContactEditorFragment$f.class */
    public final class f implements com.android.contacts.editor.b {
        private f() {
        }

        /* synthetic */ f(ContactEditorFragment contactEditorFragment, byte b2) {
            this();
        }

        @Override // com.android.contacts.editor.b
        public final void a(RawContactDelta rawContactDelta) {
            if (ContactEditorFragment.this.d != null) {
                long longValue = rawContactDelta.a().longValue();
                AsusDisplayNamePhotoSelector asusDisplayNamePhotoSelector = ContactEditorFragment.this.G;
                if (asusDisplayNamePhotoSelector.d != null) {
                    int size = asusDisplayNamePhotoSelector.f1095b.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            i = -1;
                            break;
                        } else if (asusDisplayNamePhotoSelector.f1095b.get(i).longValue() == longValue) {
                            asusDisplayNamePhotoSelector.f.put(Integer.valueOf(i), true);
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (i != -1) {
                        asusDisplayNamePhotoSelector.d.a();
                        asusDisplayNamePhotoSelector.f1094a.c = asusDisplayNamePhotoSelector.f1095b.get(i).longValue();
                        asusDisplayNamePhotoSelector.c.setImageBitmap(asusDisplayNamePhotoSelector.d.a(i));
                        asusDisplayNamePhotoSelector.f1094a.f1092a = true;
                        asusDisplayNamePhotoSelector.f1094a.d = asusDisplayNamePhotoSelector.e.get(i).longValue();
                        asusDisplayNamePhotoSelector.f1094a.e = -1L;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/ContactEditorFragment$g.class */
    public final class g extends PhotoSelectionHandler {

        /* renamed from: a  reason: collision with root package name */
        final long f1131a;
        private final BaseRawContactEditorView c;
        private final PhotoSelectionHandler.PhotoActionListener d = new a(this, (byte) 0);

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/ContactEditorFragment$g$a.class */
        public final class a extends PhotoSelectionHandler.PhotoActionListener implements d.a {
            private a() {
                super();
            }

            /* synthetic */ a(g gVar, byte b2) {
                this();
            }

            @Override // com.android.contacts.editor.d.a
            public final void a(int i) {
                if (ContactEditorFragment.this.b() && i == 1) {
                    g.this.onClick(g.this.c.f1104a);
                }
            }

            @Override // com.android.contacts.editor.d.a
            public final void a(com.android.contacts.editor.d dVar) {
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener
            public final String getCurrentPhotoFile() {
                return ContactEditorFragment.this.q;
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener, com.android.contacts.editor.f.b
            public final void onChangePhotoChosen() {
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener
            public final void onPhotoSelected(Uri uri) {
                ContactEditorFragment.a(ContactEditorFragment.this, g.this.f1131a, ContactPhotoUtils.getBitmapFromUri(g.this.mContext, uri), uri != null ? uri.toString() : null);
                ContactEditorFragment.this.n.destroy();
                ContactEditorFragment.this.n = null;
                ContactEditorFragment.this.i();
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener
            public final void onPhotoSelectionDismissed() {
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener, com.android.contacts.editor.f.b
            public final void onRemovePictureChosen() {
                g.this.c.setPhotoBitmap(null);
                ContactEditorFragment.this.r.remove(String.valueOf(g.this.f1131a));
                ContactEditorFragment.this.i();
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener, com.android.contacts.editor.f.b
            public final void onUseAsPrimaryChosen() {
                int childCount = ContactEditorFragment.this.z.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = ContactEditorFragment.this.z.getChildAt(i);
                    if (childAt instanceof BaseRawContactEditorView) {
                        BaseRawContactEditorView baseRawContactEditorView = (BaseRawContactEditorView) childAt;
                        baseRawContactEditorView.f1104a.setSuperPrimary(baseRawContactEditorView == g.this.c);
                    }
                }
                ContactEditorFragment.this.i();
            }
        }

        public g(Context context, BaseRawContactEditorView baseRawContactEditorView, int i, RawContactDeltaList rawContactDeltaList) {
            super(context, baseRawContactEditorView.f1104a, i, false, rawContactDeltaList);
            this.c = baseRawContactEditorView;
            this.f1131a = baseRawContactEditorView.a();
        }

        @Override // com.android.contacts.detail.PhotoSelectionHandler
        public final PhotoSelectionHandler.PhotoActionListener getListener() {
            return this.d;
        }

        @Override // com.android.contacts.detail.PhotoSelectionHandler
        public final void startPhotoActivity(Intent intent, int i, String str) {
            ContactEditorFragment.this.m = this.c.a();
            ContactEditorFragment.this.n = this;
            ContactEditorFragment.this.e = 4;
            ContactEditorFragment.this.q = str;
            if (i == 1001 && RequestCameraPermissionsActivity.startPermissionActivity(ContactEditorFragment.this.getActivity(), intent, i, ContactEditorFragment.this)) {
                return;
            }
            if (ContactEditorFragment.this.getActivity().getPackageManager().resolveActivity(intent, 65536) != null) {
                ContactEditorFragment.this.startActivityForResult(intent, i);
            } else {
                Toast.makeText(ContactEditorFragment.this.getActivity(), 2131755026, 0).show();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/ContactEditorFragment$h.class */
    public static final class h extends DialogFragment {

        /* renamed from: a  reason: collision with root package name */
        static boolean f1134a;

        /* renamed from: b  reason: collision with root package name */
        static h f1135b;

        public static DialogFragment a(boolean z) {
            f1134a = z;
            if (f1135b == null) {
                f1135b = new h();
            }
            return f1135b;
        }

        @Override // android.app.DialogFragment
        public final Dialog onCreateDialog(Bundle bundle) {
            return new AlertDialog.Builder(getActivity()).setIconAttribute(16843605).setTitle(2131756143).setMessage(2131756145).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.editor.ContactEditorFragment.h.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    if (h.this.getActivity() != null && h.f1134a) {
                        h.this.getActivity().finish();
                    }
                }
            }).create();
        }

        @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            super.onDismiss(dialogInterface);
            if (getActivity() != null && f1134a) {
                getActivity().finish();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/ContactEditorFragment$i.class */
    public static final class i extends DialogFragment {
        @Override // android.app.DialogFragment
        public final Dialog onCreateDialog(Bundle bundle) {
            return new AlertDialog.Builder(getActivity()).setIconAttribute(16843605).setMessage(2131755046).setPositiveButton(17039379, new DialogInterface.OnClickListener() { // from class: com.android.contacts.editor.ContactEditorFragment.i.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ContactEditorFragment contactEditorFragment = (ContactEditorFragment) i.this.getTargetFragment();
                    Uri uri = (Uri) i.this.getArguments().getParcelable("contactUri");
                    if (contactEditorFragment.c != null) {
                        contactEditorFragment.e = 3;
                        e eVar = contactEditorFragment.c;
                        RawContactDelta rawContactDelta = contactEditorFragment.d.get(0);
                        ArrayList<ContentValues> arrayList = new ArrayList<>();
                        for (ArrayList<RawContactDelta.ValuesDelta> arrayList2 : rawContactDelta.c.values()) {
                            Iterator<RawContactDelta.ValuesDelta> it = arrayList2.iterator();
                            while (it.hasNext()) {
                                RawContactDelta.ValuesDelta next = it.next();
                                if (!next.j()) {
                                    arrayList.add(next.p());
                                }
                            }
                        }
                        eVar.onEditOtherContactRequested(uri, arrayList);
                    }
                }
            }).setNegativeButton(17039369, (DialogInterface.OnClickListener) null).create();
        }
    }

    private BaseRawContactEditorView a(long j) {
        BaseRawContactEditorView baseRawContactEditorView;
        int i2 = 0;
        while (true) {
            if (i2 >= this.z.getChildCount()) {
                baseRawContactEditorView = null;
                break;
            }
            View childAt = this.z.getChildAt(i2);
            if (childAt instanceof BaseRawContactEditorView) {
                baseRawContactEditorView = (BaseRawContactEditorView) childAt;
                if (baseRawContactEditorView.a() == j) {
                    break;
                }
            }
            i2++;
        }
        return baseRawContactEditorView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, RawContactEditorView rawContactEditorView) {
        long j;
        long j2 = rawContactEditorView.d;
        if (!(this.D == j2 || this.E == null)) {
            this.E.setVisibility(8);
            this.E = null;
            this.C.b();
        }
        this.D = j2;
        if (this.C == null) {
            this.C = new com.android.contacts.editor.a(context);
            this.C.e = this;
            this.C.start();
        }
        com.android.contacts.editor.a aVar = this.C;
        if (this.d != null) {
            Iterator<RawContactDelta> it = this.d.iterator();
            while (it.hasNext()) {
                Long d2 = it.next().f1987a.d(ContactDetailCallogActivity.EXTRA_CONTACT_ID);
                if (d2 != null) {
                    j = d2.longValue();
                    break;
                }
            }
        }
        j = 0;
        if (j != aVar.d) {
            aVar.d = j;
            aVar.b();
        }
        this.C.a(rawContactEditorView.f1173b.f1157b);
    }

    private static void a(BaseRawContactEditorView baseRawContactEditorView) {
        View findViewById = baseRawContactEditorView.findViewById(2131296263);
        findViewById.setBackground(null);
        findViewById.setEnabled(false);
    }

    static /* synthetic */ void a(ContactEditorFragment contactEditorFragment, long j, Bitmap bitmap, String str) {
        BaseRawContactEditorView a2 = contactEditorFragment.a(j);
        if (bitmap == null || bitmap.getHeight() < 0 || bitmap.getWidth() < 0) {
            Log.w(f, "Invalid bitmap passed to setPhoto()");
        }
        if (a2 != null) {
            a2.setPhotoBitmap(bitmap);
        } else {
            Log.w(f, "The contact that requested the photo is no longer present.");
        }
        contactEditorFragment.r.putString(String.valueOf(j), str);
    }

    static /* synthetic */ void a(ContactEditorFragment contactEditorFragment, RawContactDelta rawContactDelta, AccountWithDataSet accountWithDataSet, AccountWithDataSet accountWithDataSet2) {
        com.android.contacts.model.a a2 = com.android.contacts.model.a.a(contactEditorFragment.s);
        com.android.contacts.model.account.a a3 = a2.a(accountWithDataSet.type, accountWithDataSet.f1998a);
        com.android.contacts.model.account.a a4 = a2.a(accountWithDataSet2.type, accountWithDataSet2.f1998a);
        if (a4.f() != null) {
            Log.w(f, "external activity called in rebind situation");
            if (contactEditorFragment.c != null) {
                contactEditorFragment.c.onCustomCreateContactActivityRequested(accountWithDataSet2, contactEditorFragment.v);
                return;
            }
            return;
        }
        contactEditorFragment.d = null;
        contactEditorFragment.a(accountWithDataSet2, a4, rawContactDelta, a3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AccountWithDataSet accountWithDataSet) {
        com.android.contacts.model.account.a a2 = com.android.contacts.model.a.a(this.s).a(accountWithDataSet != null ? accountWithDataSet.type : null, accountWithDataSet != null ? accountWithDataSet.f1998a : null);
        if (a2.f() == null) {
            a(accountWithDataSet, a2, (RawContactDelta) null, (com.android.contacts.model.account.a) null);
        } else if (this.c != null) {
            this.c.onCustomCreateContactActivityRequested(accountWithDataSet, this.v);
        }
    }

    private void a(AccountWithDataSet accountWithDataSet, com.android.contacts.model.account.a aVar, RawContactDelta rawContactDelta, com.android.contacts.model.account.a aVar2) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        this.e = 1;
        com.android.contacts.model.e eVar = new com.android.contacts.model.e(this.s);
        if (accountWithDataSet != null) {
            eVar.a(accountWithDataSet);
        } else {
            eVar.a(null, null, null);
        }
        RawContactDelta rawContactDelta2 = new RawContactDelta(RawContactDelta.ValuesDelta.c(eVar.f2032b));
        if (rawContactDelta == null) {
            com.android.contacts.model.f.a(this.s, aVar, rawContactDelta2, this.v);
        } else {
            com.android.contacts.model.f.a(this.s, rawContactDelta, rawContactDelta2, aVar2, aVar);
        }
        if (accountWithDataSet == null) {
            z = false;
            z2 = false;
        } else if (PhoneCapabilityTester.IsAsusDevice()) {
            z2 = accountWithDataSet.type.equals("asus.local.simcard2");
            z = b.a.c.equals(accountWithDataSet.name);
        } else {
            z2 = accountWithDataSet.name.equals("SIM2");
            z = b.a.d.equals(accountWithDataSet.type);
        }
        int i2 = (accountWithDataSet == null || !z2) ? 1 : 2;
        if (accountWithDataSet == null || !z) {
            com.android.contacts.model.f.a(rawContactDelta2, aVar, "vnd.android.cursor.item/phone_v2");
            com.android.contacts.model.f.a(rawContactDelta2, aVar, "vnd.android.cursor.item/email_v2");
            com.android.contacts.model.f.a(rawContactDelta2, aVar, "vnd.android.cursor.item/organization");
            com.android.contacts.model.f.a(rawContactDelta2, aVar, "vnd.android.cursor.item/contact_event");
            com.android.contacts.model.f.a(rawContactDelta2, aVar, "vnd.android.cursor.item/postal-address_v2");
            com.android.contacts.model.f.a(rawContactDelta2, aVar, "vnd.android.cursor.item/website");
            com.android.contacts.model.f.a(rawContactDelta2, aVar, "vnd.android.cursor.item/sip_address");
        } else {
            com.android.contacts.simcardmanage.e a2 = com.android.contacts.simcardmanage.e.a(this.s);
            boolean z4 = a2.a(i2, 2) > 0;
            if (a2.a(i2, 4) > 0) {
                z3 = true;
            }
            com.android.contacts.model.f.a(rawContactDelta2, aVar, "vnd.android.cursor.item/phone_v2");
            if (z4) {
                com.android.contacts.model.f.a(rawContactDelta2, aVar, "vnd.android.cursor.item/email_v2");
            }
            if (z3) {
                com.android.contacts.model.f.a(rawContactDelta2, aVar, "vnd.android.cursor.item/nickname");
            }
        }
        if (this.U) {
            rawContactDelta2.f1988b = ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI;
        }
        if (this.d == null) {
            this.d = RawContactDeltaList.a(rawContactDelta2);
        } else {
            this.d.add(rawContactDelta2);
        }
        this.T = true;
        this.g.d = -1L;
        i();
    }

    private void a(boolean z) {
        if (this.S != z) {
            this.S = z;
            if (this.z != null) {
                int childCount = this.z.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    this.z.getChildAt(i2).setEnabled(z);
                }
            }
            Activity activity = getActivity();
            if (activity != null) {
                activity.invalidateOptionsMenu();
            }
        }
    }

    public static boolean a(Activity activity) {
        boolean z = true;
        com.android.contacts.simcardmanage.e a2 = com.android.contacts.simcardmanage.e.a(activity);
        if (!a2.a(1) || !a2.e(1)) {
            z = false;
        } else if (activity == null || activity.getActionBar() == null) {
            z = false;
        } else if (!PhoneCapabilityTester.isVerizon() || !activity.getString(2131755525).equals(activity.getActionBar().getTitle())) {
            z = false;
        }
        return z;
    }

    private boolean h() {
        boolean z;
        if (this.d != null) {
            Iterator<RawContactDelta> it = this.d.iterator();
            while (it.hasNext()) {
                RawContactDelta next = it.next();
                String b2 = next.b();
                String c2 = next.c();
                if (!PhoneCapabilityTester.IsAsusDevice()) {
                    if (c2 != null && b.a.d.equals(c2)) {
                        z = true;
                        break;
                    }
                } else if (b2 != null && b.a.c.equals(b2)) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        return !z && !this.h && (this.d == null || this.d.size() != 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0420 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x039a  */
    /* JADX WARN: Type inference failed for: r0v257, types: [com.android.contacts.editor.ContactEditorFragment$2] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i() {
        /*
            Method dump skipped, instructions count: 1376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.editor.ContactEditorFragment.i():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.p != null) {
            int childCount = this.z.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                BaseRawContactEditorView baseRawContactEditorView = (BaseRawContactEditorView) this.z.getChildAt(i2);
                baseRawContactEditorView.setGroupMetaData(this.p);
                baseRawContactEditorView.setHasPhoneNumber(this.i);
            }
        }
    }

    private boolean k() {
        return com.android.contacts.model.f.b(this.d, com.android.contacts.model.a.a(this.s));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.e = 3;
        if (this.c != null) {
            this.c.onReverted();
        }
    }

    private boolean m() {
        boolean z;
        if (this.d != null) {
            com.android.contacts.model.a a2 = com.android.contacts.model.a.a(this.s);
            int size = this.d.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    z = false;
                    break;
                } else if (this.d.get(i2).a(a2).d()) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        return this.U || this.V;
    }

    private boolean o() {
        boolean z;
        int size = this.d.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= size) {
                z = false;
                break;
            }
            RawContactDelta rawContactDelta = this.d.get(i2);
            if (rawContactDelta.f1987a.b()) {
                RawContactDelta.ValuesDelta a2 = rawContactDelta.a("vnd.android.cursor.item/photo");
                if (a2 == null || a2.c("data15") == null) {
                    String string = this.r.getString(String.valueOf(rawContactDelta.a().longValue()));
                    if (string != null && new File(string).exists()) {
                        i3++;
                    }
                } else {
                    i3++;
                }
                i3 = i3;
                if (i3 > 1) {
                    z = true;
                    break;
                }
            } else {
                i3 = i3;
            }
            i2++;
        }
        return z;
    }

    private boolean p() {
        boolean z;
        if (this.d != null && this.d.size() > 0 && this.d.get(0).f1987a.b()) {
            RawContactDelta rawContactDelta = this.d.get(0);
            String b2 = rawContactDelta.b();
            String c2 = rawContactDelta.c();
            if (PhoneCapabilityTester.IsAsusDevice()) {
                if (b2 != null && b.a.c.equals(b2)) {
                    z = true;
                }
            } else if (c2 != null && b.a.d.equals(c2)) {
                z = true;
            }
            return z;
        }
        z = false;
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0354 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean q() {
        /*
            Method dump skipped, instructions count: 1185
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.editor.ContactEditorFragment.q():boolean");
    }

    private void r() {
        boolean equals;
        String str;
        RawContactDelta.ValuesDelta a2;
        if (this.g.d <= 0) {
            com.android.contacts.model.a a3 = com.android.contacts.model.a.a(this.s);
            if (this.d.size() > 0 && this.d.get(0).f1987a.b()) {
                RawContactDelta rawContactDelta = this.d.get(0);
                RawContactDelta.ValuesDelta valuesDelta = rawContactDelta.f1987a;
                String a4 = valuesDelta.a(SelectAccountActivity.ACCOUNT_NAME);
                String a5 = valuesDelta.a(SelectAccountActivity.ACCOUNT_TYPE);
                String a6 = valuesDelta.a(SelectAccountActivity.DATA_SET);
                long longValue = valuesDelta.d("_id").longValue();
                r15 = false;
                boolean z = false;
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    if (a4 != null) {
                        z = b.a.c.equals(a4);
                    }
                    equals = "asus.local.simcard2".equals(a5);
                } else {
                    if (a5 != null) {
                        z = b.a.d.equals(a5);
                    }
                    equals = "SIM2".equals(a4);
                }
                if (equals) {
                    this.g.i = 2;
                } else {
                    this.g.i = 1;
                }
                if (valuesDelta.d("sync1") != null) {
                    long longValue2 = valuesDelta.d("sync1").longValue();
                    if (z) {
                        com.android.contacts.model.account.a a7 = a3.a(a5, a6);
                        com.android.contacts.model.f.a(rawContactDelta, a7, "vnd.android.cursor.item/name");
                        com.android.contacts.model.f.a(rawContactDelta, a7, "vnd.android.cursor.item/photo");
                        Iterator<com.android.contacts.model.a.b> it = a7.r().iterator();
                        while (it.hasNext()) {
                            com.android.contacts.model.a.b next = it.next();
                            if (next.g && (a2 = rawContactDelta.a((str = next.f1997b))) != null) {
                                if ("vnd.android.cursor.item/name".equals(str)) {
                                    if (next.o != null) {
                                        Iterator<a.c> it2 = next.o.iterator();
                                        while (true) {
                                            if (it2.hasNext()) {
                                                String a8 = a2.a(it2.next().f2004a);
                                                long longValue3 = a2.a().longValue();
                                                if (!TextUtils.isEmpty(a8)) {
                                                    this.g.a(a8, longValue3);
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                } else if ("vnd.android.cursor.item/phone_v2".equals(str)) {
                                    if (next.o != null) {
                                        Iterator<a.c> it3 = next.o.iterator();
                                        while (true) {
                                            if (it3.hasNext()) {
                                                a.c next2 = it3.next();
                                                if (com.android.contacts.simcardmanage.e.a(this.s).a(this.g.i, 3) > 0) {
                                                    ArrayList<RawContactDelta.ValuesDelta> a9 = rawContactDelta.a("vnd.android.cursor.item/phone_v2", false);
                                                    if (a9.size() == 1) {
                                                        String a10 = a2.a(next2.f2004a);
                                                        long longValue4 = a2.a().longValue();
                                                        if (!TextUtils.isEmpty(a10)) {
                                                            this.g.b(a10, longValue4);
                                                            break;
                                                        }
                                                    } else if (a9.size() == 2) {
                                                        RawContactDelta.ValuesDelta valuesDelta2 = a9.get(0);
                                                        long longValue5 = valuesDelta2.a().longValue();
                                                        String a11 = valuesDelta2.a(next2.f2004a);
                                                        Log.d("ASUS", "Main Number:" + PhoneCapabilityTester.privacyLogCheck(a11));
                                                        RawContactDelta.ValuesDelta valuesDelta3 = a9.get(1);
                                                        long longValue6 = valuesDelta3.a().longValue();
                                                        String a12 = valuesDelta3.a(next2.f2004a);
                                                        Log.d("ASUS", "additional Number:" + PhoneCapabilityTester.privacyLogCheck(a11));
                                                        this.g.b(a11, longValue5);
                                                        this.g.d(a12, longValue6);
                                                    } else {
                                                        Log.d("ASUS", "Phonne Number Error!");
                                                    }
                                                } else {
                                                    String a13 = a2.a(next2.f2004a);
                                                    long longValue7 = a2.a().longValue();
                                                    if (!TextUtils.isEmpty(a13)) {
                                                        this.g.b(a13, longValue7);
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else if ("vnd.android.cursor.item/email_v2".equals(str)) {
                                    if (next.o != null) {
                                        Iterator<a.c> it4 = next.o.iterator();
                                        while (true) {
                                            if (it4.hasNext()) {
                                                String a14 = a2.a(it4.next().f2004a);
                                                long longValue8 = a2.a().longValue();
                                                if (!TextUtils.isEmpty(a14)) {
                                                    this.g.e(a14, longValue8);
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                } else if ("vnd.android.cursor.item/nickname".equals(str) && next.o != null) {
                                    Iterator<a.c> it5 = next.o.iterator();
                                    while (true) {
                                        if (it5.hasNext()) {
                                            String a15 = a2.a(it5.next().f2004a);
                                            long longValue9 = a2.a().longValue();
                                            if (!TextUtils.isEmpty(a15)) {
                                                this.g.c(a15, longValue9);
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        this.g.d = longValue;
                        this.g.h = longValue2;
                    }
                }
            }
        }
    }

    @Override // com.android.contacts.editor.a.b
    public final void a() {
        RawContactEditorView rawContactEditorView;
        Activity activity = getActivity();
        if ((activity == null || !activity.isFinishing()) && isVisible() && this.d != null && this.e == 1) {
            if (this.F != null && this.F.isShowing()) {
                this.F.dismiss();
            }
            com.android.contacts.editor.a aVar = this.C;
            if ((aVar.f != null ? aVar.f.getCount() : 0) != 0 && (rawContactEditorView = (RawContactEditorView) a(this.D)) != null) {
                View findViewById = rawContactEditorView.findViewById(2131296341);
                this.F = new ListPopupWindow(this.s, null);
                this.F.setAnchorView(findViewById);
                this.F.setWidth(findViewById.getWidth());
                this.F.setInputMethodMode(2);
                this.F.setAdapter(new a(getActivity(), this.d.size() == 1 && this.d.get(0).f1987a.n(), this, this.C.d()));
                this.F.setOnItemClickListener(this.Q);
                this.F.show();
            }
        }
    }

    @Override // com.android.contacts.editor.AggregationSuggestionView.a
    public final void a(Uri uri) {
        i iVar = new i();
        Bundle bundle = new Bundle();
        bundle.putParcelable("contactUri", uri);
        iVar.setArguments(bundle);
        iVar.setTargetFragment(this, 0);
        iVar.show(getFragmentManager(), "edit");
    }

    public final void a(Bundle bundle) {
        if (bundle != null && bundle.size() != 0) {
            com.android.contacts.model.a a2 = com.android.contacts.model.a.a(this.s);
            Iterator<RawContactDelta> it = this.d.iterator();
            while (it.hasNext()) {
                RawContactDelta next = it.next();
                com.android.contacts.model.account.a a3 = next.a(a2);
                if (a3.d()) {
                    com.android.contacts.model.f.a(this.s, a3, next, bundle);
                    return;
                }
            }
        }
    }

    @Override // com.android.contacts.editor.RawContactReadOnlyEditorView.a
    public final void a(AccountWithDataSet accountWithDataSet, Uri uri) {
        this.c.onCustomEditContactActivityRequested(accountWithDataSet, uri, null, false);
    }

    public final void a(com.android.contacts.model.c cVar) {
        boolean z = true;
        if (this.d == null || this.h) {
            m<com.android.contacts.model.e> mVar = cVar.o;
            if (mVar.size() == 1) {
                com.android.contacts.model.e eVar = mVar.get(0);
                String d2 = eVar.d();
                String e2 = eVar.e();
                com.android.contacts.model.account.a g2 = eVar.g();
                if (g2.e() != null && !g2.d()) {
                    if (this.c != null) {
                        this.c.onCustomEditContactActivityRequested(new AccountWithDataSet(eVar.c(), d2, e2), ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, eVar.b().longValue()), this.v, true);
                        return;
                    }
                    return;
                }
            }
            a(true);
            this.d = cVar.a();
            a(this.v);
            this.v = null;
            this.V = cVar.B;
            if (this.V) {
                Iterator<RawContactDelta> it = this.d.iterator();
                boolean z2 = false;
                while (it.hasNext()) {
                    RawContactDelta next = it.next();
                    next.f1988b = ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI;
                    if (next.f1987a.a(SelectAccountActivity.ACCOUNT_TYPE) == null || next.f1987a.a(SelectAccountActivity.ACCOUNT_TYPE).equals(b.a.f612b)) {
                        z2 = true;
                    }
                }
                if (!z2) {
                    com.android.contacts.model.e eVar2 = new com.android.contacts.model.e(this.s);
                    eVar2.a(null, null, null);
                    RawContactDelta rawContactDelta = new RawContactDelta(RawContactDelta.ValuesDelta.c(eVar2.f2032b));
                    rawContactDelta.f1988b = ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI;
                    this.d.add(rawContactDelta);
                }
            }
            this.T = true;
            this.H.f1093b = cVar.g;
            this.H.c = cVar.D;
            this.H.d = cVar.i;
            Iterator<RawContactDelta> it2 = this.d.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                RawContactDelta next2 = it2.next();
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    if (b.a.c.equals(next2.b())) {
                        break;
                    }
                } else if (b.a.d.equals(next2.c())) {
                    break;
                }
            }
            Log.d(f, "isHasSimAccount " + z);
            if (cVar.g() || z) {
                r();
            }
            i();
            return;
        }
        Log.v(f, "Ignoring background change. This will have to be rebased later");
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [com.android.contacts.editor.ContactEditorFragment$9] */
    public final void a(String str, Uri uri, final Bundle bundle) {
        this.t = str;
        this.u = uri;
        this.v = bundle;
        this.R = this.v != null && this.v.containsKey("addToDefaultDirectory");
        this.U = this.v != null && this.v.getBoolean("newLocalProfile");
        if (bundle != null) {
            this.f1106a = bundle.getBoolean("isGalContact", false);
            String string = bundle.getString("lookup");
            long j = bundle.getLong("_id");
            long j2 = bundle.getLong("directory");
            Uri lookupUri = ContactsContract.Contacts.getLookupUri(j, string);
            Uri.Builder builder = null;
            if (lookupUri != null) {
                builder = lookupUri.buildUpon();
                builder.appendQueryParameter("directory", String.valueOf(j2));
                Log.d(f, "gallookupUri = " + builder.build().toString());
            }
            if (!this.f1106a) {
                return;
            }
            if (lookupUri == null || j2 <= 0) {
                Log.d(f, "intentExtras = " + bundle.toString());
                this.f1107b = true;
                if (this.k != null) {
                    a(this.k);
                    return;
                }
                return;
            }
            final Uri build = builder.build();
            try {
                new AsyncTask<Void, Void, Void>() { // from class: com.android.contacts.editor.ContactEditorFragment.9
                    @Override // android.os.AsyncTask
                    protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
                        com.android.contacts.model.c a2 = new com.android.contacts.model.d(ContactEditorFragment.this.getActivity(), build, false, false, false, true, true).loadInBackground();
                        if (a2 == null || a2.o == null) {
                            return null;
                        }
                        Log.d(ContactEditorFragment.f, "Load gal detail finish. DisplayName is " + PhoneCapabilityTester.privacyLogCheck(a2.k));
                        ae<com.android.contacts.model.e> b2 = a2.o.iterator();
                        while (b2.hasNext()) {
                            for (com.android.contacts.model.a.a aVar : b2.next().h()) {
                                if (aVar.b() != null) {
                                    String h2 = aVar.h();
                                    int g2 = aVar.f() ? aVar.g() : -1;
                                    if (aVar instanceof k) {
                                        if (!bundle.containsKey("phone")) {
                                            bundle.putString("phone", h2);
                                            bundle.putInt("phone_type", g2);
                                        } else if (!bundle.containsKey("secondary_phone")) {
                                            bundle.putString("secondary_phone", h2);
                                            bundle.putInt("secondary_phone_type", g2);
                                        } else if (!bundle.containsKey("tertiary_phone")) {
                                            bundle.putString("tertiary_phone", h2);
                                            bundle.putInt("tertiary_phone_type", g2);
                                        } else {
                                            Log.d(ContactEditorFragment.f, "phone data has more than three.  data = " + PhoneCapabilityTester.privacyLogCheck(h2));
                                        }
                                    } else if (!(aVar instanceof com.android.contacts.model.a.c)) {
                                        Log.d(ContactEditorFragment.f, "Not support column. mimetype = " + aVar.b() + " data = " + h2);
                                    } else if (!bundle.containsKey("email")) {
                                        bundle.putString("email", h2);
                                        bundle.putInt("email_type", g2);
                                    } else if (!bundle.containsKey("secondary_email")) {
                                        String string2 = bundle.getString("email");
                                        if (TextUtils.isEmpty(string2) || !string2.equals(h2)) {
                                            bundle.putString("secondary_email", h2);
                                            bundle.putInt("secondary_email_type", g2);
                                        }
                                    } else if (!bundle.containsKey("tertiary_email")) {
                                        String string3 = bundle.getString("email");
                                        String string4 = bundle.getString("secondary_email");
                                        if (TextUtils.isEmpty(string3) || !string3.equals(h2)) {
                                            if (TextUtils.isEmpty(string4) || !string4.equals(h2)) {
                                                bundle.putString("tertiary_email", h2);
                                                bundle.putInt("tertiary_email_type", g2);
                                            }
                                        }
                                    } else {
                                        Log.d(ContactEditorFragment.f, "email data has more than three.  data = " + PhoneCapabilityTester.privacyLogCheck(h2));
                                    }
                                }
                            }
                        }
                        return null;
                    }

                    @Override // android.os.AsyncTask
                    protected final /* synthetic */ void onPostExecute(Void r4) {
                        super.onPostExecute(r4);
                        ContactEditorFragment.this.f1107b = true;
                        if (ContactEditorFragment.this.k != null) {
                            ContactEditorFragment.this.a(ContactEditorFragment.this.k);
                        }
                        Log.d(ContactEditorFragment.f, "loadGalContactDetail finish");
                    }
                }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e2) {
                Log.e(f, e2.toString());
            }
        }
    }

    @Override // com.android.contacts.editor.AggregationSuggestionView.a
    public final void a(List<Long> list) {
        long[] jArr = new long[list.size()];
        for (int i2 = 0; i2 < jArr.length; i2++) {
            jArr[i2] = list.get(i2).longValue();
        }
        d dVar = new d();
        Bundle bundle = new Bundle();
        bundle.putLongArray("rawContactIds", jArr);
        dVar.setArguments(bundle);
        dVar.setTargetFragment(this, 0);
        try {
            dVar.show(getFragmentManager(), "join");
        } catch (Exception e2) {
        }
    }

    public final void a(boolean z, int i2, boolean z2, Uri uri, boolean z3) {
        Intent intent;
        if (z) {
            if (z2) {
                if (i2 != 3) {
                    if (uri != null) {
                        Toast.makeText(this.s, 2131755444, 0).show();
                    } else {
                        Toast.makeText(this.s, 2131755442, 0).show();
                    }
                }
                if (uri != null && uri.getPathSegments().get(2).equals("profile")) {
                    getActivity().sendBroadcast(new Intent("com.asus.provider.clipboard.userprofilechange"));
                    Log.d(f, "sendBroadcast:" + intent.getAction());
                }
                if (uri != null) {
                    com.android.contacts.c.b.a(8, Long.parseLong(uri.getLastPathSegment()), -1);
                }
            } else if (!z3 || !PhoneCapabilityTester.isATTSku()) {
                Toast.makeText(this.s, 2131755443, 1).show();
            } else {
                Toast.makeText(this.s, getString(2131755176, "AT&T Address Book"), 1).show();
            }
        }
        switch (i2) {
            case 0:
            case 4:
                Intent intent2 = null;
                if (z2) {
                    intent2 = null;
                    if (uri != null) {
                        String authority = this.u == null ? null : this.u.getAuthority();
                        Intent intent3 = new Intent();
                        intent3.setAction("android.intent.action.VIEW");
                        if ("contacts".equals(authority)) {
                            intent3.setData(ContentUris.withAppendedId(Uri.parse("content://contacts/people"), ContentUris.parseId(ContactsContract.Contacts.lookupContact(this.s.getContentResolver(), uri))));
                            intent2 = intent3;
                        } else {
                            intent3.setData(uri);
                            intent2 = intent3;
                        }
                    }
                }
                this.e = 3;
                if (this.c != null) {
                    this.c.onSaveFinished(intent2);
                    return;
                }
                return;
            case 1:
            case 3:
                if (z2 && uri != null) {
                    if (i2 == 3 && b() && uri != null && isAdded()) {
                        this.w = ContentUris.parseId(uri);
                        this.x = m();
                        Intent intent4 = new Intent("com.android.contacts.action.LINK_CONTACT");
                        intent4.putExtra(AsusGroupEditorActivity.EXTRA_TARGET_CONTACT_ID, this.w);
                        intent4.putExtra("fromEditActivity", true);
                        startActivityForResult(intent4, 4);
                    }
                    this.d = null;
                    a("android.intent.action.EDIT", uri, (Bundle) null);
                    this.e = 0;
                    if (this.c != null) {
                        this.c.onContactsSaveAuto(uri, null);
                    }
                    getLoaderManager().restartLoader(1, null, this.X);
                    return;
                }
                return;
            case 2:
                this.e = 3;
                if (this.c != null) {
                    this.c.onContactSplit(uri);
                    return;
                } else {
                    Log.d(f, "No listener registered, can not call onSplitFinished");
                    return;
                }
            default:
                return;
        }
    }

    public final boolean a(int i2) {
        boolean z;
        Intent a2;
        SimCardContact simCardContact;
        String str;
        RawContactDelta.ValuesDelta a3;
        ArrayList<RawContactDelta.ValuesDelta> arrayList;
        boolean z2;
        String str2;
        boolean z3;
        boolean equals;
        boolean equals2;
        long j;
        boolean z4;
        boolean z5;
        Long d2;
        if (!b() || this.e != 1) {
            this.N = false;
            z = false;
        } else {
            if (i2 == 0 || i2 == 2) {
                getLoaderManager().destroyLoader(1);
            }
            this.e = 2;
            if (k() || this.H.f1092a) {
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    RawContactDeltaList rawContactDeltaList = this.d;
                    if (this.p == null || !this.p.moveToFirst()) {
                        j = 0;
                        break;
                    }
                    while (!com.android.contacts.group.f.a(this.p.getString(1))) {
                        if (!this.p.moveToNext()) {
                            j = 0;
                            break;
                        }
                    }
                    j = this.p.getLong(0);
                    Iterator<RawContactDelta> it = rawContactDeltaList.iterator();
                    loop1: while (true) {
                        if (!it.hasNext()) {
                            z4 = false;
                            break;
                        }
                        ArrayList<RawContactDelta.ValuesDelta> a4 = it.next().a("vnd.android.cursor.item/group_membership", false);
                        if (a4 != null) {
                            Iterator<RawContactDelta.ValuesDelta> it2 = a4.iterator();
                            while (it2.hasNext()) {
                                RawContactDelta.ValuesDelta next = it2.next();
                                if (next == null && next.b(CoverUtils.CoverData.COVER_TYPE) && (d2 = next.d(CoverUtils.CoverData.COVER_TYPE)) != null && d2.longValue() == j) {
                                    z4 = true;
                                    break loop1;
                                }
                            }
                            continue;
                        }
                    }
                    if (z4) {
                        Iterator<RawContactDelta> it3 = rawContactDeltaList.iterator();
                        loop3: while (true) {
                            if (!it3.hasNext()) {
                                z5 = false;
                                break;
                            }
                            ArrayList<RawContactDelta.ValuesDelta> a5 = it3.next().a("vnd.android.cursor.item/phone_v2", false);
                            if (a5 != null) {
                                Iterator<RawContactDelta.ValuesDelta> it4 = a5.iterator();
                                while (it4.hasNext()) {
                                    if (it4.next().i()) {
                                        z5 = true;
                                        break loop3;
                                    }
                                }
                                continue;
                            }
                        }
                        if (!z5) {
                            Iterator<RawContactDelta> it5 = rawContactDeltaList.iterator();
                            while (it5.hasNext()) {
                                ArrayList<RawContactDelta.ValuesDelta> a6 = it5.next().a("vnd.android.cursor.item/phone_v2", false);
                                if (a6 != null && a6.size() > 0) {
                                    a6.get(0).r();
                                }
                            }
                        }
                    }
                }
                if (p()) {
                    if (PhoneCapabilityTester.isATTSku()) {
                        String c2 = (this.d.size() <= 0 || !this.d.get(0).f1987a.b()) ? null : this.d.get(0).c();
                        String b2 = (this.d.size() <= 0 || !this.d.get(0).f1987a.b()) ? null : this.d.get(0).b();
                        String str3 = c2;
                        if (c2 == null) {
                            str3 = b.a.d;
                        }
                        if (PhoneCapabilityTester.IsAsusDevice()) {
                            str2 = b.a.c;
                        } else {
                            str2 = b2;
                            if (b2 == null) {
                                str2 = "SIM";
                            }
                        }
                        AccountWithDataSet accountWithDataSet = new AccountWithDataSet(str2, str3, null);
                        if (i2 != 1) {
                            int i3 = 1;
                            if (PhoneCapabilityTester.IsAsusDevice()) {
                                equals = accountWithDataSet.type.equals("asus.local.simcard2");
                                equals2 = b.a.c.equals(accountWithDataSet.name);
                            } else {
                                equals = accountWithDataSet.name.equals("SIM2");
                                equals2 = b.a.d.equals(accountWithDataSet.type);
                            }
                            if (equals) {
                                i3 = 2;
                            }
                            if (!equals2 || com.android.contacts.simcardmanage.e.a(this.s).b(i3, 1) + 1 <= com.android.contacts.simcardmanage.e.a(this.s).a(i3, 1)) {
                                z3 = false;
                            } else {
                                DialogFragment a7 = h.a(false);
                                FragmentManager fragmentManager = getFragmentManager();
                                if (fragmentManager != null) {
                                    a7.show(fragmentManager, (String) null);
                                }
                                z3 = true;
                            }
                        } else {
                            z3 = false;
                        }
                        z2 = z3;
                        if (z3) {
                            this.e = 1;
                            this.N = false;
                            z = false;
                        }
                    } else {
                        z2 = false;
                    }
                    if (!z2 && !q()) {
                        this.e = 1;
                        this.N = false;
                        z = false;
                    }
                }
                a(false);
                if (PhoneCapabilityTester.isATTSku() && ("android.intent.action.INSERT".equals(this.t) || this.d.size() != 1 || n())) {
                    RawContactDelta rawContactDelta = this.d.get(0);
                    String b3 = rawContactDelta.b();
                    String c3 = rawContactDelta.c();
                    this.y.a((b3 == null || c3 == null) ? null : new AccountWithDataSet(b3, c3, rawContactDelta.d()));
                }
                if (p()) {
                    RawContactDeltaList rawContactDeltaList2 = this.d;
                    com.android.contacts.model.a a8 = com.android.contacts.model.a.a(this.s);
                    if (rawContactDeltaList2.size() <= 0 || !rawContactDeltaList2.get(0).f1987a.b()) {
                        simCardContact = null;
                    } else {
                        RawContactDelta rawContactDelta2 = rawContactDeltaList2.get(0);
                        RawContactDelta.ValuesDelta valuesDelta = rawContactDelta2.f1987a;
                        long longValue = valuesDelta.d("_id").longValue();
                        String a9 = valuesDelta.a(SelectAccountActivity.DATA_SET);
                        String c4 = rawContactDelta2.c();
                        com.android.contacts.model.account.a a10 = a8.a(c4, a9);
                        com.android.contacts.model.f.a(rawContactDelta2, a10, "vnd.android.cursor.item/name");
                        com.android.contacts.model.f.a(rawContactDelta2, a10, "vnd.android.cursor.item/photo");
                        String b4 = rawContactDelta2.b();
                        SimCardContact simCardContact2 = new SimCardContact();
                        boolean equals3 = PhoneCapabilityTester.IsAsusDevice() ? "asus.local.simcard2".equals(c4) : "SIM2".equals(b4);
                        if (equals3) {
                            simCardContact2.i = 2;
                        } else {
                            simCardContact2.i = 1;
                        }
                        simCardContact2.h = this.g.h;
                        simCardContact2.d = longValue;
                        Iterator<com.android.contacts.model.a.b> it6 = a10.r().iterator();
                        while (it6.hasNext()) {
                            com.android.contacts.model.a.b next2 = it6.next();
                            if (next2.g && (a3 = rawContactDelta2.a((str = next2.f1997b))) != null) {
                                if ("vnd.android.cursor.item/name".equals(str)) {
                                    if (next2.o != null) {
                                        Iterator<a.c> it7 = next2.o.iterator();
                                        while (true) {
                                            if (it7.hasNext()) {
                                                String a11 = a3.a(it7.next().f2004a);
                                                long longValue2 = a3.a().longValue();
                                                if (!TextUtils.isEmpty(a11)) {
                                                    simCardContact2.a(a11, longValue2);
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                } else if ("vnd.android.cursor.item/phone_v2".equals(str)) {
                                    if (next2.o != null) {
                                        int i4 = 1;
                                        if (equals3) {
                                            i4 = 2;
                                        }
                                        boolean z6 = com.android.contacts.simcardmanage.e.a(this.s).a(i4, 3) > 0;
                                        Iterator<a.c> it8 = next2.o.iterator();
                                        while (true) {
                                            if (it8.hasNext()) {
                                                a.c next3 = it8.next();
                                                if (z6) {
                                                    ArrayList<RawContactDelta.ValuesDelta> a12 = rawContactDelta2.a("vnd.android.cursor.item/phone_v2", false);
                                                    if (a12.size() >= 2) {
                                                        int size = a12.size();
                                                        arrayList = a12;
                                                        if (size >= 2) {
                                                            int i5 = 0;
                                                            while (true) {
                                                                arrayList = a12;
                                                                if (i5 >= size) {
                                                                    break;
                                                                }
                                                                RawContactDelta.ValuesDelta valuesDelta2 = a12.get((size - 1) - i5);
                                                                if (valuesDelta2.g() == null || valuesDelta2.j()) {
                                                                    a12.remove((size - 1) - i5);
                                                                }
                                                                i5++;
                                                            }
                                                        }
                                                    } else {
                                                        arrayList = a12.size() == 1 ? a12 : null;
                                                    }
                                                    if (arrayList.size() == 1) {
                                                        String a13 = a3.a(next3.f2004a);
                                                        long longValue3 = a3.a().longValue();
                                                        if (!TextUtils.isEmpty(a13)) {
                                                            simCardContact2.b(a13, longValue3);
                                                            break;
                                                        }
                                                    } else if (arrayList.size() == 2) {
                                                        RawContactDelta.ValuesDelta valuesDelta3 = arrayList.get(0);
                                                        long longValue4 = valuesDelta3.a().longValue();
                                                        String a14 = valuesDelta3.a(next3.f2004a);
                                                        simCardContact2.b(a14, longValue4);
                                                        Log.d("ASUS", "Main Number:" + PhoneCapabilityTester.privacyLogCheck(a14));
                                                        RawContactDelta.ValuesDelta valuesDelta4 = arrayList.get(1);
                                                        long longValue5 = valuesDelta4.a().longValue();
                                                        String a15 = valuesDelta4.a(next3.f2004a);
                                                        Log.d("ASUS", "additional Number:" + PhoneCapabilityTester.privacyLogCheck(a14));
                                                        simCardContact2.d(a15, longValue5);
                                                    } else {
                                                        Log.d("ASUS", "Phonne Number Error!");
                                                    }
                                                } else {
                                                    String a16 = a3.a(next3.f2004a);
                                                    long longValue6 = a3.a().longValue();
                                                    if (!TextUtils.isEmpty(a16)) {
                                                        simCardContact2.b(a16, longValue6);
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else if ("vnd.android.cursor.item/email_v2".equals(str)) {
                                    if (next2.o != null) {
                                        Iterator<a.c> it9 = next2.o.iterator();
                                        while (true) {
                                            if (it9.hasNext()) {
                                                String a17 = a3.a(it9.next().f2004a);
                                                long longValue7 = a3.a().longValue();
                                                if (!TextUtils.isEmpty(a17)) {
                                                    simCardContact2.e(a17, longValue7);
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                } else if ("vnd.android.cursor.item/nickname".equals(str) && next2.o != null) {
                                    Iterator<a.c> it10 = next2.o.iterator();
                                    while (true) {
                                        if (it10.hasNext()) {
                                            String a18 = a3.a(it10.next().f2004a);
                                            long longValue8 = a3.a().longValue();
                                            if (!TextUtils.isEmpty(a18)) {
                                                simCardContact2.c(a18, longValue8);
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        simCardContact = simCardContact2;
                    }
                    a2 = simCardContact != null ? ContactSaveService.a(getActivity(), simCardContact, this.g, "saveMode", i2, getActivity().getClass(), "saveCompleted") : null;
                } else {
                    a2 = ContactSaveService.a(this.s, this.d, this.h, this.H, "saveMode", i2, n(), ((Activity) this.s).getClass(), "saveCompleted", this.r, this.O);
                }
                this.s.startService(a2);
                this.r = new Bundle();
                this.N = true;
                z = true;
            } else if (this.u == null && i2 == 1) {
                this.e = 1;
                this.N = true;
                z = true;
            } else {
                a(false, i2, this.u != null, this.u, false);
                this.N = true;
                z = true;
            }
        }
        return z;
    }

    public final void b(Uri uri) {
        a(false, 1, uri != null, uri, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        return this.d != null && this.d.size() > 0;
    }

    public final boolean c() {
        if (p() || n()) {
            a(0);
        } else {
            new AlertDialog.Builder(getActivity()).setMessage(getString(2131755467)).setPositiveButton(getString(2131755470), new DialogInterface.OnClickListener() { // from class: com.android.contacts.editor.ContactEditorFragment.6

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ int f1119a = 0;

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    Log.d(ContactEditorFragment.f, "Yes");
                    ContactEditorFragment.this.O = true;
                    ContactEditorFragment.this.a(this.f1119a);
                    dialogInterface.dismiss();
                }
            }).setNegativeButton(getString(2131755468), new DialogInterface.OnClickListener() { // from class: com.android.contacts.editor.ContactEditorFragment.5

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ int f1117a = 0;

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    Log.d(ContactEditorFragment.f, "No");
                    ContactEditorFragment.this.O = false;
                    ContactEditorFragment.this.a(this.f1117a);
                    dialogInterface.dismiss();
                }
            }).show();
        }
        return this.N;
    }

    @Override // com.android.contacts.editor.KindSectionView.a
    public final void d() {
        e();
    }

    public final void e() {
        boolean z = true;
        if (this.K && this.M != null) {
            Boolean valueOf = Boolean.valueOf(k());
            if (valueOf.booleanValue()) {
                z = false;
            }
            this.L = z;
            if (valueOf.booleanValue()) {
                this.J = false;
            }
            this.M.setEnabled(valueOf.booleanValue());
            com.android.contacts.skin.a.a(getActivity(), this.M);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x01f3, code lost:
        if (r8.containsKey("data") == false) goto L_0x01f6;
     */
    @Override // android.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityCreated(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.editor.ContactEditorFragment.onActivityCreated(android.os.Bundle):void");
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i2, int i3, Intent intent) {
        AccountWithDataSet accountWithDataSet;
        if (!this.J) {
            e();
        }
        if (this.e == 4) {
            this.e = 1;
        }
        if (this.n == null || !this.n.handlePhotoActivityResult(i2, i3, intent)) {
            switch (i2) {
                case 0:
                    if (i3 == -1 && intent != null) {
                        this.s.startService(ContactSaveService.a(this.s, this.w, ContentUris.parseId(intent.getData()), this.x, ContactEditorActivity.class, ContactEditorActivity.ACTION_JOIN_COMPLETED));
                        return;
                    }
                    return;
                case 1:
                    if (i3 != -1) {
                        this.c.onReverted();
                        return;
                    } else if (intent == null || (accountWithDataSet = (AccountWithDataSet) intent.getParcelableExtra("com.android.contacts.extra.ACCOUNT")) == null) {
                        List<AccountWithDataSet> a2 = com.android.contacts.model.a.a(this.s).a(true);
                        if (a2.isEmpty()) {
                            a((AccountWithDataSet) null);
                            return;
                        } else {
                            a(a2.get(0));
                            return;
                        }
                    } else if (!this.f1106a || this.f1107b) {
                        a(accountWithDataSet);
                        return;
                    } else {
                        this.k = accountWithDataSet;
                        return;
                    }
                case 2:
                case 3:
                default:
                    return;
                case 4:
                    if (i3 == 1000) {
                        if (this.c != null) {
                            this.c.onSaveFinished(intent);
                        }
                        Log.i(f, "mListener:" + this.c);
                        return;
                    } else if (intent != null) {
                        b(intent.getData());
                        return;
                    } else {
                        return;
                    }
            }
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.s = activity;
        this.y = com.android.contacts.editor.c.a(this.s);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        if (bundle != null) {
            this.u = (Uri) bundle.getParcelable("uri");
            this.t = bundle.getString("action");
        }
        super.onCreate(bundle);
        if (bundle == null) {
            this.A = new ViewIdGenerator();
            this.g = new SimCardContact();
            this.H = new AsusDisplayNamePhotoData();
            return;
        }
        this.d = (RawContactDeltaList) bundle.getParcelable("state");
        this.m = bundle.getLong("photorequester");
        this.A = (ViewIdGenerator) bundle.getParcelable("viewidgenerator");
        this.q = bundle.getString("currentphotofile");
        this.w = bundle.getLong("contactidforjoin");
        this.x = bundle.getBoolean("contactwritableforjoin");
        this.D = bundle.getLong("showJoinSuggestions");
        this.S = bundle.getBoolean("enabled");
        this.e = bundle.getInt("status");
        this.U = bundle.getBoolean("newLocalProfile");
        this.V = bundle.getBoolean("isUserProfile");
        this.r = (Bundle) bundle.getParcelable("updatedPhotos");
        this.g = (SimCardContact) bundle.getParcelable("oldsimcardcontact");
        this.H = (AsusDisplayNamePhotoData) bundle.getParcelable("DisplayNamePhotoData");
        this.I = bundle.getBoolean("PhotoRemovedFlag");
        this.L = bundle.getBoolean("FieldsRemovedFlag");
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(2131492866, menu);
        this.M = menu.findItem(2131297048);
        if (this.M != null) {
            com.android.contacts.skin.a.a(getActivity(), this.M);
        }
        if ("android.intent.action.INSERT".equals(this.t)) {
            this.K = true;
            if (this.I && this.L) {
                this.M.setEnabled(false);
                if (this.M != null) {
                    com.android.contacts.skin.a.a(getActivity(), this.M);
                }
            }
            try {
                if (PhoneCapabilityTester.isATTSku() && k()) {
                    this.L = false;
                    this.J = false;
                    this.M.setEnabled(true);
                    if (this.M != null) {
                        com.android.contacts.skin.a.a(getActivity(), this.M);
                    }
                }
            } catch (Exception e2) {
                Log.d(f, "onCreateOptionsMenu-isATTSku-hasPendingChanges() " + e2.getMessage());
            }
        } else {
            this.K = false;
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        LinearLayout linearLayout;
        View inflate = layoutInflater.inflate(2131427475, viewGroup, false);
        this.z = (LinearLayout) inflate.findViewById(2131296782);
        this.G = (AsusDisplayNamePhotoSelector) inflate.findViewById(2131296755);
        if (!(PhoneCapabilityTester.IsAsusDevice() || this.G == null || (linearLayout = (LinearLayout) this.G.findViewById(2131297157)) == null)) {
            linearLayout.setVisibility(8);
        }
        setHasOptionsMenu(true);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MemoryUtils.fixInputMethodManagerLeak(this.s);
        if (this.F != null) {
            this.F.dismiss();
        }
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = false;
        switch (menuItem.getItemId()) {
            case 2131297041:
                if (this.d == null || !k()) {
                    l();
                } else {
                    b.a(this);
                }
                z = true;
                break;
            case 2131297048:
                if (!a(getActivity())) {
                    z = a(0);
                    break;
                } else {
                    z = c();
                    break;
                }
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        MenuItem findItem = menu.findItem(2131297029);
        MenuItem findItem2 = menu.findItem(2131296299);
        MenuItem findItem3 = menu.findItem(2131297031);
        MenuItem findItem4 = menu.findItem(2131297041);
        if (findItem4 != null) {
            com.android.contacts.skin.a.a(getActivity(), findItem4);
        }
        if (findItem != null) {
            findItem.setVisible(false);
        }
        if (findItem2 != null) {
            findItem2.setVisible(false);
        }
        if (findItem3 != null) {
            findItem3.setVisible(false);
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable("uri", this.u);
        bundle.putString("action", this.t);
        if (b()) {
            bundle.putParcelable("state", this.d);
        }
        bundle.putLong("photorequester", this.m);
        bundle.putParcelable("viewidgenerator", this.A);
        bundle.putString("currentphotofile", this.q);
        bundle.putLong("contactidforjoin", this.w);
        bundle.putBoolean("contactwritableforjoin", this.x);
        bundle.putLong("showJoinSuggestions", this.D);
        bundle.putBoolean("enabled", this.S);
        bundle.putBoolean("newLocalProfile", this.U);
        bundle.putBoolean("isUserProfile", this.V);
        bundle.putInt("status", this.e);
        bundle.putParcelable("updatedPhotos", this.r);
        bundle.putParcelable("oldsimcardcontact", this.g);
        bundle.putParcelable("DisplayNamePhotoData", this.H);
        bundle.putBoolean("PhotoRemovedFlag", this.I);
        bundle.putBoolean("FieldsRemovedFlag", this.L);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        getLoaderManager().initLoader(2, null, this.Y);
        super.onStart();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.C != null) {
            this.C.quit();
        }
        if (!getActivity().isChangingConfigurations() && this.e == 1 && !W) {
            if (a(getActivity())) {
                Log.d(f, "isNeedVerizonSave press HOME key or power key off");
                c();
            } else {
                a(1);
            }
        }
        if (this.j != null && !this.j.isRecycled()) {
            this.j.recycle();
            this.j = null;
        }
        if (this.P != null) {
            this.P.cancel();
        }
    }
}
