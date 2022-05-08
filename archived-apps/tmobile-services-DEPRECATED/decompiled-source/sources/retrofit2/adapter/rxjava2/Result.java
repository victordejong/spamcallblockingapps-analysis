package retrofit2.adapter.rxjava2;

import javax.annotation.Nullable;
import retrofit2.Response;
/* loaded from: classes2-dex2jar.jar:retrofit2/adapter/rxjava2/Result.class */
public final class Result<T> {
    @Nullable
    private final Throwable error;
    @Nullable
    private final Response<T> response;

    private Result(@Nullable Response<T> response, @Nullable Throwable th) {
        this.response = response;
        this.error = th;
    }

    public static <T> Result<T> error(Throwable th) {
        if (th != null) {
            return new Result<>(null, th);
        }
        throw new NullPointerException("error == null");
    }

    public static <T> Result<T> response(Response<T> response) {
        if (response != null) {
            return new Result<>(response, null);
        }
        throw new NullPointerException("response == null");
    }

    @Nullable
    public Throwable error() {
        return this.error;
    }

    public boolean isError() {
        return this.error != null;
    }

    @Nullable
    public Response<T> response() {
        return this.response;
    }
}
