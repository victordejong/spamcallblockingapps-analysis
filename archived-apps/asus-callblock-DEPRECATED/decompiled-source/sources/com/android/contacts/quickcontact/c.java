package com.android.contacts.quickcontact;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.calllog.t;
import com.android.contacts.model.a.a;
import com.android.contacts.model.a.b;
import com.android.contacts.model.a.g;
import com.android.contacts.model.a.k;
import com.android.contacts.model.a.n;
import com.android.contacts.model.a.p;
import com.android.contacts.model.a.q;
import com.android.contacts.model.account.a;
import com.android.contacts.quickcontact.j;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.Constants;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.StructuredPostalUtils;
import com.asus.updatesdk.BuildConfig;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/c.class */
public final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    int f2093a = -1;

    /* renamed from: b  reason: collision with root package name */
    private final Context f2094b;
    private final b c;
    private final String d;
    private CharSequence e;
    private CharSequence f;
    private Intent g;
    private Intent h;
    private int i;
    private int j;
    private Uri k;
    private long l;
    private boolean m;
    private String n;
    private int o;
    private boolean p;

    public c(Context context, a aVar) {
        this.p = false;
        this.f2094b = context;
        this.c = aVar.e();
        this.d = aVar.b();
        this.p = PhoneCapabilityTester.isUsingTwoPanes(this.f2094b);
        this.f = BuildConfig.FLAVOR;
        if (aVar.f()) {
            int g = aVar.g();
            if (aVar.e().n != null) {
                Iterator<a.d> it = aVar.e().n.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    a.d next = it.next();
                    if (next.f2006a == g) {
                        if (next.e == null) {
                            this.f = context.getString(next.f2007b);
                        } else {
                            this.f = aVar.f1994a.getAsString(next.e);
                        }
                        this.o = next.f2006a;
                    }
                }
            }
        }
        this.m = aVar.d();
        this.e = aVar.i();
        this.l = aVar.a();
        this.k = ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, this.l);
        boolean isPhone = PhoneCapabilityTester.isPhone(this.f2094b);
        boolean isSmsIntentRegistered = PhoneCapabilityTester.isSmsIntentRegistered(this.f2094b);
        if (aVar instanceof k) {
            k kVar = (k) aVar;
            String k = kVar.k();
            if (isPhone || isSmsIntentRegistered) {
                long longValue = kVar.f1994a.getAsLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID).longValue();
                this.n = k;
                if (!TextUtils.isEmpty(k)) {
                    Intent newDialNumberIntent = isPhone ? PhoneCapabilityTester.newDialNumberIntent(this.f2094b, null, k, -1) : null;
                    Intent intent = isSmsIntentRegistered ? new Intent("android.intent.action.SENDTO", Uri.fromParts(Constants.SCHEME_SMSTO, k, null)) : null;
                    if (isPhone && isSmsIntentRegistered) {
                        this.g = newDialNumberIntent;
                        if (!t.e(k)) {
                            this.h = intent;
                            if (this.p) {
                                this.j = 2131165390;
                            } else {
                                this.j = 2131165345;
                            }
                            this.i = kVar.e().e;
                        }
                    } else if (isPhone) {
                        this.g = newDialNumberIntent;
                    } else if (isSmsIntentRegistered) {
                        this.g = intent;
                    }
                    if (!aVar.c) {
                        this.g.putExtra("com.android.phone.AsusDialContactId", longValue);
                    }
                }
            }
        } else if (aVar instanceof n) {
            if (PhoneCapabilityTester.isSipPhone(this.f2094b)) {
                String asString = ((n) aVar).f1994a.getAsString(CoverUtils.CoverData.COVER_URI);
                if (!TextUtils.isEmpty(asString)) {
                    this.g = CallUtil.getCallIntent(Uri.fromParts(Constants.SCHEME_SIP, asString, null));
                }
            }
        } else if (aVar instanceof com.android.contacts.model.a.c) {
            String asString2 = ((com.android.contacts.model.a.c) aVar).f1994a.getAsString(CoverUtils.CoverData.COVER_URI);
            if (!TextUtils.isEmpty(asString2)) {
                this.g = new Intent("android.intent.action.SENDTO", Uri.fromParts(Constants.SCHEME_MAILTO, asString2, null));
            }
        } else if (aVar instanceof q) {
            String asString3 = ((q) aVar).f1994a.getAsString(CoverUtils.CoverData.COVER_URI);
            if (!TextUtils.isEmpty(asString3)) {
                try {
                    this.g = new Intent("android.intent.action.VIEW", Uri.parse(new j(asString3).toString()));
                } catch (j.a e) {
                    Log.e("DataAction", "Bad address: " + asString3);
                }
            }
        } else if (aVar instanceof g) {
            g gVar = (g) aVar;
            boolean z = gVar.d;
            if (z || gVar.m()) {
                int intValue = z ? 5 : gVar.l().intValue();
                if (z) {
                    this.f = ContactsContract.CommonDataKinds.Im.getProtocolLabel(context.getResources(), 5, null);
                    this.k = null;
                }
                String n = gVar.n();
                String k2 = gVar.k();
                n = intValue != -1 ? com.android.contacts.q.a(intValue) : n;
                if (!TextUtils.isEmpty(n) && !TextUtils.isEmpty(k2)) {
                    this.g = new Intent("android.intent.action.SENDTO", new Uri.Builder().scheme(Constants.SCHEME_IMTO).authority(n.toLowerCase()).appendPath(k2).build());
                    int o = gVar.o();
                    boolean z2 = (o & 4) != 0;
                    boolean z3 = (o & 1) != 0;
                    if (z2 || z3) {
                        this.h = new Intent("android.intent.action.SENDTO", Uri.parse("xmpp:" + k2 + "?call"));
                        if (z2) {
                            this.j = 2131165924;
                            this.i = 2131756453;
                        } else {
                            this.j = 2131165923;
                            this.i = 2131755180;
                        }
                    }
                }
            }
        } else if (aVar instanceof p) {
            String asString4 = ((p) aVar).f1994a.getAsString(CoverUtils.CoverData.COVER_URI);
            if (!TextUtils.isEmpty(asString4)) {
                this.g = StructuredPostalUtils.getViewPostalAddressIntent(asString4);
            }
        }
        if (this.g == null) {
            this.g = new Intent("android.intent.action.VIEW");
            this.g.setDataAndType(this.k, aVar.b());
        }
        this.g.addFlags(524288);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean shouldCollapseWith(a aVar) {
        boolean z;
        if (aVar == null) {
            z = false;
        } else if (!(aVar instanceof c)) {
            Log.e("DataAction", "t must be DataAction");
            z = false;
        } else {
            c cVar = (c) aVar;
            z = !com.android.contacts.q.a(this.d, this.e, cVar.d, cVar.e) ? false : (!TextUtils.equals(this.d, cVar.d) || !com.android.contacts.q.a(this.g, cVar.g)) ? false : !PhoneCapabilityTester.isATTSku() || com.android.contacts.q.a(this.d, String.valueOf(this.e), this.o, String.valueOf(this.f), cVar.d, String.valueOf(cVar.e), cVar.o, String.valueOf(cVar.f));
        }
        return z;
    }

    @Override // com.android.contacts.quickcontact.a
    public final CharSequence a() {
        return this.e;
    }

    @Override // com.android.contacts.quickcontact.a
    public final CharSequence b() {
        return this.f;
    }

    @Override // com.android.contacts.quickcontact.a
    public final String c() {
        return this.d;
    }

    @Override // com.android.contacts.j.a
    public final /* synthetic */ boolean collapseWith(a aVar) {
        return shouldCollapseWith(aVar);
    }

    @Override // com.android.contacts.quickcontact.a
    public final Drawable d() {
        Drawable drawable = null;
        if (this.j != 0) {
            String str = this.c.f1996a;
            if (str == null) {
                drawable = this.f2094b.getResources().getDrawable(this.j);
            } else {
                PackageManager packageManager = this.f2094b.getPackageManager();
                drawable = packageManager.getDrawable(str, this.j, null) == null ? this.f2094b.getResources().getDrawable(this.j) : packageManager.getDrawable(str, this.j, null);
            }
        }
        return drawable;
    }

    @Override // com.android.contacts.quickcontact.a
    public final String e() {
        return this.i == 0 ? null : this.f2094b.getResources().getString(this.i);
    }

    @Override // com.android.contacts.quickcontact.a
    public final Intent f() {
        return this.g;
    }

    @Override // com.android.contacts.quickcontact.a
    public final Intent g() {
        return this.h;
    }

    @Override // com.android.contacts.quickcontact.a
    public final int h() {
        return this.f2093a;
    }

    @Override // com.android.contacts.quickcontact.a
    public final String i() {
        return this.n;
    }
}
