package zendesk.support;

import android.support.annotation.RestrictTo;
import android.support.annotation.WorkerThread;
import com.google.gson.Gson;
import com.jakewharton.disklrucache.DiskLruCache;
import com.zendesk.logger.Logger;
import com.zendesk.util.DigestUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import okio.Okio;
import zendesk.support.Streams;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportUiStorage.class */
public class SupportUiStorage {
    private static final int CACHE_INDEX = 0;
    private static final String LOG_TAG = "SupportUiStorage";
    public static final String REQUEST_MAPPER = "request_id_mapper";
    private final Gson gson;
    private final DiskLruCache storage;

    public SupportUiStorage(DiskLruCache diskLruCache, Gson gson) {
        this.storage = diskLruCache;
        this.gson = gson;
    }

    private static void abortEdit(DiskLruCache.Editor editor) {
        Logger.m289w(LOG_TAG, "Unable to cache data", new Object[0]);
        if (editor != null) {
            try {
                editor.abort();
            } catch (IOException e) {
                Logger.m290w(LOG_TAG, "Unable to abort write", e, new Object[0]);
            }
        }
    }

    private static String key(String str) {
        return DigestUtils.sha1(str);
    }

    @WorkerThread
    public <E> E read(String str, final Type type) {
        E e;
        try {
            synchronized (this.storage) {
                e = (E) Streams.use(this.storage.get(key(str)), new Streams.Use<E, DiskLruCache.Snapshot>() { // from class: zendesk.support.SupportUiStorage.1
                    /* JADX WARN: Type inference failed for: r0v7, types: [E, java.lang.Object] */
                    public E use(DiskLruCache.Snapshot snapshot) throws Exception {
                        return SupportUiStorage.this.gson.fromJson(Streams.toReader(Okio.source(snapshot.getInputStream(0))), type);
                    }
                });
            }
            return e;
        } catch (IOException e2) {
            Logger.m289w(LOG_TAG, "Unable to read from cache", new Object[0]);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
        if (r5 == null) goto L_?;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
        zendesk.support.Streams.toJson(r4.gson, okio.Okio.sink(r5.newOutputStream(0)), r6);
        r5.commit();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005d, code lost:
        abortEdit(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0061, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:?, code lost:
        return;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x004c -> B:18:0x0050). Please submit an issue!!! */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(java.lang.String r5, java.lang.Object r6) {
        /*
            r4 = this;
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            r9 = r0
            r0 = r4
            com.jakewharton.disklrucache.DiskLruCache r0 = r0.storage     // Catch: IOException -> 0x0059
            r10 = r0
            r0 = r7
            r9 = r0
            r0 = r10
            monitor-enter(r0)     // Catch: IOException -> 0x0059
            r0 = r4
            com.jakewharton.disklrucache.DiskLruCache r0 = r0.storage     // Catch: all -> 0x004b
            r1 = r5
            java.lang.String r1 = key(r1)     // Catch: all -> 0x004b
            com.jakewharton.disklrucache.DiskLruCache$Editor r0 = r0.edit(r1)     // Catch: all -> 0x004b
            r5 = r0
            r0 = r10
            monitor-exit(r0)     // Catch: all -> 0x0042
            r0 = r5
            if (r0 == 0) goto L_0x0061
            r0 = r5
            r1 = 0
            java.io.OutputStream r0 = r0.newOutputStream(r1)     // Catch: IOException -> 0x0062
            okio.Sink r0 = okio.Okio.sink(r0)     // Catch: IOException -> 0x0062
            r9 = r0
            r0 = r4
            com.google.gson.Gson r0 = r0.gson     // Catch: IOException -> 0x0062
            r1 = r9
            r2 = r6
            zendesk.support.Streams.toJson(r0, r1, r2)     // Catch: IOException -> 0x0062
            r0 = r5
            r0.commit()     // Catch: IOException -> 0x0062
            goto L_0x0061
        L_0x0042:
            r6 = move-exception
            r0 = r5
            r9 = r0
            r0 = r6
            r5 = r0
            goto L_0x0050
        L_0x004b:
            r5 = move-exception
            r0 = r8
            r9 = r0
        L_0x0050:
            r0 = r9
            r8 = r0
            r0 = r10
            monitor-exit(r0)     // Catch: all -> 0x004b
            r0 = r5
            throw r0     // Catch: IOException -> 0x0059
        L_0x0059:
            r5 = move-exception
            r0 = r9
            r5 = r0
        L_0x005d:
            r0 = r5
            abortEdit(r0)
        L_0x0061:
            return
        L_0x0062:
            r6 = move-exception
            goto L_0x005d
        */
        throw new UnsupportedOperationException("Method not decompiled: zendesk.support.SupportUiStorage.write(java.lang.String, java.lang.Object):void");
    }
}
