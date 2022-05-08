package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u001c:\u0001\u001cB\u0007¢\u0006\u0004\b\u001b\u0010\u000bJ#\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u000f\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000f\u0010\u0017R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", "", "domainLabels", "findMatchingRule", "(Ljava/util/List;)Ljava/util/List;", "domain", "getEffectiveTldPlusOne", "(Ljava/lang/String;)Ljava/lang/String;", "", "readTheList", "()V", "readTheListUninterruptibly", "", "publicSuffixListBytes", "publicSuffixExceptionListBytes", "setListBytes", "([B[B)V", "splitDomain", "(Ljava/lang/String;)Ljava/util/List;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "listRead", "Ljava/util/concurrent/atomic/AtomicBoolean;", "[B", "Ljava/util/concurrent/CountDownLatch;", "readCompleteLatch", "Ljava/util/concurrent/CountDownLatch;", "<init>", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase.class */
public final class PublicSuffixDatabase {
    private static final char EXCEPTION_MARKER = '!';
    private static final List<String> PREVAILING_RULE;
    @NotNull
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    public static final Companion Companion = new Companion(null);
    private static final byte[] WILDCARD_LABEL = {(byte) 42};
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    @Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u000b\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J+\u0010\n\u001a\u0004\u0018\u00010\t*\u00020\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u00020\t8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "get", "()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", "", "labels", "", "labelIndex", "", "binarySearch", "([B[[BI)Ljava/lang/String;", "", "EXCEPTION_MARKER", "C", "", "PREVAILING_RULE", "Ljava/util/List;", "PUBLIC_SUFFIX_RESOURCE", "Ljava/lang/String;", "WILDCARD_LABEL", "[B", "instance", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String binarySearch(byte[] bArr, byte[][] bArr2, int i) {
            String str;
            int i2;
            int i3;
            int and;
            int length = bArr.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    str = null;
                    break;
                }
                int i5 = (i4 + length) / 2;
                while (i5 > -1 && bArr[i5] != ((byte) 10)) {
                    i5--;
                }
                int i6 = i5 + 1;
                int i7 = 1;
                while (true) {
                    i2 = i6 + i7;
                    if (bArr[i2] == ((byte) 10)) {
                        break;
                    }
                    i7++;
                }
                int i8 = i2 - i6;
                int i9 = i;
                boolean z = false;
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    if (z) {
                        i3 = 46;
                        z = false;
                    } else {
                        i3 = Util.and(bArr2[i9][i10], 255);
                    }
                    and = i3 - Util.and(bArr[i6 + i11], 255);
                    if (and != 0) {
                        break;
                    }
                    i11++;
                    i10++;
                    if (i11 == i8) {
                        break;
                    } else if (bArr2[i9].length == i10) {
                        if (i9 == bArr2.length - 1) {
                            break;
                        }
                        i9++;
                        z = true;
                        i10 = -1;
                    }
                }
                if (and >= 0) {
                    if (and <= 0) {
                        int i12 = i8 - i11;
                        int length2 = bArr2[i9].length - i10;
                        int length3 = bArr2.length;
                        for (int i13 = i9 + 1; i13 < length3; i13++) {
                            length2 += bArr2[i13].length;
                        }
                        if (length2 >= i12) {
                            if (length2 <= i12) {
                                Charset UTF_8 = StandardCharsets.UTF_8;
                                Intrinsics.m1831d(UTF_8, "UTF_8");
                                str = new String(bArr, i6, i8, UTF_8);
                                break;
                            }
                        }
                    }
                    i4 = i2 + 1;
                }
                length = i6 - 1;
            }
            return str;
        }

        @NotNull
        public final PublicSuffixDatabase get() {
            return PublicSuffixDatabase.instance;
        }
    }

    static {
        List<String> b;
        b = CollectionsKt__CollectionsJVMKt.m2179b("*");
        PREVAILING_RULE = b;
    }

    public static final /* synthetic */ byte[] access$getPublicSuffixListBytes$p(PublicSuffixDatabase publicSuffixDatabase) {
        byte[] bArr = publicSuffixDatabase.publicSuffixListBytes;
        if (bArr != null) {
            return bArr;
        }
        Intrinsics.m1814u("publicSuffixListBytes");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x01ba, code lost:
        if (r8 != null) goto L_0x01c4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01db, code lost:
        if (r9 != null) goto L_0x01e5;
     */
    /* JADX WARN: Type inference failed for: r0v13, types: [byte[], byte[][], java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<java.lang.String> findMatchingRule(java.util.List<java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.findMatchingRule(java.util.List):java.util.List");
    }

    private final void readTheList() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream != null) {
            BufferedSource d = Okio.m143d(new GzipSource(Okio.m136k(resourceAsStream)));
            try {
                byte[] c0 = d.mo75c0(d.readInt());
                byte[] c02 = d.mo75c0(d.readInt());
                Unit unit = Unit.f20447a;
                th = null;
                synchronized (this) {
                    Intrinsics.m1832c(c0);
                    this.publicSuffixListBytes = c0;
                    Intrinsics.m1832c(c02);
                    this.publicSuffixExceptionListBytes = c02;
                    Unit unit2 = Unit.f20447a;
                }
                this.readCompleteLatch.countDown();
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
    }

    private final void readTheListUninterruptibly() {
        boolean z = false;
        while (true) {
            try {
                try {
                    try {
                        readTheList();
                        break;
                    } catch (IOException e) {
                        Platform.Companion.get().log("Failed to read public suffix list", 5, e);
                        if (z) {
                            Thread.currentThread().interrupt();
                            return;
                        }
                        return;
                    }
                } catch (InterruptedIOException e2) {
                    Thread.interrupted();
                    z = true;
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private final List<String> splitDomain(String str) {
        List<String> p0;
        p0 = StringsKt__StringsKt.m1432p0(str, new char[]{'.'}, false, 0, 6, null);
        List<String> list = p0;
        if (Intrinsics.m1834a((String) CollectionsKt.m2207K(p0), "")) {
            list = CollectionsKt___CollectionsKt.m2151C(p0, 1);
        }
        return list;
    }

    @Nullable
    public final String getEffectiveTldPlusOne(@NotNull String domain) {
        int i;
        int i2;
        Sequence B;
        Sequence h;
        String m;
        Intrinsics.m1830e(domain, "domain");
        String unicodeDomain = IDN.toUnicode(domain);
        Intrinsics.m1831d(unicodeDomain, "unicodeDomain");
        List<String> splitDomain = splitDomain(unicodeDomain);
        List<String> findMatchingRule = findMatchingRule(splitDomain);
        if (splitDomain.size() == findMatchingRule.size() && findMatchingRule.get(0).charAt(0) != '!') {
            return null;
        }
        if (findMatchingRule.get(0).charAt(0) == '!') {
            i2 = splitDomain.size();
            i = findMatchingRule.size();
        } else {
            i2 = splitDomain.size();
            i = findMatchingRule.size() + 1;
        }
        B = CollectionsKt___CollectionsKt.m2152B(splitDomain(domain));
        h = SequencesKt___SequencesKt.m1622h(B, i2 - i);
        m = SequencesKt___SequencesKt.m1617m(h, ".", null, null, 0, null, null, 62, null);
        return m;
    }

    public final void setListBytes(@NotNull byte[] publicSuffixListBytes, @NotNull byte[] publicSuffixExceptionListBytes) {
        Intrinsics.m1830e(publicSuffixListBytes, "publicSuffixListBytes");
        Intrinsics.m1830e(publicSuffixExceptionListBytes, "publicSuffixExceptionListBytes");
        this.publicSuffixListBytes = publicSuffixListBytes;
        this.publicSuffixExceptionListBytes = publicSuffixExceptionListBytes;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
