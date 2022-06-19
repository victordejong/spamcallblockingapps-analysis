package p193e.p194a.p739f0.p744h.p747c;

import android.content.Intent;
import android.net.Uri;
import com.tenor.android.core.constant.SupportMessenger;
import java.util.Objects;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p739f0.C13866a;
import p193e.p194a.p739f0.p740d.C13875a;
import p193e.p194a.p739f0.p744h.p745a.C13887a;
import p193e.p194a.p739f0.p744h.p746b.AbstractC13888a;
import p193e.p194a.p739f0.p744h.p746b.C13889b;
import p193e.p194a.p739f0.p748i.C13899a;
import s1.i;
import s1.s;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.f0.h.c.e */
/* loaded from: classes13-dex2jar.jar:e/a/f0/h/c/e.class */
public final /* synthetic */ class C13898e extends j implements l<C13887a, s> {
    public C13898e(C13895d c13895d) {
        super(1, c13895d, C13895d.class, "onSocialMediaItemClick", "onSocialMediaItemClick(Lcom/truecaller/social_media/presentation/entities/SocialMediaItem;)V", 0);
    }

    /* renamed from: d */
    public Object m20968d(Object obj) {
        C13899a c13899a;
        Uri uri;
        C13887a c13887a = (C13887a) obj;
        s1.z.c.l.e(c13887a, "p1");
        C13889b c13889b = ((C13895d) ((b) this).b).f40278a;
        if (c13889b == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        s1.z.c.l.e(c13887a, "item");
        ((C13866a) c13889b.f40271b).f40230h.mo13274b(new C13875a("Truecaller_News_Social_Opened", c13887a.f40270f));
        Objects.requireNonNull((C13866a) c13889b.f40271b);
        s1.z.c.l.e(c13887a, "item");
        s1.z.c.l.e(c13887a, "item");
        int ordinal = c13887a.f40265a.ordinal();
        if (ordinal == 0) {
            c13899a = C17422k.m16047w(SupportMessenger.TWITTER, c13887a.f40269e);
        } else if (ordinal == 1) {
            c13899a = C17422k.m16047w(SupportMessenger.FACEBOOK, c13887a.f40269e);
        } else if (ordinal == 2) {
            c13899a = C17422k.m16047w("com.instagram.android", c13887a.f40269e);
        } else if (ordinal == 3) {
            c13899a = C17422k.m16047w("com.google.android.youtube", c13887a.f40269e);
        } else if (ordinal != 4) {
            throw new i();
        } else {
            c13899a = C17422k.m16047w("com.zhiliaoapp.musically", c13887a.f40269e);
        }
        String str = c13899a.f40285b;
        String str2 = c13899a.f40286c;
        s1.z.c.l.e("android.intent.action.VIEW", "action");
        try {
            uri = Uri.parse(str2);
        } catch (Exception e) {
            uri = null;
        }
        Intent intent = null;
        if (uri != null) {
            intent = new Intent("android.intent.action.VIEW", uri);
            if (str != null) {
                intent.setPackage(str);
            }
            intent.addFlags(268435456);
        }
        if (intent != null) {
            String str3 = c13887a.f40268d;
            AbstractC13888a abstractC13888a = (AbstractC13888a) c13889b.f57683a;
            if (abstractC13888a != null) {
                abstractC13888a.mo20971Og(intent, c13889b.m20973Hj(str3));
            }
        } else {
            String str4 = c13887a.f40268d;
            AbstractC13888a abstractC13888a2 = (AbstractC13888a) c13889b.f57683a;
            if (abstractC13888a2 != null) {
                abstractC13888a2.mo20970Rz(c13889b.m20973Hj(str4));
            }
        }
        return s.a;
    }
}
