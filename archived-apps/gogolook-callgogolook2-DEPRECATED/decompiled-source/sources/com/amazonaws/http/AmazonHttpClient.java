package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.RequestClientOptions;
import com.amazonaws.Response;
import com.amazonaws.handlers.CredentialsRequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.internal.CRC32MismatchException;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.TimingInfo;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/AmazonHttpClient.class */
public class AmazonHttpClient {
    public final ClientConfiguration config;
    public final HttpClient httpClient;
    public final HttpRequestFactory requestFactory = new HttpRequestFactory();
    public final RequestMetricCollector requestMetricCollector = null;
    public static final Log requestLog = LogFactory.getLog("com.amazonaws.request");
    public static final Log log = LogFactory.getLog(AmazonHttpClient.class);

    public AmazonHttpClient(ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this.config = clientConfiguration;
        this.httpClient = httpClient;
    }

    public static String createUserAgentString(String str, String str2) {
        if (str.contains(str2)) {
            return str;
        }
        return str.trim() + " " + str2.trim();
    }

    public static boolean isTemporaryRedirect(HttpResponse httpResponse) {
        int statusCode = httpResponse.getStatusCode();
        String str = httpResponse.getHeaders().get("Location");
        return statusCode == 307 && str != null && !str.isEmpty();
    }

    public void afterError(Request<?> request, Response<?> response, List<RequestHandler2> list, AmazonClientException amazonClientException) {
        for (RequestHandler2 requestHandler2 : list) {
            requestHandler2.afterError(request, response, amazonClientException);
        }
    }

    public <T> void afterResponse(Request<?> request, List<RequestHandler2> list, Response<T> response, TimingInfo timingInfo) {
        for (RequestHandler2 requestHandler2 : list) {
            requestHandler2.afterResponse(request, response);
        }
    }

    public <T> Response<T> execute(Request<?> request, HttpResponseHandler<AmazonWebServiceResponse<T>> httpResponseHandler, HttpResponseHandler<AmazonServiceException> httpResponseHandler2, ExecutionContext executionContext) throws AmazonClientException, AmazonServiceException {
        if (executionContext != null) {
            List<RequestHandler2> requestHandler2s = requestHandler2s(request, executionContext);
            AWSRequestMetrics awsRequestMetrics = executionContext.getAwsRequestMetrics();
            Response<T> response = null;
            try {
                Response<T> executeHelper = executeHelper(request, httpResponseHandler, httpResponseHandler2, executionContext);
                response = executeHelper;
                afterResponse(request, requestHandler2s, executeHelper, awsRequestMetrics.getTimingInfo().endTiming());
                return executeHelper;
            } catch (AmazonClientException e) {
                afterError(request, response, requestHandler2s, e);
                throw e;
            }
        } else {
            throw new AmazonClientException("Internal SDK Error: No execution context parameter specified.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:263:0x09c4  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0adc  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0b4f  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0b5c A[Catch: IOException -> 0x0b67, TRY_LEAVE, TryCatch #31 {IOException -> 0x0b67, blocks: (B:319:0x0b54, B:321:0x0b5c), top: B:351:0x0b54 }] */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0b32 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v525, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amazonaws.http.AmazonHttpClient] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> com.amazonaws.Response<T> executeHelper(com.amazonaws.Request<?> r9, com.amazonaws.http.HttpResponseHandler<com.amazonaws.AmazonWebServiceResponse<T>> r10, com.amazonaws.http.HttpResponseHandler<com.amazonaws.AmazonServiceException> r11, com.amazonaws.http.ExecutionContext r12) throws com.amazonaws.AmazonClientException, com.amazonaws.AmazonServiceException {
        /*
            Method dump skipped, instructions count: 2932
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.http.AmazonHttpClient.executeHelper(com.amazonaws.Request, com.amazonaws.http.HttpResponseHandler, com.amazonaws.http.HttpResponseHandler, com.amazonaws.http.ExecutionContext):com.amazonaws.Response");
    }

    public void finalize() throws Throwable {
        shutdown();
        super.finalize();
    }

    public RequestMetricCollector getRequestMetricCollector() {
        return this.requestMetricCollector;
    }

    public final String getServerDateFromException(String str) {
        return str.substring(str.indexOf("(") + 1, str.contains(" + 15") ? str.indexOf(" + 15") : str.indexOf(" - 15"));
    }

    public AmazonServiceException handleErrorResponse(Request<?> request, HttpResponseHandler<AmazonServiceException> httpResponseHandler, HttpResponse httpResponse) throws IOException {
        AmazonServiceException amazonServiceException;
        int statusCode = httpResponse.getStatusCode();
        try {
            amazonServiceException = httpResponseHandler.handle(httpResponse);
            Log log2 = requestLog;
            log2.debug("Received error response: " + amazonServiceException.toString());
        } catch (Exception e) {
            if (statusCode == 413) {
                amazonServiceException = new AmazonServiceException("Request entity too large");
                amazonServiceException.setServiceName(request.getServiceName());
                amazonServiceException.setStatusCode(413);
                amazonServiceException.setErrorType(AmazonServiceException.ErrorType.Client);
                amazonServiceException.setErrorCode("Request entity too large");
            } else if (statusCode == 503 && "Service Unavailable".equalsIgnoreCase(httpResponse.getStatusText())) {
                amazonServiceException = new AmazonServiceException("Service unavailable");
                amazonServiceException.setServiceName(request.getServiceName());
                amazonServiceException.setStatusCode(503);
                amazonServiceException.setErrorType(AmazonServiceException.ErrorType.Service);
                amazonServiceException.setErrorCode("Service unavailable");
            } else if (e instanceof IOException) {
                throw ((IOException) e);
            } else {
                throw new AmazonClientException("Unable to unmarshall error response (" + e.getMessage() + "). Response Code: " + statusCode + ", Response Text: " + httpResponse.getStatusText(), e);
            }
        }
        amazonServiceException.setStatusCode(statusCode);
        amazonServiceException.setServiceName(request.getServiceName());
        amazonServiceException.fillInStackTrace();
        return amazonServiceException;
    }

    public <T> T handleResponse(Request<?> request, HttpResponseHandler<AmazonWebServiceResponse<T>> httpResponseHandler, HttpResponse httpResponse, ExecutionContext executionContext) throws IOException {
        try {
            AWSRequestMetrics awsRequestMetrics = executionContext.getAwsRequestMetrics();
            awsRequestMetrics.startEvent(AWSRequestMetrics.Field.ResponseProcessingTime);
            try {
                AmazonWebServiceResponse<T> handle = httpResponseHandler.handle(httpResponse);
                if (handle != null) {
                    if (requestLog.isDebugEnabled()) {
                        Log log2 = requestLog;
                        log2.debug("Received successful response: " + httpResponse.getStatusCode() + ", AWS Request ID: " + handle.getRequestId());
                    }
                    awsRequestMetrics.addProperty(AWSRequestMetrics.Field.AWSRequestID, handle.getRequestId());
                    return handle.getResult();
                }
                throw new RuntimeException("Unable to unmarshall response metadata. Response Code: " + httpResponse.getStatusCode() + ", Response Text: " + httpResponse.getStatusText());
            } finally {
                awsRequestMetrics.endEvent(AWSRequestMetrics.Field.ResponseProcessingTime);
            }
        } catch (CRC32MismatchException e) {
            throw e;
        } catch (IOException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new AmazonClientException("Unable to unmarshall response (" + e3.getMessage() + "). Response Code: " + httpResponse.getStatusCode() + ", Response Text: " + httpResponse.getStatusText(), e3);
        }
    }

    public final <T extends Throwable> T handleUnexpectedFailure(T t, AWSRequestMetrics aWSRequestMetrics) {
        aWSRequestMetrics.incrementCounter(AWSRequestMetrics.Field.Exception);
        aWSRequestMetrics.addProperty(AWSRequestMetrics.Field.Exception, t);
        return t;
    }

    public final boolean isRequestSuccessful(HttpResponse httpResponse) {
        int statusCode = httpResponse.getStatusCode();
        return statusCode >= 200 && statusCode < 300;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.util.Date] */
    /* JADX WARN: Type inference failed for: r7v2 */
    public int parseClockSkewOffset(HttpResponse httpResponse, AmazonServiceException amazonServiceException) {
        RuntimeException e;
        Date date = new Date();
        String str = httpResponse.getHeaders().get("Date");
        String str2 = null;
        try {
            if (str != null) {
                try {
                    if (!str.isEmpty()) {
                        httpResponse = DateUtils.parseRFC822Date(str);
                        return (int) ((date.getTime() - httpResponse.getTime()) / 1000);
                    }
                } catch (RuntimeException e2) {
                    e = e2;
                    Log log2 = log;
                    log2.warn("Unable to parse clock skew offset from response: " + str2, e);
                    return 0;
                }
            }
            httpResponse = DateUtils.parseCompressedISO8601Date(getServerDateFromException(amazonServiceException.getMessage()));
            return (int) ((date.getTime() - httpResponse.getTime()) / 1000);
        } catch (RuntimeException e3) {
            e = e3;
            str2 = httpResponse;
        }
    }

    public final long pauseBeforeNextRetry(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i, RetryPolicy retryPolicy) {
        int i2 = (i - 1) - 1;
        long delayBeforeNextRetry = retryPolicy.getBackoffStrategy().delayBeforeNextRetry(amazonWebServiceRequest, amazonClientException, i2);
        if (log.isDebugEnabled()) {
            Log log2 = log;
            log2.debug("Retriable error detected, will retry in " + delayBeforeNextRetry + "ms, attempt number: " + i2);
        }
        try {
            Thread.sleep(delayBeforeNextRetry);
            return delayBeforeNextRetry;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new AmazonClientException(e.getMessage(), e);
        }
    }

    public List<RequestHandler2> requestHandler2s(Request<?> request, ExecutionContext executionContext) {
        List<RequestHandler2> requestHandler2s = executionContext.getRequestHandler2s();
        if (requestHandler2s == null) {
            return Collections.emptyList();
        }
        for (RequestHandler2 requestHandler2 : requestHandler2s) {
            if (requestHandler2 instanceof CredentialsRequestHandler) {
                ((CredentialsRequestHandler) requestHandler2).setCredentials(executionContext.getCredentials());
            }
            requestHandler2.beforeRequest(request);
        }
        return requestHandler2s;
    }

    public void resetRequestAfterError(Request<?> request, Exception exc) throws AmazonClientException {
        if (request.getContent() != null) {
            if (request.getContent().markSupported()) {
                try {
                    request.getContent().reset();
                } catch (IOException e) {
                    throw new AmazonClientException("Encountered an exception and couldn't reset the stream to retry", exc);
                }
            } else {
                throw new AmazonClientException("Encountered an exception and stream is not resettable", exc);
            }
        }
    }

    public void setUserAgent(Request<?> request) {
        String str = ClientConfiguration.DEFAULT_USER_AGENT;
        AmazonWebServiceRequest originalRequest = request.getOriginalRequest();
        String str2 = str;
        if (originalRequest != null) {
            RequestClientOptions requestClientOptions = originalRequest.getRequestClientOptions();
            str2 = str;
            if (requestClientOptions != null) {
                String clientMarker = requestClientOptions.getClientMarker(RequestClientOptions.Marker.USER_AGENT);
                str2 = str;
                if (clientMarker != null) {
                    str2 = createUserAgentString(str, clientMarker);
                }
            }
        }
        String str3 = str2;
        if (!ClientConfiguration.DEFAULT_USER_AGENT.equals(this.config.getUserAgent())) {
            str3 = createUserAgentString(str2, this.config.getUserAgent());
        }
        request.addHeader("User-Agent", str3);
    }

    public final boolean shouldRetry(AmazonWebServiceRequest amazonWebServiceRequest, InputStream inputStream, AmazonClientException amazonClientException, int i, RetryPolicy retryPolicy) {
        int i2 = i - 1;
        int maxErrorRetry = this.config.getMaxErrorRetry();
        if (maxErrorRetry < 0 || !retryPolicy.isMaxErrorRetryInClientConfigHonored()) {
            maxErrorRetry = retryPolicy.getMaxErrorRetry();
        }
        if (i2 >= maxErrorRetry) {
            return false;
        }
        if (inputStream == null || inputStream.markSupported()) {
            return retryPolicy.getRetryCondition().shouldRetry(amazonWebServiceRequest, amazonClientException, i2);
        }
        if (!log.isDebugEnabled()) {
            return false;
        }
        log.debug("Content not repeatable");
        return false;
    }

    public void shutdown() {
        this.httpClient.shutdown();
    }
}
