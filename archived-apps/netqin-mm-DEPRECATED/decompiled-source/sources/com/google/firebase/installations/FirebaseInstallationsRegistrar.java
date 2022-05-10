package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p288k.AbstractC5165e;
import p131c.p161d.p282e.p288k.AbstractC5171h;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p288k.C5180n;
import p131c.p161d.p282e.p335s.AbstractC5898g;
import p131c.p161d.p282e.p335s.C5895f;
import p131c.p161d.p282e.p335s.C5899h;
import p131c.p161d.p282e.p351v.AbstractC6063i;
import p131c.p161d.p282e.p351v.C6061h;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsRegistrar.class */
public class FirebaseInstallationsRegistrar implements AbstractC5171h {
    public static /* synthetic */ AbstractC5898g lambda$getComponents$0(AbstractC5165e eVar) {
        return new C5895f((C5128c) eVar.mo24330a(C5128c.class), eVar.mo24329b(AbstractC6063i.class), eVar.mo24329b(HeartBeatInfo.class));
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5171h
    public List<C5162d<?>> getComponents() {
        C5162d.C5164b a = C5162d.m24395a(AbstractC5898g.class);
        a.m24378a(C5180n.m24343c(C5128c.class));
        a.m24378a(C5180n.m24345b(HeartBeatInfo.class));
        a.m24378a(C5180n.m24345b(AbstractC6063i.class));
        a.m24379a(C5899h.m22782a());
        return Arrays.asList(a.m24382a(), C6061h.m22163a("fire-installations", "16.3.4"));
    }
}
