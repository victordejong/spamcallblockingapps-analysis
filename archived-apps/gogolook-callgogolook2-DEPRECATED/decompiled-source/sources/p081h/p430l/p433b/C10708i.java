package p081h.p430l.p433b;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastResourceXmlManager;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.w3c.dom.Node;
/* renamed from: h.l.b.i */
/* loaded from: classes2-dex2jar.jar:h/l/b/i.class */
public class C10708i {
    @NonNull

    /* renamed from: a */
    public final Node f24403a;
    @NonNull

    /* renamed from: b */
    public final VastResourceXmlManager f24404b;

    public C10708i(@NonNull Node node) {
        Preconditions.checkNotNull(node, "companionNode cannot be null");
        this.f24403a = node;
        this.f24404b = new VastResourceXmlManager(node);
    }

    @Nullable
    /* renamed from: a */
    public String m10864a() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f24403a, "CompanionClickThrough"));
    }

    @NonNull
    /* renamed from: b */
    public List<VastTracker> m10863b() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f24403a, "CompanionClickTracking");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: c */
    public List<VastTracker> m10862c() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24403a, "TrackingEvents");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", NotificationCompat.CATEGORY_EVENT, Collections.singletonList("creativeView"))) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: d */
    public Integer m10861d() {
        return XmlUtils.getAttributeValueAsInt(this.f24403a, "height");
    }

    @NonNull
    /* renamed from: e */
    public VastResourceXmlManager m10860e() {
        return this.f24404b;
    }

    @Nullable
    /* renamed from: f */
    public Integer m10859f() {
        return XmlUtils.getAttributeValueAsInt(this.f24403a, "width");
    }

    /* renamed from: g */
    public boolean m10858g() {
        return !TextUtils.isEmpty(this.f24404b.m30472c()) || !TextUtils.isEmpty(this.f24404b.m30474a()) || !TextUtils.isEmpty(this.f24404b.m30473b());
    }
}
