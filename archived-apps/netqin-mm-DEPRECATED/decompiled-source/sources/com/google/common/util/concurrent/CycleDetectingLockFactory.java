package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import com.google.common.collect.Sets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory.class */
public class CycleDetectingLockFactory {

    /* renamed from: b */
    public static final Logger f30938b = Logger.getLogger(CycleDetectingLockFactory.class.getName());

    /* renamed from: c */
    public static final ThreadLocal<ArrayList<C7764c>> f30939c = new C7762a();

    /* renamed from: a */
    public final AbstractC7765d f30940a;

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock.class */
    public final class CycleDetectingReentrantLock extends ReentrantLock implements AbstractC7763b {
        public final C7764c lockGraphNode;

        public CycleDetectingReentrantLock(C7764c cVar, boolean z) {
            super(z);
            C4933n.m24795a(cVar);
            this.lockGraphNode = cVar;
        }

        public /* synthetic */ CycleDetectingReentrantLock(CycleDetectingLockFactory cycleDetectingLockFactory, C7764c cVar, boolean z, C7762a aVar) {
            this(cVar, z);
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.AbstractC7763b
        public C7764c getLockGraphNode() {
            return this.lockGraphNode;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.AbstractC7763b
        public boolean isAcquiredByCurrentThread() {
            return isHeldByCurrentThread();
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.m7686a(this);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.m7683c(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.m7686a(this);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.m7683c(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.m7686a(this);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.m7683c(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.m7686a(this);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.m7683c(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.m7683c(this);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock.class */
    public class CycleDetectingReentrantReadLock extends ReentrantReadWriteLock.ReadLock {
        public final CycleDetectingReentrantReadWriteLock readWriteLock;

        public CycleDetectingReentrantReadLock(CycleDetectingReentrantReadWriteLock cycleDetectingReentrantReadWriteLock) {
            super(cycleDetectingReentrantReadWriteLock);
            this.readWriteLock = cycleDetectingReentrantReadWriteLock;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.m7686a(this.readWriteLock);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.m7683c(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.m7686a(this.readWriteLock);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.m7683c(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.m7686a(this.readWriteLock);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.m7683c(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.m7686a(this.readWriteLock);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.m7683c(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.m7683c(this.readWriteLock);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock.class */
    public final class CycleDetectingReentrantReadWriteLock extends ReentrantReadWriteLock implements AbstractC7763b {
        public final C7764c lockGraphNode;
        public final CycleDetectingReentrantReadLock readLock;
        public final CycleDetectingReentrantWriteLock writeLock;

        public CycleDetectingReentrantReadWriteLock(C7764c cVar, boolean z) {
            super(z);
            this.readLock = new CycleDetectingReentrantReadLock(this);
            this.writeLock = new CycleDetectingReentrantWriteLock(this);
            C4933n.m24795a(cVar);
            this.lockGraphNode = cVar;
        }

        public /* synthetic */ CycleDetectingReentrantReadWriteLock(CycleDetectingLockFactory cycleDetectingLockFactory, C7764c cVar, boolean z, C7762a aVar) {
            this(cVar, z);
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.AbstractC7763b
        public C7764c getLockGraphNode() {
            return this.lockGraphNode;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.AbstractC7763b
        public boolean isAcquiredByCurrentThread() {
            return isWriteLockedByCurrentThread() || getReadHoldCount() > 0;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.ReadLock readLock() {
            return this.readLock;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.WriteLock writeLock() {
            return this.writeLock;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock.class */
    public class CycleDetectingReentrantWriteLock extends ReentrantReadWriteLock.WriteLock {
        public final CycleDetectingReentrantReadWriteLock readWriteLock;

        public CycleDetectingReentrantWriteLock(CycleDetectingReentrantReadWriteLock cycleDetectingReentrantReadWriteLock) {
            super(cycleDetectingReentrantReadWriteLock);
            this.readWriteLock = cycleDetectingReentrantReadWriteLock;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.m7686a(this.readWriteLock);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.m7683c(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.m7686a(this.readWriteLock);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.m7683c(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.m7686a(this.readWriteLock);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.m7683c(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.m7686a(this.readWriteLock);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.m7683c(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.m7683c(this.readWriteLock);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace.class */
    public static class ExampleStackTrace extends IllegalStateException {
        public static final StackTraceElement[] EMPTY_STACK_TRACE = new StackTraceElement[0];
        public static final ImmutableSet<String> EXCLUDED_CLASS_NAMES = ImmutableSet.m8346of(CycleDetectingLockFactory.class.getName(), ExampleStackTrace.class.getName(), C7764c.class.getName());

        public ExampleStackTrace(C7764c cVar, C7764c cVar2) {
            super(cVar.m7682a() + " -> " + cVar2.m7682a());
            StackTraceElement[] stackTrace = getStackTrace();
            int length = stackTrace.length;
            for (int i = 0; i < length; i++) {
                if (C7766e.class.getName().equals(stackTrace[i].getClassName())) {
                    setStackTrace(EMPTY_STACK_TRACE);
                    return;
                } else if (!EXCLUDED_CLASS_NAMES.contains(stackTrace[i].getClassName())) {
                    setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i, length));
                    return;
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$Policies.class */
    public enum Policies implements AbstractC7765d {
        THROW { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.1
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.AbstractC7765d
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                throw potentialDeadlockException;
            }
        },
        WARN { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.2
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.AbstractC7765d
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                CycleDetectingLockFactory.f30938b.log(Level.SEVERE, "Detected potential deadlock", (Throwable) potentialDeadlockException);
            }
        },
        DISABLED { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.3
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.AbstractC7765d
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
            }
        };

        /* synthetic */ Policies(C7762a aVar) {
            this();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException.class */
    public static final class PotentialDeadlockException extends ExampleStackTrace {
        public final ExampleStackTrace conflictingStackTrace;

        public PotentialDeadlockException(C7764c cVar, C7764c cVar2, ExampleStackTrace exampleStackTrace) {
            super(cVar, cVar2);
            this.conflictingStackTrace = exampleStackTrace;
            initCause(exampleStackTrace);
        }

        public /* synthetic */ PotentialDeadlockException(C7764c cVar, C7764c cVar2, ExampleStackTrace exampleStackTrace, C7762a aVar) {
            this(cVar, cVar2, exampleStackTrace);
        }

        public ExampleStackTrace getConflictingStackTrace() {
            return this.conflictingStackTrace;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            StringBuilder sb = new StringBuilder(super.getMessage());
            for (Throwable th = this.conflictingStackTrace; th != null; th = th.getCause()) {
                sb.append(", ");
                sb.append(th.getMessage());
            }
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$a.class */
    public static final class C7762a extends ThreadLocal<ArrayList<C7764c>> {
        @Override // java.lang.ThreadLocal
        public ArrayList<C7764c> initialValue() {
            return Lists.m8224b(3);
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$b.class */
    public interface AbstractC7763b {
        C7764c getLockGraphNode();

        boolean isAcquiredByCurrentThread();
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$c.class */
    public static class C7764c {

        /* renamed from: a */
        public final Map<C7764c, ExampleStackTrace> f30941a;

        /* renamed from: b */
        public final Map<C7764c, PotentialDeadlockException> f30942b;

        /* renamed from: c */
        public final String f30943c;

        /* renamed from: a */
        public final ExampleStackTrace m7681a(C7764c cVar, Set<C7764c> set) {
            if (!set.add(this)) {
                return null;
            }
            ExampleStackTrace exampleStackTrace = this.f30941a.get(cVar);
            if (exampleStackTrace != null) {
                return exampleStackTrace;
            }
            for (Map.Entry<C7764c, ExampleStackTrace> entry : this.f30941a.entrySet()) {
                C7764c key = entry.getKey();
                ExampleStackTrace a = key.m7681a(cVar, set);
                if (a != null) {
                    ExampleStackTrace exampleStackTrace2 = new ExampleStackTrace(key, this);
                    exampleStackTrace2.setStackTrace(entry.getValue().getStackTrace());
                    exampleStackTrace2.initCause(a);
                    return exampleStackTrace2;
                }
            }
            return null;
        }

        /* renamed from: a */
        public String m7682a() {
            return this.f30943c;
        }

        /* renamed from: a */
        public void m7680a(AbstractC7765d dVar, C7764c cVar) {
            C4933n.m24772b(this != cVar, "Attempted to acquire multiple locks with the same rank %s", cVar.m7682a());
            if (!this.f30941a.containsKey(cVar)) {
                PotentialDeadlockException potentialDeadlockException = this.f30942b.get(cVar);
                if (potentialDeadlockException != null) {
                    dVar.handlePotentialDeadlock(new PotentialDeadlockException(cVar, this, potentialDeadlockException.getConflictingStackTrace(), null));
                    return;
                }
                ExampleStackTrace a = cVar.m7681a(this, Sets.m8057b());
                if (a == null) {
                    this.f30941a.put(cVar, new ExampleStackTrace(cVar, this));
                    return;
                }
                PotentialDeadlockException potentialDeadlockException2 = new PotentialDeadlockException(cVar, this, a, null);
                this.f30942b.put(cVar, potentialDeadlockException2);
                dVar.handlePotentialDeadlock(potentialDeadlockException2);
            }
        }

        /* renamed from: a */
        public void m7679a(AbstractC7765d dVar, List<C7764c> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                m7680a(dVar, list.get(i));
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$d.class */
    public interface AbstractC7765d {
        void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException);
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$e.class */
    public static final class C7766e<E extends Enum<E>> extends CycleDetectingLockFactory {
    }

    static {
        MapMaker mapMaker = new MapMaker();
        mapMaker.m8207g();
        mapMaker.m8208f();
    }

    /* renamed from: c */
    public static void m7683c(AbstractC7763b bVar) {
        if (!bVar.isAcquiredByCurrentThread()) {
            ArrayList<C7764c> arrayList = f30939c.get();
            C7764c lockGraphNode = bVar.getLockGraphNode();
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (arrayList.get(size) == lockGraphNode) {
                    arrayList.remove(size);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m7686a(AbstractC7763b bVar) {
        if (!bVar.isAcquiredByCurrentThread()) {
            ArrayList<C7764c> arrayList = f30939c.get();
            C7764c lockGraphNode = bVar.getLockGraphNode();
            lockGraphNode.m7679a(this.f30940a, arrayList);
            arrayList.add(lockGraphNode);
        }
    }
}
