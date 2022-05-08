package com.android.contacts.dialpad;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/a.class */
public abstract class a extends Handler {

    /* renamed from: a  reason: collision with root package name */
    final WeakReference<ContentResolver> f1004a;

    /* renamed from: b  reason: collision with root package name */
    private HandlerThread f1005b;
    private b c;

    /* renamed from: com.android.contacts.dialpad.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/a$a.class */
    protected static final class C0032a {

        /* renamed from: a  reason: collision with root package name */
        public Uri f1006a;

        /* renamed from: b  reason: collision with root package name */
        public Handler f1007b;
        public String[] c;
        public String d;
        public String[] e;
        public String f;
        public Object g;
        public Object h;
        public ContentValues i;

        protected C0032a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/a$b.class */
    protected final class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        Object f1008a = new Object();

        /* renamed from: b  reason: collision with root package name */
        String f1009b = " ";

        public b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            ContentResolver contentResolver = a.this.f1004a.get();
            if (contentResolver != null) {
                C0032a aVar = (C0032a) message.obj;
                int i = message.what;
                Cursor cursor = null;
                switch (message.arg1) {
                    case 1:
                        try {
                            cursor = contentResolver.query(aVar.f1006a, aVar.c, aVar.d, aVar.e, aVar.f);
                        } catch (Exception e) {
                            Log.w("AsusAsyncQuery", "Exception thrown during handling EVENT_ARG_QUERY", e);
                            cursor = null;
                        }
                        aVar.g = cursor;
                        break;
                    case 2:
                        aVar.g = contentResolver.insert(aVar.f1006a, aVar.i);
                        break;
                    case 3:
                        aVar.g = Integer.valueOf(contentResolver.update(aVar.f1006a, aVar.i, aVar.d, aVar.e));
                        break;
                    case 4:
                        aVar.g = Integer.valueOf(contentResolver.delete(aVar.f1006a, aVar.d, aVar.e));
                        break;
                }
                if (this.f1009b.equals(aVar.f1006a.getLastPathSegment())) {
                    Message obtainMessage = aVar.f1007b.obtainMessage(i);
                    obtainMessage.obj = aVar;
                    obtainMessage.arg1 = message.arg1;
                    obtainMessage.sendToTarget();
                } else if (cursor != null) {
                    cursor.close();
                }
            }
        }
    }

    public a(ContentResolver contentResolver) {
        this.f1004a = new WeakReference<>(contentResolver);
        synchronized (a.class) {
            try {
                if (this.f1005b == null) {
                    this.f1005b = new HandlerThread("AsusAsyncQueryWorker");
                    this.f1005b.start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.c = new b(this.f1005b.getLooper());
    }

    public final void a() {
        synchronized (a.class) {
            try {
                if (this.f1005b != null) {
                    this.f1005b.quit();
                    this.f1005b.interrupt();
                    this.f1005b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(int i) {
        this.c.removeMessages(i);
    }

    protected void a(int i, Cursor cursor) {
    }

    public final void a(int i, Uri uri, String[] strArr, String str, String str2) {
        Message obtainMessage = this.c.obtainMessage(i);
        obtainMessage.arg1 = 1;
        C0032a aVar = new C0032a();
        aVar.f1007b = this;
        aVar.f1006a = uri;
        aVar.c = strArr;
        aVar.d = str;
        aVar.e = null;
        aVar.f = str2;
        aVar.h = null;
        obtainMessage.obj = aVar;
        String lastPathSegment = uri.getLastPathSegment();
        b bVar = this.c;
        synchronized (bVar.f1008a) {
            bVar.f1009b = lastPathSegment;
        }
        this.c.sendMessageDelayed(obtainMessage, 200L);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        C0032a aVar = (C0032a) message.obj;
        int i = message.what;
        switch (message.arg1) {
            case 1:
                a(i, (Cursor) aVar.g);
                return;
            case 2:
            default:
                return;
            case 3:
                ((Integer) aVar.g).intValue();
                return;
            case 4:
                ((Integer) aVar.g).intValue();
                return;
        }
    }
}
