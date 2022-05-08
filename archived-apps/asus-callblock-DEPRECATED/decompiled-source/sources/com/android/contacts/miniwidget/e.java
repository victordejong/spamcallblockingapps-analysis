package com.android.contacts.miniwidget;

import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/e.class */
public class e extends ContentObserver {

    /* renamed from: b  reason: collision with root package name */
    int[] f1982b;
    public Timer c;
    private Context f;
    private final String e = e.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public final int f1981a = 1;
    private boolean g = true;
    private Object h = new Object();
    public Handler d = new Handler() { // from class: com.android.contacts.miniwidget.e.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    synchronized (e.this.h) {
                        if (e.this.c != null) {
                            e.this.c.cancel();
                            e.this.c = null;
                        }
                    }
                    e.this.a(false);
                    return;
                default:
                    return;
            }
        }
    };

    public e(Handler handler, int[] iArr, Context context) {
        super(handler);
        this.f1982b = iArr;
        this.f = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        Log.d(this.e, "updateIfNeeded: needUpdate = " + this.g + " force = " + z);
        if ((z || this.g) && !NecessaryPermissionDenyActivity.startPermissionActivity(this.f)) {
            Intent intent = new Intent(this.f, CheckWidgetUpdateService.class);
            intent.putExtra(CheckWidgetUpdateService.f1923a, this.f1982b);
            this.f.startService(intent);
            this.g = false;
            synchronized (this.h) {
                this.c = new Timer();
                this.c.schedule(new TimerTask() { // from class: com.android.contacts.miniwidget.e.2
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        if (e.this.c != null) {
                            e.c(e.this);
                            Log.d(e.this.e, "mTimerTask sendMessage");
                            try {
                                Thread.sleep(1000L);
                            } catch (Exception e) {
                                Log.e(e.this.e, e.toString());
                            }
                        }
                    }
                }, 3000L, 1L);
            }
        }
    }

    static /* synthetic */ void c(e eVar) {
        eVar.d.sendMessage(Message.obtain(eVar.d, 1));
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        Log.d(this.e, "MiniWidgetContentObserver :onChange ");
        if (this.c == null) {
            a(true);
        } else {
            this.g = true;
        }
    }
}
