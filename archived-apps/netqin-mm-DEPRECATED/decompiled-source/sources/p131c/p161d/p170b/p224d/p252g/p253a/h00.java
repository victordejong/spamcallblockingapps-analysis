package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzcf;
import com.google.android.gms.internal.ads.zzejz;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.UUID;
@VisibleForTesting
/* renamed from: c.d.b.d.g.a.h00 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/h00.class */
public final class h00 implements j00 {

    /* renamed from: a */
    public static final zzcf.zza f13230a = zzcf.zza.m14536v();

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.j00
    /* renamed from: a */
    public final zzcf.zza mo26735a() {
        return f13230a;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.j00
    /* renamed from: a */
    public final zzcf.zza mo26734a(Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzcf.zza.C10493zza u = zzcf.zza.m14539u();
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context);
        advertisingIdClient.start();
        AdvertisingIdClient.Info info = advertisingIdClient.getInfo();
        String id = info.getId();
        String str = id;
        if (id != null) {
            str = id;
            if (id.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                UUID fromString = UUID.fromString(id);
                byte[] bArr = new byte[16];
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.putLong(fromString.getMostSignificantBits());
                wrap.putLong(fromString.getLeastSignificantBits());
                str = Base64.encodeToString(bArr, 11);
            }
        }
        if (str != null) {
            u.m14504c(str);
            u.m14511a(info.isLimitAdTrackingEnabled());
            u.m14516a(zzcf.zza.zzc.DEVICE_IDENTIFIER_ANDROID_AD_ID);
        }
        return (zzcf.zza) ((zzejz) u.mo12342K());
    }
}
