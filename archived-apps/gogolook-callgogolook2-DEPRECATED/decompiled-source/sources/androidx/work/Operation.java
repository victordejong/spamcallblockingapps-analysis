package androidx.work;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.LiveData;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
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
            public final Throwable mThrowable;

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
            public IN_PROGRESS() {
            }

            @NonNull
            public String toString() {
                return "IN_PROGRESS";
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/work/Operation$State$SUCCESS.class */
        public static final class SUCCESS extends State {
            public SUCCESS() {
            }

            @NonNull
            public String toString() {
                return "SUCCESS";
            }
        }
    }

    @NonNull
    AbstractFutureC9382a<State.SUCCESS> getResult();

    @NonNull
    LiveData<State> getState();
}
