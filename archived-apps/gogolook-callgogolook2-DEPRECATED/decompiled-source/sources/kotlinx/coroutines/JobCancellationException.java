package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0003\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b��\u0018��2\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020��0\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\n\u0010\u000b\u001a\u0004\u0018\u00010��H\u0016J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0007H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0005H\u0016R\u0010\u0010\b\u001a\u00020\t8��X\u0081\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m815d2 = {"Lkotlinx/coroutines/JobCancellationException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "Lkotlinx/coroutines/CopyableThrowable;", "message", "", "cause", "", "job", "Lkotlinx/coroutines/Job;", "(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V", "createCopy", "equals", "", "other", "", "fillInStackTrace", "hashCode", "", "toString", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/JobCancellationException.class */
public final class JobCancellationException extends CancellationException implements CopyableThrowable<JobCancellationException> {
    public final Job job;

    public JobCancellationException(String str, Throwable th, Job job) {
        super(str);
        this.job = job;
        if (th != null) {
            initCause(th);
        }
    }

    @Override // kotlinx.coroutines.CopyableThrowable
    public JobCancellationException createCopy() {
        if (!DebugKt.getDEBUG()) {
            return null;
        }
        String message = getMessage();
        if (message != null) {
            return new JobCancellationException(message, this, this.job);
        }
        C15149k.m378b();
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        if (p626l.p641z.p643d.C15149k.m384a(r0.getCause(), getCause()) != false) goto L_0x0043;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            r1 = r3
            if (r0 == r1) goto L_0x0043
            r0 = r4
            boolean r0 = r0 instanceof kotlinx.coroutines.JobCancellationException
            if (r0 == 0) goto L_0x003e
            r0 = r4
            kotlinx.coroutines.JobCancellationException r0 = (kotlinx.coroutines.JobCancellationException) r0
            r4 = r0
            r0 = r4
            java.lang.String r0 = r0.getMessage()
            r1 = r3
            java.lang.String r1 = r1.getMessage()
            boolean r0 = p626l.p641z.p643d.C15149k.m384a(r0, r1)
            if (r0 == 0) goto L_0x003e
            r0 = r4
            kotlinx.coroutines.Job r0 = r0.job
            r1 = r3
            kotlinx.coroutines.Job r1 = r1.job
            boolean r0 = p626l.p641z.p643d.C15149k.m384a(r0, r1)
            if (r0 == 0) goto L_0x003e
            r0 = r4
            java.lang.Throwable r0 = r0.getCause()
            r1 = r3
            java.lang.Throwable r1 = r1.getCause()
            boolean r0 = p626l.p641z.p643d.C15149k.m384a(r0, r1)
            if (r0 == 0) goto L_0x003e
            goto L_0x0043
        L_0x003e:
            r0 = 0
            r5 = r0
            goto L_0x0045
        L_0x0043:
            r0 = 1
            r5 = r0
        L_0x0045:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobCancellationException.equals(java.lang.Object):boolean");
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return DebugKt.getDEBUG() ? super.fillInStackTrace() : this;
    }

    public int hashCode() {
        String message = getMessage();
        if (message != null) {
            int hashCode = message.hashCode();
            int hashCode2 = this.job.hashCode();
            Throwable cause = getCause();
            return (((hashCode * 31) + hashCode2) * 31) + (cause != null ? cause.hashCode() : 0);
        }
        C15149k.m378b();
        throw null;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + "; job=" + this.job;
    }
}
