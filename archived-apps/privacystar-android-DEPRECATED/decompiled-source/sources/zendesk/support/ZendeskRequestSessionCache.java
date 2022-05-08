package zendesk.support;

import android.support.annotation.NonNull;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskRequestSessionCache.class */
class ZendeskRequestSessionCache implements RequestSessionCache {
    private final Map<Long, TicketForm> cachedTicketForms = new HashMap();

    @Override // zendesk.support.RequestSessionCache
    public boolean containsAllTicketForms(@NonNull List<Long> list) {
        boolean z;
        List ensureEmpty = CollectionUtils.ensureEmpty(list);
        synchronized (this.cachedTicketForms) {
            Iterator it = ensureEmpty.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                if (!this.cachedTicketForms.containsKey((Long) it.next())) {
                    z = false;
                    break;
                }
            }
        }
        return z;
    }

    @Override // zendesk.support.RequestSessionCache
    @NonNull
    public List<TicketForm> getTicketFormsById(@NonNull List<Long> list) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            List<Long> ensureEmpty = CollectionUtils.ensureEmpty(list);
            synchronized (this.cachedTicketForms) {
                for (Long l : ensureEmpty) {
                    arrayList.add(this.cachedTicketForms.get(l));
                }
            }
        }
        return arrayList;
    }

    @Override // zendesk.support.RequestSessionCache
    public void updateTicketFormCache(@NonNull List<TicketForm> list) {
        List<TicketForm> ensureEmpty = CollectionUtils.ensureEmpty(list);
        HashMap hashMap = new HashMap();
        for (TicketForm ticketForm : ensureEmpty) {
            hashMap.put(Long.valueOf(ticketForm.getId()), ticketForm);
        }
        synchronized (this.cachedTicketForms) {
            this.cachedTicketForms.putAll(hashMap);
        }
    }
}
