package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.retry.RetryPolicy;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/amazonaws/retry/PredefinedRetryPolicies.class */
public class PredefinedRetryPolicies {
    public static final RetryPolicy.RetryCondition DEFAULT_RETRY_CONDITION = new SDKDefaultRetryCondition();
    public static final RetryPolicy.BackoffStrategy DEFAULT_BACKOFF_STRATEGY = new SDKDefaultBackoffStrategy(100, 20000);
    public static final RetryPolicy DEFAULT = getDefaultRetryPolicy();

    /* loaded from: classes-dex2jar.jar:com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy.class */
    public static class SDKDefaultBackoffStrategy implements RetryPolicy.BackoffStrategy {
        public final int baseDelayMs;
        public final int maxDelayMs;
        public final Random random;

        public SDKDefaultBackoffStrategy(int i, int i2) {
            this.random = new Random();
            this.baseDelayMs = i;
            this.maxDelayMs = i2;
        }

        @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
        public final long delayBeforeNextRetry(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i) {
            if (i <= 0) {
                return 0L;
            }
            return this.random.nextInt(Math.min(this.maxDelayMs, (1 << i) * this.baseDelayMs));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition.class */
    public static class SDKDefaultRetryCondition implements RetryPolicy.RetryCondition {
        @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
        public boolean shouldRetry(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i) {
            if ((amazonClientException.getCause() instanceof IOException) && !(amazonClientException.getCause() instanceof InterruptedIOException)) {
                return true;
            }
            if (!(amazonClientException instanceof AmazonServiceException)) {
                return false;
            }
            AmazonServiceException amazonServiceException = (AmazonServiceException) amazonClientException;
            int statusCode = amazonServiceException.getStatusCode();
            return statusCode == 500 || statusCode == 503 || statusCode == 502 || statusCode == 504 || RetryUtils.isThrottlingException(amazonServiceException) || RetryUtils.isClockSkewError(amazonServiceException);
        }
    }

    static {
        new RetryPolicy(RetryPolicy.RetryCondition.NO_RETRY_CONDITION, RetryPolicy.BackoffStrategy.NO_DELAY, 0, false);
        getDynamoDBDefaultRetryPolicy();
    }

    public static RetryPolicy getDefaultRetryPolicy() {
        return new RetryPolicy(DEFAULT_RETRY_CONDITION, DEFAULT_BACKOFF_STRATEGY, 3, true);
    }

    public static RetryPolicy getDynamoDBDefaultRetryPolicy() {
        return new RetryPolicy(DEFAULT_RETRY_CONDITION, DEFAULT_BACKOFF_STRATEGY, 10, true);
    }
}
