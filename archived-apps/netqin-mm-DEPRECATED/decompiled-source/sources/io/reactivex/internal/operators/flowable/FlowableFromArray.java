package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9652a;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromArray.class */
public final class FlowableFromArray<T> extends AbstractC9814e<T> {

    /* renamed from: b */
    public final T[] f38386b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription.class */
    public static final class ArrayConditionalSubscription<T> extends BaseArraySubscription<T> {
        public static final long serialVersionUID = 2587302975077663557L;
        public final AbstractC9652a<? super T> actual;

        public ArrayConditionalSubscription(AbstractC9652a<? super T> aVar, T[] tArr) {
            super(tArr);
            this.actual = aVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        public void fastPath() {
            T[] tArr = this.array;
            int length = tArr.length;
            AbstractC9652a<? super T> aVar = this.actual;
            for (int i = this.index; i != length; i++) {
                if (!this.cancelled) {
                    T t = tArr[i];
                    if (t == null) {
                        aVar.onError(new NullPointerException("array element is null"));
                        return;
                    } else {
                        aVar.tryOnNext(t);
                    }
                } else {
                    return;
                }
            }
            if (!this.cancelled) {
                aVar.onComplete();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v4 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void slowPath(long r6) {
            /*
                r5 = this;
                r0 = r5
                T[] r0 = r0.array
                r8 = r0
                r0 = r8
                int r0 = r0.length
                r9 = r0
                r0 = r5
                int r0 = r0.index
                r10 = r0
                r0 = r5
                d.c.b0.c.a<? super T> r0 = r0.actual
                r11 = r0
            L_0x0015:
                r0 = 0
                r12 = r0
            L_0x0018:
                r0 = r12
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x006a
                r0 = r10
                r1 = r9
                if (r0 == r1) goto L_0x006a
                r0 = r5
                boolean r0 = r0.cancelled
                if (r0 == 0) goto L_0x002e
                return
            L_0x002e:
                r0 = r8
                r1 = r10
                r0 = r0[r1]
                r14 = r0
                r0 = r14
                if (r0 != 0) goto L_0x004a
                r0 = r11
                java.lang.NullPointerException r1 = new java.lang.NullPointerException
                r2 = r1
                java.lang.String r3 = "array element is null"
                r2.<init>(r3)
                r0.onError(r1)
                return
            L_0x004a:
                r0 = r12
                r15 = r0
                r0 = r11
                r1 = r14
                boolean r0 = r0.tryOnNext(r1)
                if (r0 == 0) goto L_0x0060
                r0 = r12
                r1 = 1
                long r0 = r0 + r1
                r15 = r0
            L_0x0060:
                int r10 = r10 + 1
                r0 = r15
                r12 = r0
                goto L_0x0018
            L_0x006a:
                r0 = r10
                r1 = r9
                if (r0 != r1) goto L_0x0080
                r0 = r5
                boolean r0 = r0.cancelled
                if (r0 != 0) goto L_0x007f
                r0 = r11
                r0.onComplete()
            L_0x007f:
                return
            L_0x0080:
                r0 = r5
                long r0 = r0.get()
                r15 = r0
                r0 = r15
                r6 = r0
                r0 = r12
                r1 = r15
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0018
                r0 = r5
                r1 = r10
                r0.index = r1
                r0 = r5
                r1 = r12
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r12 = r0
                r0 = r12
                r6 = r0
                r0 = r12
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0015
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFromArray.ArrayConditionalSubscription.slowPath(long):void");
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription.class */
    public static final class ArraySubscription<T> extends BaseArraySubscription<T> {
        public static final long serialVersionUID = 2587302975077663557L;
        public final AbstractC10433c<? super T> actual;

        public ArraySubscription(AbstractC10433c<? super T> cVar, T[] tArr) {
            super(tArr);
            this.actual = cVar;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        public void fastPath() {
            T[] tArr = this.array;
            int length = tArr.length;
            AbstractC10433c<? super T> cVar = this.actual;
            for (int i = this.index; i != length; i++) {
                if (!this.cancelled) {
                    T t = tArr[i];
                    if (t == null) {
                        cVar.onError(new NullPointerException("array element is null"));
                        return;
                    } else {
                        cVar.onNext(t);
                    }
                } else {
                    return;
                }
            }
            if (!this.cancelled) {
                cVar.onComplete();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // io.reactivex.internal.operators.flowable.FlowableFromArray.BaseArraySubscription
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void slowPath(long r6) {
            /*
                r5 = this;
                r0 = r5
                T[] r0 = r0.array
                r8 = r0
                r0 = r8
                int r0 = r0.length
                r9 = r0
                r0 = r5
                int r0 = r0.index
                r10 = r0
                r0 = r5
                j.a.c<? super T> r0 = r0.actual
                r11 = r0
            L_0x0015:
                r0 = 0
                r12 = r0
            L_0x0018:
                r0 = r12
                r1 = r6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x005f
                r0 = r10
                r1 = r9
                if (r0 == r1) goto L_0x005f
                r0 = r5
                boolean r0 = r0.cancelled
                if (r0 == 0) goto L_0x002e
                return
            L_0x002e:
                r0 = r8
                r1 = r10
                r0 = r0[r1]
                r14 = r0
                r0 = r14
                if (r0 != 0) goto L_0x004a
                r0 = r11
                java.lang.NullPointerException r1 = new java.lang.NullPointerException
                r2 = r1
                java.lang.String r3 = "array element is null"
                r2.<init>(r3)
                r0.onError(r1)
                return
            L_0x004a:
                r0 = r11
                r1 = r14
                r0.onNext(r1)
                r0 = r12
                r1 = 1
                long r0 = r0 + r1
                r12 = r0
                int r10 = r10 + 1
                goto L_0x0018
            L_0x005f:
                r0 = r10
                r1 = r9
                if (r0 != r1) goto L_0x0075
                r0 = r5
                boolean r0 = r0.cancelled
                if (r0 != 0) goto L_0x0074
                r0 = r11
                r0.onComplete()
            L_0x0074:
                return
            L_0x0075:
                r0 = r5
                long r0 = r0.get()
                r15 = r0
                r0 = r15
                r6 = r0
                r0 = r12
                r1 = r15
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0018
                r0 = r5
                r1 = r10
                r0.index = r1
                r0 = r5
                r1 = r12
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r12 = r0
                r0 = r12
                r6 = r0
                r0 = r12
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0015
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFromArray.ArraySubscription.slowPath(long):void");
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription.class */
    public static abstract class BaseArraySubscription<T> extends BasicQueueSubscription<T> {
        public static final long serialVersionUID = -2252972430506210021L;
        public final T[] array;
        public volatile boolean cancelled;
        public int index;

        public BaseArraySubscription(T[] tArr) {
            this.array = tArr;
        }

        @Override // p611j.p612a.AbstractC10434d
        public final void cancel() {
            this.cancelled = true;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public final void clear() {
            this.index = this.array.length;
        }

        public abstract void fastPath();

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public final boolean isEmpty() {
            return this.index == this.array.length;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public final T poll() {
            int i = this.index;
            T[] tArr = this.array;
            if (i == tArr.length) {
                return null;
            }
            this.index = i + 1;
            T t = tArr[i];
            C9650a.m2095a((Object) t, "array element is null");
            return t;
        }

        @Override // p611j.p612a.AbstractC10434d
        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && C9800b.m2012a(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    fastPath();
                } else {
                    slowPath(j);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public final int requestFusion(int i) {
            return i & 1;
        }

        public abstract void slowPath(long j);
    }

    public FlowableFromArray(T[] tArr) {
        this.f38386b = tArr;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        if (cVar instanceof AbstractC9652a) {
            cVar.onSubscribe(new ArrayConditionalSubscription((AbstractC9652a) cVar, this.f38386b));
        } else {
            cVar.onSubscribe(new ArraySubscription(cVar, this.f38386b));
        }
    }
}
