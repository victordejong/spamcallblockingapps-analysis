package com.google.p068b.p069a.p070a;

import com.google.p068b.p069a.C3123j;
import java.util.regex.Matcher;
/* renamed from: com.google.b.a.a.b */
/* loaded from: classes-dex2jar.jar:com/google/b/a/a/b.class */
public final class C3107b implements AbstractC3106a {

    /* renamed from: a */
    private final C3108c f18751a = new C3108c();

    private C3107b() {
    }

    /* renamed from: a */
    public static AbstractC3106a m749a() {
        return new C3107b();
    }

    @Override // com.google.p068b.p069a.p070a.AbstractC3106a
    /* renamed from: a */
    public final boolean mo748a(CharSequence charSequence, C3123j.C3127d dVar) {
        String a = dVar.m682a();
        if (a.length() == 0) {
            return false;
        }
        Matcher matcher = this.f18751a.m747a(a).matcher(charSequence);
        return matcher.lookingAt() && matcher.matches();
    }
}
