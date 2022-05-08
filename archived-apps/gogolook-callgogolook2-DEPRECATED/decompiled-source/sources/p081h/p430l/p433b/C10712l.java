package p081h.p430l.p433b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastAbsoluteProgressTracker;
import com.mopub.mobileads.VastFractionalProgressTracker;
import com.mopub.mobileads.VastFractionalProgressTrackerTwo;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.w3c.dom.Node;
/* renamed from: h.l.b.l */
/* loaded from: classes2-dex2jar.jar:h/l/b/l.class */
public class C10712l {
    public static final String ICON = "Icon";
    public static final String ICONS = "Icons";
    @NonNull

    /* renamed from: a */
    public final Node f24415a;

    public C10712l(@NonNull Node node) {
        Preconditions.checkNotNull(node);
        this.f24415a = node;
    }

    @NonNull
    /* renamed from: a */
    public List<VastAbsoluteProgressTracker> m10849a() {
        ArrayList arrayList = new ArrayList();
        for (String str : m10848a("start")) {
            arrayList.add(new VastAbsoluteProgressTracker(str, 0));
        }
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24415a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", NotificationCompat.CATEGORY_EVENT, Collections.singletonList(NotificationCompat.CATEGORY_PROGRESS))) {
                String attributeValue = XmlUtils.getAttributeValue(node, VastIconXmlManager.OFFSET);
                if (attributeValue != null) {
                    String trim = attributeValue.trim();
                    if (VastAbsoluteProgressTracker.isAbsoluteTracker(trim)) {
                        String nodeValue = XmlUtils.getNodeValue(node);
                        try {
                            Integer parseAbsoluteOffset = VastAbsoluteProgressTracker.parseAbsoluteOffset(trim);
                            if (parseAbsoluteOffset != null && parseAbsoluteOffset.intValue() >= 0) {
                                arrayList.add(new VastAbsoluteProgressTracker(nodeValue, parseAbsoluteOffset.intValue()));
                            }
                        } catch (NumberFormatException e) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Failed to parse VAST progress tracker %s", trim));
                        }
                    }
                }
            }
            for (Node node2 : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", NotificationCompat.CATEGORY_EVENT, Collections.singletonList("creativeView"))) {
                String nodeValue2 = XmlUtils.getNodeValue(node2);
                if (nodeValue2 != null) {
                    arrayList.add(new VastAbsoluteProgressTracker(nodeValue2, 0));
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    @NonNull
    /* renamed from: a */
    public final List<String> m10848a(@NonNull String str) {
        Preconditions.checkNotNull(str);
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24415a, "TrackingEvents");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", NotificationCompat.CATEGORY_EVENT, Collections.singletonList(str))) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(nodeValue);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m10847a(@NonNull List<VastFractionalProgressTracker> list, @NonNull List<String> list2, float f) {
        Preconditions.checkNotNull(list, "trackers cannot be null");
        Preconditions.checkNotNull(list2, "urls cannot be null");
        for (String str : list2) {
            list.add(new VastFractionalProgressTracker(str, f));
        }
    }

    @Nullable
    /* renamed from: b */
    public String m10846b() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24415a, "VideoClicks");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode, "ClickThrough"));
    }

    @NonNull
    /* renamed from: b */
    public final List<VastTracker> m10845b(@NonNull String str) {
        List<String> a = m10848a(str);
        ArrayList arrayList = new ArrayList(a.size());
        for (String str2 : a) {
            arrayList.add(new VastTracker(str2));
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: c */
    public List<VastTracker> m10844c() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24415a, "VideoClicks");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "ClickTracking")) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: d */
    public List<VastFractionalProgressTracker> m10843d() {
        ArrayList arrayList = new ArrayList();
        m10847a(arrayList, m10848a("firstQuartile"), 0.25f);
        m10847a(arrayList, m10848a("midpoint"), 0.5f);
        m10847a(arrayList, m10848a("thirdQuartile"), 0.75f);
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24415a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", NotificationCompat.CATEGORY_EVENT, Collections.singletonList(NotificationCompat.CATEGORY_PROGRESS))) {
                String attributeValue = XmlUtils.getAttributeValue(node, VastIconXmlManager.OFFSET);
                if (attributeValue != null) {
                    String trim = attributeValue.trim();
                    if (VastFractionalProgressTrackerTwo.Companion.isPercentageTracker(trim)) {
                        String nodeValue = XmlUtils.getNodeValue(node);
                        try {
                            float parseFloat = Float.parseFloat(trim.replace("%", "")) / 100.0f;
                            if (parseFloat >= 0.0f) {
                                arrayList.add(new VastFractionalProgressTracker(nodeValue, parseFloat));
                            }
                        } catch (NumberFormatException e) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Failed to parse VAST progress tracker %s", trim));
                        }
                    }
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    @NonNull
    /* renamed from: e */
    public List<VastIconXmlManager> m10842e() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24415a, ICONS);
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, ICON)) {
            arrayList.add(new VastIconXmlManager(node));
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: f */
    public List<C10714n> m10841f() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24415a, "MediaFiles");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "MediaFile")) {
            arrayList.add(new C10714n(node));
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: g */
    public List<VastTracker> m10840g() {
        List<String> a = m10848a("pause");
        ArrayList arrayList = new ArrayList();
        for (String str : a) {
            arrayList.add(new VastTracker(str, true));
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: h */
    public List<VastTracker> m10839h() {
        List<String> a = m10848a("resume");
        ArrayList arrayList = new ArrayList();
        for (String str : a) {
            arrayList.add(new VastTracker(str, true));
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: i */
    public String m10838i() {
        String attributeValue = XmlUtils.getAttributeValue(this.f24415a, "skipoffset");
        if (attributeValue != null && !attributeValue.trim().isEmpty()) {
            return attributeValue.trim();
        }
        return null;
    }

    @NonNull
    /* renamed from: j */
    public List<VastTracker> m10837j() {
        List<VastTracker> b = m10845b(MraidParser.MRAID_COMMAND_CLOSE);
        b.addAll(m10845b("closeLinear"));
        return b;
    }

    @NonNull
    /* renamed from: k */
    public List<VastTracker> m10836k() {
        return m10845b("complete");
    }

    @NonNull
    /* renamed from: l */
    public List<VastTracker> m10835l() {
        return m10845b("skip");
    }
}
