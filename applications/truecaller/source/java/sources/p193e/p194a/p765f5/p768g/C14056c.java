package p193e.p194a.p765f5.p768g;

import com.airbnb.deeplinkdispatch.DeepLinkEntry;
import com.airbnb.deeplinkdispatch.Parser;
import com.truecaller.swish.deeplink.SwishResultActivity;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: e.a.f5.g.c */
/* loaded from: classes14-dex2jar.jar:e/a/f5/g/c.class */
public final class C14056c implements Parser {

    /* renamed from: a */
    public static final List<DeepLinkEntry> f40647a = Collections.unmodifiableList(Arrays.asList(new DeepLinkEntry("truecaller://swish", DeepLinkEntry.Type.CLASS, SwishResultActivity.class, null)));

    @Override // com.airbnb.deeplinkdispatch.Parser
    public DeepLinkEntry parseUri(String str) {
        for (DeepLinkEntry deepLinkEntry : f40647a) {
            if (deepLinkEntry.matches(str)) {
                return deepLinkEntry;
            }
        }
        return null;
    }
}
