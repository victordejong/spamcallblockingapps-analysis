package zendesk.support.requestlist;

import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.google.gson.reflect.TypeToken;
import com.zendesk.func.ZFunc1;
import com.zendesk.func.ZFunc2;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import zendesk.support.Attachment;
import zendesk.support.Comment;
import zendesk.support.Request;
import zendesk.support.RequestProvider;
import zendesk.support.RequestUpdates;
import zendesk.support.SupportUiStorage;
import zendesk.support.User;
import zendesk.support.requestlist.RequestInfo;
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestInfoDataSource.class */
public interface RequestInfoDataSource {
    public static final String LOCAL = "local_request_infos";
    public static final String REMOTE = "remote_request_infos";

    /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestInfoDataSource$Disk.class */
    public static class Disk implements RequestInfoDataSource {
        private final Executor backgroundThreadExecutor;
        private final String cacheKey;
        private final Executor mainThreadExecutor;
        private final SupportUiStorage supportUiStorage;

        public Disk(@NonNull Executor executor, @NonNull Executor executor2, @NonNull SupportUiStorage supportUiStorage, @NonNull String str) {
            this.mainThreadExecutor = executor;
            this.backgroundThreadExecutor = executor2;
            this.supportUiStorage = supportUiStorage;
            this.cacheKey = str;
        }

        @Override // zendesk.support.requestlist.RequestInfoDataSource
        @MainThread
        public void load(@NonNull final ZendeskCallback<List<RequestInfo>> zendeskCallback) {
            this.backgroundThreadExecutor.execute(new Runnable() { // from class: zendesk.support.requestlist.RequestInfoDataSource.Disk.1
                @Override // java.lang.Runnable
                public void run() {
                    final List list = (List) Disk.this.supportUiStorage.read(Disk.this.cacheKey, new TypeToken<List<RequestInfo>>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.Disk.1.1
                    }.getType());
                    Disk.this.mainThreadExecutor.execute(new Runnable() { // from class: zendesk.support.requestlist.RequestInfoDataSource.Disk.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            zendeskCallback.onSuccess(CollectionUtils.ensureEmpty(list));
                        }
                    });
                }
            });
        }

        void save(@NonNull final List<RequestInfo> list, @Nullable final ZendeskCallback<List<RequestInfo>> zendeskCallback) {
            this.backgroundThreadExecutor.execute(new Runnable() { // from class: zendesk.support.requestlist.RequestInfoDataSource.Disk.2
                @Override // java.lang.Runnable
                public void run() {
                    Disk.this.supportUiStorage.write(Disk.this.cacheKey, list);
                    if (zendeskCallback != null) {
                        Disk.this.mainThreadExecutor.execute(new Runnable() { // from class: zendesk.support.requestlist.RequestInfoDataSource.Disk.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                zendeskCallback.onSuccess(list);
                            }
                        });
                    }
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestInfoDataSource$LocalDataSource.class */
    public static class LocalDataSource implements RequestInfoDataSource {
        private final Disk disk;

        public LocalDataSource(Disk disk) {
            this.disk = disk;
        }

        public void insert(@NonNull final RequestInfo requestInfo, @Nullable final ZendeskCallback<List<RequestInfo>> zendeskCallback) {
            this.disk.load(new ZendeskCallback<List<RequestInfo>>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.LocalDataSource.1
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                    if (zendeskCallback != null) {
                        zendeskCallback.onError(errorResponse);
                    }
                }

                public void onSuccess(List<RequestInfo> list) {
                    List<RequestInfo> appendOrReplace = CollectionUtils.appendOrReplace(list, requestInfo, new ZFunc2<RequestInfo, RequestInfo, Boolean>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.LocalDataSource.1.1
                        public Boolean apply(RequestInfo requestInfo2, RequestInfo requestInfo3) {
                            boolean equals = requestInfo3.getLocalId().equals(requestInfo2.getLocalId());
                            boolean z = false;
                            boolean z2 = StringUtils.hasLength(requestInfo3.getRemoteId()) && requestInfo3.getRemoteId().equals(requestInfo2.getRemoteId());
                            if (equals || z2) {
                                z = true;
                            }
                            return Boolean.valueOf(z);
                        }
                    });
                    Collections.sort(appendOrReplace, Repository.REQUEST_INFO_COMPARATOR);
                    LocalDataSource.this.disk.save(appendOrReplace, zendeskCallback);
                }
            });
        }

        @Override // zendesk.support.requestlist.RequestInfoDataSource
        @MainThread
        public void load(@NonNull ZendeskCallback<List<RequestInfo>> zendeskCallback) {
            this.disk.load(zendeskCallback);
        }

        public void remove(@NonNull final String str, @Nullable final ZendeskCallback<List<RequestInfo>> zendeskCallback) {
            this.disk.load(new ZendeskCallback<List<RequestInfo>>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.LocalDataSource.2
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                    if (zendeskCallback != null) {
                        zendeskCallback.onError(errorResponse);
                    }
                }

                public void onSuccess(List<RequestInfo> list) {
                    LocalDataSource.this.disk.save(CollectionUtils.filter(list, new ZFunc1<RequestInfo, Boolean>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.LocalDataSource.2.1
                        public Boolean apply(RequestInfo requestInfo) {
                            return Boolean.valueOf(!str.equals(requestInfo.getLocalId()));
                        }
                    }), zendeskCallback);
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestInfoDataSource$Network.class */
    public static class Network implements RequestInfoDataSource {
        private final RequestProvider requestProvider;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: zendesk.support.requestlist.RequestInfoDataSource$Network$1 */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestInfoDataSource$Network$1.class */
        public class C28761 extends ZendeskCallback<List<Request>> {
            final /* synthetic */ ZendeskCallback val$callback;

            C28761(ZendeskCallback zendeskCallback) {
                this.val$callback = zendeskCallback;
            }

            @Override // com.zendesk.service.ZendeskCallback
            public void onError(ErrorResponse errorResponse) {
                this.val$callback.onError(errorResponse);
            }

            public void onSuccess(final List<Request> list) {
                Network.this.requestProvider.getUpdatesForDevice(new ZendeskCallback<RequestUpdates>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.Network.1.1
                    @Override // com.zendesk.service.ZendeskCallback
                    public void onError(ErrorResponse errorResponse) {
                        C28761.this.val$callback.onError(errorResponse);
                    }

                    public void onSuccess(final RequestUpdates requestUpdates) {
                        C28761.this.val$callback.onSuccess(CollectionUtils.map(list, new ZFunc1<Request, RequestInfo>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.Network.1.1.1
                            public RequestInfo apply(Request request) {
                                return Network.this.map(request, requestUpdates.isRequestUnread(request.getId()));
                            }
                        }));
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Network(@NonNull RequestProvider requestProvider) {
            this.requestProvider = requestProvider;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RequestInfo map(Request request, boolean z) {
            Comment firstComment = request.getFirstComment();
            Comment lastComment = request.getLastComment();
            return new RequestInfo("", request.getId(), request.getStatus(), z, request.getPublicUpdatedAt(), CollectionUtils.map(CollectionUtils.filter(request.getLastCommentingAgents(), new ZFunc1<User, Boolean>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.Network.2
                public Boolean apply(User user) {
                    return Boolean.valueOf(user != null);
                }
            }), new ZFunc1<User, RequestInfo.AgentInfo>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.Network.3
                public RequestInfo.AgentInfo apply(User user) {
                    Attachment photo = user.getPhoto();
                    return new RequestInfo.AgentInfo(String.valueOf(user.getId()), user.getName(), photo != null ? photo.getContentUrl() : "");
                }
            }), new RequestInfo.MessageInfo(String.valueOf(firstComment.getId()), firstComment.getCreatedAt(), firstComment.getBody()), new RequestInfo.MessageInfo(String.valueOf(lastComment.getId()), lastComment.getCreatedAt(), lastComment.getBody()), new HashSet());
        }

        @Override // zendesk.support.requestlist.RequestInfoDataSource
        @MainThread
        public void load(@NonNull ZendeskCallback<List<RequestInfo>> zendeskCallback) {
            this.requestProvider.getAllRequests(new C28761(zendeskCallback));
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestInfoDataSource$RemoteDataSource.class */
    public static class RemoteDataSource implements RequestInfoDataSource {
        private final Disk disk;
        private final Network network;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RemoteDataSource(@NonNull Network network, @NonNull Disk disk) {
            this.network = network;
            this.disk = disk;
        }

        @Override // zendesk.support.requestlist.RequestInfoDataSource
        public void load(@NonNull final ZendeskCallback<List<RequestInfo>> zendeskCallback) {
            this.network.load(new ZendeskCallback<List<RequestInfo>>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.RemoteDataSource.1
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(final ErrorResponse errorResponse) {
                    RemoteDataSource.this.disk.load(new ZendeskCallback<List<RequestInfo>>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.RemoteDataSource.1.1
                        @Override // com.zendesk.service.ZendeskCallback
                        public void onError(ErrorResponse errorResponse2) {
                            zendeskCallback.onError(errorResponse2);
                        }

                        public void onSuccess(List<RequestInfo> list) {
                            zendeskCallback.onSuccess(list);
                            zendeskCallback.onError(errorResponse);
                        }
                    });
                }

                public void onSuccess(List<RequestInfo> list) {
                    RemoteDataSource.this.disk.save(list, zendeskCallback);
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestInfoDataSource$Repository.class */
    public static class Repository implements RequestInfoDataSource {
        private static final Comparator<RequestInfo> REQUEST_INFO_COMPARATOR = new Comparator<RequestInfo>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.Repository.1
            public int compare(RequestInfo requestInfo, RequestInfo requestInfo2) {
                return requestInfo.getLastUpdated().compareTo(requestInfo2.getLastUpdated()) * (-1);
            }
        };
        private final RequestInfoDataSource localDataSource;
        private final Merger merger;
        private final RequestInfoDataSource remoteDataSource;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestInfoDataSource$Repository$Merger.class */
        public static class Merger {
            private RequestInfo merge(RequestInfo requestInfo, RequestInfo requestInfo2) {
                Date lastUpdated = requestInfo.getLastUpdated();
                Date lastUpdated2 = requestInfo2.getLastUpdated();
                if (!lastUpdated.after(lastUpdated2)) {
                    lastUpdated = lastUpdated2;
                }
                RequestInfo.MessageInfo lastMessageInfo = requestInfo.getLastMessageInfo();
                RequestInfo.MessageInfo lastMessageInfo2 = requestInfo2.getLastMessageInfo();
                if (!lastMessageInfo.getDate().after(lastMessageInfo2.getDate())) {
                    lastMessageInfo = lastMessageInfo2;
                }
                return new RequestInfo(requestInfo.getLocalId(), requestInfo2.getRemoteId(), requestInfo2.getRequestStatus(), requestInfo2.isUnread(), lastUpdated, requestInfo2.getAgentInfos(), requestInfo2.getFirstMessageInfo(), lastMessageInfo, requestInfo.getFailedMessageIds());
            }

            @VisibleForTesting
            List<RequestInfo> merge(@NonNull List<RequestInfo> list, @NonNull List<RequestInfo> list2) {
                HashMap hashMap = new HashMap();
                ArrayList arrayList = new ArrayList();
                for (RequestInfo requestInfo : list) {
                    String remoteId = requestInfo.getRemoteId();
                    if (StringUtils.hasLength(remoteId)) {
                        hashMap.put(remoteId, requestInfo);
                    } else {
                        arrayList.add(requestInfo);
                    }
                }
                ArrayList arrayList2 = new ArrayList(arrayList);
                for (RequestInfo requestInfo2 : list2) {
                    String remoteId2 = requestInfo2.getRemoteId();
                    if (hashMap.containsKey(remoteId2)) {
                        arrayList2.add(merge((RequestInfo) hashMap.get(remoteId2), requestInfo2));
                        hashMap.remove(remoteId2);
                    } else {
                        arrayList2.add(requestInfo2);
                    }
                }
                arrayList2.addAll(hashMap.values());
                Collections.sort(arrayList2, Repository.REQUEST_INFO_COMPARATOR);
                return arrayList2;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Repository(@NonNull RequestInfoDataSource requestInfoDataSource, @NonNull RequestInfoDataSource requestInfoDataSource2, @NonNull Merger merger) {
            this.localDataSource = requestInfoDataSource;
            this.remoteDataSource = requestInfoDataSource2;
            this.merger = merger;
        }

        @Override // zendesk.support.requestlist.RequestInfoDataSource
        @MainThread
        public void load(@NonNull final ZendeskCallback<List<RequestInfo>> zendeskCallback) {
            this.localDataSource.load(new ZendeskCallback<List<RequestInfo>>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.Repository.2
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                }

                public void onSuccess(final List<RequestInfo> list) {
                    Repository.this.remoteDataSource.load(new ZendeskCallback<List<RequestInfo>>() { // from class: zendesk.support.requestlist.RequestInfoDataSource.Repository.2.1
                        @Override // com.zendesk.service.ZendeskCallback
                        public void onError(ErrorResponse errorResponse) {
                            zendeskCallback.onError(errorResponse);
                        }

                        public void onSuccess(List<RequestInfo> list2) {
                            zendeskCallback.onSuccess(Repository.this.merger.merge(list, list2));
                        }
                    });
                }
            });
        }
    }

    void load(@NonNull ZendeskCallback<List<RequestInfo>> zendeskCallback);
}
