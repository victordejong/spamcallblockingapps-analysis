package zendesk.support;

import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SectionsResponse.class */
class SectionsResponse {
    List<Section> sections;

    SectionsResponse() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Section> getSections() {
        return CollectionUtils.copyOf(this.sections);
    }
}
