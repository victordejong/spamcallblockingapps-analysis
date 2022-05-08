package p459j.p460a.p541n0.p542u.p545c;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.StringRes;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser;
import gogolook.callgogolook2.R$string;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0001\u0018�� \u000b2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u000bB\u0011\b\u0002\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/realm/obj/vas/VasPeriod;", "", "displayNameRes", "", "(Ljava/lang/String;II)V", "getDisplayNameRes", "()I", HlsPlaylistParser.METHOD_NONE, "DAY", "WEEK", "MONTH", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.u.c.a */
/* loaded from: classes3-dex2jar.jar:j/a/n0/u/c/a.class */
public enum EnumC13225a {
    NONE(0),
    DAY(R$string.vas_result_subscription_day_period),
    WEEK(R$string.vas_result_subscription_week_period),
    MONTH(R$string.vas_result_subscription_month_period);
    

    /* renamed from: g */
    public static final C13226a f29798g = new C13226a(null);

    /* renamed from: a */
    public final int f29799a;

    /* renamed from: j.a.n0.u.c.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/u/c/a$a.class */
    public static final class C13226a {
        public C13226a() {
        }

        public /* synthetic */ C13226a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final EnumC13225a m4385a(Context context, String str) {
            C15149k.m377b(context, "context");
            C15149k.m377b(str, C13032a.f29462d);
            Resources resources = context.getResources();
            C15149k.m383a((Object) resources, "context.resources");
            return (!C15149k.m384a((Object) str, (Object) resources.getString(R$string.vas_week1)) && !C15149k.m384a((Object) str, (Object) resources.getString(R$string.vas_week2)) && !C15149k.m384a((Object) str, (Object) resources.getString(R$string.vas_week3))) ? C15149k.m384a((Object) str, (Object) resources.getString(R$string.vas_day)) ? EnumC13225a.DAY : (!C15149k.m384a((Object) str, (Object) resources.getString(R$string.vas_month1)) && !C15149k.m384a((Object) str, (Object) resources.getString(R$string.vas_month2))) ? EnumC13225a.NONE : EnumC13225a.MONTH : EnumC13225a.WEEK;
        }
    }

    EnumC13225a(@StringRes int i) {
        this.f29799a = i;
    }

    /* renamed from: a */
    public final int m4386a() {
        return this.f29799a;
    }
}
