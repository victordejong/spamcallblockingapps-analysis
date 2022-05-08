package p081h.p430l.p435d;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Constants;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningRequest;
import com.mopub.nativeads.PositioningSource;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
/* renamed from: h.l.d.h */
/* loaded from: classes2-dex2jar.jar:h/l/d/h.class */
public class C10738h implements PositioningSource {
    @NonNull

    /* renamed from: b */
    public final Context f24482b;
    @Nullable

    /* renamed from: g */
    public PositioningSource.PositioningListener f24487g;

    /* renamed from: h */
    public int f24488h;
    @Nullable

    /* renamed from: i */
    public String f24489i;
    @Nullable

    /* renamed from: j */
    public PositioningRequest f24490j;

    /* renamed from: a */
    public int f24481a = 300000;
    @NonNull

    /* renamed from: c */
    public final Handler f24483c = new Handler();
    @NonNull

    /* renamed from: d */
    public final Runnable f24484d = new RunnableC10739a();

    /* renamed from: e */
    public final Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> f24485e = new C10740b();

    /* renamed from: f */
    public final Response.ErrorListener f24486f = new C10741c();

    /* renamed from: h.l.d.h$a */
    /* loaded from: classes2-dex2jar.jar:h/l/d/h$a.class */
    public class RunnableC10739a implements Runnable {
        public RunnableC10739a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C10738h.this.m10753b();
        }
    }

    /* renamed from: h.l.d.h$b */
    /* loaded from: classes2-dex2jar.jar:h/l/d/h$b.class */
    public class C10740b implements Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> {
        public C10740b() {
        }

        public void onResponse(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
            C10738h.this.m10756a(moPubClientPositioning);
        }
    }

    /* renamed from: h.l.d.h$c */
    /* loaded from: classes2-dex2jar.jar:h/l/d/h$c.class */
    public class C10741c implements Response.ErrorListener {
        public C10741c() {
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (!(volleyError instanceof MoPubNetworkError) || ((MoPubNetworkError) volleyError).getReason().equals(MoPubNetworkError.Reason.WARMING_UP)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to load positioning data", volleyError);
                if (volleyError.networkResponse == null && !DeviceUtils.isNetworkAvailable(C10738h.this.f24482b)) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.valueOf(MoPubErrorCode.NO_CONNECTION));
                }
            }
            C10738h.this.m10757a();
        }
    }

    public C10738h(@NonNull Context context) {
        this.f24482b = context.getApplicationContext();
    }

    /* renamed from: a */
    public final void m10757a() {
        int pow = (int) (Math.pow(2.0d, this.f24488h + 1) * 1000.0d);
        if (pow >= this.f24481a) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Error downloading positioning information");
            PositioningSource.PositioningListener positioningListener = this.f24487g;
            if (positioningListener != null) {
                positioningListener.onFailed();
            }
            this.f24487g = null;
            return;
        }
        this.f24488h++;
        this.f24483c.postDelayed(this.f24484d, pow);
    }

    /* renamed from: a */
    public final void m10756a(@NonNull MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        PositioningSource.PositioningListener positioningListener = this.f24487g;
        if (positioningListener != null) {
            positioningListener.onLoad(moPubClientPositioning);
        }
        this.f24487g = null;
        this.f24488h = 0;
    }

    /* renamed from: b */
    public final void m10753b() {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Loading positioning from: " + this.f24489i);
        this.f24490j = new PositioningRequest(this.f24482b, this.f24489i, this.f24485e, this.f24486f);
        Networking.getRequestQueue(this.f24482b).add(this.f24490j);
    }

    @Override // com.mopub.nativeads.PositioningSource
    public void loadPositions(@NonNull String str, @NonNull PositioningSource.PositioningListener positioningListener) {
        PositioningRequest positioningRequest = this.f24490j;
        if (positioningRequest != null) {
            positioningRequest.cancel();
            this.f24490j = null;
        }
        if (this.f24488h > 0) {
            this.f24483c.removeCallbacks(this.f24484d);
            this.f24488h = 0;
        }
        this.f24487g = positioningListener;
        this.f24489i = new C10737g(this.f24482b).withAdUnitId(str).generateUrlString(Constants.HOST);
        m10753b();
    }
}
