package com.google.android.gms.internal.icing;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.search.SearchAuth;
import com.google.android.gms.search.SearchAuthApi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzay.class */
final class zzay extends BaseImplementation.ApiMethodImpl<SearchAuthApi.GoogleNowAuthResult, zzat> {
    private final String zzbo;
    private final boolean zzbp = Log.isLoggable("SearchAuth", 3);
    private final String zzbr;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzay(GoogleApiClient googleApiClient, String str) {
        super(SearchAuth.API, googleApiClient);
        this.zzbr = str;
        this.zzbo = googleApiClient.getContext().getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        if (this.zzbp) {
            String valueOf = String.valueOf(status.getStatusMessage());
            Log.d("SearchAuth", valueOf.length() != 0 ? "GetGoogleNowAuthImpl received failure: ".concat(valueOf) : new String("GetGoogleNowAuthImpl received failure: "));
        }
        return new zzba(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void doExecute(zzat zzatVar) throws RemoteException {
        zzat zzatVar2 = zzatVar;
        if (this.zzbp) {
            Log.d("SearchAuth", "GetGoogleNowAuthImpl started");
        }
        ((zzar) zzatVar2.getService()).zza(new zzaz(this), this.zzbo, this.zzbr);
    }
}
