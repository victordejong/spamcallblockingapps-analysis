package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import p131c.p161d.p170b.p173b.p174h.C2502d;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2586d;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2590g;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2596l;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/CctBackendFactory.class */
public class CctBackendFactory implements AbstractC2586d {
    @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2586d
    public AbstractC2596l create(AbstractC2590g gVar) {
        return new C2502d(gVar.mo29472a(), gVar.mo29468d(), gVar.mo29469c());
    }
}
