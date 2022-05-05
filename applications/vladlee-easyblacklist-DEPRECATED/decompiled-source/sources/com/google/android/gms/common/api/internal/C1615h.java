package com.google.android.gms.common.api.internal;

import android.content.Context;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.GoogleApiAvailabilityCache;
import com.google.android.gms.signin.zac;
import java.util.ArrayList;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/h.class */
public final class C1615h extends AbstractRunnableC1623p {

    /* renamed from: a */
    final /* synthetic */ zaak f6397a;

    /* renamed from: b */
    private final Map<Api.Client, C1616i> f6398b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1615h(zaak zaakVar, Map<Api.Client, C1616i> map) {
        super(zaakVar, (byte) 0);
        this.f6397a = zaakVar;
        this.f6398b = map;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractRunnableC1623p
    /* renamed from: a */
    public final void mo5885a() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        boolean z;
        Context context;
        zabe zabeVar;
        zac zacVar;
        zac zacVar2;
        zabe zabeVar2;
        Context context2;
        Context context3;
        boolean z2;
        googleApiAvailabilityLight = this.f6397a.f6437d;
        GoogleApiAvailabilityCache googleApiAvailabilityCache = new GoogleApiAvailabilityCache(googleApiAvailabilityLight);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Api.Client client : this.f6398b.keySet()) {
            if (client.requiresGooglePlayServices()) {
                z2 = this.f6398b.get(client).f6401c;
                if (!z2) {
                    arrayList.add(client);
                }
            }
            arrayList2.add(client);
        }
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        if (arrayList.isEmpty()) {
            ArrayList arrayList3 = arrayList2;
            int size = arrayList3.size();
            while (true) {
                if (i3 >= size) {
                    break;
                }
                Object obj = arrayList3.get(i3);
                i3++;
                context3 = this.f6397a.f6436c;
                int clientAvailability = googleApiAvailabilityCache.getClientAvailability(context3, (Api.Client) obj);
                i = clientAvailability;
                if (clientAvailability == 0) {
                    i = clientAvailability;
                    break;
                }
            }
        } else {
            ArrayList arrayList4 = arrayList;
            int size2 = arrayList4.size();
            while (true) {
                if (i2 >= size2) {
                    break;
                }
                Object obj2 = arrayList4.get(i2);
                i2++;
                context2 = this.f6397a.f6436c;
                int clientAvailability2 = googleApiAvailabilityCache.getClientAvailability(context2, (Api.Client) obj2);
                i = clientAvailability2;
                if (clientAvailability2 != 0) {
                    i = clientAvailability2;
                    break;
                }
            }
        }
        if (i != 0) {
            ConnectionResult connectionResult = new ConnectionResult(i, null);
            zabeVar2 = this.f6397a.f6434a;
            zabeVar2.m5833a(new C1618k(this, this.f6397a, connectionResult));
            return;
        }
        z = this.f6397a.f6446m;
        if (z) {
            zacVar = this.f6397a.f6444k;
            if (zacVar != null) {
                zacVar2 = this.f6397a.f6444k;
                zacVar2.connect();
            }
        }
        for (Api.Client client2 : this.f6398b.keySet()) {
            C1616i iVar = this.f6398b.get(client2);
            if (client2.requiresGooglePlayServices()) {
                context = this.f6397a.f6436c;
                if (googleApiAvailabilityCache.getClientAvailability(context, client2) != 0) {
                    zabeVar = this.f6397a.f6434a;
                    zabeVar.m5833a(new C1617j(this.f6397a, iVar));
                }
            }
            client2.connect(iVar);
        }
    }
}
