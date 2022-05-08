package zendesk.support.request;

import android.support.annotation.NonNull;
import com.zendesk.service.ErrorResponseAdapter;
import com.zendesk.service.ZendeskCallback;
import java.io.IOException;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import zendesk.belvedere.MediaResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentDownloadService.class */
public class AttachmentDownloadService {
    private final Executor executor;
    private final OkHttpClient okHttpClient;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentDownloadService$SaveToFileTask.class */
    private static class SaveToFileTask implements Runnable {
        private final ZendeskCallback<MediaResult> callback;
        private final MediaResult destFile;
        private final ResponseBody responseBody;

        private SaveToFileTask(ResponseBody responseBody, MediaResult mediaResult, ZendeskCallback<MediaResult> zendeskCallback) {
            this.responseBody = responseBody;
            this.destFile = mediaResult;
            this.callback = zendeskCallback;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r7 = this;
                r0 = 0
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = 0
                r10 = r0
                r0 = r7
                zendesk.belvedere.MediaResult r0 = r0.destFile     // Catch: all -> 0x003f, IOException -> 0x0048
                java.io.File r0 = r0.getFile()     // Catch: all -> 0x003f, IOException -> 0x0048
                okio.Sink r0 = okio.Okio.sink(r0)     // Catch: all -> 0x003f, IOException -> 0x0048
                okio.BufferedSink r0 = okio.Okio.buffer(r0)     // Catch: all -> 0x003f, IOException -> 0x0048
                r11 = r0
                r0 = r11
                r1 = r7
                okhttp3.ResponseBody r1 = r1.responseBody     // Catch: all -> 0x0035, IOException -> 0x0039
                okio.BufferedSource r1 = r1.source()     // Catch: all -> 0x0035, IOException -> 0x0039
                long r0 = r0.writeAll(r1)     // Catch: all -> 0x0035, IOException -> 0x0039
                r0 = r11
                zendesk.support.Streams.closeQuietly(r0)
                r0 = r7
                okhttp3.ResponseBody r0 = r0.responseBody
                zendesk.support.Streams.closeQuietly(r0)
                r0 = r9
                r10 = r0
                goto L_0x007e
            L_0x0035:
                r10 = move-exception
                goto L_0x00a0
            L_0x0039:
                r10 = move-exception
                r0 = r10
                r9 = r0
                goto L_0x004c
            L_0x003f:
                r9 = move-exception
                r0 = r10
                r11 = r0
                r0 = r9
                r10 = r0
                goto L_0x00a0
            L_0x0048:
                r9 = move-exception
                r0 = r8
                r11 = r0
            L_0x004c:
                r0 = r11
                r10 = r0
                java.lang.String r0 = "RequestActivity"
                java.lang.String r1 = "Unable to save attachment to disk. Error: '%s'"
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: all -> 0x003f
                r3 = r2
                r4 = 0
                r5 = r9
                java.lang.String r5 = r5.getMessage()     // Catch: all -> 0x003f
                r3[r4] = r5     // Catch: all -> 0x003f
                com.zendesk.logger.Logger.m295e(r0, r1, r2)     // Catch: all -> 0x003f
                r0 = r11
                r10 = r0
                com.zendesk.service.ErrorResponseAdapter r0 = new com.zendesk.service.ErrorResponseAdapter     // Catch: all -> 0x003f
                r1 = r0
                r2 = r9
                java.lang.String r2 = r2.getMessage()     // Catch: all -> 0x003f
                r1.<init>(r2)     // Catch: all -> 0x003f
                r9 = r0
                r0 = r11
                zendesk.support.Streams.closeQuietly(r0)
                r0 = r7
                okhttp3.ResponseBody r0 = r0.responseBody
                zendesk.support.Streams.closeQuietly(r0)
                r0 = r9
                r10 = r0
            L_0x007e:
                r0 = r7
                com.zendesk.service.ZendeskCallback<zendesk.belvedere.MediaResult> r0 = r0.callback
                if (r0 == 0) goto L_0x009f
                r0 = r10
                if (r0 != 0) goto L_0x0097
                r0 = r7
                com.zendesk.service.ZendeskCallback<zendesk.belvedere.MediaResult> r0 = r0.callback
                r1 = r7
                zendesk.belvedere.MediaResult r1 = r1.destFile
                r0.onSuccess(r1)
                goto L_0x009f
            L_0x0097:
                r0 = r7
                com.zendesk.service.ZendeskCallback<zendesk.belvedere.MediaResult> r0 = r0.callback
                r1 = r10
                r0.onError(r1)
            L_0x009f:
                return
            L_0x00a0:
                r0 = r11
                zendesk.support.Streams.closeQuietly(r0)
                r0 = r7
                okhttp3.ResponseBody r0 = r0.responseBody
                zendesk.support.Streams.closeQuietly(r0)
                r0 = r10
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: zendesk.support.request.AttachmentDownloadService.SaveToFileTask.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AttachmentDownloadService(OkHttpClient okHttpClient, Executor executor) {
        this.okHttpClient = okHttpClient;
        this.executor = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void downloadAttachment(String str, final ZendeskCallback<ResponseBody> zendeskCallback) {
        this.okHttpClient.newCall(new Request.Builder().get().url(str).build()).enqueue(new Callback() { // from class: zendesk.support.request.AttachmentDownloadService.1
            @Override // okhttp3.Callback
            public void onFailure(@NonNull Call call, @NonNull IOException iOException) {
                zendeskCallback.onError(new ErrorResponseAdapter(iOException.getMessage()));
            }

            @Override // okhttp3.Callback
            public void onResponse(@NonNull Call call, @NonNull Response response) throws IOException {
                if (response.isSuccessful()) {
                    zendeskCallback.onSuccess(response.body());
                } else {
                    zendeskCallback.onError(new ErrorResponseAdapter(response.message()));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void storeAttachment(ResponseBody responseBody, MediaResult mediaResult, ZendeskCallback<MediaResult> zendeskCallback) {
        this.executor.execute(new SaveToFileTask(responseBody, mediaResult, zendeskCallback));
    }
}
