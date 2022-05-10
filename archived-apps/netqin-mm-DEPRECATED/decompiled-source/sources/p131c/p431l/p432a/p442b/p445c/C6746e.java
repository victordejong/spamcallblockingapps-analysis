package p131c.p431l.p432a.p442b.p445c;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import p131c.p431l.p432a.p442b.p448f.p450b.C6766a;
/* renamed from: c.l.a.b.c.e */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/c/e.class */
public class C6746e {

    /* renamed from: a */
    public HashMap<String, SoftReference<String>> f20776a = new HashMap<>();

    /* renamed from: b */
    public C6727b f20777b;

    /* renamed from: c.l.a.b.c.e$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/e$a.class */
    public class HandlerC6747a extends Handler {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6749c f20778a;

        /* renamed from: b */
        public final /* synthetic */ String f20779b;

        public HandlerC6747a(C6746e eVar, AbstractC6749c cVar, String str) {
            this.f20778a = cVar;
            this.f20779b = str;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            this.f20778a.mo19844a((String) message.obj, this.f20779b);
        }
    }

    /* renamed from: c.l.a.b.c.e$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/e$b.class */
    public class C6748b extends Thread {

        /* renamed from: a */
        public final /* synthetic */ String f20780a;

        /* renamed from: b */
        public final /* synthetic */ Handler f20781b;

        public C6748b(String str, Handler handler) {
            this.f20780a = str;
            this.f20781b = handler;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String a = C6746e.this.m19905a(this.f20780a);
            C6746e.this.f20776a.put(this.f20780a, new SoftReference(a));
            this.f20781b.sendMessage(this.f20781b.obtainMessage(0, a));
        }
    }

    /* renamed from: c.l.a.b.c.e$c */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/e$c.class */
    public interface AbstractC6749c {
        /* renamed from: a */
        void mo19844a(String str, String str2);
    }

    public C6746e(Context context) {
        this.f20777b = C6727b.m19968a(context);
    }

    /* renamed from: a */
    public final String m19905a(String str) {
        try {
            return this.f20777b.m19955b(str);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: a */
    public String m19904a(String str, AbstractC6749c cVar) {
        String str2;
        if (this.f20776a.containsKey(str) && (str2 = this.f20776a.get(str).get()) != null) {
            return str2;
        }
        HandlerC6747a aVar = new HandlerC6747a(this, cVar, str);
        if (C6766a.f20867d) {
            return null;
        }
        new C6748b(str, aVar).start();
        return null;
    }
}
