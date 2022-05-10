package io.reactivex.internal.subscriptions;

import io.reactivex.exceptions.ProtocolViolationException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/SubscriptionHelper.class */
public enum SubscriptionHelper implements AbstractC10434d {
    CANCELLED;

    public static boolean cancel(AtomicReference<AbstractC10434d> atomicReference) {
        AbstractC10434d andSet;
        AbstractC10434d dVar = atomicReference.get();
        SubscriptionHelper subscriptionHelper = CANCELLED;
        if (dVar == subscriptionHelper || (andSet = atomicReference.getAndSet(subscriptionHelper)) == CANCELLED) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.cancel();
        return true;
    }

    public static void deferredRequest(AtomicReference<AbstractC10434d> atomicReference, AtomicLong atomicLong, long j) {
        AbstractC10434d dVar = atomicReference.get();
        if (dVar != null) {
            dVar.request(j);
        } else if (validate(j)) {
            C9800b.m2012a(atomicLong, j);
            AbstractC10434d dVar2 = atomicReference.get();
            if (dVar2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    dVar2.request(andSet);
                }
            }
        }
    }

    public static boolean deferredSetOnce(AtomicReference<AbstractC10434d> atomicReference, AtomicLong atomicLong, AbstractC10434d dVar) {
        if (!setOnce(atomicReference, dVar)) {
            return false;
        }
        long andSet = atomicLong.getAndSet(0L);
        if (andSet == 0) {
            return true;
        }
        dVar.request(andSet);
        return true;
    }

    public static boolean isCancelled(AbstractC10434d dVar) {
        return dVar == CANCELLED;
    }

    public static boolean replace(AtomicReference<AbstractC10434d> atomicReference, AbstractC10434d dVar) {
        AbstractC10434d dVar2;
        do {
            dVar2 = atomicReference.get();
            if (dVar2 == CANCELLED) {
                if (dVar == null) {
                    return false;
                }
                dVar.cancel();
                return false;
            }
        } while (!atomicReference.compareAndSet(dVar2, dVar));
        return true;
    }

    public static void reportMoreProduced(long j) {
        C9815a.m1923b(new ProtocolViolationException("More produced than requested: " + j));
    }

    public static void reportSubscriptionSet() {
        C9815a.m1923b(new ProtocolViolationException("Subscription already set!"));
    }

    public static boolean set(AtomicReference<AbstractC10434d> atomicReference, AbstractC10434d dVar) {
        AbstractC10434d dVar2;
        do {
            dVar2 = atomicReference.get();
            if (dVar2 == CANCELLED) {
                if (dVar == null) {
                    return false;
                }
                dVar.cancel();
                return false;
            }
        } while (!atomicReference.compareAndSet(dVar2, dVar));
        if (dVar2 == null) {
            return true;
        }
        dVar2.cancel();
        return true;
    }

    public static boolean setOnce(AtomicReference<AbstractC10434d> atomicReference, AbstractC10434d dVar) {
        C9650a.m2095a(dVar, "s is null");
        if (atomicReference.compareAndSet(null, dVar)) {
            return true;
        }
        dVar.cancel();
        if (atomicReference.get() == CANCELLED) {
            return false;
        }
        reportSubscriptionSet();
        return false;
    }

    public static boolean setOnce(AtomicReference<AbstractC10434d> atomicReference, AbstractC10434d dVar, long j) {
        if (!setOnce(atomicReference, dVar)) {
            return false;
        }
        dVar.request(j);
        return true;
    }

    public static boolean validate(long j) {
        if (j > 0) {
            return true;
        }
        C9815a.m1923b(new IllegalArgumentException("n > 0 required but it was " + j));
        return false;
    }

    public static boolean validate(AbstractC10434d dVar, AbstractC10434d dVar2) {
        if (dVar2 == null) {
            C9815a.m1923b(new NullPointerException("next is null"));
            return false;
        } else if (dVar == null) {
            return true;
        } else {
            dVar2.cancel();
            reportSubscriptionSet();
            return false;
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
    }
}
