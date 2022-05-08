package retrofit2.mock;

import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import retrofit2.Response;
/* loaded from: classes3-dex2jar.jar:retrofit2/mock/NetworkBehavior.class */
public final class NetworkBehavior {
    private static final int DEFAULT_DELAY_MS = 2000;
    private static final int DEFAULT_ERROR_PERCENT = 0;
    private static final int DEFAULT_FAILURE_PERCENT = 3;
    private static final int DEFAULT_VARIANCE_PERCENT = 40;
    private final Random random;
    private volatile long delayMs = 2000;
    private volatile int variancePercent = 40;
    private volatile int failurePercent = 3;
    private volatile int errorPercent = 0;
    private volatile Callable<Response<?>> errorFactory = new Callable<Response<?>>() { // from class: retrofit2.mock.NetworkBehavior.1
        @Override // java.util.concurrent.Callable
        public Response<?> call() {
            return Response.error(500, ResponseBody.create((MediaType) null, new byte[0]));
        }
    };
    private volatile Throwable failureException = new MockRetrofitIOException();

    private NetworkBehavior(Random random) {
        this.random = random;
        this.failureException.setStackTrace(new StackTraceElement[0]);
    }

    private static void checkPercentageValidity(int i, String str) {
        if (i < 0 || i > 100) {
            throw new IllegalArgumentException(str);
        }
    }

    public static NetworkBehavior create() {
        return new NetworkBehavior(new Random());
    }

    public static NetworkBehavior create(Random random) {
        if (random != null) {
            return new NetworkBehavior(random);
        }
        throw new NullPointerException("random == null");
    }

    public long calculateDelay(TimeUnit timeUnit) {
        float f = this.variancePercent / 100.0f;
        float f2 = 1.0f - f;
        return TimeUnit.MILLISECONDS.convert(((float) this.delayMs) * (f2 + (this.random.nextFloat() * ((f + 1.0f) - f2))), timeUnit);
    }

    public boolean calculateIsError() {
        return this.random.nextInt(100) < this.errorPercent;
    }

    public boolean calculateIsFailure() {
        return this.random.nextInt(100) < this.failurePercent;
    }

    public Response<?> createErrorResponse() {
        try {
            Response<?> call = this.errorFactory.call();
            if (call == null) {
                throw new IllegalStateException("Error factory returned null.");
            } else if (!call.isSuccessful()) {
                return call;
            } else {
                throw new IllegalStateException("Error factory returned successful response.");
            }
        } catch (Exception e) {
            throw new IllegalStateException("Error factory threw an exception.", e);
        }
    }

    public long delay(TimeUnit timeUnit) {
        return TimeUnit.MILLISECONDS.convert(this.delayMs, timeUnit);
    }

    public int errorPercent() {
        return this.errorPercent;
    }

    public Throwable failureException() {
        return this.failureException;
    }

    public int failurePercent() {
        return this.failurePercent;
    }

    public void setDelay(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("Amount must be positive value.");
        }
        this.delayMs = timeUnit.toMillis(j);
    }

    public void setErrorFactory(Callable<Response<?>> callable) {
        if (callable == null) {
            throw new NullPointerException("errorFactory == null");
        }
        this.errorFactory = callable;
    }

    public void setErrorPercent(int i) {
        checkPercentageValidity(i, "Error percentage must be between 0 and 100.");
        this.errorPercent = i;
    }

    public void setFailureException(Throwable th) {
        if (th == null) {
            throw new NullPointerException("exception == null");
        }
        this.failureException = th;
    }

    public void setFailurePercent(int i) {
        checkPercentageValidity(i, "Failure percentage must be between 0 and 100.");
        this.failurePercent = i;
    }

    public void setVariancePercent(int i) {
        checkPercentageValidity(i, "Variance percentage must be between 0 and 100.");
        this.variancePercent = i;
    }

    public int variancePercent() {
        return this.variancePercent;
    }
}
