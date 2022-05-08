package io.reactivex.internal.functions;

import io.reactivex.Notification;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.functions.Action;
import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.BooleanSupplier;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Function3;
import io.reactivex.functions.Function4;
import io.reactivex.functions.Function5;
import io.reactivex.functions.Function6;
import io.reactivex.functions.Function7;
import io.reactivex.functions.Function8;
import io.reactivex.functions.Function9;
import io.reactivex.functions.LongConsumer;
import io.reactivex.functions.Predicate;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.schedulers.Timed;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions.class */
public final class Functions {

    /* renamed from: a */
    static final Function<Object, Object> f15129a = new Identity();

    /* renamed from: b */
    public static final Runnable f15130b = new EmptyRunnable();

    /* renamed from: c */
    public static final Action f15131c = new EmptyAction();

    /* renamed from: d */
    static final Consumer<Object> f15132d = new EmptyConsumer();

    /* renamed from: e */
    public static final Consumer<Throwable> f15133e = new OnErrorMissingConsumer();

    /* renamed from: f */
    static final Predicate<Object> f15134f = new TruePredicate();

    /* renamed from: g */
    static final Predicate<Object> f15135g = new FalsePredicate();

    /* renamed from: h */
    static final Callable<Object> f15136h = new NullCallable();

    /* renamed from: i */
    static final Comparator<Object> f15137i = new NaturalObjectComparator();

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$ActionConsumer.class */
    static final class ActionConsumer<T> implements Consumer<T> {

        /* renamed from: f */
        final Action f15138f;

        ActionConsumer(Action action) {
            this.f15138f = action;
        }

        @Override // io.reactivex.functions.Consumer
        public void accept(T t) throws Exception {
            this.f15138f.run();
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$Array2Func.class */
    static final class Array2Func<T1, T2, R> implements Function<Object[], R> {

        /* renamed from: f */
        final BiFunction<? super T1, ? super T2, ? extends R> f15139f;

        Array2Func(BiFunction<? super T1, ? super T2, ? extends R> biFunction) {
            this.f15139f = biFunction;
        }

        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 2) {
                return (R) this.f15139f.apply(objArr[0], objArr[1]);
            }
            throw new IllegalArgumentException("Array of size 2 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$Array3Func.class */
    static final class Array3Func<T1, T2, T3, R> implements Function<Object[], R> {

        /* renamed from: f */
        final Function3<T1, T2, T3, R> f15140f;

        Array3Func(Function3<T1, T2, T3, R> function3) {
            this.f15140f = function3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 3) {
                return (R) this.f15140f.mo3250a(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$Array4Func.class */
    static final class Array4Func<T1, T2, T3, T4, R> implements Function<Object[], R> {

        /* renamed from: f */
        final Function4<T1, T2, T3, T4, R> f15141f;

        Array4Func(Function4<T1, T2, T3, T4, R> function4) {
            this.f15141f = function4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 4) {
                return (R) this.f15141f.mo3248a(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
            throw new IllegalArgumentException("Array of size 4 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$Array5Func.class */
    static final class Array5Func<T1, T2, T3, T4, T5, R> implements Function<Object[], R> {

        /* renamed from: f */
        private final Function5<T1, T2, T3, T4, T5, R> f15142f;

        Array5Func(Function5<T1, T2, T3, T4, T5, R> function5) {
            this.f15142f = function5;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 5) {
                return (R) this.f15142f.mo3247a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            throw new IllegalArgumentException("Array of size 5 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$Array6Func.class */
    static final class Array6Func<T1, T2, T3, T4, T5, T6, R> implements Function<Object[], R> {

        /* renamed from: f */
        final Function6<T1, T2, T3, T4, T5, T6, R> f15143f;

        Array6Func(Function6<T1, T2, T3, T4, T5, T6, R> function6) {
            this.f15143f = function6;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 6) {
                return (R) this.f15143f.mo3246a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
            throw new IllegalArgumentException("Array of size 6 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$Array7Func.class */
    static final class Array7Func<T1, T2, T3, T4, T5, T6, T7, R> implements Function<Object[], R> {

        /* renamed from: f */
        final Function7<T1, T2, T3, T4, T5, T6, T7, R> f15144f;

        Array7Func(Function7<T1, T2, T3, T4, T5, T6, T7, R> function7) {
            this.f15144f = function7;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 7) {
                return (R) this.f15144f.mo3245a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
            throw new IllegalArgumentException("Array of size 7 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$Array8Func.class */
    static final class Array8Func<T1, T2, T3, T4, T5, T6, T7, T8, R> implements Function<Object[], R> {

        /* renamed from: f */
        final Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> f15145f;

        Array8Func(Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> function8) {
            this.f15145f = function8;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 8) {
                return (R) this.f15145f.mo3244a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
            throw new IllegalArgumentException("Array of size 8 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$Array9Func.class */
    static final class Array9Func<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements Function<Object[], R> {

        /* renamed from: f */
        final Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f15146f;

        Array9Func(Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> function9) {
            this.f15146f = function9;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 9) {
                return (R) this.f15146f.mo3252a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
            throw new IllegalArgumentException("Array of size 9 expected but got " + objArr.length);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$ArrayListCapacityCallable.class */
    static final class ArrayListCapacityCallable<T> implements Callable<List<T>> {

        /* renamed from: f */
        final int f15147f;

        ArrayListCapacityCallable(int i) {
            this.f15147f = i;
        }

        /* renamed from: a */
        public List<T> call() throws Exception {
            return new ArrayList(this.f15147f);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$BooleanSupplierPredicateReverse.class */
    static final class BooleanSupplierPredicateReverse<T> implements Predicate<T> {

        /* renamed from: f */
        final BooleanSupplier f15148f;

        BooleanSupplierPredicateReverse(BooleanSupplier booleanSupplier) {
            this.f15148f = booleanSupplier;
        }

        @Override // io.reactivex.functions.Predicate
        /* renamed from: a */
        public boolean mo3191a(T t) throws Exception {
            return !this.f15148f.mo4309a();
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$BoundedConsumer.class */
    public static class BoundedConsumer implements Consumer<Subscription> {

        /* renamed from: f */
        final int f15149f;

        /* renamed from: a */
        public void accept(Subscription subscription) throws Exception {
            subscription.request(this.f15149f);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$CastToClass.class */
    static final class CastToClass<T, U> implements Function<T, U> {

        /* renamed from: f */
        final Class<U> f15150f;

        CastToClass(Class<U> cls) {
            this.f15150f = cls;
        }

        @Override // io.reactivex.functions.Function
        public U apply(T t) throws Exception {
            return this.f15150f.cast(t);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$ClassFilter.class */
    static final class ClassFilter<T, U> implements Predicate<T> {

        /* renamed from: f */
        final Class<U> f15151f;

        ClassFilter(Class<U> cls) {
            this.f15151f = cls;
        }

        @Override // io.reactivex.functions.Predicate
        /* renamed from: a */
        public boolean mo3191a(T t) throws Exception {
            return this.f15151f.isInstance(t);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$EmptyAction.class */
    static final class EmptyAction implements Action {
        EmptyAction() {
        }

        @Override // io.reactivex.functions.Action
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$EmptyConsumer.class */
    static final class EmptyConsumer implements Consumer<Object> {
        EmptyConsumer() {
        }

        @Override // io.reactivex.functions.Consumer
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$EmptyLongConsumer.class */
    static final class EmptyLongConsumer implements LongConsumer {
        EmptyLongConsumer() {
        }

        @Override // io.reactivex.functions.LongConsumer
        /* renamed from: a */
        public void mo4378a(long j) {
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$EmptyRunnable.class */
    static final class EmptyRunnable implements Runnable {
        EmptyRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$EqualsPredicate.class */
    static final class EqualsPredicate<T> implements Predicate<T> {

        /* renamed from: f */
        final T f15152f;

        EqualsPredicate(T t) {
            this.f15152f = t;
        }

        @Override // io.reactivex.functions.Predicate
        /* renamed from: a */
        public boolean mo3191a(T t) throws Exception {
            return ObjectHelper.m4365c(t, this.f15152f);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$ErrorConsumer.class */
    static final class ErrorConsumer implements Consumer<Throwable> {
        ErrorConsumer() {
        }

        /* renamed from: a */
        public void accept(Throwable th) {
            RxJavaPlugins.m3354t(th);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$FalsePredicate.class */
    static final class FalsePredicate implements Predicate<Object> {
        FalsePredicate() {
        }

        @Override // io.reactivex.functions.Predicate
        /* renamed from: a */
        public boolean mo3191a(Object obj) {
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$FutureAction.class */
    static final class FutureAction implements Action {

        /* renamed from: f */
        final Future<?> f15153f;

        @Override // io.reactivex.functions.Action
        public void run() throws Exception {
            this.f15153f.get();
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$HashSetCallable.class */
    enum HashSetCallable implements Callable<Set<Object>> {
        INSTANCE;

        @Override // java.util.concurrent.Callable
        public Set<Object> call() throws Exception {
            return new HashSet();
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$Identity.class */
    static final class Identity implements Function<Object, Object> {
        Identity() {
        }

        @Override // io.reactivex.functions.Function
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$JustValue.class */
    static final class JustValue<T, U> implements Callable<U>, Function<T, U> {

        /* renamed from: f */
        final U f15154f;

        JustValue(U u) {
            this.f15154f = u;
        }

        @Override // io.reactivex.functions.Function
        public U apply(T t) throws Exception {
            return this.f15154f;
        }

        @Override // java.util.concurrent.Callable
        public U call() throws Exception {
            return this.f15154f;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$ListSorter.class */
    static final class ListSorter<T> implements Function<List<T>, List<T>> {

        /* renamed from: f */
        final Comparator<? super T> f15155f;

        ListSorter(Comparator<? super T> comparator) {
            this.f15155f = comparator;
        }

        /* renamed from: a */
        public List<T> m4376a(List<T> list) {
            Collections.sort(list, this.f15155f);
            return list;
        }

        @Override // io.reactivex.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) throws Exception {
            List<T> list = (List) obj;
            m4376a(list);
            return list;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$MaxRequestSubscription.class */
    static final class MaxRequestSubscription implements Consumer<Subscription> {
        MaxRequestSubscription() {
        }

        /* renamed from: a */
        public void accept(Subscription subscription) throws Exception {
            subscription.request(Long.MAX_VALUE);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$NaturalComparator.class */
    enum NaturalComparator implements Comparator<Object> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$NaturalObjectComparator.class */
    static final class NaturalObjectComparator implements Comparator<Object> {
        NaturalObjectComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$NotificationOnComplete.class */
    static final class NotificationOnComplete<T> implements Action {

        /* renamed from: f */
        final Consumer<? super Notification<T>> f15156f;

        NotificationOnComplete(Consumer<? super Notification<T>> consumer) {
            this.f15156f = consumer;
        }

        @Override // io.reactivex.functions.Action
        public void run() throws Exception {
            this.f15156f.accept(Notification.m4484a());
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$NotificationOnError.class */
    static final class NotificationOnError<T> implements Consumer<Throwable> {

        /* renamed from: f */
        final Consumer<? super Notification<T>> f15157f;

        NotificationOnError(Consumer<? super Notification<T>> consumer) {
            this.f15157f = consumer;
        }

        /* renamed from: a */
        public void accept(Throwable th) throws Exception {
            this.f15157f.accept(Notification.m4483b(th));
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$NotificationOnNext.class */
    static final class NotificationOnNext<T> implements Consumer<T> {

        /* renamed from: f */
        final Consumer<? super Notification<T>> f15158f;

        NotificationOnNext(Consumer<? super Notification<T>> consumer) {
            this.f15158f = consumer;
        }

        @Override // io.reactivex.functions.Consumer
        public void accept(T t) throws Exception {
            this.f15158f.accept(Notification.m4482c(t));
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$NullCallable.class */
    static final class NullCallable implements Callable<Object> {
        NullCallable() {
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$OnErrorMissingConsumer.class */
    static final class OnErrorMissingConsumer implements Consumer<Throwable> {
        OnErrorMissingConsumer() {
        }

        /* renamed from: a */
        public void accept(Throwable th) {
            RxJavaPlugins.m3354t(new OnErrorNotImplementedException(th));
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$TimestampFunction.class */
    static final class TimestampFunction<T> implements Function<T, Timed<T>> {

        /* renamed from: f */
        final TimeUnit f15159f;

        /* renamed from: g */
        final Scheduler f15160g;

        TimestampFunction(TimeUnit timeUnit, Scheduler scheduler) {
            this.f15159f = timeUnit;
            this.f15160g = scheduler;
        }

        /* renamed from: a */
        public Timed<T> apply(T t) throws Exception {
            return new Timed<>(t, this.f15160g.mo3231c(this.f15159f), this.f15159f);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$ToMapKeySelector.class */
    static final class ToMapKeySelector<K, T> implements BiConsumer<Map<K, T>, T> {

        /* renamed from: a */
        private final Function<? super T, ? extends K> f15161a;

        ToMapKeySelector(Function<? super T, ? extends K> function) {
            this.f15161a = function;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public void mo4369a(Map<K, T> map, T t) throws Exception {
            map.put(this.f15161a.apply(t), t);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$ToMapKeyValueSelector.class */
    static final class ToMapKeyValueSelector<K, V, T> implements BiConsumer<Map<K, V>, T> {

        /* renamed from: a */
        private final Function<? super T, ? extends V> f15162a;

        /* renamed from: b */
        private final Function<? super T, ? extends K> f15163b;

        ToMapKeyValueSelector(Function<? super T, ? extends V> function, Function<? super T, ? extends K> function2) {
            this.f15162a = function;
            this.f15163b = function2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public void mo4369a(Map<K, V> map, T t) throws Exception {
            map.put(this.f15163b.apply(t), this.f15162a.apply(t));
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$ToMultimapKeyValueSelector.class */
    static final class ToMultimapKeyValueSelector<K, V, T> implements BiConsumer<Map<K, Collection<V>>, T> {

        /* renamed from: a */
        private final Function<? super K, ? extends Collection<? super V>> f15164a;

        /* renamed from: b */
        private final Function<? super T, ? extends V> f15165b;

        /* renamed from: c */
        private final Function<? super T, ? extends K> f15166c;

        ToMultimapKeyValueSelector(Function<? super K, ? extends Collection<? super V>> function, Function<? super T, ? extends V> function2, Function<? super T, ? extends K> function3) {
            this.f15164a = function;
            this.f15165b = function2;
            this.f15166c = function3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public void mo4369a(Map<K, Collection<V>> map, T t) throws Exception {
            Object apply = this.f15166c.apply(t);
            Collection collection = (Collection) map.get(apply);
            Collection collection2 = collection;
            if (collection == null) {
                collection2 = (Collection) this.f15164a.apply(apply);
                map.put(apply, collection2);
            }
            collection2.add(this.f15165b.apply(t));
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/Functions$TruePredicate.class */
    static final class TruePredicate implements Predicate<Object> {
        TruePredicate() {
        }

        @Override // io.reactivex.functions.Predicate
        /* renamed from: a */
        public boolean mo3191a(Object obj) {
            return true;
        }
    }

    private Functions() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: A */
    public static <T1, T2, T3, T4, T5, T6, T7, R> Function<Object[], R> m4420A(Function7<T1, T2, T3, T4, T5, T6, T7, R> function7) {
        ObjectHelper.m4363e(function7, "f is null");
        return new Array7Func(function7);
    }

    /* renamed from: B */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Function<Object[], R> m4419B(Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> function8) {
        ObjectHelper.m4363e(function8, "f is null");
        return new Array8Func(function8);
    }

    /* renamed from: C */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Function<Object[], R> m4418C(Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> function9) {
        ObjectHelper.m4363e(function9, "f is null");
        return new Array9Func(function9);
    }

    /* renamed from: D */
    public static <T, K> BiConsumer<Map<K, T>, T> m4417D(Function<? super T, ? extends K> function) {
        return new ToMapKeySelector(function);
    }

    /* renamed from: E */
    public static <T, K, V> BiConsumer<Map<K, V>, T> m4416E(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return new ToMapKeyValueSelector(function2, function);
    }

    /* renamed from: F */
    public static <T, K, V> BiConsumer<Map<K, Collection<V>>, T> m4415F(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, Function<? super K, ? extends Collection<? super V>> function3) {
        return new ToMultimapKeyValueSelector(function3, function2, function);
    }

    /* renamed from: a */
    public static <T> Consumer<T> m4414a(Action action) {
        return new ActionConsumer(action);
    }

    /* renamed from: b */
    public static <T> Predicate<T> m4413b() {
        return (Predicate<T>) f15135g;
    }

    /* renamed from: c */
    public static <T> Predicate<T> m4412c() {
        return (Predicate<T>) f15134f;
    }

    /* renamed from: d */
    public static <T, U> Function<T, U> m4411d(Class<U> cls) {
        return new CastToClass(cls);
    }

    /* renamed from: e */
    public static <T> Callable<List<T>> m4410e(int i) {
        return new ArrayListCapacityCallable(i);
    }

    /* renamed from: f */
    public static <T> Callable<Set<T>> m4409f() {
        return HashSetCallable.INSTANCE;
    }

    /* renamed from: g */
    public static <T> Consumer<T> m4408g() {
        return (Consumer<T>) f15132d;
    }

    /* renamed from: h */
    public static <T> Predicate<T> m4407h(T t) {
        return new EqualsPredicate(t);
    }

    /* renamed from: i */
    public static <T> Function<T, T> m4406i() {
        return (Function<T, T>) f15129a;
    }

    /* renamed from: j */
    public static <T, U> Predicate<T> m4405j(Class<U> cls) {
        return new ClassFilter(cls);
    }

    /* renamed from: k */
    public static <T> Callable<T> m4404k(T t) {
        return new JustValue(t);
    }

    /* renamed from: l */
    public static <T, U> Function<T, U> m4403l(U u) {
        return new JustValue(u);
    }

    /* renamed from: m */
    public static <T> Function<List<T>, List<T>> m4402m(Comparator<? super T> comparator) {
        return new ListSorter(comparator);
    }

    /* renamed from: n */
    public static <T> Comparator<T> m4401n() {
        return NaturalComparator.INSTANCE;
    }

    /* renamed from: o */
    public static <T> Comparator<T> m4400o() {
        return (Comparator<T>) f15137i;
    }

    /* renamed from: p */
    public static <T> Action m4399p(Consumer<? super Notification<T>> consumer) {
        return new NotificationOnComplete(consumer);
    }

    /* renamed from: q */
    public static <T> Consumer<Throwable> m4398q(Consumer<? super Notification<T>> consumer) {
        return new NotificationOnError(consumer);
    }

    /* renamed from: r */
    public static <T> Consumer<T> m4397r(Consumer<? super Notification<T>> consumer) {
        return new NotificationOnNext(consumer);
    }

    /* renamed from: s */
    public static <T> Callable<T> m4396s() {
        return (Callable<T>) f15136h;
    }

    /* renamed from: t */
    public static <T> Predicate<T> m4395t(BooleanSupplier booleanSupplier) {
        return new BooleanSupplierPredicateReverse(booleanSupplier);
    }

    /* renamed from: u */
    public static <T> Function<T, Timed<T>> m4394u(TimeUnit timeUnit, Scheduler scheduler) {
        return new TimestampFunction(timeUnit, scheduler);
    }

    /* renamed from: v */
    public static <T1, T2, R> Function<Object[], R> m4393v(BiFunction<? super T1, ? super T2, ? extends R> biFunction) {
        ObjectHelper.m4363e(biFunction, "f is null");
        return new Array2Func(biFunction);
    }

    /* renamed from: w */
    public static <T1, T2, T3, R> Function<Object[], R> m4392w(Function3<T1, T2, T3, R> function3) {
        ObjectHelper.m4363e(function3, "f is null");
        return new Array3Func(function3);
    }

    /* renamed from: x */
    public static <T1, T2, T3, T4, R> Function<Object[], R> m4391x(Function4<T1, T2, T3, T4, R> function4) {
        ObjectHelper.m4363e(function4, "f is null");
        return new Array4Func(function4);
    }

    /* renamed from: y */
    public static <T1, T2, T3, T4, T5, R> Function<Object[], R> m4390y(Function5<T1, T2, T3, T4, T5, R> function5) {
        ObjectHelper.m4363e(function5, "f is null");
        return new Array5Func(function5);
    }

    /* renamed from: z */
    public static <T1, T2, T3, T4, T5, T6, R> Function<Object[], R> m4389z(Function6<T1, T2, T3, T4, T5, T6, R> function6) {
        ObjectHelper.m4363e(function6, "f is null");
        return new Array6Func(function6);
    }
}
