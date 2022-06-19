package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import e.a.h.b.b;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p679d5.AbstractC12607b;
import p193e.p194a.p847h3.p848b.AbstractC14900a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d5.h.h */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/h.class */
public final class C12648h implements AbstractC12607b {

    /* renamed from: a */
    public final boolean f36849a = true;

    /* renamed from: b */
    public final StartupDialogType f36850b = StartupDialogType.DIALOG_NUMBER_SEARCH_CALL;

    /* renamed from: c */
    public final f f36851c;

    /* renamed from: d */
    public final AbstractC14900a f36852d;

    /* renamed from: e */
    public final boolean f36853e;

    @e(c = "com.truecaller.startup_dialogs.resolvers.NumberSearchCallDialogResolver", f = "NumberSearchCallDialogResolver.kt", l = {32}, m = "shouldShow")
    /* renamed from: e.a.d5.h.h$a */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/h/h$a.class */
    public static final class C12649a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f36854d;

        /* renamed from: e */
        public int f36855e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12649a(d dVar) {
            super(dVar);
            C12648h.this = r4;
        }

        /* renamed from: s */
        public final Object m22800s(Object obj) {
            this.f36854d = obj;
            this.f36855e |= Integer.MIN_VALUE;
            return C12648h.this.mo22765e(this);
        }
    }

    @e(c = "com.truecaller.startup_dialogs.resolvers.NumberSearchCallDialogResolver$shouldShow$hasNumber$1", f = "NumberSearchCallDialogResolver.kt", l = {32}, m = "invokeSuspend")
    /* renamed from: e.a.d5.h.h$b */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/h/h$b.class */
    public static final class C12650b extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f36857e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12650b(d dVar) {
            super(2, dVar);
            C12648h.this = r5;
        }

        /* renamed from: i */
        public final d<s> m22799i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12650b(dVar);
        }

        /* renamed from: k */
        public final Object m22798k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12650b(dVar).m22797s(s.a);
        }

        /* renamed from: s */
        public final Object m22797s(Object obj) {
            a aVar = a.a;
            int i = this.f36857e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC14900a abstractC14900a = C12648h.this.f36852d;
                this.f36857e = 1;
                Object mo19470l = abstractC14900a.mo19470l(this);
                obj = mo19470l;
                if (mo19470l == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @Inject
    public C12648h(@Named("IO") f fVar, AbstractC14900a abstractC14900a, boolean z) {
        l.e(fVar, "ioContext");
        l.e(abstractC14900a, "clipboardDataManager");
        this.f36851c = fVar;
        this.f36852d = abstractC14900a;
        this.f36853e = z;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: a */
    public Intent mo22769a(Activity activity) {
        l.e(activity, "fromActivity");
        C17422k.m16063o(activity);
        return null;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: b */
    public StartupDialogType mo22768b() {
        return this.f36850b;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: c */
    public void mo22767c(StartupDialogDismissReason startupDialogDismissReason) {
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: d */
    public void mo22766d() {
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b0  */
    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo22765e(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p679d5.p681h.C12648h.C12649a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.d5.h.h$a r0 = (p193e.p194a.p679d5.p681h.C12648h.C12649a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f36855e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f36855e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.d5.h.h$a r0 = new e.a.d5.h.h$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f36854d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f36855e
            r8 = r0
            r0 = 1
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L5d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L53
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L9f
        L53:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5d:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            boolean r0 = r0.f36853e
            if (r0 == 0) goto L6c
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            return r0
        L6c:
            r0 = r10
            r11 = r0
            r0 = r5
            java.lang.String r0 = r0.m22801i()
            if (r0 != 0) goto Lb3
            r0 = r5
            s1.w.f r0 = r0.f36851c
            r12 = r0
            e.a.d5.h.h$b r0 = new e.a.d5.h.h$b
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f36855e = r1
            r0 = r12
            r1 = r7
            r2 = r6
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L9f
            r0 = r9
            return r0
        L9f:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Lb0
            r0 = r10
            r11 = r0
            goto Lb3
        Lb0:
            r0 = 0
            r11 = r0
        Lb3:
            r0 = r11
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p679d5.p681h.C12648h.mo22765e(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        b bVar;
        String m22801i = m22801i();
        if (m22801i == null) {
            m22801i = this.f36852d.mo19469m();
        }
        if (m22801i != null) {
            l.e(m22801i, "number");
            b bVar2 = new b();
            Bundle bundle = new Bundle();
            bundle.putString("number", m22801i);
            bVar2.setArguments(bundle);
            bVar = bVar2;
        } else {
            bVar = null;
        }
        return bVar;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: g */
    public boolean mo22763g() {
        return this.f36849a;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: h */
    public boolean mo22762h(StartupDialogDismissReason startupDialogDismissReason) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if ((r3.length() > 0) != false) goto L11;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m22801i() {
        /*
            r2 = this;
            r0 = r2
            e.a.h3.b.a r0 = r0.f36852d
            java.lang.String r0 = r0.mo19477e()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L25
            r0 = r3
            int r0 = r0.length()
            if (r0 <= 0) goto L1c
            r0 = 1
            r4 = r0
            goto L1e
        L1c:
            r0 = 0
            r4 = r0
        L1e:
            r0 = r4
            if (r0 == 0) goto L25
            goto L27
        L25:
            r0 = 0
            r3 = r0
        L27:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p679d5.p681h.C12648h.m22801i():java.lang.String");
    }
}
