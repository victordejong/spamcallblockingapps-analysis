package com.vladlee.easyblacklist;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.widget.ListView;
import com.vladlee.easyblacklist.C3318by;
/* renamed from: com.vladlee.easyblacklist.be */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/be.class */
public final class DialogInterface$OnClickListenerC3293be implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private ListView f19359a;

    /* renamed from: b */
    private int f19360b;

    /* renamed from: c */
    private Context f19361c;

    public DialogInterface$OnClickListenerC3293be(ListView listView, int i, Context context) {
        this.f19360b = i;
        this.f19359a = listView;
        this.f19361c = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C3281av avVar = (C3281av) this.f19359a.getAdapter();
        int count = avVar.getCount();
        int i2 = this.f19360b;
        if (count > i2) {
            Cursor cursor = (Cursor) avVar.getItem(i2);
            int i3 = cursor.getInt(cursor.getColumnIndex("_id"));
            String string = cursor.getString(cursor.getColumnIndex("phone"));
            int i4 = cursor.getInt(cursor.getColumnIndex("type"));
            boolean z = !C3307bs.m241a(string) && !C3318by.m179d(this.f19361c, string);
            boolean z2 = false;
            if (!C3307bs.m241a(string)) {
                z2 = false;
                if (!C3318by.m182c(C3318by.C3323e.f19429a, this.f19361c, string)) {
                    z2 = true;
                }
            }
            if (i4 != 0) {
                boolean b = C3307bs.m237b(string);
                if (z && z2) {
                    switch (i) {
                        case 0:
                            C3318by.m201a(this.f19361c, string);
                            return;
                        case 1:
                            C3318by.m174f(this.f19361c, i3);
                            return;
                        case 2:
                            ((ClipboardManager) this.f19361c.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", cursor.getString(cursor.getColumnIndex("message"))));
                            return;
                        case 3:
                            Intent intent = new Intent(this.f19361c, SmsChatActivity.class);
                            intent.putExtra(C3356db.f19472a, string);
                            this.f19361c.startActivity(intent);
                            return;
                        case 4:
                            if (b) {
                                this.f19361c.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:".concat(String.valueOf(string)))));
                                return;
                            }
                            C3392ee.m74b(this.f19361c, "pref_hide_blocked_messages", !C3392ee.m80a(this.f19361c, "pref_hide_blocked_messages", true));
                            this.f19359a.invalidateViews();
                            return;
                        case 5:
                            if (b) {
                                C3392ee.m74b(this.f19361c, "pref_hide_blocked_messages", !C3392ee.m80a(this.f19361c, "pref_hide_blocked_messages", true));
                                this.f19359a.invalidateViews();
                                return;
                            }
                            C3318by.m194a(C3318by.C3323e.f19429a, this.f19361c, string);
                            return;
                        case 6:
                            C3318by.m194a(C3318by.C3323e.f19429a, this.f19361c, string);
                            return;
                        default:
                            return;
                    }
                } else if (i == 0) {
                    C3318by.m174f(this.f19361c, i3);
                } else if (i == 1) {
                    ((ClipboardManager) this.f19361c.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", cursor.getString(cursor.getColumnIndex("message"))));
                } else if (i == 2) {
                    Intent intent2 = new Intent(this.f19361c, SmsChatActivity.class);
                    intent2.putExtra(C3356db.f19472a, string);
                    this.f19361c.startActivity(intent2);
                } else if (i != 3) {
                    if (i == 4) {
                        C3392ee.m74b(this.f19361c, "pref_hide_blocked_messages", !C3392ee.m80a(this.f19361c, "pref_hide_blocked_messages", true));
                        this.f19359a.invalidateViews();
                    }
                } else if (b) {
                    this.f19361c.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:".concat(String.valueOf(string)))));
                } else {
                    C3392ee.m74b(this.f19361c, "pref_hide_blocked_messages", !C3392ee.m80a(this.f19361c, "pref_hide_blocked_messages", true));
                    this.f19359a.invalidateViews();
                }
            } else if (!z || !z2) {
                if (i == 0) {
                    C3318by.m174f(this.f19361c, i3);
                } else if (i == 1) {
                    this.f19361c.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:".concat(String.valueOf(string)))));
                }
            } else if (i == 0) {
                C3318by.m201a(this.f19361c, string);
            } else if (i == 1) {
                C3318by.m174f(this.f19361c, i3);
            } else if (i == 2) {
                this.f19361c.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:".concat(String.valueOf(string)))));
            } else if (i == 3) {
                C3318by.m194a(C3318by.C3323e.f19429a, this.f19361c, string);
            }
        }
    }
}
