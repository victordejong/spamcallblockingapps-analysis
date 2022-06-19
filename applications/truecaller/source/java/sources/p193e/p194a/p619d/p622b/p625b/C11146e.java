package p193e.p194a.p619d.p622b.p625b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.truecaller.voip.legacy.incoming.LegacyIncomingVoipService;
import p193e.p194a.p619d.p637c0.AbstractC11434m1;
import s1.z.c.l;
/* renamed from: e.a.d.b.b.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/e.class */
public final class C11146e extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ LegacyIncomingVoipService f32966a;

    public C11146e(LegacyIncomingVoipService legacyIncomingVoipService) {
        this.f32966a = legacyIncomingVoipService;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean mo24689i;
        AbstractC11434m1 abstractC11434m1 = this.f32966a.f16369g;
        if (abstractC11434m1 == null) {
            l.l("voipTelecomUtil");
            throw null;
        }
        mo24689i = abstractC11434m1.mo24689i(null);
        if (mo24689i) {
            return;
        }
        AbstractC11149h abstractC11149h = this.f32966a.f16368f;
        if (abstractC11149h == null) {
            l.l("presenter");
            throw null;
        }
        C11139b c11139b = (C11139b) abstractC11149h;
        c11139b.f32948r.mo24687a();
        c11139b.f32946p.mo24555c();
    }
}
