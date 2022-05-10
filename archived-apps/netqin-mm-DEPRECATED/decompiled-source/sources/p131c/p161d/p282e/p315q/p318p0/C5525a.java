package p131c.p161d.p282e.p315q.p318p0;

import android.app.Activity;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
/* renamed from: c.d.e.q.p0.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/a.class */
public final /* synthetic */ class C5525a implements FirebaseInAppMessagingDisplay {

    /* renamed from: a */
    public final C5526b f18471a;

    /* renamed from: b */
    public final Activity f18472b;

    public C5525a(C5526b bVar, Activity activity) {
        this.f18471a = bVar;
        this.f18472b = activity;
    }

    /* renamed from: a */
    public static FirebaseInAppMessagingDisplay m23631a(C5526b bVar, Activity activity) {
        return new C5525a(bVar, activity);
    }

    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay
    public void displayMessage(AbstractC5863i iVar, FirebaseInAppMessagingDisplayCallbacks firebaseInAppMessagingDisplayCallbacks) {
        C5526b.m23620a(this.f18471a, this.f18472b, iVar, firebaseInAppMessagingDisplayCallbacks);
    }
}
