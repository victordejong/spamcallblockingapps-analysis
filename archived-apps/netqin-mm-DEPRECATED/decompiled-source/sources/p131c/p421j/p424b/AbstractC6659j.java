package p131c.p421j.p424b;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastExtensionParentXmlManager;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* renamed from: c.j.b.j */
/* loaded from: classes2-dex2jar.jar:c/j/b/j.class */
public abstract class AbstractC6659j {

    /* renamed from: a */
    public final Node f20562a;

    public AbstractC6659j(Node node) {
        Preconditions.checkNotNull(node);
        this.f20562a = node;
    }

    /* renamed from: a */
    public List<C6660k> m20159a() {
        List<Node> matchingChildNodes;
        List<Node> matchingChildNodes2;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20562a, "Creatives");
        if (!(firstMatchingChildNode == null || (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) == null)) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, "CompanionAds");
                if (!(firstMatchingChildNode2 == null || (matchingChildNodes2 = XmlUtils.getMatchingChildNodes(firstMatchingChildNode2, "Companion")) == null)) {
                    for (Node node2 : matchingChildNodes2) {
                        arrayList.add(new C6660k(node2));
                    }
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: b */
    public List<VastTracker> m20158b() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f20562a, "Error");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker(nodeValue, true));
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public List<VastTracker> m20157c() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f20562a, "Impression");
        ArrayList arrayList = new ArrayList();
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public List<C6662m> m20156d() {
        List<Node> matchingChildNodes;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20562a, "Creatives");
        if (!(firstMatchingChildNode == null || (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) == null)) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, "Linear");
                if (firstMatchingChildNode2 != null) {
                    arrayList.add(new C6662m(firstMatchingChildNode2));
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: e */
    public VastExtensionParentXmlManager m20155e() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20562a, "Extensions");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new VastExtensionParentXmlManager(firstMatchingChildNode);
    }
}
