package p193e.p194a.p852i.p908w;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p372b0.p413i.p415f.AbstractC8473c;
import p193e.p194a.p372b0.p413i.p415f.AbstractC8475d;
import p193e.p194a.p372b0.p413i.p415f.C8469a;
/* renamed from: e.a.i.w.a */
/* loaded from: classes3-dex2jar.jar:e/a/i/w/a.class */
public final class C15245a {

    /* renamed from: c */
    public static final AbstractC8473c[] f43397c = {new c()};

    /* renamed from: d */
    public static final AbstractC8475d[] f43398d = new AbstractC8475d[0];

    /* renamed from: e */
    public static final String[] f43399e = {"campaign_id", "request_order", "expiration", "mainColor", "lightColor", "buttonColor", "imageUrl", "bannerBackgroundColor", "ctaBackgroundColor", "ctaTextColor", "ctaIconAction", "ctaIconText", "brandName"};

    /* renamed from: a */
    public final C8469a f43400a;

    /* renamed from: b */
    public boolean f43401b;

    public C15245a(Context context) {
        this.f43400a = new C8469a(context, "adCampaigns.db", 5, f43397c, f43398d, null);
    }

    /* renamed from: a */
    public final void m19011a(SQLiteDatabase sQLiteDatabase) {
        if (!this.f43401b) {
            sQLiteDatabase.delete("campaigns", "expiration<?", new String[]{String.valueOf(System.currentTimeMillis())});
            this.f43401b = true;
        }
    }
}
