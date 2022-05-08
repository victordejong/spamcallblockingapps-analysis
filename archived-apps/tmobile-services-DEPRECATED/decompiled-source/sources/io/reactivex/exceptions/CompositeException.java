package io.reactivex.exceptions;

import io.reactivex.annotations.NonNull;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:io/reactivex/exceptions/CompositeException.class */
public final class CompositeException extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;

    /* renamed from: f */
    private final List<Throwable> f15121f;

    /* renamed from: g */
    private final String f15122g;

    /* renamed from: h */
    private Throwable f15123h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/exceptions/CompositeException$CompositeExceptionCausalChain.class */
    static final class CompositeExceptionCausalChain extends RuntimeException {
        private static final long serialVersionUID = 3875212506787802066L;

        CompositeExceptionCausalChain() {
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return "Chain of Causes for CompositeException In Order Received =>";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/exceptions/CompositeException$PrintStreamOrWriter.class */
    public static abstract class PrintStreamOrWriter {
        PrintStreamOrWriter() {
        }

        /* renamed from: a */
        abstract void mo4430a(Object obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/exceptions/CompositeException$WrappedPrintStream.class */
    public static final class WrappedPrintStream extends PrintStreamOrWriter {

        /* renamed from: a */
        private final PrintStream f15124a;

        WrappedPrintStream(PrintStream printStream) {
            this.f15124a = printStream;
        }

        @Override // io.reactivex.exceptions.CompositeException.PrintStreamOrWriter
        /* renamed from: a */
        void mo4430a(Object obj) {
            this.f15124a.println(obj);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/exceptions/CompositeException$WrappedPrintWriter.class */
    static final class WrappedPrintWriter extends PrintStreamOrWriter {

        /* renamed from: a */
        private final PrintWriter f15125a;

        WrappedPrintWriter(PrintWriter printWriter) {
            this.f15125a = printWriter;
        }

        @Override // io.reactivex.exceptions.CompositeException.PrintStreamOrWriter
        /* renamed from: a */
        void mo4430a(Object obj) {
            this.f15125a.println(obj);
        }
    }

    public CompositeException(@NonNull Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (iterable != null) {
            for (Throwable th : iterable) {
                if (th instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th).m4434b());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (!linkedHashSet.isEmpty()) {
            arrayList.addAll(linkedHashSet);
            this.f15121f = Collections.unmodifiableList(arrayList);
            this.f15122g = this.f15121f.size() + " exceptions occurred. ";
            return;
        }
        throw new IllegalArgumentException("errors is empty");
    }

    public CompositeException(@NonNull Throwable... thArr) {
        this(thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }

    /* renamed from: a */
    private void m4435a(StringBuilder sb, Throwable th, String str) {
        StackTraceElement[] stackTrace;
        sb.append(str);
        sb.append(th);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            sb.append("\t\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            m4435a(sb, th.getCause(), "");
        }
    }

    /* renamed from: c */
    private List<Throwable> m4433c(Throwable th) {
        ArrayList arrayList = new ArrayList();
        Throwable cause = th.getCause();
        if (cause != null) {
            Throwable th2 = cause;
            if (cause != th) {
                while (true) {
                    arrayList.add(th2);
                    Throwable cause2 = th2.getCause();
                    if (cause2 == null || cause2 == th2) {
                        break;
                    }
                    th2 = cause2;
                }
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    private void m4431e(PrintStreamOrWriter printStreamOrWriter) {
        StackTraceElement[] stackTrace;
        StringBuilder sb = new StringBuilder(128);
        sb.append(this);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        int i = 1;
        for (Throwable th : this.f15121f) {
            sb.append("  ComposedException ");
            sb.append(i);
            sb.append(" :\n");
            m4435a(sb, th, "\t");
            i++;
        }
        printStreamOrWriter.mo4430a(sb.toString());
    }

    @NonNull
    /* renamed from: b */
    public List<Throwable> m4434b() {
        return this.f15121f;
    }

    /* renamed from: d */
    Throwable m4432d(Throwable th) {
        Throwable cause = th.getCause();
        if (cause != null) {
            Throwable th2 = cause;
            if (th != cause) {
                while (true) {
                    Throwable cause2 = th2.getCause();
                    if (cause2 == null || cause2 == th2) {
                        break;
                    }
                    th2 = cause2;
                }
                return th2;
            }
        }
        return th;
    }

    @Override // java.lang.Throwable
    @NonNull
    public Throwable getCause() {
        Throwable th;
        synchronized (this) {
            if (this.f15123h == null) {
                CompositeExceptionCausalChain compositeExceptionCausalChain = new CompositeExceptionCausalChain();
                HashSet hashSet = new HashSet();
                Iterator<Throwable> it = this.f15121f.iterator();
                CompositeExceptionCausalChain compositeExceptionCausalChain2 = compositeExceptionCausalChain;
                while (it.hasNext()) {
                    Throwable next = it.next();
                    if (!hashSet.contains(next)) {
                        hashSet.add(next);
                        for (Throwable th2 : m4433c(next)) {
                            if (hashSet.contains(th2)) {
                                next = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                            } else {
                                hashSet.add(th2);
                            }
                        }
                        try {
                            compositeExceptionCausalChain2.initCause(next);
                        } catch (Throwable th3) {
                        }
                        compositeExceptionCausalChain2 = m4432d(compositeExceptionCausalChain2);
                    }
                }
                this.f15123h = compositeExceptionCausalChain;
            }
            th = this.f15123h;
        }
        return th;
    }

    @Override // java.lang.Throwable
    @NonNull
    public String getMessage() {
        return this.f15122g;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        m4431e(new WrappedPrintStream(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        m4431e(new WrappedPrintWriter(printWriter));
    }
}
