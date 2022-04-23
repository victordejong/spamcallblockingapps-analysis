package androidx.browser.customtabs;

import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.C0608g;
import java.util.ArrayList;
/* renamed from: androidx.browser.customtabs.b */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b.class */
public final class C0547b {

    /* renamed from: a */
    public final Intent f2524a;

    /* renamed from: b */
    public final Bundle f2525b;

    /* renamed from: androidx.browser.customtabs.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b$a.class */
    public static final class C0548a {

        /* renamed from: a */
        private final Intent f2526a;

        /* renamed from: b */
        private ArrayList<Bundle> f2527b;

        /* renamed from: c */
        private Bundle f2528c;

        /* renamed from: d */
        private ArrayList<Bundle> f2529d;

        /* renamed from: e */
        private boolean f2530e;

        public C0548a() {
            this((byte) 0);
        }

        private C0548a(byte b) {
            this.f2526a = new Intent("android.intent.action.VIEW");
            this.f2527b = null;
            this.f2528c = null;
            this.f2529d = null;
            this.f2530e = true;
            Bundle bundle = new Bundle();
            C0608g.m8744a(bundle, "android.support.customtabs.extra.SESSION", null);
            this.f2526a.putExtras(bundle);
        }

        /* renamed from: a */
        public final C0547b m8878a() {
            ArrayList<Bundle> arrayList = this.f2527b;
            if (arrayList != null) {
                this.f2526a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f2529d;
            if (arrayList2 != null) {
                this.f2526a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f2526a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f2530e);
            return new C0547b(this.f2526a, this.f2528c);
        }
    }

    C0547b(Intent intent, Bundle bundle) {
        this.f2524a = intent;
        this.f2525b = bundle;
    }
}
