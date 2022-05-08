package p459j.p460a.p521j0.p529x;

import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.vas.util.SimpleVasInfoPack;
import p459j.p460a.p582w0.p589f5.C14005a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.x.p */
/* loaded from: classes3-dex2jar.jar:j/a/j0/x/p.class */
public final class C12817p {

    /* renamed from: a */
    public final String f28936a;

    /* renamed from: b */
    public final C12755b f28937b;

    /* renamed from: c */
    public final String f28938c;

    /* renamed from: d */
    public final String f28939d;

    /* renamed from: e */
    public final String f28940e;

    /* renamed from: f */
    public C14005a.C14007b f28941f;

    /* renamed from: g */
    public RowInfo f28942g;

    /* renamed from: h */
    public final String f28943h;

    /* renamed from: i */
    public final SimpleVasInfoPack f28944i;

    /* renamed from: j */
    public int f28945j;

    public C12817p(C12755b bVar, String str, String str2, String str3, C14005a.C14007b bVar2, RowInfo rowInfo, String str4, SimpleVasInfoPack simpleVasInfoPack, int i) {
        C15149k.m377b(bVar, "nativeSmsData");
        this.f28937b = bVar;
        this.f28938c = str;
        this.f28939d = str2;
        this.f28940e = str3;
        this.f28941f = bVar2;
        this.f28942g = rowInfo;
        this.f28943h = str4;
        this.f28944i = simpleVasInfoPack;
        this.f28945j = i;
        this.f28936a = this.f28937b.m5425a();
    }

    public /* synthetic */ C12817p(C12755b bVar, String str, String str2, String str3, C14005a.C14007b bVar2, RowInfo rowInfo, String str4, SimpleVasInfoPack simpleVasInfoPack, int i, int i2, C15145g gVar) {
        this(bVar, str, str2, str3, (i2 & 16) != 0 ? null : bVar2, (i2 & 32) != 0 ? null : rowInfo, (i2 & 64) != 0 ? null : str4, (i2 & 128) != 0 ? null : simpleVasInfoPack, (i2 & 256) != 0 ? C12810o.m5235j() ? 0 : -1 : i);
    }

    /* renamed from: a */
    public final C12817p m5223a(RowInfo rowInfo) {
        C12817p pVar;
        C15149k.m377b(rowInfo, "rowInfo");
        if (C15149k.m384a((Object) rowInfo.m28228f(), (Object) this.f28936a)) {
            this.f28942g = rowInfo;
            pVar = this;
        } else {
            pVar = null;
        }
        return pVar;
    }

    /* renamed from: a */
    public final C12817p m5222a(String str, int i) {
        C12817p pVar;
        C15149k.m377b(str, "content");
        if (C15149k.m384a((Object) str, (Object) this.f28937b.m5423b())) {
            this.f28945j = i;
            pVar = this;
        } else {
            pVar = null;
        }
        return pVar;
    }

    /* renamed from: a */
    public final C12817p m5221a(String str, C14005a.C14007b bVar) {
        C12817p pVar;
        C15149k.m377b(str, "content");
        if (C15149k.m384a((Object) str, (Object) this.f28937b.m5423b())) {
            this.f28941f = bVar;
            pVar = this;
        } else {
            pVar = null;
        }
        return pVar;
    }

    /* renamed from: a */
    public final String m5224a() {
        return this.f28943h;
    }

    /* renamed from: b */
    public final int m5220b() {
        return this.f28945j;
    }

    /* renamed from: c */
    public final String m5219c() {
        return this.f28938c;
    }

    /* renamed from: d */
    public final String m5218d() {
        return this.f28939d;
    }

    /* renamed from: e */
    public final String m5217e() {
        return this.f28940e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C12817p)) {
            return false;
        }
        C12817p pVar = (C12817p) obj;
        if (!C15149k.m384a(this.f28937b, pVar.f28937b) || !C15149k.m384a((Object) this.f28938c, (Object) pVar.f28938c) || !C15149k.m384a((Object) this.f28939d, (Object) pVar.f28939d) || !C15149k.m384a((Object) this.f28940e, (Object) pVar.f28940e) || !C15149k.m384a(this.f28941f, pVar.f28941f) || !C15149k.m384a(this.f28942g, pVar.f28942g) || !C15149k.m384a((Object) this.f28943h, (Object) pVar.f28943h) || !C15149k.m384a(this.f28944i, pVar.f28944i)) {
            return false;
        }
        return this.f28945j == pVar.f28945j;
    }

    /* renamed from: f */
    public final C12755b m5216f() {
        return this.f28937b;
    }

    /* renamed from: g */
    public final RowInfo m5215g() {
        return this.f28942g;
    }

    /* renamed from: h */
    public final String m5214h() {
        return this.f28936a;
    }

    public int hashCode() {
        int hashCode;
        C12755b bVar = this.f28937b;
        int i = 0;
        int hashCode2 = bVar != null ? bVar.hashCode() : 0;
        String str = this.f28938c;
        int hashCode3 = str != null ? str.hashCode() : 0;
        String str2 = this.f28939d;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f28940e;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        C14005a.C14007b bVar2 = this.f28941f;
        int hashCode6 = bVar2 != null ? bVar2.hashCode() : 0;
        RowInfo rowInfo = this.f28942g;
        int hashCode7 = rowInfo != null ? rowInfo.hashCode() : 0;
        String str4 = this.f28943h;
        int hashCode8 = str4 != null ? str4.hashCode() : 0;
        SimpleVasInfoPack simpleVasInfoPack = this.f28944i;
        if (simpleVasInfoPack != null) {
            i = simpleVasInfoPack.hashCode();
        }
        hashCode = Integer.valueOf(this.f28945j).hashCode();
        return (((((((((((((((hashCode2 * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i) * 31) + hashCode;
    }

    /* renamed from: i */
    public final C14005a.C14007b m5213i() {
        return this.f28941f;
    }

    /* renamed from: j */
    public final SimpleVasInfoPack m5212j() {
        return this.f28944i;
    }

    public String toString() {
        return "WhoscallSmsData(nativeSmsData=" + this.f28937b + ", conversationId=" + this.f28938c + ", messageId=" + this.f28939d + ", messageUri=" + this.f28940e + ", _urlContent=" + this.f28941f + ", _rowInfo=" + this.f28942g + ", contactId=" + this.f28943h + ", vasInfoPack=" + this.f28944i + ", _contentType=" + this.f28945j + ")";
    }
}
