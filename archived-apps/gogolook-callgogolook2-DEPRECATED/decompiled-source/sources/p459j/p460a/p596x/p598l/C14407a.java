package p459j.p460a.p596x.p598l;

import android.accounts.Account;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.x.l.a */
/* loaded from: classes2-dex2jar.jar:j/a/x/l/a.class */
public final class C14407a {

    /* renamed from: a */
    public final Account f32243a;

    /* renamed from: b */
    public final String f32244b;

    /* renamed from: c */
    public final String f32245c;

    public C14407a(Account account, String str, String str2) {
        C15149k.m377b(account, "account");
        C15149k.m377b(str, "name");
        C15149k.m377b(str2, "type");
        this.f32243a = account;
        this.f32244b = str;
        this.f32245c = str2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C14407a(android.accounts.Account r6, java.lang.String r7, java.lang.String r8, int r9, p626l.p641z.p643d.C15145g r10) {
        /*
            r5 = this;
            r0 = r9
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0012
            r0 = r6
            java.lang.String r0 = r0.name
            r7 = r0
            r0 = r7
            java.lang.String r1 = "account.name"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
        L_0x0012:
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0024
            r0 = r6
            java.lang.String r0 = r0.type
            r8 = r0
            r0 = r8
            java.lang.String r1 = "account.type"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
        L_0x0024:
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p596x.p598l.C14407a.<init>(android.accounts.Account, java.lang.String, java.lang.String, int, l.z.d.g):void");
    }

    /* renamed from: a */
    public final Account m1390a() {
        return this.f32243a;
    }

    /* renamed from: b */
    public final String m1389b() {
        return this.f32244b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14407a)) {
            return false;
        }
        C14407a aVar = (C14407a) obj;
        return C15149k.m384a(this.f32243a, aVar.f32243a) && C15149k.m384a((Object) this.f32244b, (Object) aVar.f32244b) && C15149k.m384a((Object) this.f32245c, (Object) aVar.f32245c);
    }

    public int hashCode() {
        Account account = this.f32243a;
        int i = 0;
        int hashCode = account != null ? account.hashCode() : 0;
        String str = this.f32244b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f32245c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "AndroidAccount(account=" + this.f32243a + ", name=" + this.f32244b + ", type=" + this.f32245c + ")";
    }
}
