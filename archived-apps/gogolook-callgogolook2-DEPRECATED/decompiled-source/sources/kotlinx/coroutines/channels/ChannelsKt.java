package kotlinx.coroutines.channels;

import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.selects.SelectClause1;
import p626l.C14978j;
import p626l.C14989s;
import p626l.p632u.C15035z;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"kotlinx/coroutines/channels/ChannelsKt__ChannelsKt", "kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt"}, m814k = 4, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt.class */
public final class ChannelsKt {
    public static final String DEFAULT_CLOSE_MESSAGE = "Channel was closed";

    public static final <E> Object all(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super Boolean> dVar) {
        return ChannelsKt__Channels_commonKt.all(receiveChannel, lVar, dVar);
    }

    public static final <E> Object any(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super Boolean> dVar) {
        return ChannelsKt__Channels_commonKt.any(receiveChannel, dVar);
    }

    public static final <E> Object any(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super Boolean> dVar) {
        return ChannelsKt__Channels_commonKt.any(receiveChannel, lVar, dVar);
    }

    public static final <E, K, V> Object associate(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, ? extends C14978j<? extends K, ? extends V>> lVar, AbstractC15044d<? super Map<K, ? extends V>> dVar) {
        return ChannelsKt__Channels_commonKt.associate(receiveChannel, lVar, dVar);
    }

    public static final <E, K> Object associateBy(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, ? extends K> lVar, AbstractC15044d<? super Map<K, ? extends E>> dVar) {
        return ChannelsKt__Channels_commonKt.associateBy(receiveChannel, lVar, dVar);
    }

    public static final <E, K, V> Object associateBy(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, ? extends K> lVar, AbstractC15118l<? super E, ? extends V> lVar2, AbstractC15044d<? super Map<K, ? extends V>> dVar) {
        return ChannelsKt__Channels_commonKt.associateBy(receiveChannel, lVar, lVar2, dVar);
    }

    public static final <E, K, M extends Map<? super K, ? super E>> Object associateByTo(ReceiveChannel<? extends E> receiveChannel, M m, AbstractC15118l<? super E, ? extends K> lVar, AbstractC15044d<? super M> dVar) {
        return ChannelsKt__Channels_commonKt.associateByTo(receiveChannel, m, lVar, dVar);
    }

    public static final <E, K, V, M extends Map<? super K, ? super V>> Object associateByTo(ReceiveChannel<? extends E> receiveChannel, M m, AbstractC15118l<? super E, ? extends K> lVar, AbstractC15118l<? super E, ? extends V> lVar2, AbstractC15044d<? super M> dVar) {
        return ChannelsKt__Channels_commonKt.associateByTo(receiveChannel, m, lVar, lVar2, dVar);
    }

    public static final <E, K, V, M extends Map<? super K, ? super V>> Object associateTo(ReceiveChannel<? extends E> receiveChannel, M m, AbstractC15118l<? super E, ? extends C14978j<? extends K, ? extends V>> lVar, AbstractC15044d<? super M> dVar) {
        return ChannelsKt__Channels_commonKt.associateTo(receiveChannel, m, lVar, dVar);
    }

    public static final void cancelConsumed(ReceiveChannel<?> receiveChannel, Throwable th) {
        ChannelsKt__Channels_commonKt.cancelConsumed(receiveChannel, th);
    }

    @ObsoleteCoroutinesApi
    public static final <E, R> R consume(BroadcastChannel<E> broadcastChannel, AbstractC15118l<? super ReceiveChannel<? extends E>, ? extends R> lVar) {
        return (R) ChannelsKt__Channels_commonKt.consume(broadcastChannel, lVar);
    }

    @ExperimentalCoroutinesApi
    public static final <E, R> R consume(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super ReceiveChannel<? extends E>, ? extends R> lVar) {
        return (R) ChannelsKt__Channels_commonKt.consume(receiveChannel, lVar);
    }

    @ObsoleteCoroutinesApi
    public static final <E> Object consumeEach(BroadcastChannel<E> broadcastChannel, AbstractC15118l<? super E, C14989s> lVar, AbstractC15044d<? super C14989s> dVar) {
        return ChannelsKt__Channels_commonKt.consumeEach(broadcastChannel, lVar, dVar);
    }

    @ExperimentalCoroutinesApi
    public static final <E> Object consumeEach(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, C14989s> lVar, AbstractC15044d<? super C14989s> dVar) {
        return ChannelsKt__Channels_commonKt.consumeEach(receiveChannel, lVar, dVar);
    }

    public static final <E> Object consumeEachIndexed(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super C15035z<? extends E>, C14989s> lVar, AbstractC15044d<? super C14989s> dVar) {
        return ChannelsKt__Channels_commonKt.consumeEachIndexed(receiveChannel, lVar, dVar);
    }

    public static final AbstractC15118l<Throwable, C14989s> consumes(ReceiveChannel<?> receiveChannel) {
        return ChannelsKt__Channels_commonKt.consumes(receiveChannel);
    }

    public static final AbstractC15118l<Throwable, C14989s> consumesAll(ReceiveChannel<?>... receiveChannelArr) {
        return ChannelsKt__Channels_commonKt.consumesAll(receiveChannelArr);
    }

    public static final <E> Object count(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super Integer> dVar) {
        return ChannelsKt__Channels_commonKt.count(receiveChannel, dVar);
    }

    public static final <E> Object count(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super Integer> dVar) {
        return ChannelsKt__Channels_commonKt.count(receiveChannel, lVar, dVar);
    }

    public static final <E> ReceiveChannel<E> distinct(ReceiveChannel<? extends E> receiveChannel) {
        return ChannelsKt__Channels_commonKt.distinct(receiveChannel);
    }

    public static final <E, K> ReceiveChannel<E> distinctBy(ReceiveChannel<? extends E> receiveChannel, AbstractC15049g gVar, AbstractC15122p<? super E, ? super AbstractC15044d<? super K>, ? extends Object> pVar) {
        return ChannelsKt__Channels_commonKt.distinctBy(receiveChannel, gVar, pVar);
    }

    public static final <E> ReceiveChannel<E> drop(ReceiveChannel<? extends E> receiveChannel, int i, AbstractC15049g gVar) {
        return ChannelsKt__Channels_commonKt.drop(receiveChannel, i, gVar);
    }

    public static final <E> ReceiveChannel<E> dropWhile(ReceiveChannel<? extends E> receiveChannel, AbstractC15049g gVar, AbstractC15122p<? super E, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return ChannelsKt__Channels_commonKt.dropWhile(receiveChannel, gVar, pVar);
    }

    public static final <E> Object elementAt(ReceiveChannel<? extends E> receiveChannel, int i, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.elementAt(receiveChannel, i, dVar);
    }

    public static final <E> Object elementAtOrElse(ReceiveChannel<? extends E> receiveChannel, int i, AbstractC15118l<? super Integer, ? extends E> lVar, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.elementAtOrElse(receiveChannel, i, lVar, dVar);
    }

    public static final <E> Object elementAtOrNull(ReceiveChannel<? extends E> receiveChannel, int i, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.elementAtOrNull(receiveChannel, i, dVar);
    }

    public static final <E> ReceiveChannel<E> filter(ReceiveChannel<? extends E> receiveChannel, AbstractC15049g gVar, AbstractC15122p<? super E, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return ChannelsKt__Channels_commonKt.filter(receiveChannel, gVar, pVar);
    }

    public static final <E> ReceiveChannel<E> filterIndexed(ReceiveChannel<? extends E> receiveChannel, AbstractC15049g gVar, AbstractC15123q<? super Integer, ? super E, ? super AbstractC15044d<? super Boolean>, ? extends Object> qVar) {
        return ChannelsKt__Channels_commonKt.filterIndexed(receiveChannel, gVar, qVar);
    }

    public static final <E, C extends Collection<? super E>> Object filterIndexedTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15122p<? super Integer, ? super E, Boolean> pVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.filterIndexedTo(receiveChannel, c, pVar, dVar);
    }

    public static final <E, C extends SendChannel<? super E>> Object filterIndexedTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15122p<? super Integer, ? super E, Boolean> pVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.filterIndexedTo(receiveChannel, c, pVar, dVar);
    }

    public static final <E> ReceiveChannel<E> filterNot(ReceiveChannel<? extends E> receiveChannel, AbstractC15049g gVar, AbstractC15122p<? super E, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return ChannelsKt__Channels_commonKt.filterNot(receiveChannel, gVar, pVar);
    }

    public static final <E> ReceiveChannel<E> filterNotNull(ReceiveChannel<? extends E> receiveChannel) {
        return ChannelsKt__Channels_commonKt.filterNotNull(receiveChannel);
    }

    public static final <E, C extends Collection<? super E>> Object filterNotNullTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.filterNotNullTo(receiveChannel, c, dVar);
    }

    public static final <E, C extends SendChannel<? super E>> Object filterNotNullTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.filterNotNullTo(receiveChannel, c, dVar);
    }

    public static final <E, C extends Collection<? super E>> Object filterNotTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.filterNotTo(receiveChannel, c, lVar, dVar);
    }

    public static final <E, C extends SendChannel<? super E>> Object filterNotTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.filterNotTo(receiveChannel, c, lVar, dVar);
    }

    public static final <E, C extends Collection<? super E>> Object filterTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.filterTo(receiveChannel, c, lVar, dVar);
    }

    public static final <E, C extends SendChannel<? super E>> Object filterTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.filterTo(receiveChannel, c, lVar, dVar);
    }

    public static final <E> Object find(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.find(receiveChannel, lVar, dVar);
    }

    public static final <E> Object findLast(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.findLast(receiveChannel, lVar, dVar);
    }

    public static final <E> Object first(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.first(receiveChannel, dVar);
    }

    public static final <E> Object first(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.first(receiveChannel, lVar, dVar);
    }

    public static final <E> Object firstOrNull(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.firstOrNull(receiveChannel, dVar);
    }

    public static final <E> Object firstOrNull(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.firstOrNull(receiveChannel, lVar, dVar);
    }

    public static final <E, R> ReceiveChannel<R> flatMap(ReceiveChannel<? extends E> receiveChannel, AbstractC15049g gVar, AbstractC15122p<? super E, ? super AbstractC15044d<? super ReceiveChannel<? extends R>>, ? extends Object> pVar) {
        return ChannelsKt__Channels_commonKt.flatMap(receiveChannel, gVar, pVar);
    }

    public static final <E, R> Object fold(ReceiveChannel<? extends E> receiveChannel, R r, AbstractC15122p<? super R, ? super E, ? extends R> pVar, AbstractC15044d<? super R> dVar) {
        return ChannelsKt__Channels_commonKt.fold(receiveChannel, r, pVar, dVar);
    }

    public static final <E, R> Object foldIndexed(ReceiveChannel<? extends E> receiveChannel, R r, AbstractC15123q<? super Integer, ? super R, ? super E, ? extends R> qVar, AbstractC15044d<? super R> dVar) {
        return ChannelsKt__Channels_commonKt.foldIndexed(receiveChannel, r, qVar, dVar);
    }

    public static final <E, K> Object groupBy(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, ? extends K> lVar, AbstractC15044d<? super Map<K, ? extends List<? extends E>>> dVar) {
        return ChannelsKt__Channels_commonKt.groupBy(receiveChannel, lVar, dVar);
    }

    public static final <E, K, V> Object groupBy(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, ? extends K> lVar, AbstractC15118l<? super E, ? extends V> lVar2, AbstractC15044d<? super Map<K, ? extends List<? extends V>>> dVar) {
        return ChannelsKt__Channels_commonKt.groupBy(receiveChannel, lVar, lVar2, dVar);
    }

    public static final <E, K, M extends Map<? super K, List<E>>> Object groupByTo(ReceiveChannel<? extends E> receiveChannel, M m, AbstractC15118l<? super E, ? extends K> lVar, AbstractC15044d<? super M> dVar) {
        return ChannelsKt__Channels_commonKt.groupByTo(receiveChannel, m, lVar, dVar);
    }

    public static final <E, K, V, M extends Map<? super K, List<V>>> Object groupByTo(ReceiveChannel<? extends E> receiveChannel, M m, AbstractC15118l<? super E, ? extends K> lVar, AbstractC15118l<? super E, ? extends V> lVar2, AbstractC15044d<? super M> dVar) {
        return ChannelsKt__Channels_commonKt.groupByTo(receiveChannel, m, lVar, lVar2, dVar);
    }

    public static final <E> Object indexOf(ReceiveChannel<? extends E> receiveChannel, E e, AbstractC15044d<? super Integer> dVar) {
        return ChannelsKt__Channels_commonKt.indexOf(receiveChannel, e, dVar);
    }

    public static final <E> Object indexOfFirst(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super Integer> dVar) {
        return ChannelsKt__Channels_commonKt.indexOfFirst(receiveChannel, lVar, dVar);
    }

    public static final <E> Object indexOfLast(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super Integer> dVar) {
        return ChannelsKt__Channels_commonKt.indexOfLast(receiveChannel, lVar, dVar);
    }

    public static final <E> Object last(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.last(receiveChannel, dVar);
    }

    public static final <E> Object last(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.last(receiveChannel, lVar, dVar);
    }

    public static final <E> Object lastIndexOf(ReceiveChannel<? extends E> receiveChannel, E e, AbstractC15044d<? super Integer> dVar) {
        return ChannelsKt__Channels_commonKt.lastIndexOf(receiveChannel, e, dVar);
    }

    public static final <E> Object lastOrNull(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.lastOrNull(receiveChannel, dVar);
    }

    public static final <E> Object lastOrNull(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.lastOrNull(receiveChannel, lVar, dVar);
    }

    public static final <E, R> ReceiveChannel<R> map(ReceiveChannel<? extends E> receiveChannel, AbstractC15049g gVar, AbstractC15122p<? super E, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        return ChannelsKt__Channels_commonKt.map(receiveChannel, gVar, pVar);
    }

    public static final <E, R> ReceiveChannel<R> mapIndexed(ReceiveChannel<? extends E> receiveChannel, AbstractC15049g gVar, AbstractC15123q<? super Integer, ? super E, ? super AbstractC15044d<? super R>, ? extends Object> qVar) {
        return ChannelsKt__Channels_commonKt.mapIndexed(receiveChannel, gVar, qVar);
    }

    public static final <E, R> ReceiveChannel<R> mapIndexedNotNull(ReceiveChannel<? extends E> receiveChannel, AbstractC15049g gVar, AbstractC15123q<? super Integer, ? super E, ? super AbstractC15044d<? super R>, ? extends Object> qVar) {
        return ChannelsKt__Channels_commonKt.mapIndexedNotNull(receiveChannel, gVar, qVar);
    }

    public static final <E, R, C extends Collection<? super R>> Object mapIndexedNotNullTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15122p<? super Integer, ? super E, ? extends R> pVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.mapIndexedNotNullTo(receiveChannel, c, pVar, dVar);
    }

    public static final <E, R, C extends SendChannel<? super R>> Object mapIndexedNotNullTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15122p<? super Integer, ? super E, ? extends R> pVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.mapIndexedNotNullTo(receiveChannel, c, pVar, dVar);
    }

    public static final <E, R, C extends Collection<? super R>> Object mapIndexedTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15122p<? super Integer, ? super E, ? extends R> pVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.mapIndexedTo(receiveChannel, c, pVar, dVar);
    }

    public static final <E, R, C extends SendChannel<? super R>> Object mapIndexedTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15122p<? super Integer, ? super E, ? extends R> pVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.mapIndexedTo(receiveChannel, c, pVar, dVar);
    }

    public static final <E, R> ReceiveChannel<R> mapNotNull(ReceiveChannel<? extends E> receiveChannel, AbstractC15049g gVar, AbstractC15122p<? super E, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        return ChannelsKt__Channels_commonKt.mapNotNull(receiveChannel, gVar, pVar);
    }

    public static final <E, R, C extends Collection<? super R>> Object mapNotNullTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15118l<? super E, ? extends R> lVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.mapNotNullTo(receiveChannel, c, lVar, dVar);
    }

    public static final <E, R, C extends SendChannel<? super R>> Object mapNotNullTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15118l<? super E, ? extends R> lVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.mapNotNullTo(receiveChannel, c, lVar, dVar);
    }

    public static final <E, R, C extends Collection<? super R>> Object mapTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15118l<? super E, ? extends R> lVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.mapTo(receiveChannel, c, lVar, dVar);
    }

    public static final <E, R, C extends SendChannel<? super R>> Object mapTo(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15118l<? super E, ? extends R> lVar, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.mapTo(receiveChannel, c, lVar, dVar);
    }

    public static final <E, R extends Comparable<? super R>> Object maxBy(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, ? extends R> lVar, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.maxBy(receiveChannel, lVar, dVar);
    }

    public static final <E> Object maxWith(ReceiveChannel<? extends E> receiveChannel, Comparator<? super E> comparator, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.maxWith(receiveChannel, comparator, dVar);
    }

    public static final <E, R extends Comparable<? super R>> Object minBy(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, ? extends R> lVar, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.minBy(receiveChannel, lVar, dVar);
    }

    public static final <E> Object minWith(ReceiveChannel<? extends E> receiveChannel, Comparator<? super E> comparator, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.minWith(receiveChannel, comparator, dVar);
    }

    public static final <E> Object none(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super Boolean> dVar) {
        return ChannelsKt__Channels_commonKt.none(receiveChannel, dVar);
    }

    public static final <E> Object none(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super Boolean> dVar) {
        return ChannelsKt__Channels_commonKt.none(receiveChannel, lVar, dVar);
    }

    @ExperimentalCoroutinesApi
    public static final <E> SelectClause1<E> onReceiveOrNull(ReceiveChannel<? extends E> receiveChannel) {
        return ChannelsKt__Channels_commonKt.onReceiveOrNull(receiveChannel);
    }

    public static final <E> Object partition(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super C14978j<? extends List<? extends E>, ? extends List<? extends E>>> dVar) {
        return ChannelsKt__Channels_commonKt.partition(receiveChannel, lVar, dVar);
    }

    @ExperimentalCoroutinesApi
    public static final <E> Object receiveOrNull(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.receiveOrNull(receiveChannel, dVar);
    }

    public static final <S, E extends S> Object reduce(ReceiveChannel<? extends E> receiveChannel, AbstractC15122p<? super S, ? super E, ? extends S> pVar, AbstractC15044d<? super S> dVar) {
        return ChannelsKt__Channels_commonKt.reduce(receiveChannel, pVar, dVar);
    }

    public static final <S, E extends S> Object reduceIndexed(ReceiveChannel<? extends E> receiveChannel, AbstractC15123q<? super Integer, ? super S, ? super E, ? extends S> qVar, AbstractC15044d<? super S> dVar) {
        return ChannelsKt__Channels_commonKt.reduceIndexed(receiveChannel, qVar, dVar);
    }

    public static final <E> ReceiveChannel<E> requireNoNulls(ReceiveChannel<? extends E> receiveChannel) {
        return ChannelsKt__Channels_commonKt.requireNoNulls(receiveChannel);
    }

    public static final <E> void sendBlocking(SendChannel<? super E> sendChannel, E e) {
        ChannelsKt__ChannelsKt.sendBlocking(sendChannel, e);
    }

    public static final <E> Object single(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.single(receiveChannel, dVar);
    }

    public static final <E> Object single(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.single(receiveChannel, lVar, dVar);
    }

    public static final <E> Object singleOrNull(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.singleOrNull(receiveChannel, dVar);
    }

    public static final <E> Object singleOrNull(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Boolean> lVar, AbstractC15044d<? super E> dVar) {
        return ChannelsKt__Channels_commonKt.singleOrNull(receiveChannel, lVar, dVar);
    }

    public static final <E> Object sumBy(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Integer> lVar, AbstractC15044d<? super Integer> dVar) {
        return ChannelsKt__Channels_commonKt.sumBy(receiveChannel, lVar, dVar);
    }

    public static final <E> Object sumByDouble(ReceiveChannel<? extends E> receiveChannel, AbstractC15118l<? super E, Double> lVar, AbstractC15044d<? super Double> dVar) {
        return ChannelsKt__Channels_commonKt.sumByDouble(receiveChannel, lVar, dVar);
    }

    public static final <E> ReceiveChannel<E> take(ReceiveChannel<? extends E> receiveChannel, int i, AbstractC15049g gVar) {
        return ChannelsKt__Channels_commonKt.take(receiveChannel, i, gVar);
    }

    public static final <E> ReceiveChannel<E> takeWhile(ReceiveChannel<? extends E> receiveChannel, AbstractC15049g gVar, AbstractC15122p<? super E, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return ChannelsKt__Channels_commonKt.takeWhile(receiveChannel, gVar, pVar);
    }

    public static final <E, C extends SendChannel<? super E>> Object toChannel(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.toChannel(receiveChannel, c, dVar);
    }

    public static final <E, C extends Collection<? super E>> Object toCollection(ReceiveChannel<? extends E> receiveChannel, C c, AbstractC15044d<? super C> dVar) {
        return ChannelsKt__Channels_commonKt.toCollection(receiveChannel, c, dVar);
    }

    public static final <E> Object toList(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super List<? extends E>> dVar) {
        return ChannelsKt__Channels_commonKt.toList(receiveChannel, dVar);
    }

    public static final <K, V, M extends Map<? super K, ? super V>> Object toMap(ReceiveChannel<? extends C14978j<? extends K, ? extends V>> receiveChannel, M m, AbstractC15044d<? super M> dVar) {
        return ChannelsKt__Channels_commonKt.toMap(receiveChannel, m, dVar);
    }

    public static final <K, V> Object toMap(ReceiveChannel<? extends C14978j<? extends K, ? extends V>> receiveChannel, AbstractC15044d<? super Map<K, ? extends V>> dVar) {
        return ChannelsKt__Channels_commonKt.toMap(receiveChannel, dVar);
    }

    public static final <E> Object toMutableList(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super List<E>> dVar) {
        return ChannelsKt__Channels_commonKt.toMutableList(receiveChannel, dVar);
    }

    public static final <E> Object toMutableSet(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super Set<E>> dVar) {
        return ChannelsKt__Channels_commonKt.toMutableSet(receiveChannel, dVar);
    }

    public static final <E> Object toSet(ReceiveChannel<? extends E> receiveChannel, AbstractC15044d<? super Set<? extends E>> dVar) {
        return ChannelsKt__Channels_commonKt.toSet(receiveChannel, dVar);
    }

    public static final <E> ReceiveChannel<C15035z<E>> withIndex(ReceiveChannel<? extends E> receiveChannel, AbstractC15049g gVar) {
        return ChannelsKt__Channels_commonKt.withIndex(receiveChannel, gVar);
    }

    public static final <E, R> ReceiveChannel<C14978j<E, R>> zip(ReceiveChannel<? extends E> receiveChannel, ReceiveChannel<? extends R> receiveChannel2) {
        return ChannelsKt__Channels_commonKt.zip(receiveChannel, receiveChannel2);
    }

    public static final <E, R, V> ReceiveChannel<V> zip(ReceiveChannel<? extends E> receiveChannel, ReceiveChannel<? extends R> receiveChannel2, AbstractC15049g gVar, AbstractC15122p<? super E, ? super R, ? extends V> pVar) {
        return ChannelsKt__Channels_commonKt.zip(receiveChannel, receiveChannel2, gVar, pVar);
    }
}
