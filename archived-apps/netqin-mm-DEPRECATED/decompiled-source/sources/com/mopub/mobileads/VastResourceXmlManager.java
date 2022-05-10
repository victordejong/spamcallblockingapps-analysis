package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResourceXmlManager.class */
public class VastResourceXmlManager {
    public static final String CREATIVE_TYPE = "creativeType";
    public static final String HTML_RESOURCE = "HTMLResource";
    public static final String IFRAME_RESOURCE = "IFrameResource";
    public static final String STATIC_RESOURCE = "StaticResource";

    /* renamed from: a */
    public final Node f34262a;

    public VastResourceXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f34262a = node;
    }

    /* renamed from: a */
    public String m4263a() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f34262a, HTML_RESOURCE));
    }

    /* renamed from: b */
    public String m4262b() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f34262a, IFRAME_RESOURCE));
    }

    /* renamed from: c */
    public String m4261c() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f34262a, STATIC_RESOURCE));
    }

    /* renamed from: d */
    public String m4260d() {
        String attributeValue = XmlUtils.getAttributeValue(XmlUtils.getFirstMatchingChildNode(this.f34262a, STATIC_RESOURCE), CREATIVE_TYPE);
        if (attributeValue != null) {
            return attributeValue.toLowerCase();
        }
        return null;
    }
}
