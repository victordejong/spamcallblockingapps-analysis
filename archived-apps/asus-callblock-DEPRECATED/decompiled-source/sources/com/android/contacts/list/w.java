package com.android.contacts.list;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.airview.f;
import com.android.contacts.interactions.PhoneNumberInteraction;
import com.android.contacts.k;
import com.android.contacts.list.ContactTileView;
import com.android.contacts.m;
import com.android.contacts.n;
import com.android.contacts.q;
import com.android.contacts.util.AsusAirViewUtils;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.Constants;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.SpeedDialList;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/w.class */
public class w extends BaseAdapter {
    private static final String e = w.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    Cursor f1891a = null;

    /* renamed from: b  reason: collision with root package name */
    public k f1892b;
    int c;
    public int d;
    private f f;
    private boolean g;
    private d h;
    private ContactTileView.a i;
    private Context j;
    private Resources k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private final int x;
    private String y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.contacts.list.w$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/w$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1893a = new int[d.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:28:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:34:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:30:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0071 -> B:26:0x0014). Please submit an issue!!! */
        static {
            try {
                f1893a[d.VIP_MEMBERS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1893a[d.STARRED_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1893a[d.ODM_PAD_FAVORITE_MEMBERS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1893a[d.GROUP_MEMBERS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1893a[d.STREQUENT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1893a[d.STREQUENT_PHONE_ONLY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1893a[d.FREQUENT_ONLY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/w$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f1894a;

        /* renamed from: b  reason: collision with root package name */
        public String f1895b;
        public String c;
        public String d;
        public String e;
        public Uri f;
        public Uri g;
        public String h;
        public Drawable i;
        public int j;
        public long k;
        public int l = -1;
        public ContentResolver m;
        public int n;
        public int o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/w$b.class */
    public final class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        ContactTileView f1896a;

        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Uri uri = this.f1896a.f1735a;
            String str = this.f1896a.e;
            if (str.equals("showContactDetail")) {
                ImplicitIntentsUtil.startActivityInApp(w.this.j, new Intent("android.intent.action.VIEW", uri));
                return;
            }
            if (this.f1896a.d()) {
                Intent intent = new Intent("android.intent.action.CALL", Uri.fromParts(Constants.SCHEME_TEL, str, null));
                intent.putExtra("com.android.phone.AsusDialName", str);
                CallUtil.startDialActivity(w.this.j, intent);
            } else {
                PhoneNumberInteraction.a((TransactionSafeActivity) w.this.j, uri, CallUtil.getCallOrigin(((Activity) w.this.j).getIntent()), str);
            }
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(5, w.this.j, "Contacts", "Group Detail", "Group Detail: press icon", null);
            if (w.this.j instanceof Activity) {
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(18, (Activity) w.this.j, "Make a Call", true);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/w$c.class */
    private final class c extends FrameLayout {

        /* renamed from: a  reason: collision with root package name */
        int f1898a;
        private int c;
        private boolean d;
        private int e;

        public c(Context context, int i, int i2, boolean z) {
            super(context);
            this.f1898a = i;
            this.c = w.a(w.this, this.f1898a);
            this.d = z;
            this.e = i2;
            setImportantForAccessibility(2);
        }

        private void a(int i) {
            int size = View.MeasureSpec.getSize(i);
            int childCount = getChildCount();
            if (childCount == 0) {
                setMeasuredDimension(size, 0);
                return;
            }
            int i2 = size / w.this.d;
            int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(2131100007) + i2;
            for (int i3 = 0; i3 < childCount; i3++) {
                getChildAt(i3).measure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), View.MeasureSpec.makeMeasureSpec(dimensionPixelSize, 1073741824));
            }
            setMeasuredDimension(size, dimensionPixelSize);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        final void a(a aVar, int i, boolean z) {
            ContactTileView contactTileView;
            int i2 = 0;
            if (getChildCount() <= i) {
                contactTileView = (ContactTileView) inflate(this.mContext, this.c, null);
                Resources resources = this.mContext.getResources();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.setMargins(resources.getDimensionPixelSize(2131100043), 0, resources.getDimensionPixelSize(2131100043), 0);
                contactTileView.setLayoutParams(layoutParams);
                contactTileView.setPhotoManager(w.this.f1892b);
                contactTileView.setListener(w.this.i);
                addView(contactTileView);
            } else {
                contactTileView = (ContactTileView) getChildAt(i);
            }
            if (!this.d || i != 0) {
                contactTileView.setColumnIndex(i, false);
            } else {
                contactTileView.setColumnIndex(i, true);
            }
            contactTileView.setContext(this.mContext);
            if (this.e == 1) {
                contactTileView.a(aVar);
                if (contactTileView.g != null) {
                    b bVar = new b();
                    bVar.f1896a = contactTileView;
                    contactTileView.g.setOnClickListener(bVar);
                }
            } else {
                contactTileView.b(aVar);
            }
            switch (this.f1898a) {
                case 0:
                    break;
                case 1:
                default:
                    return;
                case 2:
                    if (z) {
                        i2 = 8;
                    }
                    contactTileView.setHorizontalDividerVisibility(i2);
                    return;
                case 3:
                    if ((this.e == 2 || this.e == 3) && w.this.g && contactTileView.h != -1) {
                        if (aVar == null) {
                            Log.d("airview", "getBirthdayComing() Contact entry == null");
                            return;
                        }
                        String[] a2 = w.this.a(aVar.k);
                        if (a2 != null) {
                            String str = contactTileView.e;
                            com.android.contacts.airview.d dVar = new com.android.contacts.airview.d(str, Integer.parseInt(a2[0]), a2[1]);
                            if (contactTileView.c != null) {
                                contactTileView.c.setTag(str);
                                AsusAirViewUtils.setOnHoverListenerForView(contactTileView.c, w.this.f, dVar, 2);
                                break;
                            }
                        } else {
                            return;
                        }
                    }
                    break;
            }
            if (this.e != 0) {
                contactTileView.setPadding(0, 0, 0, 0);
            } else {
                contactTileView.setPadding(0, 0, i >= w.this.d - 1 ? 0 : w.this.x, z ? 0 : w.this.x);
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            switch (this.f1898a) {
                case 0:
                case 3:
                    if (this.e < 2) {
                        int childCount = getChildCount();
                        int i5 = 0;
                        for (int i6 = 0; i6 < childCount; i6++) {
                            View childAt = getChildAt(i6);
                            int measuredWidth = childAt.getMeasuredWidth();
                            childAt.layout(i5, 0, i5 + measuredWidth, childAt.getMeasuredHeight());
                            ((ImageView) childAt.findViewById(2131296587)).layout(0, 0, measuredWidth, measuredWidth);
                            ((RelativeLayout) childAt.findViewById(2131296577)).layout(0, measuredWidth, measuredWidth, childAt.getMeasuredHeight());
                            i5 += measuredWidth;
                        }
                        return;
                    }
                    int childCount2 = getChildCount();
                    int i7 = 0;
                    for (int i8 = 0; i8 < childCount2; i8++) {
                        View childAt2 = getChildAt(i8);
                        int measuredWidth2 = childAt2.getMeasuredWidth();
                        childAt2.layout(i7, 0, i7 + measuredWidth2, childAt2.getMeasuredHeight());
                        i7 += measuredWidth2;
                    }
                    return;
                case 1:
                case 2:
                default:
                    super.onLayout(z, i, i2, i3, i4);
                    return;
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected final void onMeasure(int i, int i2) {
            switch (this.f1898a) {
                case 0:
                case 3:
                    if (this.e == 0) {
                        int size = View.MeasureSpec.getSize(i);
                        int childCount = getChildCount();
                        if (childCount == 0) {
                            setMeasuredDimension(size, 0);
                            return;
                        }
                        int i3 = (w.this.d - 1) * w.this.x;
                        int i4 = (size - i3) / w.this.d;
                        int i5 = w.this.d;
                        int i6 = 0;
                        while (i6 < childCount) {
                            View childAt = getChildAt(i6);
                            int paddingRight = childAt.getPaddingRight();
                            childAt.measure(View.MeasureSpec.makeMeasureSpec((i6 < (size - (i5 * i4)) - i3 ? 1 : 0) + i4 + paddingRight, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getPaddingBottom() + i4, 1073741824));
                            i6++;
                        }
                        setMeasuredDimension(size, getChildAt(0).getPaddingBottom() + i4);
                        return;
                    } else if (this.e == 1) {
                        a(i);
                        return;
                    } else if (this.e == 2 || this.e == 3) {
                        a(i);
                        return;
                    }
                    break;
            }
            super.onMeasure(i, i2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/w$d.class */
    public enum d {
        STREQUENT,
        STREQUENT_PHONE_ONLY,
        STARRED_ONLY,
        FREQUENT_ONLY,
        GROUP_MEMBERS,
        VIP_MEMBERS,
        ODM_PAD_FAVORITE_MEMBERS
    }

    public w(Context context, ContactTileView.a aVar, int i, d dVar, String str) {
        this.g = false;
        this.i = aVar;
        this.j = context;
        this.k = context.getResources();
        this.d = dVar == d.FREQUENT_ONLY ? 1 : i;
        this.h = dVar;
        this.c = 0;
        this.x = this.j.getResources().getDimensionPixelSize(2131100004);
        this.y = str;
        this.g = AsusAirViewUtils.hasPenFeature(this.j);
        if (this.g) {
            this.f = new f(context);
        }
        if (this.h == d.GROUP_MEMBERS) {
            this.m = 0;
            this.n = 2;
            this.o = 1;
            this.p = 3;
            this.r = 4;
            this.s = 5;
            this.q = 6;
            this.t = 7;
            return;
        }
        this.m = 0;
        this.n = 4;
        this.o = 3;
        this.p = 1;
        this.q = 2;
        this.r = 5;
        this.s = 6;
        this.u = 5;
        this.v = 6;
        this.w = 7;
    }

    private int a(int i) {
        return i == 0 ? 0 : ((i - 1) / this.d) + 1;
    }

    static /* synthetic */ int a(w wVar, int i) {
        int i2;
        switch (i) {
            case 0:
                i2 = 2131427488;
                break;
            case 1:
            default:
                throw new IllegalArgumentException("Unrecognized viewType " + i);
            case 2:
                if (wVar.h != d.STREQUENT_PHONE_ONLY && wVar.h != d.ODM_PAD_FAVORITE_MEMBERS) {
                    i2 = 2131427483;
                    break;
                } else {
                    i2 = 2131427484;
                    break;
                }
                break;
            case 3:
                i2 = 2131427489;
                break;
        }
        return i2;
    }

    private a a(Cursor cursor, int i) {
        Drawable drawable;
        int i2 = 0;
        a aVar = null;
        if (cursor != null) {
            aVar = null;
            if (!cursor.isClosed()) {
                if (cursor.getCount() <= i) {
                    aVar = null;
                } else {
                    cursor.moveToPosition(i);
                    long j = cursor.getLong(this.m);
                    String string = cursor.getString(this.o);
                    String string2 = cursor.getString(this.n);
                    int columnIndex = cursor.getColumnIndex(SpeedDialList.Columns.ISSIM);
                    int i3 = columnIndex >= 0 ? cursor.getInt(columnIndex) : 0;
                    Log.d(e, "mSimIndex:" + columnIndex + " isSim:" + i3);
                    a aVar2 = new a();
                    String string3 = cursor.getString(this.p);
                    aVar2.f1894a = cursor.getLong(this.m);
                    if (string3 == null) {
                        string3 = this.k.getString(2131755855);
                    }
                    aVar2.f1895b = string3;
                    aVar2.c = cursor.getString(this.s);
                    aVar2.f = string != null ? Uri.parse(string) : null;
                    aVar2.h = string2;
                    aVar2.g = ContentUris.withAppendedId(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, string2), j);
                    aVar2.j = i3;
                    aVar2.l = com.android.contacts.c.b.a(this.j, String.valueOf(j));
                    com.android.contacts.c.b.a(7, j, aVar2.l);
                    if (cursor.getColumnIndex("has_phone_number") != -1) {
                        aVar2.n = cursor.getInt(cursor.getColumnIndex("has_phone_number"));
                    }
                    if (this.h == d.GROUP_MEMBERS) {
                        aVar2.n = cursor.getInt(this.t);
                    }
                    aVar2.o = cursor.getInt(this.q);
                    if (this.h == d.STREQUENT_PHONE_ONLY || this.h == d.VIP_MEMBERS || this.h == d.ODM_PAD_FAVORITE_MEMBERS) {
                        aVar2.d = (String) ContactsContract.CommonDataKinds.Phone.getTypeLabel(this.k, cursor.getInt(this.v), cursor.getString(this.w));
                        aVar2.e = cursor.getString(this.u);
                    } else {
                        if (!cursor.isNull(this.r)) {
                            i2 = cursor.getInt(this.r);
                            drawable = m.a(this.j, i2);
                        } else {
                            drawable = null;
                        }
                        aVar2.i = drawable;
                        String string4 = (this.s == 0 || cursor.isNull(this.s)) ? null : cursor.getString(this.s);
                        String str = string4;
                        if (string4 == null) {
                            str = string4;
                            if (i2 != 0) {
                                str = n.a(this.j, i2);
                            }
                        }
                        aVar2.c = str;
                    }
                    aVar2.k = j;
                    if (this.j != null) {
                        aVar2.m = this.j.getContentResolver();
                    } else {
                        aVar2.m = null;
                    }
                    aVar = aVar2;
                }
            }
        }
        return aVar;
    }

    public static void a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00ce A[Catch: all -> 0x0103, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0103, blocks: (B:4:0x004c, B:6:0x0056, B:16:0x00ce, B:30:0x00f9, B:32:0x0102), top: B:58:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] a(long r8) {
        /*
            Method dump skipped, instructions count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.w.a(long):java.lang.String[]");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: b */
    public ArrayList<a> getItem(int i) {
        ArrayList<a> arrayList = new ArrayList<>();
        int i2 = this.d * i;
        int i3 = i2;
        int i4 = i2;
        switch (AnonymousClass1.f1893a[this.h.ordinal()]) {
            case 1:
                for (int i5 = 0; i5 < this.d && i4 != this.l; i5++) {
                    arrayList.add(a(this.f1891a, i4));
                    i4++;
                }
                break;
            case 2:
            case 3:
            case 4:
                for (int i6 = 0; i6 < this.d; i6++) {
                    arrayList.add(a(this.f1891a, i3));
                    i3++;
                }
                break;
            case 5:
            case 6:
                if (i >= a(this.l)) {
                    int a2 = a(this.l);
                    arrayList.add(a(this.f1891a, ((i - a2) - 1) + this.l));
                    break;
                } else {
                    for (int i7 = 0; i7 < this.d && i2 != this.l; i7++) {
                        arrayList.add(a(this.f1891a, i2));
                        i2++;
                    }
                }
                break;
            case 7:
                arrayList.add(a(this.f1891a, i));
                break;
            default:
                throw new IllegalStateException("Unrecognized DisplayType " + this.h);
        }
        return arrayList;
    }

    public final void a(Cursor cursor) {
        int i;
        Cursor cursor2 = null;
        if (cursor != null) {
            cursor2 = null;
            if (!cursor.equals(this.f1891a)) {
                cursor2 = this.f1891a;
            }
        }
        this.f1891a = cursor;
        if (cursor2 != null) {
            cursor2.close();
        }
        if (cursor == null || cursor.isClosed()) {
            Log.d(e, "Unable to access cursor");
            i = -100;
        } else {
            switch (AnonymousClass1.f1893a[this.h.ordinal()]) {
                case 1:
                case 2:
                case 4:
                    i = -1;
                    break;
                case 3:
                    cursor.moveToPosition(-1);
                    while (cursor.moveToNext()) {
                        if (cursor.getInt(this.q) == 0) {
                            i = cursor.getPosition();
                            break;
                        }
                    }
                    i = cursor.getCount();
                    break;
                case 5:
                case 6:
                    cursor.moveToPosition(-1);
                    while (cursor.moveToNext()) {
                        if (cursor.getInt(this.q) == 0) {
                            i = cursor.getPosition();
                            break;
                        }
                    }
                    i = cursor.getCount();
                    break;
                case 7:
                    i = 0;
                    break;
                default:
                    throw new IllegalStateException("Unrecognized DisplayType " + this.h);
            }
        }
        this.l = i;
        switch (AnonymousClass1.f1893a[this.h.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                this.c = 0;
                break;
            case 5:
            case 6:
                this.c = this.f1891a.getCount() - this.l;
                break;
            case 7:
                this.c = this.f1891a.getCount();
                break;
            default:
                throw new IllegalArgumentException("Unrecognized DisplayType " + this.h);
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return (this.h == d.STREQUENT || this.h == d.STREQUENT_PHONE_ONLY || this.h == d.ODM_PAD_FAVORITE_MEMBERS) ? false : true;
    }

    public final long[] b() {
        long[] jArr;
        if (this.f1891a == null || !this.f1891a.moveToFirst()) {
            jArr = new long[0];
        } else {
            jArr = new long[this.f1891a.getCount()];
            int i = 0;
            do {
                jArr[i] = this.f1891a.getLong(0);
                i++;
            } while (this.f1891a.moveToNext());
        }
        return jArr;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int i = 0;
        int i2 = 0;
        if (this.f1891a != null) {
            if (this.f1891a.isClosed()) {
                i2 = 0;
            } else {
                switch (AnonymousClass1.f1893a[this.h.ordinal()]) {
                    case 1:
                    case 2:
                    case 4:
                        i2 = a(this.f1891a.getCount());
                        break;
                    case 3:
                        i2 = a(this.f1891a.getCount());
                        break;
                    case 5:
                    case 6:
                        int a2 = a(this.l);
                        if (this.c != 0) {
                            i = this.c + 1;
                        }
                        i2 = i + a2;
                        break;
                    case 7:
                        i2 = this.f1891a.getCount();
                        break;
                    default:
                        throw new IllegalArgumentException("Unrecognized DisplayType " + this.h);
                }
            }
        }
        return i2;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int i2 = 0;
        switch (AnonymousClass1.f1893a[this.h.ordinal()]) {
            case 1:
            case 2:
                i2 = 3;
                break;
            case 3:
            case 4:
                break;
            case 5:
                if (i >= a(this.l)) {
                    if (i != a(this.l)) {
                        i2 = 2;
                        break;
                    } else {
                        i2 = 1;
                        break;
                    }
                } else {
                    i2 = 0;
                    break;
                }
            case 6:
                if (i >= a(this.l)) {
                    if (i != a(this.l)) {
                        i2 = 2;
                        break;
                    } else {
                        i2 = 1;
                        break;
                    }
                } else {
                    i2 = 3;
                    break;
                }
            case 7:
                i2 = 2;
                break;
            default:
                throw new IllegalStateException("Unrecognized DisplayType " + this.h);
        }
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        int itemViewType = getItemViewType(i);
        if (itemViewType == 1) {
            view2 = view;
            if (view == null) {
                view2 = (this.h == d.STREQUENT_PHONE_ONLY || this.h == d.ODM_PAD_FAVORITE_MEMBERS) ? q.a(this.j, 2131755651) : q.a(this.j, 2131755652);
            }
        } else {
            c cVar = (c) view;
            ArrayList<a> b2 = getItem(i);
            c cVar2 = cVar;
            if (cVar == null) {
                switch (AnonymousClass1.f1893a[this.h.ordinal()]) {
                    case 1:
                        if (i != 0) {
                            cVar2 = new c(this.j, itemViewType, 3, false);
                            break;
                        } else {
                            cVar2 = new c(this.j, itemViewType, 3, true);
                            break;
                        }
                    case 2:
                    case 5:
                    default:
                        cVar2 = new c(this.j, itemViewType, 0, false);
                        break;
                    case 3:
                        cVar2 = new c(this.j, itemViewType, 1, false);
                        break;
                    case 4:
                        cVar2 = new c(this.j, itemViewType, 1, false);
                        break;
                    case 6:
                        if (!this.y.equals("pad_landscape_mode") && !this.y.equals("pad_portait_mode") && !this.y.equals("phone_mode")) {
                            if (i != 0) {
                                cVar2 = new c(this.j, itemViewType, 2, false);
                                break;
                            } else {
                                cVar2 = new c(this.j, itemViewType, 2, true);
                                break;
                            }
                        } else if (i != 0) {
                            cVar2 = new c(this.j, itemViewType, 3, false);
                            break;
                        } else {
                            cVar2 = new c(this.j, itemViewType, 3, true);
                            break;
                        }
                        break;
                }
            }
            boolean z = i == getCount() - 1;
            int i2 = cVar2.f1898a == 2 ? 1 : w.this.d;
            if (b2.size() > w.this.d) {
                int i3 = 0;
                while (true) {
                    view2 = cVar2;
                    if (i3 < b2.size()) {
                        cVar2.a(b2.get(i3), i3, false);
                        i3++;
                    }
                }
            } else {
                int i4 = 0;
                while (true) {
                    view2 = cVar2;
                    if (i4 < i2) {
                        cVar2.a(i4 < b2.size() ? b2.get(i4) : null, i4, z);
                        i4++;
                    }
                }
            }
        }
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 4;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return i != a(this.l);
    }
}
