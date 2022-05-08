package p081h.p203i.p325c;

import androidx.annotation.NonNull;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.c.h */
/* loaded from: classes2-dex2jar.jar:h/i/c/h.class */
public class C9445h extends Exception {
    @Deprecated
    public C9445h() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9445h(@NonNull String str) {
        super(str);
        C7021t.m21287a(str, (Object) "Detail message must not be empty");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9445h(@NonNull String str, Throwable th) {
        super(str, th);
        C7021t.m21287a(str, (Object) "Detail message must not be empty");
    }
}
