package androidx.work;

import android.annotation.SuppressLint;
import android.arch.lifecycle.LiveData;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import com.google.common.util.concurrent.ListenableFuture;
/* loaded from: classes-dex2jar.jar:androidx/work/Operation.class */
public interface Operation {
    @SuppressLint({"SyntheticAccessor"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final State.SUCCESS SUCCESS = new State.SUCCESS();
    @SuppressLint({"SyntheticAccessor"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final State.IN_PROGRESS IN_PROGRESS = new State.IN_PROGRESS();

    /* loaded from: classes-dex2jar.jar:androidx/work/Operation$State.class */
    public static abstract class State {

        /* loaded from: classes-dex2jar.jar:androidx/work/Operation$State$FAILURE.class */
        public static final class FAILURE extends State {
            private final Throwable mThrowable;

            public FAILURE(@NonNull Throwable th) {
                this.mThrowable = th;
            }

            @NonNull
            public Throwable getThrowable() {
                return this.mThrowable;
            }

            @NonNull
            public String toString() {
                return String.format("FAILURE (%s)", this.mThrowable.getMessage());
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/work/Operation$State$IN_PROGRESS.class */
        public static final class IN_PROGRESS extends State {
            private IN_PROGRESS() {
            }

            @NonNull
            public String toString() {
                return "IN_PROGRESS";
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/work/Operation$State$SUCCESS.class */
        public static final class SUCCESS extends State {
            private SUCCESS() {
            }

            @NonNull
            public String toString() {
                return "SUCCESS";
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        State() {
        }
    }

    @NonNull
    ListenableFuture<State.SUCCESS> getResult();

    @NonNull
    LiveData<State> getState();
}
