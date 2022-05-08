package zendesk.support.request;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import zendesk.suas.Listener;
import zendesk.suas.State;
import zendesk.suas.StateSelector;
import zendesk.support.SupportUiStorage;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentPersistence.class */
public class ComponentPersistence implements Listener<RequestPersistenceModel> {
    private static final String LOG_TAG = "ComponentPersistence";
    private final Executor executor;
    private final AtomicBoolean isMappingComplete = new AtomicBoolean(false);
    private final PersistenceSelector persistenceSelector = new PersistenceSelector();
    private final PersistenceQueue queue;
    private final SupportUiStorage supportUiStorage;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentPersistence$Item.class */
    public interface Item {
        void persist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentPersistence$PersistenceItem.class */
    public static class PersistenceItem implements Item {
        private final RequestPersistenceModel model;
        private final SupportUiStorage supportUiStorage;

        PersistenceItem(SupportUiStorage supportUiStorage, RequestPersistenceModel requestPersistenceModel) {
            this.supportUiStorage = supportUiStorage;
            this.model = requestPersistenceModel;
        }

        @Override // zendesk.support.request.ComponentPersistence.Item
        public void persist() {
            this.supportUiStorage.write(this.model.getLocalRequestId(), this.model);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentPersistence$PersistenceQueue.class */
    public static class PersistenceQueue {
        private final Executor executor;
        private final List<Item> actions = new ArrayList(2);
        private final AtomicBoolean workerRunning = new AtomicBoolean(false);

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentPersistence$PersistenceQueue$Worker.class */
        public class Worker implements Runnable {
            private Worker() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Item item;
                while (true) {
                    synchronized (PersistenceQueue.this.actions) {
                        if (PersistenceQueue.this.actions.size() > 0) {
                            item = (Item) PersistenceQueue.this.actions.get(0);
                        } else {
                            PersistenceQueue.this.workerRunning.set(false);
                            return;
                        }
                    }
                    if (item != null) {
                        try {
                            item.persist();
                        } catch (Exception e) {
                        } catch (Throwable th) {
                            PersistenceQueue.this.actions.remove(item);
                            throw th;
                        }
                        PersistenceQueue.this.actions.remove(item);
                    }
                }
            }
        }

        public PersistenceQueue(Executor executor) {
            this.executor = executor;
        }

        private void startWorker() {
            if (this.workerRunning.compareAndSet(false, true)) {
                this.executor.execute(new Worker());
            }
        }

        void dispatch(Item item) {
            if (item != null) {
                synchronized (this.actions) {
                    if (this.actions.size() >= 2) {
                        this.actions.set(1, item);
                    } else {
                        this.actions.add(item);
                    }
                    startWorker();
                }
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentPersistence$PersistenceSelector.class */
    static class PersistenceSelector implements StateSelector<RequestPersistenceModel> {
        PersistenceSelector() {
        }

        @Override // zendesk.suas.StateSelector
        public RequestPersistenceModel selectData(@NonNull State state) {
            StateConversation fromState = StateConversation.fromState(state);
            return new RequestPersistenceModel(fromState.getLocalId(), new Date(), "2.2.1", fromState, StateAndroidLifecycle.fromState(state).getState() == 2);
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentPersistence$RequestIdMapper.class */
    static class RequestIdMapper {
        private final Map<String, String> localToRemote = new HashMap();
        private final Map<String, String> remoteToLocal = new HashMap();

        RequestIdMapper addIdMapping(String str, String str2) {
            this.localToRemote.put(str2, str);
            this.remoteToLocal.put(str, str2);
            return this;
        }

        RequestIdMapper addLocalId(String str) {
            this.localToRemote.put(str, "");
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getLocalId(String str) {
            return this.remoteToLocal.get(str);
        }

        Set<String> getLocalIds() {
            return this.localToRemote.keySet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getRemoteId(String str) {
            return this.localToRemote.get(str);
        }

        boolean hasLocalId(@NonNull String str) {
            return this.remoteToLocal.containsKey(str) && StringUtils.hasLength(this.remoteToLocal.get(str));
        }

        boolean hasRemoteId(@NonNull String str) {
            return this.localToRemote.containsKey(str) && StringUtils.hasLength(this.localToRemote.get(str));
        }

        RequestIdMapper removeLocalIdMapping(String str) {
            this.localToRemote.remove(str);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentPersistence$RequestPersistenceModel.class */
    public static class RequestPersistenceModel {
        private final transient boolean activityStopped;
        private final StateConversation conversation;
        private final Date date;
        private final transient String requestId;
        private final String version;

        RequestPersistenceModel(String str, Date date, String str2, StateConversation stateConversation, boolean z) {
            this.requestId = str;
            this.date = date;
            this.version = str2;
            this.conversation = stateConversation;
            this.activityStopped = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public StateConversation getConversation() {
            return this.conversation;
        }

        Date getDate() {
            return this.date;
        }

        String getLocalRequestId() {
            return this.requestId;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getVersion() {
            return this.version;
        }

        boolean isActivityStopped() {
            return this.activityStopped;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComponentPersistence(SupportUiStorage supportUiStorage, PersistenceQueue persistenceQueue, Executor executor) {
        this.supportUiStorage = supportUiStorage;
        this.queue = persistenceQueue;
        this.executor = executor;
    }

    private void persistConversation(RequestPersistenceModel requestPersistenceModel) {
        boolean isActivityStopped = requestPersistenceModel.isActivityStopped();
        boolean hasLength = StringUtils.hasLength(requestPersistenceModel.getLocalRequestId());
        boolean z = requestPersistenceModel.getConversation().getMessages().size() > 0;
        if (isActivityStopped && hasLength && z) {
            this.queue.dispatch(new PersistenceItem(this.supportUiStorage, requestPersistenceModel));
        }
    }

    private void persistRequestId(final RequestPersistenceModel requestPersistenceModel) {
        if (!this.isMappingComplete.get()) {
            final String remoteId = requestPersistenceModel.getConversation().getRemoteId();
            final String localId = requestPersistenceModel.getConversation().getLocalId();
            boolean z = requestPersistenceModel.getConversation().getMessages().size() > 0;
            final boolean z2 = false;
            if (StringUtils.hasLength(remoteId)) {
                z2 = false;
                if (StringUtils.hasLength(localId)) {
                    z2 = true;
                }
            }
            if (z2 || z) {
                if (z2) {
                    this.isMappingComplete.set(true);
                }
                this.executor.execute(new Runnable() { // from class: zendesk.support.request.ComponentPersistence.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RequestIdMapper requestIdMapper = (RequestIdMapper) ComponentPersistence.this.supportUiStorage.read(SupportUiStorage.REQUEST_MAPPER, RequestIdMapper.class);
                        RequestIdMapper requestIdMapper2 = requestIdMapper;
                        if (requestIdMapper == null) {
                            requestIdMapper2 = new RequestIdMapper();
                        }
                        if (z2) {
                            if (!requestIdMapper2.hasLocalId(remoteId) || !requestIdMapper2.hasRemoteId(localId)) {
                                ComponentPersistence.this.supportUiStorage.write(SupportUiStorage.REQUEST_MAPPER, requestIdMapper2.addIdMapping(remoteId, localId));
                            }
                        } else if (!requestIdMapper2.hasRemoteId(localId)) {
                            ComponentPersistence.this.supportUiStorage.write(SupportUiStorage.REQUEST_MAPPER, requestIdMapper2.addLocalId(localId));
                        }
                    }
                });
            }
        } else if (CollectionUtils.isEmpty(requestPersistenceModel.getConversation().getMessages())) {
            this.executor.execute(new Runnable() { // from class: zendesk.support.request.ComponentPersistence.2
                @Override // java.lang.Runnable
                public void run() {
                    RequestIdMapper requestIdMapper = (RequestIdMapper) ComponentPersistence.this.supportUiStorage.read(SupportUiStorage.REQUEST_MAPPER, RequestIdMapper.class);
                    String localRequestId = requestPersistenceModel.getLocalRequestId();
                    if (requestIdMapper != null) {
                        ComponentPersistence.this.supportUiStorage.write(SupportUiStorage.REQUEST_MAPPER, requestIdMapper.removeLocalIdMapping(localRequestId));
                        ComponentPersistence.this.isMappingComplete.set(false);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateSelector<RequestPersistenceModel> getSelector() {
        return this.persistenceSelector;
    }

    public void update(@NonNull RequestPersistenceModel requestPersistenceModel) {
        persistConversation(requestPersistenceModel);
        persistRequestId(requestPersistenceModel);
    }
}
