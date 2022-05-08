package org.junit.runner;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.junit.runner.notification.Failure;
import org.junit.runner.notification.RunListener;
/* loaded from: classes2-dex2jar.jar:org/junit/runner/Result.class */
public class Result implements Serializable {
    private static final ObjectStreamField[] serialPersistentFields = ObjectStreamClass.lookup(SerializedForm.class).getFields();
    private static final long serialVersionUID = 1;
    private final AtomicInteger count;
    private final CopyOnWriteArrayList<Failure> failures;
    private final AtomicInteger ignoreCount;
    private final AtomicLong runTime;
    private SerializedForm serializedForm;
    private final AtomicLong startTime;

    @RunListener.ThreadSafe
    /* loaded from: classes2-dex2jar.jar:org/junit/runner/Result$Listener.class */
    private class Listener extends RunListener {
        private Listener() {
        }

        @Override // org.junit.runner.notification.RunListener
        public void testAssumptionFailure(Failure failure) {
        }

        @Override // org.junit.runner.notification.RunListener
        public void testFailure(Failure failure) throws Exception {
            Result.this.failures.add(failure);
        }

        @Override // org.junit.runner.notification.RunListener
        public void testFinished(Description description) throws Exception {
            Result.this.count.getAndIncrement();
        }

        @Override // org.junit.runner.notification.RunListener
        public void testIgnored(Description description) throws Exception {
            Result.this.ignoreCount.getAndIncrement();
        }

        @Override // org.junit.runner.notification.RunListener
        public void testRunFinished(Result result) throws Exception {
            Result.this.runTime.addAndGet(System.currentTimeMillis() - Result.this.startTime.get());
        }

        @Override // org.junit.runner.notification.RunListener
        public void testRunStarted(Description description) throws Exception {
            Result.this.startTime.set(System.currentTimeMillis());
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/runner/Result$SerializedForm.class */
    private static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 1;
        private final AtomicInteger fCount;
        private final List<Failure> fFailures;
        private final AtomicInteger fIgnoreCount;
        private final long fRunTime;
        private final long fStartTime;

        private SerializedForm(ObjectInputStream.GetField getField) throws IOException {
            this.fCount = (AtomicInteger) getField.get("fCount", (Object) null);
            this.fIgnoreCount = (AtomicInteger) getField.get("fIgnoreCount", (Object) null);
            this.fFailures = (List) getField.get("fFailures", (Object) null);
            this.fRunTime = getField.get("fRunTime", 0L);
            this.fStartTime = getField.get("fStartTime", 0L);
        }

        public SerializedForm(Result result) {
            this.fCount = result.count;
            this.fIgnoreCount = result.ignoreCount;
            this.fFailures = Collections.synchronizedList(new ArrayList(result.failures));
            this.fRunTime = result.runTime.longValue();
            this.fStartTime = result.startTime.longValue();
        }

        public static SerializedForm deserialize(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            return new SerializedForm(objectInputStream.readFields());
        }

        public void serialize(ObjectOutputStream objectOutputStream) throws IOException {
            ObjectOutputStream.PutField putFields = objectOutputStream.putFields();
            putFields.put("fCount", this.fCount);
            putFields.put("fIgnoreCount", this.fIgnoreCount);
            putFields.put("fFailures", this.fFailures);
            putFields.put("fRunTime", this.fRunTime);
            putFields.put("fStartTime", this.fStartTime);
            objectOutputStream.writeFields();
        }
    }

    public Result() {
        this.count = new AtomicInteger();
        this.ignoreCount = new AtomicInteger();
        this.failures = new CopyOnWriteArrayList<>();
        this.runTime = new AtomicLong();
        this.startTime = new AtomicLong();
    }

    private Result(SerializedForm serializedForm) {
        this.count = serializedForm.fCount;
        this.ignoreCount = serializedForm.fIgnoreCount;
        this.failures = new CopyOnWriteArrayList<>(serializedForm.fFailures);
        this.runTime = new AtomicLong(serializedForm.fRunTime);
        this.startTime = new AtomicLong(serializedForm.fStartTime);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        this.serializedForm = SerializedForm.deserialize(objectInputStream);
    }

    private Object readResolve() {
        return new Result(this.serializedForm);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        new SerializedForm(this).serialize(objectOutputStream);
    }

    public RunListener createListener() {
        return new Listener();
    }

    public int getFailureCount() {
        return this.failures.size();
    }

    public List<Failure> getFailures() {
        return this.failures;
    }

    public int getIgnoreCount() {
        return this.ignoreCount.get();
    }

    public int getRunCount() {
        return this.count.get();
    }

    public long getRunTime() {
        return this.runTime.get();
    }

    public boolean wasSuccessful() {
        return getFailureCount() == 0;
    }
}
