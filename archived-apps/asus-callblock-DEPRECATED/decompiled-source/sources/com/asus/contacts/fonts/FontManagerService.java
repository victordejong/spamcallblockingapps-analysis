package com.asus.contacts.fonts;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.asus.contacts.fonts.d;
import com.asus.contacts.fonts.f;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/FontManagerService.class */
public class FontManagerService extends Service implements d.a {

    /* renamed from: a  reason: collision with root package name */
    private d f2632a;
    private String c;

    /* renamed from: b  reason: collision with root package name */
    private final RemoteCallbackList<g> f2633b = new RemoteCallbackList<>();
    private final f.a d = new f.a() { // from class: com.asus.contacts.fonts.FontManagerService.1
        @Override // com.asus.contacts.fonts.f
        public final String a(int i) {
            return FontManagerService.this.f2632a.a(i);
        }

        @Override // com.asus.contacts.fonts.f
        public final void a() {
            FontManagerService.this.f2632a.d();
        }

        @Override // com.asus.contacts.fonts.f
        public final void a(g gVar) {
            if (gVar != null) {
                FontManagerService.this.f2633b.register(gVar);
            }
        }

        @Override // com.asus.contacts.fonts.f
        public final void a(List<Font> list) {
            FontManagerService.this.f2632a.a(list);
        }

        @Override // com.asus.contacts.fonts.f
        public final boolean a(int i, String str) {
            return str == null ? false : str.equals(FontManagerService.this.f2632a.a(i));
        }

        @Override // com.asus.contacts.fonts.f
        public final Font b(int i) {
            return FontManagerService.this.f2632a.h.get(i);
        }

        @Override // com.asus.contacts.fonts.f
        public final void b() {
            FontManagerService.this.f2632a.c();
        }

        @Override // com.asus.contacts.fonts.f
        public final void b(g gVar) {
            if (gVar != null) {
                FontManagerService.this.f2633b.unregister(gVar);
            }
        }

        @Override // com.asus.contacts.fonts.f
        public final boolean c() {
            return FontManagerService.this.f2632a.m;
        }

        @Override // com.asus.contacts.fonts.f
        public final boolean d() {
            return FontManagerService.this.f2632a.k;
        }

        @Override // com.asus.contacts.fonts.f
        public final void e() {
            FontManagerService.this.f2632a.l = true;
        }

        @Override // com.asus.contacts.fonts.f
        public final List<Font> f() {
            return FontManagerService.this.f2632a.h;
        }

        @Override // com.asus.contacts.fonts.f
        public final void g() {
            FontManagerService.this.stopSelf();
        }
    };

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0035 -> B:6:0x0027). Please submit an issue!!! */
    @Override // com.asus.contacts.fonts.d.a
    public final void a() {
        Log.d("FontManagerService", "startLoading()");
        int beginBroadcast = this.f2633b.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.f2633b.getBroadcastItem(i).b();
            } catch (RemoteException e) {
            }
        }
        this.f2633b.finishBroadcast();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0036 -> B:6:0x0028). Please submit an issue!!! */
    @Override // com.asus.contacts.fonts.d.a
    public final void a(String... strArr) {
        Log.v("FontManagerService", "onProgressUpdate()");
        int beginBroadcast = this.f2633b.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.f2633b.getBroadcastItem(i).a(strArr);
            } catch (RemoteException e) {
            }
        }
        this.f2633b.finishBroadcast();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0035 -> B:6:0x0027). Please submit an issue!!! */
    @Override // com.asus.contacts.fonts.d.a
    public final void b() {
        Log.d("FontManagerService", "finishLoading()");
        int beginBroadcast = this.f2633b.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.f2633b.getBroadcastItem(i).a();
            } catch (RemoteException e) {
            }
        }
        this.f2633b.finishBroadcast();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.d;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.c != null && !this.c.equals(configuration.locale)) {
            d dVar = this.f2632a;
            if (d.f2644a != null) {
                dVar.j = dVar.g.getString(2131756224);
            }
            dVar.a();
            dVar.h.addAll(dVar.b());
            synchronized (dVar.i) {
                if (!dVar.i.isEmpty()) {
                    Iterator<d.a> it = dVar.i.iterator();
                    while (it.hasNext()) {
                        it.next().b();
                    }
                }
            }
        }
        this.c = configuration.locale.toString();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.d("FontManagerService", "FontManagerService onCreate");
        this.c = getResources().getConfiguration().locale.toString();
        this.f2632a = new d(this);
        d dVar = this.f2632a;
        synchronized (dVar.i) {
            dVar.i.add(this);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f2632a.c();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Bundle extras;
        String[] stringArray;
        if (!(intent == null || !"com.asus.launcher.settings.fonts.action_remove_apps".equals(intent.getAction()) || (extras = intent.getExtras()) == null || (stringArray = extras.getStringArray("package_names")) == null)) {
            d dVar = this.f2632a;
            Iterator<Font> it = dVar.h.iterator();
            while (it.hasNext()) {
                Font next = it.next();
                for (String str : stringArray) {
                    String str2 = next.f2630a;
                    if (!TextUtils.isEmpty(str2) && str2.equals(str)) {
                        it.remove();
                    }
                }
            }
            dVar.a(dVar.h);
        }
        return super.onStartCommand(intent, i, i2);
    }
}
