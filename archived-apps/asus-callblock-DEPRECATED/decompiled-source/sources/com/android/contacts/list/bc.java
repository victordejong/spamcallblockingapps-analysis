package com.android.contacts.list;

import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.support.v4.view.p;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.c.b;
import com.android.contacts.list.ContactListItemView;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.contacts.widget.c;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/bc.class */
public class bc extends o {
    static final String e = bc.class.getSimpleName();
    private boolean d;
    protected final CharSequence f;
    ContactListItemView.a g;
    boolean h;
    long i;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/bc$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f1795a;

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f1796b;

        static {
            f1795a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, CoverUtils.CoverData.COVER_URI, ContactDetailCallogActivity.EXTRA_CONTACT_ID, "lookup", "photo_id", "display_name", SpeedDialList.Columns.ISSIM} : new String[]{"_id", CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, CoverUtils.CoverData.COVER_URI, ContactDetailCallogActivity.EXTRA_CONTACT_ID, "lookup", "photo_id", "display_name"};
            f1796b = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, CoverUtils.CoverData.COVER_URI, ContactDetailCallogActivity.EXTRA_CONTACT_ID, "lookup", "photo_id", "display_name_alt", SpeedDialList.Columns.ISSIM} : new String[]{"_id", CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, CoverUtils.CoverData.COVER_URI, ContactDetailCallogActivity.EXTRA_CONTACT_ID, "lookup", "photo_id", "display_name_alt"};
        }
    }

    public bc(Context context) {
        super(context);
        this.d = false;
        this.i = v.m;
        k(2131756081);
        this.f = context.getText(17039374);
        this.d = false;
    }

    public bc(Context context, boolean z, long j) {
        super(context);
        this.d = false;
        this.i = v.m;
        k(2131756081);
        this.f = context.getText(17039374);
        this.d = z;
        this.i = j;
    }

    private String a(long j) {
        Cursor cursor;
        String str;
        String str2 = "mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = 'vnd.android.cursor.item/group_membership') AND (data2 ='" + j + "')";
        StringBuilder sb = new StringBuilder();
        sb.append(" ");
        try {
            cursor = this.U.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"_id", "raw_contact_id"}, str2, null, null);
            if (cursor != null) {
                try {
                    sb.append("(");
                    while (cursor.moveToNext()) {
                        sb.append(String.valueOf(cursor.getLong(1)) + ", ");
                    }
                    sb.append(" -1 )");
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    str = sb.toString();
                    return str;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            str = sb.toString();
        } catch (Throwable th2) {
            cursor = null;
        }
        return str;
    }

    public static Uri b(Cursor cursor) {
        Uri uri;
        if (cursor != null) {
            uri = ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, cursor.getLong(0));
        } else {
            Log.w(e, "Cursor was null in getDataUri() call. Returning null instead.");
            uri = null;
        }
        return uri;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        ContactListItemView contactListItemView = new ContactListItemView(context, (AttributeSet) null);
        contactListItemView.setUnknownNameText(this.f);
        contactListItemView.setQuickContactEnabled(this.q);
        contactListItemView.setPhotoPosition(this.g);
        return contactListItemView;
    }

    @Override // com.android.contacts.list.o
    public final void a(CursorLoader cursorLoader, long j) {
        String str;
        Uri.Builder builder;
        if (j != 0) {
            Log.w(e, "PhoneNumberListAdapter is not ready for non-default directory ID (directoryId: " + j + ")");
        }
        if (this.w) {
            Uri.Builder buildUpon = (this.h ? ContactsContract.CommonDataKinds.Callable.CONTENT_FILTER_URI : ContactsContract.CommonDataKinds.Phone.CONTENT_FILTER_URI).buildUpon();
            String str2 = this.u;
            if (TextUtils.isEmpty(str2)) {
                buildUpon.appendPath(BuildConfig.FLAVOR);
                str = BuildConfig.FLAVOR;
            } else {
                buildUpon.appendPath(str2);
                str = BuildConfig.FLAVOR + "display_name LIKE '" + AccountFilterUtil.handleSqliteEscapeForOrderString(str2) + "%' DESC, display_name_alt LIKE '" + AccountFilterUtil.handleSqliteEscapeForOrderString(str2) + "%' DESC, times_contacted DESC, phonebook_bucket, ";
            }
            buildUpon.appendQueryParameter("directory", String.valueOf(j));
            builder = buildUpon;
        } else {
            Uri.Builder appendQueryParameter = (this.h ? ContactsContract.CommonDataKinds.Callable.CONTENT_URI : ContactsContract.CommonDataKinds.Phone.CONTENT_URI).buildUpon().appendQueryParameter("directory", "0");
            if (this.X) {
                appendQueryParameter.appendQueryParameter("android.provider.extra.ADDRESS_BOOK_INDEX", "true");
            }
            ContactListFilter contactListFilter = this.B;
            str = BuildConfig.FLAVOR;
            builder = appendQueryParameter;
            if (contactListFilter != null) {
                str = BuildConfig.FLAVOR;
                builder = appendQueryParameter;
                if (j == 0) {
                    StringBuilder sb = new StringBuilder();
                    ArrayList arrayList = new ArrayList();
                    switch (contactListFilter.f1712a) {
                        case -5:
                        case p.POSITION_NONE /* -2 */:
                        case p.POSITION_UNCHANGED /* -1 */:
                            break;
                        case -4:
                        default:
                            Log.w(e, "Unsupported filter type came (type: " + contactListFilter.f1712a + ", toString: " + contactListFilter + ") showing all contacts.");
                            break;
                        case -3:
                            sb.append("in_visible_group=1");
                            sb.append(" AND has_phone_number=1");
                            break;
                        case 0:
                            contactListFilter.a(appendQueryParameter);
                            break;
                    }
                    cursorLoader.setSelection(sb.toString());
                    cursorLoader.setSelectionArgs((String[]) arrayList.toArray(new String[0]));
                    str = BuildConfig.FLAVOR;
                    builder = appendQueryParameter;
                }
            }
        }
        builder.appendQueryParameter("remove_duplicate_entries", "true");
        cursorLoader.setUri(builder.build());
        String selection = cursorLoader.getSelection();
        String str3 = selection;
        if (this.i != v.m) {
            String a2 = a(this.i);
            str3 = selection;
            if (!a2.equals(BuildConfig.FLAVOR)) {
                str3 = selection != null ? selection + "raw_contact_id IN " + a2 : "raw_contact_id IN " + a2;
            }
        }
        String str4 = str3;
        if (this.d) {
            str4 = str3 != null ? str3 + "AND data1 NOT LIKE '%;%' AND data1 NOT LIKE '%,%'" : " data1 NOT LIKE '%;%' AND data1 NOT LIKE '%,%'";
        }
        cursorLoader.setSelection(str4);
        if (this.n == 1) {
            cursorLoader.setProjection(a.f1795a);
        } else {
            cursorLoader.setProjection(a.f1796b);
        }
        cursorLoader.setSortOrder((!PhoneCapabilityTester.IsAsusDevice() || !Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) ? this.o == 1 ? str + "sort_key" : str + "sort_key_alt" : str + "display_name");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public void a(View view, int i, Cursor cursor, int i2) {
        ContactListItemView contactListItemView = (ContactListItemView) view;
        contactListItemView.setHighlightedPrefix(this.w ? this.v : null);
        contactListItemView.setTag(Integer.valueOf(i2 % 2));
        contactListItemView.setPhotoPosition(ContactListItemView.a.LEFT);
        cursor.moveToPosition(i2);
        long j = cursor.getLong(4);
        boolean z = true;
        if (cursor.moveToPrevious()) {
            z = true;
            if (!cursor.isBeforeFirst()) {
                z = true;
                if (j == cursor.getLong(4)) {
                    z = false;
                }
            }
        }
        cursor.moveToPosition(i2);
        boolean z2 = false;
        if (cursor.moveToNext()) {
            z2 = false;
            if (!cursor.isAfterLast()) {
                z2 = false;
                if (j == cursor.getLong(4)) {
                    z2 = true;
                }
            }
        }
        cursor.moveToPosition(i2);
        a(contactListItemView, i2, z2);
        if (z) {
            contactListItemView.a(cursor, 7);
            if (this.q) {
                a(contactListItemView, i, cursor, 6, -1, 4, 5, 7);
            } else {
                b(contactListItemView, cursor);
            }
            if (!PhoneCapabilityTester.IsAsusDevice() && !PhoneCapabilityTester.IsUnbundled()) {
                a(contactListItemView, this.q, j);
            }
            int a2 = b.a(this.U, String.valueOf(cursor.getLong(4)));
            if (a2 >= 0) {
                Log.d(e, "minday of contactId " + cursor.getLong(4) + " is " + a2);
                contactListItemView.a(a2);
            } else {
                contactListItemView.setBirthdayIcon(null);
            }
            b.a(4, cursor.getLong(4), a2);
        } else {
            if (contactListItemView.c != null) {
                contactListItemView.removeView(contactListItemView.c);
                contactListItemView.c = null;
            }
            contactListItemView.a(true, false);
        }
        a(contactListItemView, cursor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(ContactListItemView contactListItemView, int i, boolean z) {
        String str = null;
        boolean z2 = true;
        if (this.X) {
            c.a o = o(i);
            if (o.f2210b) {
                str = o.d;
            }
            contactListItemView.setSectionHeader(str);
            contactListItemView.setDividerVisible(!o.c && !z);
            return;
        }
        contactListItemView.setSectionHeader(null);
        if (z) {
            z2 = false;
        }
        contactListItemView.setDividerVisible(z2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(ContactListItemView contactListItemView, Cursor cursor) {
        CharSequence charSequence = null;
        if (!cursor.isNull(1)) {
            charSequence = ContactsContract.CommonDataKinds.Phone.getTypeLabel(this.f407a.getResources(), cursor.getInt(1), cursor.getString(2));
        }
        contactListItemView.setLabel(charSequence);
        contactListItemView.a(cursor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(ContactListItemView contactListItemView, Cursor cursor) {
        long j = !cursor.isNull(6) ? cursor.getLong(6) : 0L;
        boolean isNull = cursor.getColumnIndex(SpeedDialList.Columns.ISSIM) >= 0 ? cursor.isNull(cursor.getColumnIndex(SpeedDialList.Columns.ISSIM)) : true;
        if (j == 0 && !isNull) {
            int i = cursor.getInt(cursor.getColumnIndex(SpeedDialList.Columns.ISSIM));
            if (i == 1) {
                j = -1;
            } else if (i == 2) {
                j = -2;
            }
        }
        contactListItemView.c().setTag(contactListItemView.getTag());
        this.t.a(contactListItemView.c(), j, false, j == 0 ? a(cursor, 7, 5) : null);
    }

    public final Uri j(int i) {
        return b((Cursor) getItem(i));
    }

    public final String m(int i) {
        String str;
        Cursor cursor = (Cursor) getItem(i);
        if (cursor != null) {
            str = cursor.getString(7);
        } else {
            Log.w(e, "Cursor was null in getDisplayname() call. Returning null instead.");
            str = null;
        }
        return str;
    }
}
