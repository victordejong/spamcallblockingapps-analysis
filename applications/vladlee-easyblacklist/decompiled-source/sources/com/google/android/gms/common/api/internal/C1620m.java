package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/m.class */
public final class C1620m extends AbstractRunnableC1623p {

    /* renamed from: a */
    private final ArrayList<Api.Client> f6406a;

    /* renamed from: b */
    private final /* synthetic */ zaak f6407b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1620m(zaak zaakVar, ArrayList<Api.Client> arrayList) {
        super(zaakVar, (byte) 0);
        this.f6407b = zaakVar;
        this.f6406a = arrayList;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractRunnableC1623p
    /* renamed from: a */
    public final void mo5885a() {
        zabe zabeVar;
        IAccountAccessor iAccountAccessor;
        zabe zabeVar2;
        zabeVar = this.f6407b.f6434a;
        zabeVar.f6484d.f6458c = zaak.m5853g(this.f6407b);
        ArrayList<Api.Client> arrayList = this.f6406a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Api.Client client = arrayList.get(i);
            i++;
            iAccountAccessor = this.f6407b.f6448o;
            zabeVar2 = this.f6407b.f6434a;
            client.getRemoteService(iAccountAccessor, zabeVar2.f6484d.f6458c);
        }
    }
}
