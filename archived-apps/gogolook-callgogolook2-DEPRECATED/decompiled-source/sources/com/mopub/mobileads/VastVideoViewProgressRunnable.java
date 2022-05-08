package com.mopub.mobileads;

import android.os.Handler;
import androidx.annotation.NonNull;
import com.mopub.common.ExternalViewabilitySession;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastTracker;
import com.mopub.network.TrackingRequest;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewProgressRunnable.class */
public class VastVideoViewProgressRunnable extends RepeatingHandlerRunnable {
    @NonNull

    /* renamed from: d */
    public final VastVideoViewController f8797d;
    @NonNull

    /* renamed from: e */
    public final VastVideoConfig f8798e;

    public VastVideoViewProgressRunnable(@NonNull VastVideoViewController vastVideoViewController, @NonNull VastVideoConfig vastVideoConfig, @NonNull Handler handler) {
        super(handler);
        Preconditions.checkNotNull(vastVideoViewController);
        Preconditions.checkNotNull(vastVideoConfig);
        this.f8797d = vastVideoViewController;
        this.f8798e = vastVideoConfig;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VastFractionalProgressTracker(VastTracker.EnumC3847a.QUARTILE_EVENT, ExternalViewabilitySession.VideoEvent.AD_STARTED.name(), 0.0f));
        arrayList.add(new VastFractionalProgressTracker(VastTracker.EnumC3847a.QUARTILE_EVENT, ExternalViewabilitySession.VideoEvent.AD_IMPRESSED.name(), 0.0f));
        arrayList.add(new VastFractionalProgressTracker(VastTracker.EnumC3847a.QUARTILE_EVENT, ExternalViewabilitySession.VideoEvent.AD_VIDEO_FIRST_QUARTILE.name(), 0.25f));
        arrayList.add(new VastFractionalProgressTracker(VastTracker.EnumC3847a.QUARTILE_EVENT, ExternalViewabilitySession.VideoEvent.AD_VIDEO_MIDPOINT.name(), 0.5f));
        arrayList.add(new VastFractionalProgressTracker(VastTracker.EnumC3847a.QUARTILE_EVENT, ExternalViewabilitySession.VideoEvent.AD_VIDEO_THIRD_QUARTILE.name(), 0.75f));
        this.f8798e.addFractionalTrackers(arrayList);
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        int duration = this.f8797d.getDuration();
        int currentPosition = this.f8797d.getCurrentPosition();
        this.f8797d.updateProgressBar();
        if (duration > 0) {
            List<VastTracker> untriggeredTrackersBefore = this.f8798e.getUntriggeredTrackersBefore(currentPosition, duration);
            if (!untriggeredTrackersBefore.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (VastTracker vastTracker : untriggeredTrackersBefore) {
                    if (vastTracker.getMessageType() == VastTracker.EnumC3847a.TRACKING_URL) {
                        arrayList.add(vastTracker.getContent());
                    } else if (vastTracker.getMessageType() == VastTracker.EnumC3847a.QUARTILE_EVENT) {
                        this.f8797d.m30427b(vastTracker.getContent());
                    }
                    vastTracker.setTracked();
                }
                TrackingRequest.makeTrackingHttpRequest(new VastMacroHelper(arrayList).withAssetUri(this.f8797d.getNetworkMediaFileUrl()).withContentPlayHead(Integer.valueOf(currentPosition)).getUris(), this.f8797d.m30570b());
            }
            this.f8797d.handleIconDisplay(currentPosition);
        }
    }
}
