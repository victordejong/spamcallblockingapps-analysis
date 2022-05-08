package com.asus.contacts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public AbstractC0070b f2580a = null;

    /* renamed from: b  reason: collision with root package name */
    private Context f2581b;
    private a c;
    private IntentFilter d;

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/b$a.class */
    final class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String stringExtra;
            if (intent.getAction().equals("android.intent.action.CLOSE_SYSTEM_DIALOGS") && (stringExtra = intent.getStringExtra("reason")) != null && b.this.f2580a != null) {
                if (stringExtra.equals("homekey")) {
                    b.this.f2580a.onHomeBtnPress();
                } else if (stringExtra.equals("recentapps")) {
                    b.this.f2580a.onRecentAppBtnPress();
                }
            }
        }
    }

    /* renamed from: com.asus.contacts.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/contacts/b$b.class */
    public interface AbstractC0070b {
        void onHomeBtnPress();

        void onRecentAppBtnPress();
    }

    public b(Context context) {
        this.f2581b = null;
        this.c = null;
        this.d = null;
        this.f2581b = context;
        this.c = new a();
        this.d = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");
    }

    public final void a() {
        this.f2581b.registerReceiver(this.c, this.d);
    }

    public final void b() {
        this.f2581b.unregisterReceiver(this.c);
    }
}
