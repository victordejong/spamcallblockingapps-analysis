package gogolook.callgogolook2.gson.exploration.editorpick;

import androidx.core.app.NotificationCompat;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.aotter.net.trek.model.Entity;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/exploration/editorpick/Detail.class */
public class Detail {
    @AbstractC10120c(NotificationCompat.CATEGORY_CALL)
    @AbstractC10118a
    public int call;
    @AbstractC10120c("contact_count")
    @AbstractC10118a
    public int contactCount;
    @AbstractC10120c("desc")
    @AbstractC10118a
    public String desc;
    @AbstractC10120c(Entity.ENTITY_FAV_KEY)
    @AbstractC10118a
    public int favorite;
    @AbstractC10120c(TtmlNode.TAG_IMAGE)
    @AbstractC10118a
    public String image;
    @AbstractC10120c("name")
    @AbstractC10118a
    public String name;
    @AbstractC10120c("number")
    @AbstractC10118a
    public String number;
    @AbstractC10120c("spam_count")
    @AbstractC10118a
    public int spamCount;
    @AbstractC10120c("tag_count")
    @AbstractC10118a
    public int tagCount;
    public boolean dismissAfterClick = false;
    public String urlTitle = null;
}
