package p081h.p430l.p435d;

import android.os.Handler;
import androidx.annotation.NonNull;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningSource;
/* renamed from: h.l.d.a */
/* loaded from: classes2-dex2jar.jar:h/l/d/a.class */
public class C10724a implements PositioningSource {
    @NonNull

    /* renamed from: a */
    public final Handler f24441a = new Handler();
    @NonNull

    /* renamed from: b */
    public final MoPubNativeAdPositioning.MoPubClientPositioning f24442b;

    /* renamed from: h.l.d.a$a */
    /* loaded from: classes2-dex2jar.jar:h/l/d/a$a.class */
    public class RunnableC10725a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ PositioningSource.PositioningListener f24443a;

        public RunnableC10725a(PositioningSource.PositioningListener positioningListener) {
            this.f24443a = positioningListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f24443a.onLoad(C10724a.this.f24442b);
        }
    }

    public C10724a(@NonNull MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this.f24442b = MoPubNativeAdPositioning.m30132a(moPubClientPositioning);
    }

    @Override // com.mopub.nativeads.PositioningSource
    public void loadPositions(@NonNull String str, @NonNull PositioningSource.PositioningListener positioningListener) {
        this.f24441a.post(new RunnableC10725a(positioningListener));
    }
}
