package p193e.p194a.p619d.p628c.p636z;

import android.net.Uri;
import android.view.View;
import com.truecaller.voip.p192ui.calldetails.VoipHistoryDetailsMVP$CallingAction;
import p193e.p194a.p619d.p627b0.AbstractC11162b;
import p193e.p194a.p619d.p637c0.p641y1.AbstractC11567d;
/* renamed from: e.a.d.c.z.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/z/h.class */
public final class View$OnClickListenerC11345h implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C11346i f33365a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC11162b.C11164b f33366b;

    /* renamed from: c */
    public final /* synthetic */ VoipHistoryDetailsMVP$CallingAction f33367c;

    public View$OnClickListenerC11345h(C11346i c11346i, AbstractC11162b.C11164b c11164b, Uri uri, AbstractC11567d abstractC11567d, VoipHistoryDetailsMVP$CallingAction voipHistoryDetailsMVP$CallingAction) {
        this.f33365a = c11346i;
        this.f33366b = c11164b;
        this.f33367c = voipHistoryDetailsMVP$CallingAction;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC11340d abstractC11340d = this.f33365a.f33370d;
        if (abstractC11340d != null) {
            abstractC11340d.mo24793u9(this.f33366b, this.f33367c);
        }
    }
}
