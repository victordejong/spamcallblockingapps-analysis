package p000a.p001a.p002a.p003a.p004a.p009d;

import android.content.Context;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
/* renamed from: a.a.a.a.a.d.j */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/d/j.class */
public final class RunnableC0088j implements Runnable {

    /* renamed from: a */
    private final Context f164a;

    /* renamed from: b */
    private final AbstractC0084f f165b;

    public RunnableC0088j(Context context, AbstractC0084f fVar) {
        this.f164a = context;
        this.f165b = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            C0026j.m10354a(this.f164a, "Performing time based file roll over.");
            if (!this.f165b.rollFileOver()) {
                this.f165b.cancelTimeBasedFileRollOver();
            }
        } catch (Exception e) {
            C0026j.m10333b(this.f164a, "Failed to roll over file");
        }
    }
}
