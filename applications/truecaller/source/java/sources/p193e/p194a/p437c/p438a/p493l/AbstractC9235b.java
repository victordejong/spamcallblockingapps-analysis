package p193e.p194a.p437c.p438a.p493l;

import android.graphics.drawable.Drawable;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p548h.p551m.AbstractC10267d;
import p193e.p194a.p437c.p548h.p551m.C10265b;
import p193e.p194a.p437c.p580r.C10527c;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import p193e.p194a.p437c.p580r.p592m.AbstractC10651b;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.l.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/l/b.class */
public abstract class AbstractC9235b {

    /* renamed from: e.a.c.a.l.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/l/b$a.class */
    public static final class C9236a extends AbstractC9235b {

        /* renamed from: a */
        public final long f28034a;

        /* renamed from: b */
        public final List<AdapterItem> f28035b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C9236a(long j, List<? extends AdapterItem> list) {
            super(null);
            l.e(list, "recentTrxList");
            this.f28034a = j;
            this.f28035b = list;
        }

        @Override // p193e.p194a.p437c.p438a.p493l.AbstractC9235b
        /* renamed from: a */
        public long mo27782a() {
            return this.f28034a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9236a)) {
                    return false;
                }
                C9236a c9236a = (C9236a) obj;
                return this.f28034a == c9236a.f28034a && l.a(this.f28035b, c9236a.f28035b);
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f28034a);
            List<AdapterItem> list = this.f28035b;
            return (m34274a * 31) + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("FinanceContainerItem(id=");
            m8728C.append(this.f28034a);
            m8728C.append(", recentTrxList=");
            return C22128a.m8602l(m8728C, this.f28035b, ")");
        }
    }

    /* renamed from: e.a.c.a.l.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/l/b$b.class */
    public static final class C9237b extends AbstractC9235b {

        /* renamed from: a */
        public final long f28036a;

        /* renamed from: b */
        public final String f28037b;

        /* renamed from: c */
        public final String f28038c;

        /* renamed from: d */
        public final int f28039d;

        /* renamed from: e */
        public final String f28040e;

        /* renamed from: f */
        public final int f28041f;

        /* renamed from: g */
        public final String f28042g;

        /* renamed from: h */
        public final String f28043h;

        /* renamed from: i */
        public long f28044i;

        /* renamed from: j */
        public final long f28045j;

        /* renamed from: k */
        public final int f28046k;

        /* renamed from: l */
        public final boolean f28047l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9237b(long j, String str, String str2, int i, String str3, int i2, String str4, String str5, long j2, long j3, int i3, boolean z) {
            super(null);
            l.e(str, "title");
            l.e(str2, "subTitle");
            l.e(str3, "address");
            l.e(str4, "amt");
            l.e(str5, "uiDay");
            this.f28036a = j;
            this.f28037b = str;
            this.f28038c = str2;
            this.f28039d = i;
            this.f28040e = str3;
            this.f28041f = i2;
            this.f28042g = str4;
            this.f28043h = str5;
            this.f28044i = j2;
            this.f28045j = j3;
            this.f28046k = i3;
            this.f28047l = z;
        }

        @Override // p193e.p194a.p437c.p438a.p493l.AbstractC9235b
        /* renamed from: a */
        public long mo27782a() {
            return this.f28036a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9237b)) {
                    return false;
                }
                C9237b c9237b = (C9237b) obj;
                return this.f28036a == c9237b.f28036a && l.a(this.f28037b, c9237b.f28037b) && l.a(this.f28038c, c9237b.f28038c) && this.f28039d == c9237b.f28039d && l.a(this.f28040e, c9237b.f28040e) && this.f28041f == c9237b.f28041f && l.a(this.f28042g, c9237b.f28042g) && l.a(this.f28043h, c9237b.f28043h) && this.f28044i == c9237b.f28044i && this.f28045j == c9237b.f28045j && this.f28046k == c9237b.f28046k && this.f28047l == c9237b.f28047l;
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f28036a);
            String str = this.f28037b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f28038c;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i2 = this.f28039d;
            String str3 = this.f28040e;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            int i3 = this.f28041f;
            String str4 = this.f28042g;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f28043h;
            if (str5 != null) {
                i = str5.hashCode();
            }
            int m34274a2 = C4876d.m34274a(this.f28044i);
            int m34274a3 = C4876d.m34274a(this.f28045j);
            int i4 = this.f28046k;
            boolean z = this.f28047l;
            int i5 = z ? 1 : 0;
            if (z) {
                i5 = 1;
            }
            return (((((((((((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31) + i3) * 31) + hashCode4) * 31) + i) * 31) + m34274a2) * 31) + m34274a3) * 31) + i4) * 31) + i5;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("FinanceItem(id=");
            m8728C.append(this.f28036a);
            m8728C.append(", title=");
            m8728C.append(this.f28037b);
            m8728C.append(", subTitle=");
            m8728C.append(this.f28038c);
            m8728C.append(", transactionIcon=");
            m8728C.append(this.f28039d);
            m8728C.append(", address=");
            m8728C.append(this.f28040e);
            m8728C.append(", amtColor=");
            m8728C.append(this.f28041f);
            m8728C.append(", amt=");
            m8728C.append(this.f28042g);
            m8728C.append(", uiDay=");
            m8728C.append(this.f28043h);
            m8728C.append(", conversationId=");
            m8728C.append(this.f28044i);
            m8728C.append(", msgDateTime=");
            m8728C.append(this.f28045j);
            m8728C.append(", spamCategory=");
            m8728C.append(this.f28046k);
            m8728C.append(", isIM=");
            return C22128a.m8590o(m8728C, this.f28047l, ")");
        }
    }

    /* renamed from: e.a.c.a.l.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/l/b$c.class */
    public static final class C9238c extends AbstractC9235b {

        /* renamed from: a */
        public final long f28048a;

        /* renamed from: b */
        public final String f28049b;

        /* renamed from: c */
        public final boolean f28050c;

        /* renamed from: d */
        public final String f28051d;

        /* renamed from: e */
        public final String f28052e;

        /* renamed from: f */
        public final Drawable f28053f;

        /* renamed from: g */
        public final long f28054g;

        /* renamed from: h */
        public final AbstractC10267d f28055h;

        /* renamed from: i */
        public final C10265b f28056i;

        /* renamed from: j */
        public final int f28057j;

        /* renamed from: k */
        public final String f28058k;

        /* renamed from: l */
        public final String f28059l;

        /* renamed from: m */
        public final String f28060m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9238c(long j, String str, boolean z, String str2, String str3, Drawable drawable, long j2, AbstractC10267d abstractC10267d, C10265b c10265b, int i, String str4, String str5, String str6) {
            super(null);
            C22128a.m8703I0(str3, "titleText", str5, "address", str6, "uiDate");
            this.f28048a = j;
            this.f28049b = str;
            this.f28050c = z;
            this.f28051d = str2;
            this.f28052e = str3;
            this.f28053f = drawable;
            this.f28054g = j2;
            this.f28055h = abstractC10267d;
            this.f28056i = c10265b;
            this.f28057j = i;
            this.f28058k = str4;
            this.f28059l = str5;
            this.f28060m = str6;
        }

        @Override // p193e.p194a.p437c.p438a.p493l.AbstractC9235b
        /* renamed from: a */
        public long mo27782a() {
            return this.f28048a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9238c)) {
                    return false;
                }
                C9238c c9238c = (C9238c) obj;
                return this.f28048a == c9238c.f28048a && l.a(this.f28049b, c9238c.f28049b) && this.f28050c == c9238c.f28050c && l.a(this.f28051d, c9238c.f28051d) && l.a(this.f28052e, c9238c.f28052e) && l.a(this.f28053f, c9238c.f28053f) && this.f28054g == c9238c.f28054g && l.a(this.f28055h, c9238c.f28055h) && l.a(this.f28056i, c9238c.f28056i) && this.f28057j == c9238c.f28057j && l.a(this.f28058k, c9238c.f28058k) && l.a(this.f28059l, c9238c.f28059l) && l.a(this.f28060m, c9238c.f28060m);
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f28048a);
            String str = this.f28049b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            boolean z = this.f28050c;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            String str2 = this.f28051d;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f28052e;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            Drawable drawable = this.f28053f;
            int hashCode4 = drawable != null ? drawable.hashCode() : 0;
            int m34274a2 = C4876d.m34274a(this.f28054g);
            AbstractC10267d abstractC10267d = this.f28055h;
            int hashCode5 = abstractC10267d != null ? abstractC10267d.hashCode() : 0;
            C10265b c10265b = this.f28056i;
            int hashCode6 = c10265b != null ? c10265b.hashCode() : 0;
            int i3 = this.f28057j;
            String str4 = this.f28058k;
            int hashCode7 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f28059l;
            int hashCode8 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f28060m;
            if (str6 != null) {
                i = str6.hashCode();
            }
            return (((((((((((((((((((((((m34274a * 31) + hashCode) * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + m34274a2) * 31) + hashCode5) * 31) + hashCode6) * 31) + i3) * 31) + hashCode7) * 31) + hashCode8) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MarkedImportantItem(id=");
            m8728C.append(this.f28048a);
            m8728C.append(", subTitleText=");
            m8728C.append(this.f28049b);
            m8728C.append(", isRichTextFormatting=");
            m8728C.append(this.f28050c);
            m8728C.append(", iconUrl=");
            m8728C.append(this.f28051d);
            m8728C.append(", titleText=");
            m8728C.append(this.f28052e);
            m8728C.append(", subTitleIcon=");
            m8728C.append(this.f28053f);
            m8728C.append(", conversationId=");
            m8728C.append(this.f28054g);
            m8728C.append(", messageType=");
            m8728C.append(this.f28055h);
            m8728C.append(", groupConversationInfo=");
            m8728C.append(this.f28056i);
            m8728C.append(", badge=");
            m8728C.append(this.f28057j);
            m8728C.append(", initialLetter=");
            m8728C.append(this.f28058k);
            m8728C.append(", address=");
            m8728C.append(this.f28059l);
            m8728C.append(", uiDate=");
            return C22128a.m8618h(m8728C, this.f28060m, ")");
        }
    }

    /* renamed from: e.a.c.a.l.b$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/l/b$d.class */
    public static final class C9239d extends AbstractC9235b {

        /* renamed from: a */
        public final long f28061a;

        /* renamed from: b */
        public final long f28062b;

        /* renamed from: c */
        public final String f28063c;

        /* renamed from: d */
        public final long f28064d;

        /* renamed from: e */
        public final String f28065e;

        /* renamed from: f */
        public final long f28066f;

        /* renamed from: g */
        public final C9245c f28067g;

        /* renamed from: h */
        public final C9245c f28068h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9239d(long j, long j2, String str, long j3, String str2, long j4, C9245c c9245c, C9245c c9245c2) {
            super(null);
            l.e(str, "address");
            l.e(str2, AnalyticsConstants.OTP);
            this.f28061a = j;
            this.f28062b = j2;
            this.f28063c = str;
            this.f28064d = j3;
            this.f28065e = str2;
            this.f28066f = j4;
            this.f28067g = c9245c;
            this.f28068h = c9245c2;
        }

        @Override // p193e.p194a.p437c.p438a.p493l.AbstractC9235b
        /* renamed from: a */
        public long mo27782a() {
            return this.f28061a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9239d)) {
                    return false;
                }
                C9239d c9239d = (C9239d) obj;
                return this.f28061a == c9239d.f28061a && this.f28062b == c9239d.f28062b && l.a(this.f28063c, c9239d.f28063c) && this.f28064d == c9239d.f28064d && l.a(this.f28065e, c9239d.f28065e) && this.f28066f == c9239d.f28066f && l.a(this.f28067g, c9239d.f28067g) && l.a(this.f28068h, c9239d.f28068h);
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f28061a);
            int m34274a2 = C4876d.m34274a(this.f28062b);
            String str = this.f28063c;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            int m34274a3 = C4876d.m34274a(this.f28064d);
            String str2 = this.f28065e;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int m34274a4 = C4876d.m34274a(this.f28066f);
            C9245c c9245c = this.f28067g;
            int hashCode3 = c9245c != null ? c9245c.hashCode() : 0;
            C9245c c9245c2 = this.f28068h;
            if (c9245c2 != null) {
                i = c9245c2.hashCode();
            }
            return (((((((((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + m34274a3) * 31) + hashCode2) * 31) + m34274a4) * 31) + hashCode3) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("OtpCardItem(id=");
            m8728C.append(this.f28061a);
            m8728C.append(", conversationId=");
            m8728C.append(this.f28062b);
            m8728C.append(", address=");
            m8728C.append(this.f28063c);
            m8728C.append(", messageId=");
            m8728C.append(this.f28064d);
            m8728C.append(", otp=");
            m8728C.append(this.f28065e);
            m8728C.append(", autoDismissTime=");
            m8728C.append(this.f28066f);
            m8728C.append(", copyAction=");
            m8728C.append(this.f28067g);
            m8728C.append(", secondaryAction=");
            m8728C.append(this.f28068h);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.a.l.b$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/l/b$e.class */
    public static final class C9240e extends AbstractC9235b {

        /* renamed from: a */
        public final long f28069a;

        /* renamed from: b */
        public final C10527c f28070b;

        /* renamed from: c */
        public final C10527c f28071c;

        /* renamed from: d */
        public final String f28072d;

        /* renamed from: e */
        public final String f28073e;

        /* renamed from: f */
        public final String f28074f;

        /* renamed from: g */
        public final String f28075g;

        /* renamed from: h */
        public final String f28076h;

        /* renamed from: i */
        public final C9245c f28077i;

        /* renamed from: j */
        public final C9245c f28078j;

        /* renamed from: k */
        public final List<C9245c> f28079k;

        /* renamed from: l */
        public final int f28080l;

        /* renamed from: m */
        public final long f28081m;

        /* renamed from: n */
        public final String f28082n;

        /* renamed from: o */
        public final Integer f28083o;

        /* renamed from: p */
        public final String f28084p;

        /* renamed from: q */
        public final int f28085q;

        /* renamed from: r */
        public final boolean f28086r;

        /* renamed from: s */
        public final AbstractC10616p f28087s;

        /* renamed from: t */
        public final String f28088t;

        /* renamed from: u */
        public final long f28089u;

        /* renamed from: v */
        public final boolean f28090v;

        /* renamed from: w */
        public boolean f28091w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9240e(long j, C10527c c10527c, C10527c c10527c2, String str, String str2, String str3, String str4, String str5, C9245c c9245c, C9245c c9245c2, List list, int i, long j2, String str6, Integer num, String str7, int i2, boolean z, AbstractC10616p abstractC10616p, String str8, long j3, boolean z2, boolean z3, int i3) {
            super(null);
            str = (i3 & 8) != 0 ? null : str;
            str6 = (i3 & 8192) != 0 ? null : str6;
            num = (i3 & 16384) != 0 ? null : num;
            z2 = (i3 & 2097152) != 0 ? false : z2;
            z3 = (i3 & 4194304) != 0 ? true : z3;
            l.e(c10527c, "primaryTag");
            l.e(str2, "secTitle");
            l.e(str3, "address");
            l.e(str4, "secSubTitle");
            l.e(str5, "actionStatus");
            l.e(c9245c, "primaryAction");
            l.e(c9245c2, "secondaryAction");
            l.e(list, "overFlowActions");
            l.e(str7, "analyticCategory");
            l.e(abstractC10616p, "smartSmsCategory");
            l.e(str8, "uiMonth");
            this.f28069a = j;
            this.f28070b = c10527c;
            this.f28071c = c10527c2;
            this.f28072d = str;
            this.f28073e = str2;
            this.f28074f = str3;
            this.f28075g = str4;
            this.f28076h = str5;
            this.f28077i = c9245c;
            this.f28078j = c9245c2;
            this.f28079k = list;
            this.f28080l = i;
            this.f28081m = j2;
            this.f28082n = str6;
            this.f28083o = num;
            this.f28084p = str7;
            this.f28085q = i2;
            this.f28086r = z;
            this.f28087s = abstractC10616p;
            this.f28088t = str8;
            this.f28089u = j3;
            this.f28090v = z2;
            this.f28091w = z3;
        }

        @Override // p193e.p194a.p437c.p438a.p493l.AbstractC9235b
        /* renamed from: a */
        public long mo27782a() {
            return this.f28069a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!l.a(C9240e.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.PastReminderItem");
            C9240e c9240e = (C9240e) obj;
            return this.f28069a == c9240e.f28069a && !(l.a(this.f28073e, c9240e.f28073e) ^ true) && !(l.a(this.f28074f, c9240e.f28074f) ^ true) && !(l.a(this.f28075g, c9240e.f28075g) ^ true) && !(l.a(this.f28076h, c9240e.f28076h) ^ true) && this.f28080l == c9240e.f28080l && this.f28081m == c9240e.f28081m && this.f28085q == c9240e.f28085q && this.f28086r == c9240e.f28086r;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f28069a);
            C10527c c10527c = this.f28070b;
            int i = 0;
            int hashCode = c10527c != null ? c10527c.hashCode() : 0;
            C10527c c10527c2 = this.f28071c;
            int hashCode2 = c10527c2 != null ? c10527c2.hashCode() : 0;
            String str = this.f28072d;
            int hashCode3 = str != null ? str.hashCode() : 0;
            String str2 = this.f28073e;
            int hashCode4 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f28074f;
            int hashCode5 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f28075g;
            int hashCode6 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f28076h;
            int hashCode7 = str5 != null ? str5.hashCode() : 0;
            C9245c c9245c = this.f28077i;
            int hashCode8 = c9245c != null ? c9245c.hashCode() : 0;
            C9245c c9245c2 = this.f28078j;
            int hashCode9 = c9245c2 != null ? c9245c2.hashCode() : 0;
            List<C9245c> list = this.f28079k;
            int hashCode10 = list != null ? list.hashCode() : 0;
            int i2 = this.f28080l;
            int m34274a2 = C4876d.m34274a(this.f28081m);
            String str6 = this.f28082n;
            int hashCode11 = str6 != null ? str6.hashCode() : 0;
            Integer num = this.f28083o;
            int hashCode12 = num != null ? num.hashCode() : 0;
            String str7 = this.f28084p;
            int hashCode13 = str7 != null ? str7.hashCode() : 0;
            int i3 = this.f28085q;
            boolean z = this.f28086r;
            int i4 = 1;
            int i5 = z ? 1 : 0;
            if (z) {
                i5 = 1;
            }
            AbstractC10616p abstractC10616p = this.f28087s;
            int hashCode14 = abstractC10616p != null ? abstractC10616p.hashCode() : 0;
            String str8 = this.f28088t;
            if (str8 != null) {
                i = str8.hashCode();
            }
            int m34274a3 = C4876d.m34274a(this.f28089u);
            boolean z2 = this.f28090v;
            int i6 = z2 ? 1 : 0;
            if (z2) {
                i6 = 1;
            }
            boolean z3 = this.f28091w;
            if (!z3) {
                i4 = z3 ? 1 : 0;
            }
            return (((((((((((((((((((((((((((((((((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i2) * 31) + m34274a2) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + i3) * 31) + i5) * 31) + hashCode14) * 31) + i) * 31) + m34274a3) * 31) + i6) * 31) + i4;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("PastReminderItem(id=");
            m8728C.append(this.f28069a);
            m8728C.append(", primaryTag=");
            m8728C.append(this.f28070b);
            m8728C.append(", secondaryTag=");
            m8728C.append(this.f28071c);
            m8728C.append(", title=");
            m8728C.append(this.f28072d);
            m8728C.append(", secTitle=");
            m8728C.append(this.f28073e);
            m8728C.append(", address=");
            m8728C.append(this.f28074f);
            m8728C.append(", secSubTitle=");
            m8728C.append(this.f28075g);
            m8728C.append(", actionStatus=");
            m8728C.append(this.f28076h);
            m8728C.append(", primaryAction=");
            m8728C.append(this.f28077i);
            m8728C.append(", secondaryAction=");
            m8728C.append(this.f28078j);
            m8728C.append(", overFlowActions=");
            m8728C.append(this.f28079k);
            m8728C.append(", secSubTitleColor=");
            m8728C.append(this.f28080l);
            m8728C.append(", conversationId=");
            m8728C.append(this.f28081m);
            m8728C.append(", itemType=");
            m8728C.append(this.f28082n);
            m8728C.append(", actionStatusColor=");
            m8728C.append(this.f28083o);
            m8728C.append(", analyticCategory=");
            m8728C.append(this.f28084p);
            m8728C.append(", spamCategory=");
            m8728C.append(this.f28085q);
            m8728C.append(", isIM=");
            m8728C.append(this.f28086r);
            m8728C.append(", smartSmsCategory=");
            m8728C.append(this.f28087s);
            m8728C.append(", uiMonth=");
            m8728C.append(this.f28088t);
            m8728C.append(", reminderDateTime=");
            m8728C.append(this.f28089u);
            m8728C.append(", alreadyPaid=");
            m8728C.append(this.f28090v);
            m8728C.append(", isCollapsed=");
            return C22128a.m8590o(m8728C, this.f28091w, ")");
        }
    }

    /* renamed from: e.a.c.a.l.b$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/l/b$f.class */
    public static final class C9241f extends AbstractC9235b {
        @Override // p193e.p194a.p437c.p438a.p493l.AbstractC9235b
        /* renamed from: a */
        public long mo27782a() {
            return 0L;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9241f)) {
                    return false;
                }
                Objects.requireNonNull((C9241f) obj);
                return l.a((Object) null, (Object) null);
            }
            return true;
        }

        public int hashCode() {
            return (C4876d.m34274a(0L) * 31) + 0;
        }

        public String toString() {
            return "SmsBackupItem(id=0, smsBackup=null)";
        }
    }

    /* renamed from: e.a.c.a.l.b$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/l/b$g.class */
    public static final class C9242g extends AbstractC9235b {

        /* renamed from: a */
        public final long f28092a;

        /* renamed from: b */
        public final C10527c f28093b;

        /* renamed from: c */
        public final C10527c f28094c;

        /* renamed from: d */
        public final String f28095d;

        /* renamed from: e */
        public final String f28096e;

        /* renamed from: f */
        public final String f28097f;

        /* renamed from: g */
        public final String f28098g;

        /* renamed from: h */
        public final String f28099h;

        /* renamed from: i */
        public final C9245c f28100i;

        /* renamed from: j */
        public final C9245c f28101j;

        /* renamed from: k */
        public final List<C9245c> f28102k;

        /* renamed from: l */
        public final int f28103l;

        /* renamed from: m */
        public final long f28104m;

        /* renamed from: n */
        public final String f28105n;

        /* renamed from: o */
        public final Integer f28106o;

        /* renamed from: p */
        public final String f28107p;

        /* renamed from: q */
        public final int f28108q;

        /* renamed from: r */
        public final boolean f28109r;

        /* renamed from: s */
        public final AbstractC10616p f28110s;

        /* renamed from: t */
        public final long f28111t;

        /* renamed from: u */
        public final boolean f28112u;

        /* renamed from: v */
        public boolean f28113v;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9242g(long j, C10527c c10527c, C10527c c10527c2, String str, String str2, String str3, String str4, String str5, C9245c c9245c, C9245c c9245c2, List list, int i, long j2, String str6, Integer num, String str7, int i2, boolean z, AbstractC10616p abstractC10616p, long j3, boolean z2, boolean z3, int i3) {
            super(null);
            str = (i3 & 8) != 0 ? null : str;
            str6 = (i3 & 8192) != 0 ? null : str6;
            num = (i3 & 16384) != 0 ? null : num;
            z2 = (i3 & 1048576) != 0 ? false : z2;
            z3 = (i3 & 2097152) != 0 ? false : z3;
            l.e(c10527c, "primaryTag");
            l.e(str2, "secTitle");
            l.e(str3, "address");
            l.e(str4, "secSubTitle");
            l.e(str5, "actionStatus");
            l.e(c9245c, "primaryAction");
            l.e(c9245c2, "secondaryAction");
            l.e(list, "overFlowActions");
            l.e(str7, "analyticCategory");
            l.e(abstractC10616p, "smartSmsCategory");
            this.f28092a = j;
            this.f28093b = c10527c;
            this.f28094c = c10527c2;
            this.f28095d = str;
            this.f28096e = str2;
            this.f28097f = str3;
            this.f28098g = str4;
            this.f28099h = str5;
            this.f28100i = c9245c;
            this.f28101j = c9245c2;
            this.f28102k = list;
            this.f28103l = i;
            this.f28104m = j2;
            this.f28105n = str6;
            this.f28106o = num;
            this.f28107p = str7;
            this.f28108q = i2;
            this.f28109r = z;
            this.f28110s = abstractC10616p;
            this.f28111t = j3;
            this.f28112u = z2;
            this.f28113v = z3;
        }

        @Override // p193e.p194a.p437c.p438a.p493l.AbstractC9235b
        /* renamed from: a */
        public long mo27782a() {
            return this.f28092a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!l.a(C9242g.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.UpcomingItem");
            C9242g c9242g = (C9242g) obj;
            return this.f28092a == c9242g.f28092a && !(l.a(this.f28096e, c9242g.f28096e) ^ true) && !(l.a(this.f28097f, c9242g.f28097f) ^ true) && !(l.a(this.f28098g, c9242g.f28098g) ^ true) && !(l.a(this.f28099h, c9242g.f28099h) ^ true) && this.f28103l == c9242g.f28103l && this.f28104m == c9242g.f28104m && this.f28108q == c9242g.f28108q && this.f28109r == c9242g.f28109r;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f28092a);
            C10527c c10527c = this.f28093b;
            int i = 0;
            int hashCode = c10527c != null ? c10527c.hashCode() : 0;
            C10527c c10527c2 = this.f28094c;
            int hashCode2 = c10527c2 != null ? c10527c2.hashCode() : 0;
            String str = this.f28095d;
            int hashCode3 = str != null ? str.hashCode() : 0;
            String str2 = this.f28096e;
            int hashCode4 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f28097f;
            int hashCode5 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f28098g;
            int hashCode6 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f28099h;
            int hashCode7 = str5 != null ? str5.hashCode() : 0;
            C9245c c9245c = this.f28100i;
            int hashCode8 = c9245c != null ? c9245c.hashCode() : 0;
            C9245c c9245c2 = this.f28101j;
            int hashCode9 = c9245c2 != null ? c9245c2.hashCode() : 0;
            List<C9245c> list = this.f28102k;
            int hashCode10 = list != null ? list.hashCode() : 0;
            int i2 = this.f28103l;
            int m34274a2 = C4876d.m34274a(this.f28104m);
            String str6 = this.f28105n;
            int hashCode11 = str6 != null ? str6.hashCode() : 0;
            Integer num = this.f28106o;
            int hashCode12 = num != null ? num.hashCode() : 0;
            String str7 = this.f28107p;
            int hashCode13 = str7 != null ? str7.hashCode() : 0;
            int i3 = this.f28108q;
            boolean z = this.f28109r;
            int i4 = 1;
            int i5 = z ? 1 : 0;
            if (z) {
                i5 = 1;
            }
            AbstractC10616p abstractC10616p = this.f28110s;
            if (abstractC10616p != null) {
                i = abstractC10616p.hashCode();
            }
            int m34274a3 = C4876d.m34274a(this.f28111t);
            boolean z2 = this.f28112u;
            int i6 = z2 ? 1 : 0;
            if (z2) {
                i6 = 1;
            }
            boolean z3 = this.f28113v;
            if (!z3) {
                i4 = z3 ? 1 : 0;
            }
            return (((((((((((((((((((((((((((((((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i2) * 31) + m34274a2) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + i3) * 31) + i5) * 31) + i) * 31) + m34274a3) * 31) + i6) * 31) + i4;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("UpcomingItem(id=");
            m8728C.append(this.f28092a);
            m8728C.append(", primaryTag=");
            m8728C.append(this.f28093b);
            m8728C.append(", secondaryTag=");
            m8728C.append(this.f28094c);
            m8728C.append(", title=");
            m8728C.append(this.f28095d);
            m8728C.append(", secTitle=");
            m8728C.append(this.f28096e);
            m8728C.append(", address=");
            m8728C.append(this.f28097f);
            m8728C.append(", secSubTitle=");
            m8728C.append(this.f28098g);
            m8728C.append(", actionStatus=");
            m8728C.append(this.f28099h);
            m8728C.append(", primaryAction=");
            m8728C.append(this.f28100i);
            m8728C.append(", secondaryAction=");
            m8728C.append(this.f28101j);
            m8728C.append(", overFlowActions=");
            m8728C.append(this.f28102k);
            m8728C.append(", secSubTitleColor=");
            m8728C.append(this.f28103l);
            m8728C.append(", conversationId=");
            m8728C.append(this.f28104m);
            m8728C.append(", itemType=");
            m8728C.append(this.f28105n);
            m8728C.append(", actionStatusColor=");
            m8728C.append(this.f28106o);
            m8728C.append(", analyticCategory=");
            m8728C.append(this.f28107p);
            m8728C.append(", spamCategory=");
            m8728C.append(this.f28108q);
            m8728C.append(", isIM=");
            m8728C.append(this.f28109r);
            m8728C.append(", smartSmsCategory=");
            m8728C.append(this.f28110s);
            m8728C.append(", reminderDateTime=");
            m8728C.append(this.f28111t);
            m8728C.append(", alreadyPaid=");
            m8728C.append(this.f28112u);
            m8728C.append(", isCollapsed=");
            return C22128a.m8590o(m8728C, this.f28113v, ")");
        }
    }

    /* renamed from: e.a.c.a.l.b$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/l/b$h.class */
    public static final class C9243h extends AbstractC9235b {

        /* renamed from: a */
        public final long f28114a;

        /* renamed from: b */
        public final String f28115b;

        /* renamed from: c */
        public final String f28116c;

        /* renamed from: d */
        public final String f28117d;

        /* renamed from: e */
        public final String f28118e;

        /* renamed from: f */
        public long f28119f;

        /* renamed from: g */
        public final long f28120g;

        /* renamed from: h */
        public final int f28121h;

        /* renamed from: i */
        public final boolean f28122i;

        /* renamed from: j */
        public final AbstractC10651b f28123j;

        /* renamed from: k */
        public final int f28124k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9243h(long j, String str, String str2, String str3, String str4, long j2, long j3, int i, boolean z, AbstractC10651b abstractC10651b, int i2) {
            super(null);
            l.e(str, "address");
            l.e(str2, "messageText");
            l.e(str3, "uiDay");
            l.e(str4, "uiDateTime");
            l.e(abstractC10651b, "updateCategory");
            this.f28114a = j;
            this.f28115b = str;
            this.f28116c = str2;
            this.f28117d = str3;
            this.f28118e = str4;
            this.f28119f = j2;
            this.f28120g = j3;
            this.f28121h = i;
            this.f28122i = z;
            this.f28123j = abstractC10651b;
            this.f28124k = i2;
        }

        @Override // p193e.p194a.p437c.p438a.p493l.AbstractC9235b
        /* renamed from: a */
        public long mo27782a() {
            return this.f28114a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9243h)) {
                    return false;
                }
                C9243h c9243h = (C9243h) obj;
                return this.f28114a == c9243h.f28114a && l.a(this.f28115b, c9243h.f28115b) && l.a(this.f28116c, c9243h.f28116c) && l.a(this.f28117d, c9243h.f28117d) && l.a(this.f28118e, c9243h.f28118e) && this.f28119f == c9243h.f28119f && this.f28120g == c9243h.f28120g && this.f28121h == c9243h.f28121h && this.f28122i == c9243h.f28122i && l.a(this.f28123j, c9243h.f28123j) && this.f28124k == c9243h.f28124k;
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f28114a);
            String str = this.f28115b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f28116c;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f28117d;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f28118e;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            int m34274a2 = C4876d.m34274a(this.f28119f);
            int m34274a3 = C4876d.m34274a(this.f28120g);
            int i2 = this.f28121h;
            boolean z = this.f28122i;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            AbstractC10651b abstractC10651b = this.f28123j;
            if (abstractC10651b != null) {
                i = abstractC10651b.hashCode();
            }
            return (((((((((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + m34274a2) * 31) + m34274a3) * 31) + i2) * 31) + i3) * 31) + i) * 31) + this.f28124k;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("UpdateItem(id=");
            m8728C.append(this.f28114a);
            m8728C.append(", address=");
            m8728C.append(this.f28115b);
            m8728C.append(", messageText=");
            m8728C.append(this.f28116c);
            m8728C.append(", uiDay=");
            m8728C.append(this.f28117d);
            m8728C.append(", uiDateTime=");
            m8728C.append(this.f28118e);
            m8728C.append(", conversationId=");
            m8728C.append(this.f28119f);
            m8728C.append(", msgDateTime=");
            m8728C.append(this.f28120g);
            m8728C.append(", spamCategory=");
            m8728C.append(this.f28121h);
            m8728C.append(", isIM=");
            m8728C.append(this.f28122i);
            m8728C.append(", updateCategory=");
            m8728C.append(this.f28123j);
            m8728C.append(", messageTextMaxLines=");
            return C22128a.m8697J2(m8728C, this.f28124k, ")");
        }
    }

    /* renamed from: e.a.c.a.l.b$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/l/b$i.class */
    public static final class C9244i extends AbstractC9235b {

        /* renamed from: a */
        public final long f28125a;

        /* renamed from: b */
        public final List<AdapterItem> f28126b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C9244i(long j, List<? extends AdapterItem> list) {
            super(null);
            l.e(list, "recentUpdatesList");
            this.f28125a = j;
            this.f28126b = list;
        }

        @Override // p193e.p194a.p437c.p438a.p493l.AbstractC9235b
        /* renamed from: a */
        public long mo27782a() {
            return this.f28125a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9244i)) {
                    return false;
                }
                C9244i c9244i = (C9244i) obj;
                return this.f28125a == c9244i.f28125a && l.a(this.f28126b, c9244i.f28126b);
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f28125a);
            List<AdapterItem> list = this.f28126b;
            return (m34274a * 31) + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("UpdatesContainerItem(id=");
            m8728C.append(this.f28125a);
            m8728C.append(", recentUpdatesList=");
            return C22128a.m8602l(m8728C, this.f28126b, ")");
        }
    }

    public AbstractC9235b(f fVar) {
    }

    /* renamed from: a */
    public abstract long mo27782a();
}
