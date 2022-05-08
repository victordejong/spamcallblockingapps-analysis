package com.privacystar.core.service.network.handler;

import com.privacystar.core.PSApplication;
import com.privacystar.core.service.jobs.BinaryDownloadJob;
import com.privacystar.core.service.jobs.OffenderProcessingJob;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.util.FileUtil;
import com.privacystar.core.util.OffenderUtil;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/OffenderDeltaHandler.class */
public class OffenderDeltaHandler {
    private static OffenderDeltaHandler handlerInstance;

    public static Call<ResponseBody> backendRequest(String str) {
        Timber.m28v("Requesting offender delta with short-name: %s", str);
        return PSBackendEndpoint.getOffenderDeltasInstance().getOffenderDelta(str);
    }

    public static void enqueueRequest(String str, long j, boolean z) {
        PSApplication.getInstance().getJobManager().addJobInBackground(new BinaryDownloadJob(str, j, z));
    }

    public static void fetchAndApplyNewDeltaBinary(String str, long j, boolean z) {
        enqueueRequest(str, j, z);
    }

    public static OffenderDeltaHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new OffenderDeltaHandler();
        }
        return handlerInstance;
    }

    public static void sendRequest(String str, long j, boolean z) throws Throwable {
        String str2;
        Call<ResponseBody> backendRequest = backendRequest(str);
        Timber.m37d("Executing OffenderDelta request:%n%s", str);
        try {
            Response<ResponseBody> execute = backendRequest.execute();
            int code = execute.code();
            if (execute.isSuccessful() && execute.body() != null) {
                InputStream byteStream = execute.body().byteStream();
                Timber.m37d("Received binary file stream of %d bytes.", Long.valueOf(execute.body().contentLength()));
                if (z) {
                    Timber.m37d("Stream is zipped, unzipping for later parsing.", new Object[0]);
                    str2 = FileUtil.unzipFromZipStream(byteStream, j);
                } else {
                    Timber.m37d("Stream is not zipped, caching for later parsing.", new Object[0]);
                    str2 = FileUtil.writeToDiskFromStream(byteStream, j);
                }
                OffenderProcessingJob offenderProcessingJob = new OffenderProcessingJob();
                if (str2 != null) {
                    Timber.m37d("Queueing offender processing job with unzipped data.", new Object[0]);
                    offenderProcessingJob.withBinaryData(str2).isFullUpdate(z).withShortName(str).withControlNumber(j);
                } else if (!z) {
                    Timber.m25w("Couldn't process any meaningful data in the offender binary and this is a delta update. No changes made.", new Object[0]);
                    return;
                } else {
                    Timber.m37d("Delta handler received a full update but couldn't process file. Using Local offender file instead.", new Object[0]);
                }
                PSApplication.getInstance().getJobManager().addJobInBackground(offenderProcessingJob);
            } else if (execute.isSuccessful()) {
                Timber.m25w("Received Offender Delta Request response with status code: %d but no body", Integer.valueOf(code));
                OffenderUtil.loadLocalOffenderDataIfNeeded();
            } else {
                Timber.m37d("Unsuccessful offender delta request attempt.", new Object[0]);
                OffenderUtil.loadLocalOffenderDataIfNeeded();
            }
        } catch (IOException e) {
            Timber.m23w(e, "problem occurred talking to server.", new Object[0]);
        } catch (RuntimeException e2) {
            Timber.m23w(e2, "unexpected error occurred creating the request or decoding the response.", new Object[0]);
        }
    }
}
