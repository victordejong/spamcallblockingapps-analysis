package kotlin.collections.builders;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;
@Metadata(bv = {1, 0, 3}, d1 = {"��¤\u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010&\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\u0010'\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u001f\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\b��\u0018�� \u0089\u0001*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u00032\u00020\u0004:\f\u0089\u0001\u008a\u0001\u008b\u0001\u008c\u0001\u008d\u0001\u008e\u0001B\n\b\u0016¢\u0006\u0005\b\u0086\u0001\u0010\u0012B\u0013\b\u0016\u0012\u0007\u0010\u0087\u0001\u001a\u00020\u0006¢\u0006\u0005\b\u0086\u0001\u0010*BJ\b\u0002\u0012\f\u0010s\u001a\b\u0012\u0004\u0012\u00028��0\n\u0012\u000f\u0010\u0082\u0001\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\n\u0012\u0006\u0010z\u001a\u00020h\u0012\u0006\u0010i\u001a\u00020h\u0012\u0006\u0010y\u001a\u00020\u0006\u0012\u0006\u0010x\u001a\u00020\u0006¢\u0006\u0006\b\u0086\u0001\u0010\u0088\u0001J\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028��H��¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0013\u001a\u00020\u0010H��¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0015\u0010\u0012J\u001b\u0010\u001b\u001a\u00020\u00182\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0016H��¢\u0006\u0004\b\u0019\u0010\u001aJ#\u0010 \u001a\u00020\u00182\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u001cH��¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00028��H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\u00182\u0006\u0010#\u001a\u00028\u0001H\u0016¢\u0006\u0004\b$\u0010\"J\u001f\u0010&\u001a\u00020\u00182\u000e\u0010%\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\rH\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010)\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u0006H\u0002¢\u0006\u0004\b)\u0010*J\u0017\u0010,\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0006H\u0002¢\u0006\u0004\b,\u0010*J\u001b\u00100\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010-H��¢\u0006\u0004\b.\u0010/J\u001a\u00102\u001a\u00020\u00182\b\u0010%\u001a\u0004\u0018\u000101H\u0096\u0002¢\u0006\u0004\b2\u0010\"J\u0017\u00103\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028��H\u0002¢\u0006\u0004\b3\u0010\bJ\u0017\u00104\u001a\u00020\u00062\u0006\u0010#\u001a\u00028\u0001H\u0002¢\u0006\u0004\b4\u0010\bJ\u001a\u00105\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0005\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b5\u00106J\u0017\u00107\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028��H\u0002¢\u0006\u0004\b7\u0010\bJ\u000f\u00108\u001a\u00020\u0006H\u0016¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u0018H\u0016¢\u0006\u0004\b:\u0010;J\u001b\u0010?\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010<H��¢\u0006\u0004\b=\u0010>J!\u0010@\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0005\u001a\u00028��2\u0006\u0010#\u001a\u00028\u0001H\u0016¢\u0006\u0004\b@\u0010AJ%\u0010C\u001a\u00020\u00102\u0014\u0010B\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\rH\u0016¢\u0006\u0004\bC\u0010DJ)\u0010E\u001a\u00020\u00182\u0018\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u001c0\u0016H\u0002¢\u0006\u0004\bE\u0010\u001aJ#\u0010F\u001a\u00020\u00182\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u001cH\u0002¢\u0006\u0004\bF\u0010\u001fJ\u0017\u0010H\u001a\u00020\u00182\u0006\u0010G\u001a\u00020\u0006H\u0002¢\u0006\u0004\bH\u0010IJ\u0017\u0010K\u001a\u00020\u00102\u0006\u0010J\u001a\u00020\u0006H\u0002¢\u0006\u0004\bK\u0010*J\u0019\u0010L\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0005\u001a\u00028��H\u0016¢\u0006\u0004\bL\u00106J#\u0010N\u001a\u00020\u00182\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u001cH��¢\u0006\u0004\bM\u0010\u001fJ\u0017\u0010P\u001a\u00020\u00102\u0006\u0010O\u001a\u00020\u0006H\u0002¢\u0006\u0004\bP\u0010*J\u0017\u0010R\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028��H��¢\u0006\u0004\bQ\u0010\bJ\u0017\u0010T\u001a\u00020\u00102\u0006\u0010S\u001a\u00020\u0006H\u0002¢\u0006\u0004\bT\u0010*J\u0017\u0010W\u001a\u00020\u00182\u0006\u0010U\u001a\u00028\u0001H��¢\u0006\u0004\bV\u0010\"J\u000f\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bY\u0010ZJ\u001b\u0010^\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010[H��¢\u0006\u0004\b\\\u0010]R\u0016\u0010(\u001a\u00020\u00068B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b_\u00109R(\u0010d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010a0`8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bb\u0010cR$\u0010f\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0016\u0010i\u001a\u00020h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0016\u0010k\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0016\u0010n\u001a\u00020\u00068B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bm\u00109R\u0016\u0010o\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u001c\u0010r\u001a\b\u0012\u0004\u0012\u00028��0`8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bq\u0010cR\u001c\u0010s\u001a\b\u0012\u0004\u0012\u00028��0\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR\u001e\u0010v\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010u8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u0016\u0010x\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010lR\u0016\u0010y\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010lR\u0016\u0010z\u001a\u00020h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010jR$\u0010|\u001a\u00020\u00062\u0006\u0010{\u001a\u00020\u00068\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\b|\u0010l\u001a\u0004\b}\u00109R\u001e\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00028\u00010~8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u007f\u0010\u0080\u0001R \u0010\u0082\u0001\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010tR\"\u0010\u0084\u0001\u001a\u000b\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001¨\u0006\u008f\u0001"}, d2 = {"Lkotlin/collections/builders/MapBuilder;", "K", "V", "Ljava/util/Map;", "Lkotlin/jvm/internal/markers/KMutableMap;", "key", "", "addKey$kotlin_stdlib", "(Ljava/lang/Object;)I", "addKey", "", "allocateValuesArray", "()[Ljava/lang/Object;", "", "build", "()Ljava/util/Map;", "", "checkIsMutable$kotlin_stdlib", "()V", "checkIsMutable", "clear", "compact", "", "m", "", "containsAllEntries$kotlin_stdlib", "(Ljava/util/Collection;)Z", "containsAllEntries", "", "entry", "containsEntry$kotlin_stdlib", "(Ljava/util/Map$Entry;)Z", "containsEntry", "containsKey", "(Ljava/lang/Object;)Z", FirebaseAnalytics.Param.VALUE, "containsValue", "other", "contentEquals", "(Ljava/util/Map;)Z", "capacity", "ensureCapacity", "(I)V", "n", "ensureExtraCapacity", "Lkotlin/collections/builders/MapBuilder$EntriesItr;", "entriesIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$EntriesItr;", "entriesIterator", "", "equals", "findKey", "findValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "hash", "hashCode", "()I", "isEmpty", "()Z", "Lkotlin/collections/builders/MapBuilder$KeysItr;", "keysIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$KeysItr;", "keysIterator", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", Constants.MessagePayloadKeys.FROM, "putAll", "(Ljava/util/Map;)V", "putAllEntries", "putEntry", "i", "putRehash", "(I)Z", "newHashSize", "rehash", "remove", "removeEntry$kotlin_stdlib", "removeEntry", "removedHash", "removeHashAt", "removeKey$kotlin_stdlib", "removeKey", FirebaseAnalytics.Param.INDEX, "removeKeyAt", "element", "removeValue$kotlin_stdlib", "removeValue", "", "toString", "()Ljava/lang/String;", "Lkotlin/collections/builders/MapBuilder$ValuesItr;", "valuesIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$ValuesItr;", "valuesIterator", "getCapacity", "", "", "getEntries", "()Ljava/util/Set;", "entries", "Lkotlin/collections/builders/MapBuilderEntries;", "entriesView", "Lkotlin/collections/builders/MapBuilderEntries;", "", "hashArray", "[I", "hashShift", "I", "getHashSize", "hashSize", "isReadOnly", "Z", "getKeys", "keys", "keysArray", "[Ljava/lang/Object;", "Lkotlin/collections/builders/MapBuilderKeys;", "keysView", "Lkotlin/collections/builders/MapBuilderKeys;", Name.LENGTH, "maxProbeDistance", "presenceArray", "<set-?>", "size", "getSize", "", "getValues", "()Ljava/util/Collection;", "values", "valuesArray", "Lkotlin/collections/builders/MapBuilderValues;", "valuesView", "Lkotlin/collections/builders/MapBuilderValues;", "<init>", "initialCapacity", "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V", "Companion", "EntriesItr", "EntryRef", "Itr", "KeysItr", "ValuesItr", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/builders/MapBuilder.class */
public final class MapBuilder<K, V> implements Map<K, V>, KMutableMap {

    /* renamed from: r */
    private static final Companion f20572r = new Companion(null);

    /* renamed from: f */
    private int f20573f;

    /* renamed from: g */
    private int f20574g;

    /* renamed from: h */
    private MapBuilderKeys<K> f20575h;

    /* renamed from: i */
    private MapBuilderValues<V> f20576i;

    /* renamed from: j */
    private MapBuilderEntries<K, V> f20577j;

    /* renamed from: k */
    private boolean f20578k;

    /* renamed from: l */
    private K[] f20579l;

    /* renamed from: m */
    private V[] f20580m;

    /* renamed from: n */
    private int[] f20581n;

    /* renamed from: o */
    private int[] f20582o;

    /* renamed from: p */
    private int f20583p;

    /* renamed from: q */
    private int f20584q;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\r\b\u0082\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\bR\u0016\u0010\n\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0016\u0010\u000b\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Companion;", "", "capacity", "computeHashSize", "(I)I", "hashSize", "computeShift", "INITIAL_CAPACITY", "I", "INITIAL_MAX_PROBE_DISTANCE", "MAGIC", "TOMBSTONE", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/collections/builders/MapBuilder$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public final int m1987c(int i) {
            int b;
            b = RangesKt___RangesKt.m1713b(i, 1);
            return Integer.highestOneBit(b * 3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public final int m1986d(int i) {
            return Integer.numberOfLeadingZeros(i) + 1;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u001b\u0012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\r\u001a\u00020\f2\n\u0010\u000b\u001a\u00060\tj\u0002`\n¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u000fH��¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntriesItr;", "K", "V", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMutableIterator;", "kotlin/collections/builders/MapBuilder$Itr", "Lkotlin/collections/builders/MapBuilder$EntryRef;", "next", "()Lkotlin/collections/builders/MapBuilder$EntryRef;", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "", "nextAppendString", "(Ljava/lang/StringBuilder;)V", "", "nextHashCode$kotlin_stdlib", "()I", "nextHashCode", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/collections/builders/MapBuilder$EntriesItr.class */
    public static final class EntriesItr<K, V> extends Itr<K, V> implements Iterator<Map.Entry<K, V>>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EntriesItr(@NotNull MapBuilder<K, V> map) {
            super(map);
            Intrinsics.m1830e(map, "map");
        }

        @NotNull
        /* renamed from: h */
        public EntryRef<K, V> next() {
            if (m1982a() < ((MapBuilder) m1980c()).f20584q) {
                int a = m1982a();
                m1978f(a + 1);
                m1977g(a);
                EntryRef<K, V> entryRef = new EntryRef<>(m1980c(), m1981b());
                m1979e();
                return entryRef;
            }
            throw new NoSuchElementException();
        }

        /* renamed from: i */
        public final void m1984i(@NotNull StringBuilder sb) {
            Intrinsics.m1830e(sb, "sb");
            if (m1982a() < ((MapBuilder) m1980c()).f20584q) {
                int a = m1982a();
                m1978f(a + 1);
                m1977g(a);
                Object obj = ((MapBuilder) m1980c()).f20579l[m1981b()];
                if (Intrinsics.m1834a(obj, m1980c())) {
                    sb.append("(this Map)");
                } else {
                    sb.append(obj);
                }
                sb.append('=');
                Object[] objArr = ((MapBuilder) m1980c()).f20580m;
                Intrinsics.m1832c(objArr);
                Object obj2 = objArr[m1981b()];
                if (Intrinsics.m1834a(obj2, m1980c())) {
                    sb.append("(this Map)");
                } else {
                    sb.append(obj2);
                }
                m1979e();
                return;
            }
            throw new NoSuchElementException();
        }

        /* renamed from: j */
        public final int m1983j() {
            if (m1982a() < ((MapBuilder) m1980c()).f20584q) {
                int a = m1982a();
                m1978f(a + 1);
                m1977g(a);
                Object obj = ((MapBuilder) m1980c()).f20579l[m1981b()];
                int i = 0;
                int hashCode = obj != null ? obj.hashCode() : 0;
                Object[] objArr = ((MapBuilder) m1980c()).f20580m;
                Intrinsics.m1832c(objArr);
                Object obj2 = objArr[m1981b()];
                if (obj2 != null) {
                    i = obj2.hashCode();
                }
                m1979e();
                return hashCode ^ i;
            }
            throw new NoSuchElementException();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\b\u0002\n��\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u00032\u00020\u0004B#\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0018\u0012\u0006\u0010\u0013\u001a\u00020\n¢\u0006\u0004\b\u001d\u0010\u001eJ\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00028\u00032\u0006\u0010\r\u001a\u00028\u0003H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0017\u001a\u00028\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00028\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0016¨\u0006\u001f"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntryRef;", "K", "V", "java/util/Map$Entry", "kotlin/jvm/internal/markers/KMutableMap$Entry", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "newValue", "setValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", FirebaseAnalytics.Param.INDEX, "I", "getKey", "()Ljava/lang/Object;", "key", "Lkotlin/collections/builders/MapBuilder;", "map", "Lkotlin/collections/builders/MapBuilder;", "getValue", FirebaseAnalytics.Param.VALUE, "<init>", "(Lkotlin/collections/builders/MapBuilder;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/collections/builders/MapBuilder$EntryRef.class */
    public static final class EntryRef<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

        /* renamed from: f */
        private final MapBuilder<K, V> f20585f;

        /* renamed from: g */
        private final int f20586g;

        public EntryRef(@NotNull MapBuilder<K, V> map, int i) {
            Intrinsics.m1830e(map, "map");
            this.f20585f = map;
            this.f20586g = i;
        }

        @Override // java.util.Map.Entry
        public boolean equals(@Nullable Object obj) {
            boolean z;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (Intrinsics.m1834a(entry.getKey(), getKey()) && Intrinsics.m1834a(entry.getValue(), getValue())) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return (K) ((MapBuilder) this.f20585f).f20579l[this.f20586g];
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            Object[] objArr = ((MapBuilder) this.f20585f).f20580m;
            Intrinsics.m1832c(objArr);
            return (V) objArr[this.f20586g];
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K key = getKey();
            int i = 0;
            int hashCode = key != null ? key.hashCode() : 0;
            V value = getValue();
            if (value != null) {
                i = value.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            this.f20585f.m2005k();
            Object[] j = this.f20585f.m2006j();
            int i = this.f20586g;
            V v2 = (V) j[i];
            j[i] = v;
            return v2;
        }

        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0010\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u0002B\u001b\u0012\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0015¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H��¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\bR\"\u0010\f\u001a\u00020\u000b8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0012\u001a\u00020\u000b8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R(\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00158��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Itr;", "K", "V", "", "hasNext", "()Z", "", "initNext$kotlin_stdlib", "()V", "initNext", "remove", "", FirebaseAnalytics.Param.INDEX, "I", "getIndex$kotlin_stdlib", "()I", "setIndex$kotlin_stdlib", "(I)V", "lastIndex", "getLastIndex$kotlin_stdlib", "setLastIndex$kotlin_stdlib", "Lkotlin/collections/builders/MapBuilder;", "map", "Lkotlin/collections/builders/MapBuilder;", "getMap$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder;", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/collections/builders/MapBuilder$Itr.class */
    public static class Itr<K, V> {

        /* renamed from: f */
        private int f20587f;

        /* renamed from: g */
        private int f20588g = -1;
        @NotNull

        /* renamed from: h */
        private final MapBuilder<K, V> f20589h;

        public Itr(@NotNull MapBuilder<K, V> map) {
            Intrinsics.m1830e(map, "map");
            this.f20589h = map;
            m1979e();
        }

        /* renamed from: a */
        public final int m1982a() {
            return this.f20587f;
        }

        /* renamed from: b */
        public final int m1981b() {
            return this.f20588g;
        }

        @NotNull
        /* renamed from: c */
        public final MapBuilder<K, V> m1980c() {
            return this.f20589h;
        }

        /* renamed from: e */
        public final void m1979e() {
            while (this.f20587f < ((MapBuilder) this.f20589h).f20584q) {
                int[] iArr = ((MapBuilder) this.f20589h).f20581n;
                int i = this.f20587f;
                if (iArr[i] < 0) {
                    this.f20587f = i + 1;
                } else {
                    return;
                }
            }
        }

        /* renamed from: f */
        public final void m1978f(int i) {
            this.f20587f = i;
        }

        /* renamed from: g */
        public final void m1977g(int i) {
            this.f20588g = i;
        }

        public final boolean hasNext() {
            return this.f20587f < ((MapBuilder) this.f20589h).f20584q;
        }

        public final void remove() {
            this.f20589h.m2005k();
            this.f20589h.m2016J(this.f20588g);
            this.f20588g = -1;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u001b\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0006\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"Lkotlin/collections/builders/MapBuilder$KeysItr;", "K", "V", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMutableIterator;", "kotlin/collections/builders/MapBuilder$Itr", "next", "()Ljava/lang/Object;", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/collections/builders/MapBuilder$KeysItr.class */
    public static final class KeysItr<K, V> extends Itr<K, V> implements Iterator<K>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public KeysItr(@NotNull MapBuilder<K, V> map) {
            super(map);
            Intrinsics.m1830e(map, "map");
        }

        @Override // java.util.Iterator
        public K next() {
            if (m1982a() < ((MapBuilder) m1980c()).f20584q) {
                int a = m1982a();
                m1978f(a + 1);
                m1977g(a);
                K k = (K) ((MapBuilder) m1980c()).f20579l[m1981b()];
                m1979e();
                return k;
            }
            throw new NoSuchElementException();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u001b\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0006\u001a\u00028\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"Lkotlin/collections/builders/MapBuilder$ValuesItr;", "K", "V", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMutableIterator;", "kotlin/collections/builders/MapBuilder$Itr", "next", "()Ljava/lang/Object;", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/collections/builders/MapBuilder$ValuesItr.class */
    public static final class ValuesItr<K, V> extends Itr<K, V> implements Iterator<V>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ValuesItr(@NotNull MapBuilder<K, V> map) {
            super(map);
            Intrinsics.m1830e(map, "map");
        }

        @Override // java.util.Iterator
        public V next() {
            if (m1982a() < ((MapBuilder) m1980c()).f20584q) {
                int a = m1982a();
                m1978f(a + 1);
                m1977g(a);
                Object[] objArr = ((MapBuilder) m1980c()).f20580m;
                Intrinsics.m1832c(objArr);
                V v = (V) objArr[m1981b()];
                m1979e();
                return v;
            }
            throw new NoSuchElementException();
        }
    }

    public MapBuilder() {
        this(8);
    }

    public MapBuilder(int i) {
        this(ListBuilderKt.m2032d(i), null, new int[i], new int[f20572r.m1987c(i)], 2, 0);
    }

    private MapBuilder(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i, int i2) {
        this.f20579l = kArr;
        this.f20580m = vArr;
        this.f20581n = iArr;
        this.f20582o = iArr2;
        this.f20583p = i;
        this.f20584q = i2;
        this.f20573f = f20572r.m1986d(m1993w());
    }

    /* renamed from: A */
    private final int m2025A(K k) {
        return ((k != null ? k.hashCode() : 0) * (-1640531527)) >>> this.f20573f;
    }

    /* renamed from: C */
    private final boolean m2023C(Collection<? extends Map.Entry<? extends K, ? extends V>> collection) {
        boolean z = false;
        if (collection.isEmpty()) {
            return false;
        }
        m1999q(collection.size());
        for (Map.Entry<? extends K, ? extends V> entry : collection) {
            if (m2022D(entry)) {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: D */
    private final boolean m2022D(Map.Entry<? extends K, ? extends V> entry) {
        int i = m2007i(entry.getKey());
        Object[] j = m2006j();
        if (i >= 0) {
            j[i] = entry.getValue();
            return true;
        }
        int i2 = (-i) - 1;
        if (!(!Intrinsics.m1834a(entry.getValue(), j[i2]))) {
            return false;
        }
        j[i2] = entry.getValue();
        return true;
    }

    /* renamed from: E */
    private final boolean m2021E(int i) {
        int A = m2025A(this.f20579l[i]);
        int i2 = this.f20583p;
        while (true) {
            int[] iArr = this.f20582o;
            if (iArr[A] == 0) {
                iArr[A] = i + 1;
                this.f20581n[i] = A;
                return true;
            }
            i2--;
            if (i2 < 0) {
                return false;
            }
            A = A == 0 ? m1993w() - 1 : A - 1;
        }
    }

    /* renamed from: F */
    private final void m2020F(int i) {
        int i2;
        if (this.f20584q > size()) {
            m2004l();
        }
        if (i != m1993w()) {
            this.f20582o = new int[i];
            this.f20573f = f20572r.m1986d(i);
            i2 = 0;
        } else {
            ArraysKt___ArraysJvmKt.m2298h(this.f20582o, 0, 0, m1993w());
            i2 = 0;
        }
        while (i2 < this.f20584q) {
            if (m2021E(i2)) {
                i2++;
            } else {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
        }
    }

    /* renamed from: H */
    private final void m2018H(int i) {
        int d;
        int i2;
        int i3;
        d = RangesKt___RangesKt.m1711d(this.f20583p * 2, m1993w() / 2);
        int i4 = 0;
        int i5 = i;
        do {
            i = i == 0 ? m1993w() - 1 : i - 1;
            int i6 = i4 + 1;
            if (i6 > this.f20583p) {
                this.f20582o[i5] = 0;
                return;
            }
            int[] iArr = this.f20582o;
            int i7 = iArr[i];
            if (i7 == 0) {
                iArr[i5] = 0;
                return;
            }
            if (i7 < 0) {
                iArr[i5] = -1;
            } else {
                int i8 = i7 - 1;
                i2 = i5;
                i4 = i6;
                if (((m2025A(this.f20579l[i8]) - i) & (m1993w() - 1)) >= i6) {
                    this.f20582o[i5] = i7;
                    this.f20581n[i8] = i5;
                }
                i3 = d - 1;
                i5 = i2;
                d = i3;
            }
            i2 = i;
            i4 = 0;
            i3 = d - 1;
            i5 = i2;
            d = i3;
        } while (i3 >= 0);
        this.f20582o[i2] = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public final void m2016J(int i) {
        ListBuilderKt.m2030f(this.f20579l, i);
        m2018H(this.f20581n[i]);
        this.f20581n[i] = -1;
        this.f20574g = size() - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public final V[] m2006j() {
        V[] vArr = this.f20580m;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) ListBuilderKt.m2032d(m1995u());
        this.f20580m = vArr2;
        return vArr2;
    }

    /* renamed from: l */
    private final void m2004l() {
        int i;
        V[] vArr = this.f20580m;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.f20584q;
            if (i2 >= i) {
                break;
            }
            i3 = i3;
            if (this.f20581n[i2] >= 0) {
                K[] kArr = this.f20579l;
                kArr[i3] = kArr[i2];
                if (vArr != null) {
                    vArr[i3] = vArr[i2];
                }
                i3++;
            }
            i2++;
        }
        ListBuilderKt.m2029g(this.f20579l, i3, i);
        if (vArr != null) {
            ListBuilderKt.m2029g(vArr, i3, this.f20584q);
        }
        this.f20584q = i3;
    }

    /* renamed from: o */
    private final boolean m2001o(Map<?, ?> map) {
        return size() == map.size() && m2003m(map.entrySet());
    }

    /* renamed from: p */
    private final void m2000p(int i) {
        if (i > m1995u()) {
            int u = (m1995u() * 3) / 2;
            if (i <= u) {
                i = u;
            }
            this.f20579l = (K[]) ListBuilderKt.m2031e(this.f20579l, i);
            V[] vArr = this.f20580m;
            this.f20580m = vArr != null ? (V[]) ListBuilderKt.m2031e(vArr, i) : null;
            int[] copyOf = Arrays.copyOf(this.f20581n, i);
            Intrinsics.m1831d(copyOf, "java.util.Arrays.copyOf(this, newSize)");
            this.f20581n = copyOf;
            int c = f20572r.m1987c(i);
            if (c > m1993w()) {
                m2020F(c);
            }
        } else if ((this.f20584q + i) - size() > m1995u()) {
            m2020F(m1993w());
        }
    }

    /* renamed from: q */
    private final void m1999q(int i) {
        m2000p(this.f20584q + i);
    }

    /* renamed from: s */
    private final int m1997s(K k) {
        int A = m2025A(k);
        int i = this.f20583p;
        while (true) {
            int i2 = this.f20582o[A];
            if (i2 == 0) {
                return -1;
            }
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (Intrinsics.m1834a(this.f20579l[i3], k)) {
                    return i3;
                }
            }
            i--;
            if (i < 0) {
                return -1;
            }
            A = A == 0 ? m1993w() - 1 : A - 1;
        }
    }

    /* renamed from: t */
    private final int m1996t(V v) {
        int i = this.f20584q;
        while (true) {
            int i2 = i - 1;
            if (i2 < 0) {
                return -1;
            }
            i = i2;
            if (this.f20581n[i2] >= 0) {
                V[] vArr = this.f20580m;
                Intrinsics.m1832c(vArr);
                i = i2;
                if (Intrinsics.m1834a(vArr[i2], v)) {
                    return i2;
                }
            }
        }
    }

    /* renamed from: u */
    private final int m1995u() {
        return this.f20579l.length;
    }

    /* renamed from: w */
    private final int m1993w() {
        return this.f20582o.length;
    }

    @NotNull
    /* renamed from: B */
    public final KeysItr<K, V> m2024B() {
        return new KeysItr<>(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: G */
    public final boolean m2019G(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.m1830e(entry, "entry");
        m2005k();
        int s = m1997s(entry.getKey());
        if (s < 0) {
            return false;
        }
        V[] vArr = this.f20580m;
        Intrinsics.m1832c(vArr);
        if (!Intrinsics.m1834a(vArr[s], entry.getValue())) {
            return false;
        }
        m2016J(s);
        return true;
    }

    /* renamed from: I */
    public final int m2017I(K k) {
        m2005k();
        int s = m1997s(k);
        if (s < 0) {
            return -1;
        }
        m2016J(s);
        return s;
    }

    /* renamed from: K */
    public final boolean m2015K(V v) {
        m2005k();
        int t = m1996t(v);
        if (t < 0) {
            return false;
        }
        m2016J(t);
        return true;
    }

    @NotNull
    /* renamed from: L */
    public final ValuesItr<K, V> m2014L() {
        return new ValuesItr<>(this);
    }

    @Override // java.util.Map
    public void clear() {
        m2005k();
        int i = this.f20584q - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.f20581n;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.f20582o[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                }
                i2++;
            }
        }
        ListBuilderKt.m2029g(this.f20579l, 0, this.f20584q);
        V[] vArr = this.f20580m;
        if (vArr != null) {
            ListBuilderKt.m2029g(vArr, 0, this.f20584q);
        }
        this.f20574g = 0;
        this.f20584q = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return m1997s(obj) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return m1996t(obj) >= 0;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return m1994v();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        return obj == this || ((obj instanceof Map) && m2001o((Map) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        int s = m1997s(obj);
        if (s < 0) {
            return null;
        }
        V[] vArr = this.f20580m;
        Intrinsics.m1832c(vArr);
        return vArr[s];
    }

    @Override // java.util.Map
    public int hashCode() {
        EntriesItr<K, V> r = m1998r();
        int i = 0;
        while (r.hasNext()) {
            i += r.m1983j();
        }
        return i;
    }

    /* renamed from: i */
    public final int m2007i(K k) {
        int d;
        m2005k();
        while (true) {
            int A = m2025A(k);
            d = RangesKt___RangesKt.m1711d(this.f20583p * 2, m1993w() / 2);
            int i = 0;
            while (true) {
                int i2 = this.f20582o[A];
                if (i2 <= 0) {
                    if (this.f20584q >= m1995u()) {
                        m1999q(1);
                    } else {
                        int i3 = this.f20584q;
                        int i4 = i3 + 1;
                        this.f20584q = i4;
                        this.f20579l[i3] = k;
                        this.f20581n[i3] = A;
                        this.f20582o[A] = i4;
                        this.f20574g = size() + 1;
                        if (i > this.f20583p) {
                            this.f20583p = i;
                        }
                        return i3;
                    }
                } else if (Intrinsics.m1834a(this.f20579l[i2 - 1], k)) {
                    return -i2;
                } else {
                    i++;
                    if (i > d) {
                        m2020F(m1993w() * 2);
                        break;
                    }
                    A = A == 0 ? m1993w() - 1 : A - 1;
                }
            }
        }
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    /* renamed from: k */
    public final void m2005k() {
        if (this.f20578k) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return m1992x();
    }

    /* renamed from: m */
    public final boolean m2003m(@NotNull Collection<?> m) {
        Intrinsics.m1830e(m, "m");
        for (Object obj : m) {
            if (obj == null) {
                return false;
            }
            try {
                if (!m2002n((Map.Entry) obj)) {
                    return false;
                }
            } catch (ClassCastException e) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    public final boolean m2002n(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.m1830e(entry, "entry");
        int s = m1997s(entry.getKey());
        if (s < 0) {
            return false;
        }
        V[] vArr = this.f20580m;
        Intrinsics.m1832c(vArr);
        return Intrinsics.m1834a(vArr[s], entry.getValue());
    }

    @Override // java.util.Map
    @Nullable
    public V put(K k, V v) {
        m2005k();
        int i = m2007i(k);
        V[] j = m2006j();
        if (i < 0) {
            int i2 = (-i) - 1;
            V v2 = j[i2];
            j[i2] = v;
            return v2;
        }
        j[i] = v;
        return null;
    }

    @Override // java.util.Map
    public void putAll(@NotNull Map<? extends K, ? extends V> from) {
        Intrinsics.m1830e(from, "from");
        m2005k();
        m2023C(from.entrySet());
    }

    @NotNull
    /* renamed from: r */
    public final EntriesItr<K, V> m1998r() {
        return new EntriesItr<>(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V remove(Object obj) {
        int I = m2017I(obj);
        if (I < 0) {
            return null;
        }
        V[] vArr = this.f20580m;
        Intrinsics.m1832c(vArr);
        V v = vArr[I];
        ListBuilderKt.m2030f(vArr, I);
        return v;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return m1991y();
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        EntriesItr<K, V> r = m1998r();
        int i = 0;
        while (r.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            r.m1984i(sb);
            i++;
        }
        sb.append("}");
        String sb2 = sb.toString();
        Intrinsics.m1831d(sb2, "sb.toString()");
        return sb2;
    }

    @NotNull
    /* renamed from: v */
    public Set<Map.Entry<K, V>> m1994v() {
        MapBuilderEntries<K, V> mapBuilderEntries = this.f20577j;
        MapBuilderEntries<K, V> mapBuilderEntries2 = mapBuilderEntries;
        if (mapBuilderEntries == null) {
            mapBuilderEntries2 = new MapBuilderEntries<>(this);
            this.f20577j = mapBuilderEntries2;
        }
        return mapBuilderEntries2;
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return m1990z();
    }

    @NotNull
    /* renamed from: x */
    public Set<K> m1992x() {
        MapBuilderKeys<K> mapBuilderKeys = this.f20575h;
        MapBuilderKeys<K> mapBuilderKeys2 = mapBuilderKeys;
        if (mapBuilderKeys == null) {
            mapBuilderKeys2 = new MapBuilderKeys<>(this);
            this.f20575h = mapBuilderKeys2;
        }
        return mapBuilderKeys2;
    }

    /* renamed from: y */
    public int m1991y() {
        return this.f20574g;
    }

    @NotNull
    /* renamed from: z */
    public Collection<V> m1990z() {
        MapBuilderValues<V> mapBuilderValues = this.f20576i;
        MapBuilderValues<V> mapBuilderValues2 = mapBuilderValues;
        if (mapBuilderValues == null) {
            mapBuilderValues2 = new MapBuilderValues<>(this);
            this.f20576i = mapBuilderValues2;
        }
        return mapBuilderValues2;
    }
}
