package p131c.p421j.p424b;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
/* renamed from: c.j.b.p */
/* loaded from: classes2-dex2jar.jar:c/j/b/p.class */
public class C6665p {

    /* renamed from: a */
    public Document f20567a;

    /* renamed from: a */
    public List<C6658i> m20126a() {
        ArrayList arrayList = new ArrayList();
        Document document = this.f20567a;
        if (document == null) {
            return arrayList;
        }
        NodeList elementsByTagName = document.getElementsByTagName("Ad");
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            arrayList.add(new C6658i(elementsByTagName.item(i)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m20125a(String str) throws ParserConfigurationException, IOException, SAXException {
        Preconditions.checkNotNull(str, "xmlString cannot be null");
        String str2 = "<MPMoVideoXMLDocRoot>" + str.replaceFirst("<\\?.*\\?>", "") + "</MPMoVideoXMLDocRoot>";
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setCoalescing(true);
        newInstance.setExpandEntityReferences(false);
        this.f20567a = newInstance.newDocumentBuilder().parse(new InputSource(new StringReader(str2)));
    }

    /* renamed from: b */
    public String m20124b() {
        return XmlUtils.getFirstMatchingStringData(this.f20567a, "MoPubCloseIcon");
    }

    /* renamed from: c */
    public String m20123c() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f20567a, "MoPubCtaText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 15) {
            return null;
        }
        return firstMatchingStringData;
    }

    /* renamed from: d */
    public String m20122d() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f20567a, "MoPubSkipText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 8) {
            return null;
        }
        return firstMatchingStringData;
    }

    /* renamed from: e */
    public VastTracker m20121e() {
        Document document = this.f20567a;
        if (document == null) {
            return null;
        }
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(document, "Error");
        if (TextUtils.isEmpty(firstMatchingStringData)) {
            return null;
        }
        return new VastTracker(firstMatchingStringData);
    }

    /* renamed from: f */
    public List<VastTracker> m20120f() {
        List<String> stringDataAsList = XmlUtils.getStringDataAsList(this.f20567a, "MP_TRACKING_URL");
        ArrayList arrayList = new ArrayList(stringDataAsList.size());
        for (String str : stringDataAsList) {
            arrayList.add(new VastTracker(str));
        }
        return arrayList;
    }
}
