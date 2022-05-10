package p012b.p031d.p032b;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import p012b.p042i.p043h.C0849d;
import p012b.p042i.p044i.C0869a;
/* renamed from: b.d.b.b */
/* loaded from: classes-dex2jar.jar:b/d/b/b.class */
public final class C0760b {

    /* renamed from: a */
    public final Intent f3620a;

    /* renamed from: b */
    public final Bundle f3621b;

    /* renamed from: b.d.b.b$a */
    /* loaded from: classes-dex2jar.jar:b/d/b/b$a.class */
    public static final class C0761a {

        /* renamed from: a */
        public final Intent f3622a;

        /* renamed from: b */
        public ArrayList<Bundle> f3623b;

        /* renamed from: c */
        public Bundle f3624c;

        /* renamed from: d */
        public ArrayList<Bundle> f3625d;

        /* renamed from: e */
        public boolean f3626e;

        public C0761a() {
            this(null);
        }

        public C0761a(C0762c cVar) {
            this.f3622a = new Intent("android.intent.action.VIEW");
            this.f3623b = null;
            this.f3624c = null;
            this.f3625d = null;
            this.f3626e = true;
            if (cVar == null) {
                Bundle bundle = new Bundle();
                if (cVar == null) {
                    C0849d.m35782a(bundle, "android.support.customtabs.extra.SESSION", null);
                    this.f3622a.putExtras(bundle);
                    return;
                }
                cVar.m36131a();
                throw null;
            }
            cVar.m36130b();
            throw null;
        }

        /* renamed from: a */
        public C0760b m36132a() {
            ArrayList<Bundle> arrayList = this.f3623b;
            if (arrayList != null) {
                this.f3622a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f3625d;
            if (arrayList2 != null) {
                this.f3622a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f3622a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f3626e);
            return new C0760b(this.f3622a, this.f3624c);
        }
    }

    public C0760b(Intent intent, Bundle bundle) {
        this.f3620a = intent;
        this.f3621b = bundle;
    }

    /* renamed from: a */
    public void m36133a(Context context, Uri uri) {
        this.f3620a.setData(uri);
        C0869a.m35691a(context, this.f3620a, this.f3621b);
    }
}
