package zendesk.support;

import android.support.annotation.NonNull;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestSessionCache.class */
public interface RequestSessionCache {
    boolean containsAllTicketForms(@NonNull List<Long> list);

    @NonNull
    List<TicketForm> getTicketFormsById(@NonNull List<Long> list);

    void updateTicketFormCache(@NonNull List<TicketForm> list);
}
