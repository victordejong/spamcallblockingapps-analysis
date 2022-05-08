package com.mopub.mobileads;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import org.w3c.dom.Node;
import p081h.p430l.p433b.C10693a;
import p081h.p430l.p433b.C10705f;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastExtensionXmlManager.class */
public class VastExtensionXmlManager {
    public static final String AD_VERIFICATIONS = "AdVerifications";
    public static final String AVID = "AVID";

    /* renamed from: ID */
    public static final String f8553ID = "id";
    public static final String MOAT = "Moat";
    public static final String TYPE = "type";
    public static final String VENDOR = "vendor";
    public static final String VERIFICATION = "Verification";
    public static final String VIDEO_VIEWABILITY_TRACKER = "MoPubViewabilityTracker";

    /* renamed from: a */
    public final Node f8554a;

    public VastExtensionXmlManager(@NonNull Node node) {
        Preconditions.checkNotNull(node);
        this.f8554a = node;
    }

    @Nullable
    /* renamed from: a */
    public Set<String> m30492a() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f8554a, AVID);
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new C10693a(firstMatchingChildNode).m10897a();
    }

    @Nullable
    /* renamed from: b */
    public Set<String> m30491b() {
        List<Node> matchingChildNodes;
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f8554a, AD_VERIFICATIONS);
        if (firstMatchingChildNode == null || (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, VERIFICATION, VENDOR, Collections.singletonList(MOAT))) == null || matchingChildNodes.isEmpty()) {
            return null;
        }
        return new C10705f(matchingChildNodes).m10874a();
    }

    @Nullable
    /* renamed from: c */
    public String m30490c() {
        return XmlUtils.getAttributeValue(this.f8554a, "type");
    }

    @Nullable
    /* renamed from: d */
    public VideoViewabilityTracker m30489d() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f8554a, VIDEO_VIEWABILITY_TRACKER);
        if (firstMatchingChildNode == null) {
            return null;
        }
        VideoViewabilityTrackerXmlManager videoViewabilityTrackerXmlManager = new VideoViewabilityTrackerXmlManager(firstMatchingChildNode);
        Integer c = videoViewabilityTrackerXmlManager.m30354c();
        Integer a = videoViewabilityTrackerXmlManager.m30356a();
        String b = videoViewabilityTrackerXmlManager.m30355b();
        VideoViewabilityTracker videoViewabilityTracker = null;
        if (c != null) {
            videoViewabilityTracker = null;
            if (a != null) {
                videoViewabilityTracker = TextUtils.isEmpty(b) ? null : new VideoViewabilityTracker(c.intValue(), a.intValue(), b);
            }
        }
        return videoViewabilityTracker;
    }
}
