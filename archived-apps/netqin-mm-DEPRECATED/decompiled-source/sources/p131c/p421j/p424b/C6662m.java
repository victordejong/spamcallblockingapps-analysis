package p131c.p421j.p424b;

import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastAbsoluteProgressTracker;
import com.mopub.mobileads.VastFractionalProgressTracker;
import com.mopub.mobileads.VastFractionalProgressTrackerTwo;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.w3c.dom.Node;
/* renamed from: c.j.b.m */
/* loaded from: classes2-dex2jar.jar:c/j/b/m.class */
public class C6662m {
    public static final String ICON = "Icon";
    public static final String ICONS = "Icons";

    /* renamed from: a */
    public final Node f20565a;

    public C6662m(Node node) {
        Preconditions.checkNotNull(node);
        this.f20565a = node;
    }

    /* renamed from: a */
    public List<VastAbsoluteProgressTracker> m20147a() {
        ArrayList arrayList = new ArrayList();
        for (String str : m20146a("start")) {
            arrayList.add(new VastAbsoluteProgressTracker(str, 0));
        }
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20565a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("progress"))) {
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
            for (Node node2 : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("creativeView"))) {
                String nodeValue2 = XmlUtils.getNodeValue(node2);
                if (nodeValue2 != null) {
                    arrayList.add(new VastAbsoluteProgressTracker(nodeValue2, 0));
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public final List<String> m20146a(String str) {
        Preconditions.checkNotNull(str);
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20565a, "TrackingEvents");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList(str))) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(nodeValue);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m20145a(List<VastFractionalProgressTracker> list, List<String> list2, float f) {
        Preconditions.checkNotNull(list, "trackers cannot be null");
        Preconditions.checkNotNull(list2, "urls cannot be null");
        for (String str : list2) {
            list.add(new VastFractionalProgressTracker(str, f));
        }
    }

    /* renamed from: b */
    public String m20144b() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20565a, "VideoClicks");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode, "ClickThrough"));
    }

    /* renamed from: b */
    public final List<VastTracker> m20143b(String str) {
        List<String> a = m20146a(str);
        ArrayList arrayList = new ArrayList(a.size());
        for (String str2 : a) {
            arrayList.add(new VastTracker(str2));
        }
        return arrayList;
    }

    /* renamed from: c */
    public List<VastTracker> m20142c() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20565a, "VideoClicks");
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

    /* renamed from: d */
    public List<VastFractionalProgressTracker> m20141d() {
        ArrayList arrayList = new ArrayList();
        m20145a(arrayList, m20146a("firstQuartile"), 0.25f);
        m20145a(arrayList, m20146a("midpoint"), 0.5f);
        m20145a(arrayList, m20146a("thirdQuartile"), 0.75f);
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20565a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("progress"))) {
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

    /* renamed from: e */
    public List<VastIconXmlManager> m20140e() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20565a, ICONS);
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, ICON)) {
            arrayList.add(new VastIconXmlManager(node));
        }
        return arrayList;
    }

    /* renamed from: f */
    public List<C6663n> m20139f() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20565a, "MediaFiles");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "MediaFile")) {
            arrayList.add(new C6663n(node));
        }
        return arrayList;
    }

    /* renamed from: g */
    public List<VastTracker> m20138g() {
        List<String> a = m20146a("pause");
        ArrayList arrayList = new ArrayList();
        for (String str : a) {
            arrayList.add(new VastTracker(str, true));
        }
        return arrayList;
    }

    /* renamed from: h */
    public List<VastTracker> m20137h() {
        List<String> a = m20146a("resume");
        ArrayList arrayList = new ArrayList();
        for (String str : a) {
            arrayList.add(new VastTracker(str, true));
        }
        return arrayList;
    }

    /* renamed from: i */
    public String m20136i() {
        String attributeValue = XmlUtils.getAttributeValue(this.f20565a, "skipoffset");
        if (attributeValue != null && !attributeValue.trim().isEmpty()) {
            return attributeValue.trim();
        }
        return null;
    }

    /* renamed from: j */
    public List<VastTracker> m20135j() {
        List<VastTracker> b = m20143b("close");
        b.addAll(m20143b("closeLinear"));
        return b;
    }

    /* renamed from: k */
    public List<VastTracker> m20134k() {
        return m20143b("complete");
    }

    /* renamed from: l */
    public List<VastTracker> m20133l() {
        return m20143b("skip");
    }
}
