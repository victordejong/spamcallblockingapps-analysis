package p193e.p194a.p294b.p356n;

import com.airbnb.deeplinkdispatch.DeepLinkEntry;
import com.airbnb.deeplinkdispatch.Parser;
import com.truecaller.bizmon.governmentServices.p146ui.activities.GovernmentServicesActivity;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: e.a.b.n.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/n/a.class */
public final class C8116a implements Parser {

    /* renamed from: a */
    public static final List<DeepLinkEntry> f25183a = Collections.unmodifiableList(Arrays.asList(new DeepLinkEntry("truecaller://covid_directory", DeepLinkEntry.Type.CLASS, GovernmentServicesActivity.class, null)));

    @Override // com.airbnb.deeplinkdispatch.Parser
    public DeepLinkEntry parseUri(String str) {
        for (DeepLinkEntry deepLinkEntry : f25183a) {
            if (deepLinkEntry.matches(str)) {
                return deepLinkEntry;
            }
        }
        return null;
    }
}
