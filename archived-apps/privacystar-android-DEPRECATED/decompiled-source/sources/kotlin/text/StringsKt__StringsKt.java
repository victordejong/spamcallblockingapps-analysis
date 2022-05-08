package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.TuplesKt;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt;
import kotlin.collections.CharIterator;
import kotlin.collections.CollectionsKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import org.apache.commons.p018io.IOUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��|\n��\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\f\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0019\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\u001a\u001c\u0010\t\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001c\u0010\u000e\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001f\u0010\u000f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\rH\u0086\u0002\u001a\u001f\u0010\u000f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\rH\u0086\u0002\u001a\u0015\u0010\u000f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0087\n\u001a\u001c\u0010\u0014\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001c\u0010\u0014\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r\u001a:\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u00010\u0017*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001aE\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u00010\u0017*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\rH\u0002¢\u0006\u0002\b\u001c\u001a:\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u00010\u0017*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u0012\u0010\u001e\u001a\u00020\r*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0006\u001a4\u0010 \u001a\u0002H!\"\f\b��\u0010\"*\u00020\u0002*\u0002H!\"\u0004\b\u0001\u0010!*\u0002H\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H!0$H\u0087\b¢\u0006\u0002\u0010%\u001a4\u0010&\u001a\u0002H!\"\f\b��\u0010\"*\u00020\u0002*\u0002H!\"\u0004\b\u0001\u0010!*\u0002H\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H!0$H\u0087\b¢\u0006\u0002\u0010%\u001a&\u0010'\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a;\u0010'\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u001b\u001a\u00020\rH\u0002¢\u0006\u0002\b)\u001a&\u0010'\u001a\u00020\u0006*\u00020\u00022\u0006\u0010*\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a&\u0010+\u001a\u00020\u0006*\u00020\u00022\u0006\u0010,\u001a\u00020-2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a,\u0010+\u001a\u00020\u0006*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a\r\u0010.\u001a\u00020\r*\u00020\u0002H\u0087\b\u001a\r\u0010/\u001a\u00020\r*\u00020\u0002H\u0087\b\u001a\r\u00100\u001a\u00020\r*\u00020\u0002H\u0087\b\u001a \u00101\u001a\u00020\r*\u0004\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b��\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010��\u001a \u00102\u001a\u00020\r*\u0004\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b��\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010��\u001a\r\u00103\u001a\u000204*\u00020\u0002H\u0086\u0002\u001a&\u00105\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a&\u00105\u001a\u00020\u0006*\u00020\u00022\u0006\u0010*\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a&\u00106\u001a\u00020\u0006*\u00020\u00022\u0006\u0010,\u001a\u00020-2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a,\u00106\u001a\u00020\u0006*\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u0010\u00107\u001a\b\u0012\u0004\u0012\u00020\n08*\u00020\u0002\u001a\u0010\u00109\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u0002\u001a\u0015\u0010;\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0087\f\u001a\u000f\u0010<\u001a\u00020\n*\u0004\u0018\u00010\nH\u0087\b\u001a\u001c\u0010=\u001a\u00020\u0002*\u00020\u00022\u0006\u0010>\u001a\u00020\u00062\b\b\u0002\u0010?\u001a\u00020\u0011\u001a\u001c\u0010=\u001a\u00020\n*\u00020\n2\u0006\u0010>\u001a\u00020\u00062\b\b\u0002\u0010?\u001a\u00020\u0011\u001a\u001c\u0010@\u001a\u00020\u0002*\u00020\u00022\u0006\u0010>\u001a\u00020\u00062\b\b\u0002\u0010?\u001a\u00020\u0011\u001a\u001c\u0010@\u001a\u00020\n*\u00020\n2\u0006\u0010>\u001a\u00020\u00062\b\b\u0002\u0010?\u001a\u00020\u0011\u001aG\u0010A\u001a\b\u0012\u0004\u0012\u00020\u000108*\u00020\u00022\u000e\u0010B\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0C2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006H\u0002¢\u0006\u0004\bE\u0010F\u001a=\u0010A\u001a\b\u0012\u0004\u0012\u00020\u000108*\u00020\u00022\u0006\u0010B\u001a\u00020-2\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006H\u0002¢\u0006\u0002\bE\u001a4\u0010G\u001a\u00020\r*\u00020\u00022\u0006\u0010H\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010I\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rH��\u001a\u0012\u0010J\u001a\u00020\u0002*\u00020\u00022\u0006\u0010K\u001a\u00020\u0002\u001a\u0012\u0010J\u001a\u00020\n*\u00020\n2\u0006\u0010K\u001a\u00020\u0002\u001a\u001a\u0010L\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0006\u001a\u0012\u0010L\u001a\u00020\u0002*\u00020\u00022\u0006\u0010M\u001a\u00020\u0001\u001a\u001d\u0010L\u001a\u00020\n*\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010L\u001a\u00020\n*\u00020\n2\u0006\u0010M\u001a\u00020\u0001H\u0087\b\u001a\u0012\u0010N\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002\u001a\u0012\u0010N\u001a\u00020\n*\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0002\u001a\u0012\u0010O\u001a\u00020\u0002*\u00020\u00022\u0006\u0010P\u001a\u00020\u0002\u001a\u001a\u0010O\u001a\u00020\u0002*\u00020\u00022\u0006\u0010K\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002\u001a\u0012\u0010O\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u0002\u001a\u001a\u0010O\u001a\u00020\n*\u00020\n2\u0006\u0010K\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002\u001a+\u0010Q\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0014\b\b\u0010R\u001a\u000e\u0012\u0004\u0012\u00020T\u0012\u0004\u0012\u00020\u00020SH\u0087\b\u001a\u001d\u0010Q\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010U\u001a\u00020\nH\u0087\b\u001a$\u0010V\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010V\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010X\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010X\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010Y\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010Y\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010Z\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a$\u0010Z\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\u0006\u0010U\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001d\u0010[\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010U\u001a\u00020\nH\u0087\b\u001a\"\u0010\\\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u0002\u001a\u001a\u0010\\\u001a\u00020\u0002*\u00020\u00022\u0006\u0010M\u001a\u00020\u00012\u0006\u0010U\u001a\u00020\u0002\u001a%\u0010\\\u001a\u00020\n*\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u0002H\u0087\b\u001a\u001d\u0010\\\u001a\u00020\n*\u00020\n2\u0006\u0010M\u001a\u00020\u00012\u0006\u0010U\u001a\u00020\u0002H\u0087\b\u001a=\u0010]\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u00022\u0012\u0010B\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0C\"\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006¢\u0006\u0002\u0010^\u001a0\u0010]\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u00022\n\u0010B\u001a\u00020-\"\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006\u001a/\u0010]\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u00022\u0006\u0010P\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010D\u001a\u00020\u0006H\u0002¢\u0006\u0002\b_\u001a%\u0010]\u001a\b\u0012\u0004\u0012\u00020\n0:*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010D\u001a\u00020\u0006H\u0087\b\u001a=\u0010`\u001a\b\u0012\u0004\u0012\u00020\n08*\u00020\u00022\u0012\u0010B\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0C\"\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006¢\u0006\u0002\u0010a\u001a0\u0010`\u001a\b\u0012\u0004\u0012\u00020\n08*\u00020\u00022\n\u0010B\u001a\u00020-\"\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0006\u001a\u001c\u0010b\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001c\u0010b\u001a\u00020\r*\u00020\u00022\u0006\u0010K\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r\u001a$\u0010b\u001a\u00020\r*\u00020\u00022\u0006\u0010K\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u0012\u0010c\u001a\u00020\u0002*\u00020\u00022\u0006\u0010M\u001a\u00020\u0001\u001a\u001d\u0010c\u001a\u00020\u0002*\u00020\n2\u0006\u0010d\u001a\u00020\u00062\u0006\u0010e\u001a\u00020\u0006H\u0087\b\u001a\u001f\u0010f\u001a\u00020\n*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010(\u001a\u00020\u0006H\u0087\b\u001a\u0012\u0010f\u001a\u00020\n*\u00020\u00022\u0006\u0010M\u001a\u00020\u0001\u001a\u0012\u0010f\u001a\u00020\n*\u00020\n2\u0006\u0010M\u001a\u00020\u0001\u001a\u001c\u0010g\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010g\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010h\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010h\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010i\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010i\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010j\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\u00112\b\b\u0002\u0010W\u001a\u00020\n\u001a\u001c\u0010j\u001a\u00020\n*\u00020\n2\u0006\u0010P\u001a\u00020\n2\b\b\u0002\u0010W\u001a\u00020\n\u001a\n\u0010k\u001a\u00020\u0002*\u00020\u0002\u001a!\u0010k\u001a\u00020\u0002*\u00020\u00022\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\b\u001a\u0016\u0010k\u001a\u00020\u0002*\u00020\u00022\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\r\u0010k\u001a\u00020\n*\u00020\nH\u0087\b\u001a!\u0010k\u001a\u00020\n*\u00020\n2\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\b\u001a\u0016\u0010k\u001a\u00020\n*\u00020\n2\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\n\u0010m\u001a\u00020\u0002*\u00020\u0002\u001a!\u0010m\u001a\u00020\u0002*\u00020\u00022\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\b\u001a\u0016\u0010m\u001a\u00020\u0002*\u00020\u00022\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\r\u0010m\u001a\u00020\n*\u00020\nH\u0087\b\u001a!\u0010m\u001a\u00020\n*\u00020\n2\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\b\u001a\u0016\u0010m\u001a\u00020\n*\u00020\n2\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\n\u0010n\u001a\u00020\u0002*\u00020\u0002\u001a!\u0010n\u001a\u00020\u0002*\u00020\u00022\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\b\u001a\u0016\u0010n\u001a\u00020\u0002*\u00020\u00022\n\u0010,\u001a\u00020-\"\u00020\u0011\u001a\r\u0010n\u001a\u00020\n*\u00020\nH\u0087\b\u001a!\u0010n\u001a\u00020\n*\u00020\n2\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r0SH\u0086\b\u001a\u0016\u0010n\u001a\u00020\n*\u00020\n2\n\u0010,\u001a\u00020-\"\u00020\u0011\"\u0015\u0010��\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006o"}, m254d2 = {"indices", "Lkotlin/ranges/IntRange;", "", "getIndices", "(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;", "lastIndex", "", "getLastIndex", "(Ljava/lang/CharSequence;)I", "commonPrefixWith", "", "other", "ignoreCase", "", "commonSuffixWith", "contains", "char", "", "regex", "Lkotlin/text/Regex;", "endsWith", "suffix", "findAnyOf", "Lkotlin/Pair;", "strings", "", "startIndex", "last", "findAnyOf$StringsKt__StringsKt", "findLastAnyOf", "hasSurrogatePairAt", FirebaseAnalytics.Param.INDEX, "ifBlank", "R", "C", "defaultValue", "Lkotlin/Function0;", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "ifEmpty", "indexOf", "endIndex", "indexOf$StringsKt__StringsKt", "string", "indexOfAny", "chars", "", "isEmpty", "isNotBlank", "isNotEmpty", "isNullOrBlank", "isNullOrEmpty", "iterator", "Lkotlin/collections/CharIterator;", "lastIndexOf", "lastIndexOfAny", "lineSequence", "Lkotlin/sequences/Sequence;", "lines", "", "matches", "orEmpty", "padEnd", "length", "padChar", "padStart", "rangesDelimitedBy", "delimiters", "", "limit", "rangesDelimitedBy$StringsKt__StringsKt", "(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;", "regionMatchesImpl", "thisOffset", "otherOffset", "removePrefix", "prefix", "removeRange", "range", "removeSuffix", "removeSurrounding", "delimiter", "replace", "transform", "Lkotlin/Function1;", "Lkotlin/text/MatchResult;", "replacement", "replaceAfter", "missingDelimiterValue", "replaceAfterLast", "replaceBefore", "replaceBeforeLast", "replaceFirst", "replaceRange", "split", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;", "split$StringsKt__StringsKt", "splitToSequence", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/Sequence;", "startsWith", "subSequence", "start", "end", "substring", "substringAfter", "substringAfterLast", "substringBefore", "substringBeforeLast", "trim", "predicate", "trimEnd", "trimStart", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/text/StringsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__StringsKt.class */
public class StringsKt__StringsKt extends StringsKt__StringsJVMKt {
    /* JADX WARN: Code restructure failed: missing block: B:11:0x005a, code lost:
        if (kotlin.text.StringsKt.hasSurrogatePairAt(r5, r0) != false) goto L_0x005d;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String commonPrefixWith(@org.jetbrains.annotations.NotNull java.lang.CharSequence r4, @org.jetbrains.annotations.NotNull java.lang.CharSequence r5, boolean r6) {
        /*
            r0 = r4
            java.lang.String r1 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r5
            java.lang.String r1 = "other"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r4
            int r0 = r0.length()
            r1 = r5
            int r1 = r1.length()
            int r0 = java.lang.Math.min(r0, r1)
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x001f:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0042
            r0 = r4
            r1 = r8
            char r0 = r0.charAt(r1)
            r1 = r5
            r2 = r8
            char r1 = r1.charAt(r2)
            r2 = r6
            boolean r0 = kotlin.text.CharsKt.equals(r0, r1, r2)
            if (r0 == 0) goto L_0x0042
            int r8 = r8 + 1
            goto L_0x001f
        L_0x0042:
            r0 = r8
            r1 = 1
            int r0 = r0 - r1
            r9 = r0
            r0 = r4
            r1 = r9
            boolean r0 = kotlin.text.StringsKt.hasSurrogatePairAt(r0, r1)
            if (r0 != 0) goto L_0x005d
            r0 = r8
            r7 = r0
            r0 = r5
            r1 = r9
            boolean r0 = kotlin.text.StringsKt.hasSurrogatePairAt(r0, r1)
            if (r0 == 0) goto L_0x0062
        L_0x005d:
            r0 = r8
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
        L_0x0062:
            r0 = r4
            r1 = 0
            r2 = r7
            java.lang.CharSequence r0 = r0.subSequence(r1, r2)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringsKt.commonPrefixWith(java.lang.CharSequence, java.lang.CharSequence, boolean):java.lang.String");
    }

    @NotNull
    public static /* synthetic */ String commonPrefixWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.commonPrefixWith(charSequence, charSequence2, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006f, code lost:
        if (kotlin.text.StringsKt.hasSurrogatePairAt(r6, (r0 - r11) - 1) != false) goto L_0x0072;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String commonSuffixWith(@org.jetbrains.annotations.NotNull java.lang.CharSequence r5, @org.jetbrains.annotations.NotNull java.lang.CharSequence r6, boolean r7) {
        /*
            r0 = r5
            java.lang.String r1 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r6
            java.lang.String r1 = "other"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r5
            int r0 = r0.length()
            r8 = r0
            r0 = r6
            int r0 = r0.length()
            r9 = r0
            r0 = r8
            r1 = r9
            int r0 = java.lang.Math.min(r0, r1)
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x0026:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L_0x0053
            r0 = r5
            r1 = r8
            r2 = r11
            int r1 = r1 - r2
            r2 = 1
            int r1 = r1 - r2
            char r0 = r0.charAt(r1)
            r1 = r6
            r2 = r9
            r3 = r11
            int r2 = r2 - r3
            r3 = 1
            int r2 = r2 - r3
            char r1 = r1.charAt(r2)
            r2 = r7
            boolean r0 = kotlin.text.CharsKt.equals(r0, r1, r2)
            if (r0 == 0) goto L_0x0053
            int r11 = r11 + 1
            goto L_0x0026
        L_0x0053:
            r0 = r5
            r1 = r8
            r2 = r11
            int r1 = r1 - r2
            r2 = 1
            int r1 = r1 - r2
            boolean r0 = kotlin.text.StringsKt.hasSurrogatePairAt(r0, r1)
            if (r0 != 0) goto L_0x0072
            r0 = r11
            r10 = r0
            r0 = r6
            r1 = r9
            r2 = r11
            int r1 = r1 - r2
            r2 = 1
            int r1 = r1 - r2
            boolean r0 = kotlin.text.StringsKt.hasSurrogatePairAt(r0, r1)
            if (r0 == 0) goto L_0x0078
        L_0x0072:
            r0 = r11
            r1 = 1
            int r0 = r0 - r1
            r10 = r0
        L_0x0078:
            r0 = r5
            r1 = r8
            r2 = r10
            int r1 = r1 - r2
            r2 = r8
            java.lang.CharSequence r0 = r0.subSequence(r1, r2)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringsKt.commonSuffixWith(java.lang.CharSequence, java.lang.CharSequence, boolean):java.lang.String");
    }

    @NotNull
    public static /* synthetic */ String commonSuffixWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.commonSuffixWith(charSequence, charSequence2, z);
    }

    public static final boolean contains(@NotNull CharSequence receiver$0, char c, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return StringsKt.indexOf$default(receiver$0, c, 0, z, 2, (Object) null) >= 0;
    }

    public static final boolean contains(@NotNull CharSequence receiver$0, @NotNull CharSequence other, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(other, "other");
        boolean z2 = false;
        if (!(other instanceof String) ? indexOf$StringsKt__StringsKt$default(receiver$0, other, 0, receiver$0.length(), z, false, 16, null) >= 0 : StringsKt.indexOf$default(receiver$0, (String) other, 0, z, 2, (Object) null) >= 0) {
            z2 = true;
        }
        return z2;
    }

    @InlineOnly
    private static final boolean contains(@NotNull CharSequence receiver$0, Regex regex) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return regex.containsMatchIn(receiver$0);
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.contains(charSequence, c, z);
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.contains(charSequence, charSequence2, z);
    }

    public static final boolean endsWith(@NotNull CharSequence receiver$0, char c, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.length() > 0 && CharsKt.equals(receiver$0.charAt(StringsKt.getLastIndex(receiver$0)), c, z);
    }

    public static final boolean endsWith(@NotNull CharSequence receiver$0, @NotNull CharSequence suffix, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(suffix, "suffix");
        return (z || !(receiver$0 instanceof String) || !(suffix instanceof String)) ? StringsKt.regionMatchesImpl(receiver$0, receiver$0.length() - suffix.length(), suffix, 0, suffix.length(), z) : StringsKt.endsWith$default((String) receiver$0, (String) suffix, false, 2, (Object) null);
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.endsWith(charSequence, c, z);
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.endsWith(charSequence, charSequence2, z);
    }

    @Nullable
    public static final Pair<Integer, String> findAnyOf(@NotNull CharSequence receiver$0, @NotNull Collection<String> strings, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(strings, "strings");
        return findAnyOf$StringsKt__StringsKt(receiver$0, strings, i, z, false);
    }

    public static final Pair<Integer, String> findAnyOf$StringsKt__StringsKt(@NotNull CharSequence charSequence, Collection<String> collection, int i, boolean z, boolean z2) {
        Object obj;
        Object obj2;
        Pair<Integer, String> pair = null;
        if (z || collection.size() != 1) {
            IntRange intRange = !z2 ? new IntRange(RangesKt.coerceAtLeast(i, 0), charSequence.length()) : RangesKt.downTo(RangesKt.coerceAtMost(i, StringsKt.getLastIndex(charSequence)), 0);
            if (charSequence instanceof String) {
                int first = intRange.getFirst();
                int last = intRange.getLast();
                int step = intRange.getStep();
                if (step > 0) {
                    if (first > last) {
                        return null;
                    }
                } else if (first < last) {
                    return null;
                }
                while (true) {
                    Iterator<T> it = collection.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj2 = null;
                            break;
                        }
                        obj2 = it.next();
                        String str = (String) obj2;
                        if (StringsKt.regionMatches(str, 0, (String) charSequence, first, str.length(), z)) {
                            break;
                        }
                    }
                    String str2 = (String) obj2;
                    if (str2 != null) {
                        return TuplesKt.m248to(Integer.valueOf(first), str2);
                    }
                    if (first == last) {
                        return null;
                    }
                    first += step;
                }
            } else {
                int first2 = intRange.getFirst();
                int last2 = intRange.getLast();
                int step2 = intRange.getStep();
                if (step2 > 0) {
                    if (first2 > last2) {
                        return null;
                    }
                } else if (first2 < last2) {
                    return null;
                }
                while (true) {
                    Iterator<T> it2 = collection.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        String str3 = (String) obj;
                        if (StringsKt.regionMatchesImpl(str3, 0, charSequence, first2, str3.length(), z)) {
                            break;
                        }
                    }
                    String str4 = (String) obj;
                    if (str4 != null) {
                        return TuplesKt.m248to(Integer.valueOf(first2), str4);
                    }
                    if (first2 == last2) {
                        return null;
                    }
                    first2 += step2;
                }
            }
        } else {
            String str5 = (String) CollectionsKt.single(collection);
            int indexOf$default = !z2 ? StringsKt.indexOf$default(charSequence, str5, i, false, 4, (Object) null) : StringsKt.lastIndexOf$default(charSequence, str5, i, false, 4, (Object) null);
            if (indexOf$default >= 0) {
                pair = TuplesKt.m248to(Integer.valueOf(indexOf$default), str5);
            }
            return pair;
        }
    }

    @Nullable
    public static /* synthetic */ Pair findAnyOf$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.findAnyOf(charSequence, collection, i, z);
    }

    @Nullable
    public static final Pair<Integer, String> findLastAnyOf(@NotNull CharSequence receiver$0, @NotNull Collection<String> strings, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(strings, "strings");
        return findAnyOf$StringsKt__StringsKt(receiver$0, strings, i, z, true);
    }

    @Nullable
    public static /* synthetic */ Pair findLastAnyOf$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = StringsKt.getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.findLastAnyOf(charSequence, collection, i, z);
    }

    @NotNull
    public static final IntRange getIndices(@NotNull CharSequence receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return new IntRange(0, receiver$0.length() - 1);
    }

    public static final int getLastIndex(@NotNull CharSequence receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.length() - 1;
    }

    public static final boolean hasSurrogatePairAt(@NotNull CharSequence receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        int length = receiver$0.length();
        boolean z = true;
        if (i < 0 || length - 2 < i || !Character.isHighSurrogate(receiver$0.charAt(i)) || !Character.isLowSurrogate(receiver$0.charAt(i + 1))) {
            z = false;
        }
        return z;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <C extends CharSequence & R, R> R ifBlank(C c, Function0<? extends R> function0) {
        R r = (R) c;
        if (StringsKt.isBlank(c)) {
            r = (R) function0.invoke();
        }
        return r;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <C extends CharSequence & R, R> R ifEmpty(C c, Function0<? extends R> function0) {
        boolean z = c.length() == 0;
        C c2 = c;
        if (z) {
            c2 = (R) function0.invoke();
        }
        return (R) c2;
    }

    public static final int indexOf(@NotNull CharSequence receiver$0, char c, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return (z || !(receiver$0 instanceof String)) ? StringsKt.indexOfAny(receiver$0, new char[]{c}, i, z) : ((String) receiver$0).indexOf(c, i);
    }

    public static final int indexOf(@NotNull CharSequence receiver$0, @NotNull String string, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(string, "string");
        return (z || !(receiver$0 instanceof String)) ? indexOf$StringsKt__StringsKt$default(receiver$0, string, i, receiver$0.length(), z, false, 16, null) : ((String) receiver$0).indexOf(string, i);
    }

    private static final int indexOf$StringsKt__StringsKt(@NotNull CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        IntRange intRange = !z2 ? new IntRange(RangesKt.coerceAtLeast(i, 0), RangesKt.coerceAtMost(i2, charSequence.length())) : RangesKt.downTo(RangesKt.coerceAtMost(i, StringsKt.getLastIndex(charSequence)), RangesKt.coerceAtLeast(i2, 0));
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int first = intRange.getFirst();
            int last = intRange.getLast();
            int step = intRange.getStep();
            if (step > 0) {
                if (first > last) {
                    return -1;
                }
            } else if (first < last) {
                return -1;
            }
            while (!StringsKt.regionMatchesImpl(charSequence2, 0, charSequence, first, charSequence2.length(), z)) {
                if (first == last) {
                    return -1;
                }
                first += step;
            }
            return first;
        }
        int first2 = intRange.getFirst();
        int last2 = intRange.getLast();
        int step2 = intRange.getStep();
        if (step2 > 0) {
            if (first2 > last2) {
                return -1;
            }
        } else if (first2 < last2) {
            return -1;
        }
        while (!StringsKt.regionMatches((String) charSequence2, 0, (String) charSequence, first2, charSequence2.length(), z)) {
            if (first2 == last2) {
                return -1;
            }
            first2 += step2;
        }
        return first2;
    }

    static /* synthetic */ int indexOf$StringsKt__StringsKt$default(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        return indexOf$StringsKt__StringsKt(charSequence, charSequence2, i, i2, z, z2);
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.indexOf(charSequence, c, i, z);
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.indexOf(charSequence, str, i, z);
    }

    public static final int indexOfAny(@NotNull CharSequence receiver$0, @NotNull Collection<String> strings, int i, boolean z) {
        Integer first;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(strings, "strings");
        Pair<Integer, String> findAnyOf$StringsKt__StringsKt = findAnyOf$StringsKt__StringsKt(receiver$0, strings, i, z, false);
        return (findAnyOf$StringsKt__StringsKt == null || (first = findAnyOf$StringsKt__StringsKt.getFirst()) == null) ? -1 : first.intValue();
    }

    public static final int indexOfAny(@NotNull CharSequence receiver$0, @NotNull char[] chars, int i, boolean z) {
        boolean z2;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(chars, "chars");
        if (z || chars.length != 1 || !(receiver$0 instanceof String)) {
            int coerceAtLeast = RangesKt.coerceAtLeast(i, 0);
            int lastIndex = StringsKt.getLastIndex(receiver$0);
            if (coerceAtLeast > lastIndex) {
                return -1;
            }
            while (true) {
                char charAt = receiver$0.charAt(coerceAtLeast);
                int length = chars.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z2 = false;
                        break;
                    } else if (CharsKt.equals(chars[i2], charAt, z)) {
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (z2) {
                    return coerceAtLeast;
                }
                if (coerceAtLeast == lastIndex) {
                    return -1;
                }
                coerceAtLeast++;
            }
        } else {
            return ((String) receiver$0).indexOf(ArraysKt.single(chars), i);
        }
    }

    public static /* synthetic */ int indexOfAny$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.indexOfAny(charSequence, collection, i, z);
    }

    public static /* synthetic */ int indexOfAny$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.indexOfAny(charSequence, cArr, i, z);
    }

    @InlineOnly
    private static final boolean isEmpty(@NotNull CharSequence charSequence) {
        return charSequence.length() == 0;
    }

    @InlineOnly
    private static final boolean isNotBlank(@NotNull CharSequence charSequence) {
        return !StringsKt.isBlank(charSequence);
    }

    @InlineOnly
    private static final boolean isNotEmpty(@NotNull CharSequence charSequence) {
        return charSequence.length() > 0;
    }

    @InlineOnly
    private static final boolean isNullOrBlank(@Nullable CharSequence charSequence) {
        return charSequence == null || StringsKt.isBlank(charSequence);
    }

    @InlineOnly
    private static final boolean isNullOrEmpty(@Nullable CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    @NotNull
    public static final CharIterator iterator(@NotNull final CharSequence receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return new CharIterator() { // from class: kotlin.text.StringsKt__StringsKt$iterator$1
            private int index;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < receiver$0.length();
            }

            @Override // kotlin.collections.CharIterator
            public char nextChar() {
                CharSequence charSequence = receiver$0;
                int i = this.index;
                this.index = i + 1;
                return charSequence.charAt(i);
            }
        };
    }

    public static final int lastIndexOf(@NotNull CharSequence receiver$0, char c, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return (z || !(receiver$0 instanceof String)) ? StringsKt.lastIndexOfAny(receiver$0, new char[]{c}, i, z) : ((String) receiver$0).lastIndexOf(c, i);
    }

    public static final int lastIndexOf(@NotNull CharSequence receiver$0, @NotNull String string, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(string, "string");
        return (z || !(receiver$0 instanceof String)) ? indexOf$StringsKt__StringsKt(receiver$0, string, i, 0, z, true) : ((String) receiver$0).lastIndexOf(string, i);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = StringsKt.getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.lastIndexOf(charSequence, c, i, z);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = StringsKt.getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.lastIndexOf(charSequence, str, i, z);
    }

    public static final int lastIndexOfAny(@NotNull CharSequence receiver$0, @NotNull Collection<String> strings, int i, boolean z) {
        Integer first;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(strings, "strings");
        Pair<Integer, String> findAnyOf$StringsKt__StringsKt = findAnyOf$StringsKt__StringsKt(receiver$0, strings, i, z, true);
        return (findAnyOf$StringsKt__StringsKt == null || (first = findAnyOf$StringsKt__StringsKt.getFirst()) == null) ? -1 : first.intValue();
    }

    public static final int lastIndexOfAny(@NotNull CharSequence receiver$0, @NotNull char[] chars, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(chars, "chars");
        if (z || chars.length != 1 || !(receiver$0 instanceof String)) {
            for (int coerceAtMost = RangesKt.coerceAtMost(i, StringsKt.getLastIndex(receiver$0)); coerceAtMost >= 0; coerceAtMost--) {
                char charAt = receiver$0.charAt(coerceAtMost);
                int length = chars.length;
                boolean z2 = false;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (CharsKt.equals(chars[i2], charAt, z)) {
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (z2) {
                    return coerceAtMost;
                }
            }
            return -1;
        }
        return ((String) receiver$0).lastIndexOf(ArraysKt.single(chars), i);
    }

    public static /* synthetic */ int lastIndexOfAny$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = StringsKt.getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.lastIndexOfAny(charSequence, collection, i, z);
    }

    public static /* synthetic */ int lastIndexOfAny$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = StringsKt.getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.lastIndexOfAny(charSequence, cArr, i, z);
    }

    @NotNull
    public static final Sequence<String> lineSequence(@NotNull CharSequence receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return StringsKt.splitToSequence$default(receiver$0, new String[]{IOUtils.LINE_SEPARATOR_WINDOWS, IOUtils.LINE_SEPARATOR_UNIX, "\r"}, false, 0, 6, (Object) null);
    }

    @NotNull
    public static final List<String> lines(@NotNull CharSequence receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return SequencesKt.toList(StringsKt.lineSequence(receiver$0));
    }

    @InlineOnly
    private static final boolean matches(@NotNull CharSequence charSequence, Regex regex) {
        return regex.matches(charSequence);
    }

    @InlineOnly
    private static final String orEmpty(@Nullable String str) {
        if (str == null) {
            str = "";
        }
        return str;
    }

    @NotNull
    public static final CharSequence padEnd(@NotNull CharSequence receiver$0, int i, char c) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        if (i < 0) {
            throw new IllegalArgumentException("Desired length " + i + " is less than zero.");
        } else if (i <= receiver$0.length()) {
            return receiver$0.subSequence(0, receiver$0.length());
        } else {
            StringBuilder sb = new StringBuilder(i);
            sb.append(receiver$0);
            int length = i - receiver$0.length();
            int i2 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append(c);
                    if (i2 == length) {
                        break;
                    }
                    i2++;
                }
            }
            return sb;
        }
    }

    @NotNull
    public static final String padEnd(@NotNull String receiver$0, int i, char c) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return StringsKt.padEnd((CharSequence) receiver$0, i, c).toString();
    }

    @NotNull
    public static /* synthetic */ CharSequence padEnd$default(CharSequence charSequence, int i, char c, int i2, Object obj) {
        char c2 = c;
        if ((i2 & 2) != 0) {
            c2 = ' ';
        }
        return StringsKt.padEnd(charSequence, i, c2);
    }

    @NotNull
    public static /* synthetic */ String padEnd$default(String str, int i, char c, int i2, Object obj) {
        char c2 = c;
        if ((i2 & 2) != 0) {
            c2 = ' ';
        }
        return StringsKt.padEnd(str, i, c2);
    }

    @NotNull
    public static final CharSequence padStart(@NotNull CharSequence receiver$0, int i, char c) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        if (i < 0) {
            throw new IllegalArgumentException("Desired length " + i + " is less than zero.");
        } else if (i <= receiver$0.length()) {
            return receiver$0.subSequence(0, receiver$0.length());
        } else {
            StringBuilder sb = new StringBuilder(i);
            int length = i - receiver$0.length();
            int i2 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append(c);
                    if (i2 == length) {
                        break;
                    }
                    i2++;
                }
            }
            sb.append(receiver$0);
            return sb;
        }
    }

    @NotNull
    public static final String padStart(@NotNull String receiver$0, int i, char c) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return StringsKt.padStart((CharSequence) receiver$0, i, c).toString();
    }

    @NotNull
    public static /* synthetic */ CharSequence padStart$default(CharSequence charSequence, int i, char c, int i2, Object obj) {
        char c2 = c;
        if ((i2 & 2) != 0) {
            c2 = ' ';
        }
        return StringsKt.padStart(charSequence, i, c2);
    }

    @NotNull
    public static /* synthetic */ String padStart$default(String str, int i, char c, int i2, Object obj) {
        char c2 = c;
        if ((i2 & 2) != 0) {
            c2 = ' ';
        }
        return StringsKt.padStart(str, i, c2);
    }

    private static final Sequence<IntRange> rangesDelimitedBy$StringsKt__StringsKt(@NotNull CharSequence charSequence, char[] cArr, int i, boolean z, int i2) {
        if (i2 >= 0) {
            return new DelimitedRangesSequence(charSequence, i, i2, new StringsKt__StringsKt$rangesDelimitedBy$2(cArr, z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
    }

    private static final Sequence<IntRange> rangesDelimitedBy$StringsKt__StringsKt(@NotNull CharSequence charSequence, String[] strArr, int i, boolean z, int i2) {
        if (i2 >= 0) {
            return new DelimitedRangesSequence(charSequence, i, i2, new StringsKt__StringsKt$rangesDelimitedBy$4(ArraysKt.asList(strArr), z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
    }

    static /* synthetic */ Sequence rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return rangesDelimitedBy$StringsKt__StringsKt(charSequence, cArr, i, z, i2);
    }

    static /* synthetic */ Sequence rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return rangesDelimitedBy$StringsKt__StringsKt(charSequence, strArr, i, z, i2);
    }

    public static final boolean regionMatchesImpl(@NotNull CharSequence receiver$0, int i, @NotNull CharSequence other, int i2, int i3, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(other, "other");
        if (i2 < 0 || i < 0 || i > receiver$0.length() - i3 || i2 > other.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!CharsKt.equals(receiver$0.charAt(i + i4), other.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final CharSequence removePrefix(@NotNull CharSequence receiver$0, @NotNull CharSequence prefix) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(prefix, "prefix");
        return StringsKt.startsWith$default(receiver$0, prefix, false, 2, (Object) null) ? receiver$0.subSequence(prefix.length(), receiver$0.length()) : receiver$0.subSequence(0, receiver$0.length());
    }

    @NotNull
    public static final String removePrefix(@NotNull String receiver$0, @NotNull CharSequence prefix) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(prefix, "prefix");
        if (!StringsKt.startsWith$default((CharSequence) receiver$0, prefix, false, 2, (Object) null)) {
            return receiver$0;
        }
        String substring = receiver$0.substring(prefix.length());
        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.String).substring(startIndex)");
        return substring;
    }

    @NotNull
    public static final CharSequence removeRange(@NotNull CharSequence receiver$0, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        if (i2 < i) {
            throw new IndexOutOfBoundsException("End index (" + i2 + ") is less than start index (" + i + ").");
        } else if (i2 == i) {
            return receiver$0.subSequence(0, receiver$0.length());
        } else {
            StringBuilder sb = new StringBuilder(receiver$0.length() - (i2 - i));
            sb.append(receiver$0, 0, i);
            sb.append(receiver$0, i2, receiver$0.length());
            return sb;
        }
    }

    @NotNull
    public static final CharSequence removeRange(@NotNull CharSequence receiver$0, @NotNull IntRange range) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(range, "range");
        return StringsKt.removeRange(receiver$0, range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
    }

    @InlineOnly
    private static final String removeRange(@NotNull String str, int i, int i2) {
        if (str != null) {
            return StringsKt.removeRange((CharSequence) str, i, i2).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    @InlineOnly
    private static final String removeRange(@NotNull String str, IntRange intRange) {
        if (str != null) {
            return StringsKt.removeRange((CharSequence) str, intRange).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    @NotNull
    public static final CharSequence removeSuffix(@NotNull CharSequence receiver$0, @NotNull CharSequence suffix) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(suffix, "suffix");
        return StringsKt.endsWith$default(receiver$0, suffix, false, 2, (Object) null) ? receiver$0.subSequence(0, receiver$0.length() - suffix.length()) : receiver$0.subSequence(0, receiver$0.length());
    }

    @NotNull
    public static final String removeSuffix(@NotNull String receiver$0, @NotNull CharSequence suffix) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(suffix, "suffix");
        if (!StringsKt.endsWith$default((CharSequence) receiver$0, suffix, false, 2, (Object) null)) {
            return receiver$0;
        }
        String substring = receiver$0.substring(0, receiver$0.length() - suffix.length());
        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public static final CharSequence removeSurrounding(@NotNull CharSequence receiver$0, @NotNull CharSequence delimiter) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        return StringsKt.removeSurrounding(receiver$0, delimiter, delimiter);
    }

    @NotNull
    public static final CharSequence removeSurrounding(@NotNull CharSequence receiver$0, @NotNull CharSequence prefix, @NotNull CharSequence suffix) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(prefix, "prefix");
        Intrinsics.checkParameterIsNotNull(suffix, "suffix");
        return (receiver$0.length() < prefix.length() + suffix.length() || !StringsKt.startsWith$default(receiver$0, prefix, false, 2, (Object) null) || !StringsKt.endsWith$default(receiver$0, suffix, false, 2, (Object) null)) ? receiver$0.subSequence(0, receiver$0.length()) : receiver$0.subSequence(prefix.length(), receiver$0.length() - suffix.length());
    }

    @NotNull
    public static final String removeSurrounding(@NotNull String receiver$0, @NotNull CharSequence delimiter) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        return StringsKt.removeSurrounding(receiver$0, delimiter, delimiter);
    }

    @NotNull
    public static final String removeSurrounding(@NotNull String receiver$0, @NotNull CharSequence prefix, @NotNull CharSequence suffix) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(prefix, "prefix");
        Intrinsics.checkParameterIsNotNull(suffix, "suffix");
        if (receiver$0.length() >= prefix.length() + suffix.length()) {
            String str = receiver$0;
            if (StringsKt.startsWith$default((CharSequence) str, prefix, false, 2, (Object) null) && StringsKt.endsWith$default((CharSequence) str, suffix, false, 2, (Object) null)) {
                String substring = receiver$0.substring(prefix.length(), receiver$0.length() - suffix.length());
                Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                return substring;
            }
        }
        return receiver$0;
    }

    @InlineOnly
    private static final String replace(@NotNull CharSequence charSequence, Regex regex, String str) {
        return regex.replace(charSequence, str);
    }

    @InlineOnly
    private static final String replace(@NotNull CharSequence charSequence, Regex regex, Function1<? super MatchResult, ? extends CharSequence> function1) {
        return regex.replace(charSequence, function1);
    }

    @NotNull
    public static final String replaceAfter(@NotNull String receiver$0, char c, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        String str = receiver$0;
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            missingDelimiterValue = StringsKt.replaceRange((CharSequence) str, indexOf$default + 1, receiver$0.length(), (CharSequence) replacement).toString();
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static final String replaceAfter(@NotNull String receiver$0, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        String str = receiver$0;
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            missingDelimiterValue = StringsKt.replaceRange((CharSequence) str, indexOf$default + delimiter.length(), receiver$0.length(), (CharSequence) replacement).toString();
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static /* synthetic */ String replaceAfter$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return StringsKt.replaceAfter(str, c, str2, str3);
    }

    @NotNull
    public static /* synthetic */ String replaceAfter$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return StringsKt.replaceAfter(str, str2, str3, str4);
    }

    @NotNull
    public static final String replaceAfterLast(@NotNull String receiver$0, char c, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        String str = receiver$0;
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (lastIndexOf$default != -1) {
            missingDelimiterValue = StringsKt.replaceRange((CharSequence) str, lastIndexOf$default + 1, receiver$0.length(), (CharSequence) replacement).toString();
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static final String replaceAfterLast(@NotNull String receiver$0, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        String str = receiver$0;
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        if (lastIndexOf$default != -1) {
            missingDelimiterValue = StringsKt.replaceRange((CharSequence) str, lastIndexOf$default + delimiter.length(), receiver$0.length(), (CharSequence) replacement).toString();
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static /* synthetic */ String replaceAfterLast$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return StringsKt.replaceAfterLast(str, c, str2, str3);
    }

    @NotNull
    public static /* synthetic */ String replaceAfterLast$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return StringsKt.replaceAfterLast(str, str2, str3, str4);
    }

    @NotNull
    public static final String replaceBefore(@NotNull String receiver$0, char c, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        String str = receiver$0;
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            missingDelimiterValue = StringsKt.replaceRange((CharSequence) str, 0, indexOf$default, (CharSequence) replacement).toString();
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static final String replaceBefore(@NotNull String receiver$0, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        String str = receiver$0;
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            missingDelimiterValue = StringsKt.replaceRange((CharSequence) str, 0, indexOf$default, (CharSequence) replacement).toString();
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static /* synthetic */ String replaceBefore$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return StringsKt.replaceBefore(str, c, str2, str3);
    }

    @NotNull
    public static /* synthetic */ String replaceBefore$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return StringsKt.replaceBefore(str, str2, str3, str4);
    }

    @NotNull
    public static final String replaceBeforeLast(@NotNull String receiver$0, char c, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        String str = receiver$0;
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (lastIndexOf$default != -1) {
            missingDelimiterValue = StringsKt.replaceRange((CharSequence) str, 0, lastIndexOf$default, (CharSequence) replacement).toString();
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static final String replaceBeforeLast(@NotNull String receiver$0, @NotNull String delimiter, @NotNull String replacement, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        String str = receiver$0;
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        if (lastIndexOf$default != -1) {
            missingDelimiterValue = StringsKt.replaceRange((CharSequence) str, 0, lastIndexOf$default, (CharSequence) replacement).toString();
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static /* synthetic */ String replaceBeforeLast$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return StringsKt.replaceBeforeLast(str, c, str2, str3);
    }

    @NotNull
    public static /* synthetic */ String replaceBeforeLast$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return StringsKt.replaceBeforeLast(str, str2, str3, str4);
    }

    @InlineOnly
    private static final String replaceFirst(@NotNull CharSequence charSequence, Regex regex, String str) {
        return regex.replaceFirst(charSequence, str);
    }

    @NotNull
    public static final CharSequence replaceRange(@NotNull CharSequence receiver$0, int i, int i2, @NotNull CharSequence replacement) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        if (i2 < i) {
            throw new IndexOutOfBoundsException("End index (" + i2 + ") is less than start index (" + i + ").");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(receiver$0, 0, i);
        sb.append(replacement);
        sb.append(receiver$0, i2, receiver$0.length());
        return sb;
    }

    @NotNull
    public static final CharSequence replaceRange(@NotNull CharSequence receiver$0, @NotNull IntRange range, @NotNull CharSequence replacement) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(range, "range");
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        return StringsKt.replaceRange(receiver$0, range.getStart().intValue(), range.getEndInclusive().intValue() + 1, replacement);
    }

    @InlineOnly
    private static final String replaceRange(@NotNull String str, int i, int i2, CharSequence charSequence) {
        if (str != null) {
            return StringsKt.replaceRange((CharSequence) str, i, i2, charSequence).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    @InlineOnly
    private static final String replaceRange(@NotNull String str, IntRange intRange, CharSequence charSequence) {
        if (str != null) {
            return StringsKt.replaceRange((CharSequence) str, intRange, charSequence).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    @InlineOnly
    private static final List<String> split(@NotNull CharSequence charSequence, Regex regex, int i) {
        return regex.split(charSequence, i);
    }

    @NotNull
    public static final List<String> split(@NotNull CharSequence receiver$0, @NotNull char[] delimiters, boolean z, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiters, "delimiters");
        if (delimiters.length == 1) {
            return split$StringsKt__StringsKt(receiver$0, String.valueOf(delimiters[0]), z, i);
        }
        Iterable<IntRange> asIterable = SequencesKt.asIterable(rangesDelimitedBy$StringsKt__StringsKt$default(receiver$0, delimiters, 0, z, i, 2, (Object) null));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(asIterable, 10));
        for (IntRange intRange : asIterable) {
            arrayList.add(StringsKt.substring(receiver$0, intRange));
        }
        return arrayList;
    }

    @NotNull
    public static final List<String> split(@NotNull CharSequence receiver$0, @NotNull String[] delimiters, boolean z, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiters, "delimiters");
        if (delimiters.length == 1) {
            boolean z2 = false;
            String str = delimiters[0];
            if (str.length() == 0) {
                z2 = true;
            }
            if (!z2) {
                return split$StringsKt__StringsKt(receiver$0, str, z, i);
            }
        }
        Iterable<IntRange> asIterable = SequencesKt.asIterable(rangesDelimitedBy$StringsKt__StringsKt$default(receiver$0, delimiters, 0, z, i, 2, (Object) null));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(asIterable, 10));
        for (IntRange intRange : asIterable) {
            arrayList.add(StringsKt.substring(receiver$0, intRange));
        }
        return arrayList;
    }

    private static final List<String> split$StringsKt__StringsKt(@NotNull CharSequence charSequence, String str, boolean z, int i) {
        int length;
        int indexOf;
        int i2 = 0;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
        }
        int indexOf2 = StringsKt.indexOf(charSequence, str, 0, z);
        if (indexOf2 == -1 || i == 1) {
            return CollectionsKt.listOf(charSequence.toString());
        }
        boolean z2 = i > 0;
        int i3 = 10;
        if (z2) {
            i3 = RangesKt.coerceAtMost(i, 10);
        }
        ArrayList arrayList = new ArrayList(i3);
        int i4 = indexOf2;
        do {
            arrayList.add(charSequence.subSequence(i2, i4).toString());
            length = str.length() + i4;
            if (z2 && arrayList.size() == i - 1) {
                break;
            }
            indexOf = StringsKt.indexOf(charSequence, str, length, z);
            i2 = length;
            i4 = indexOf;
        } while (indexOf != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    @InlineOnly
    static /* synthetic */ List split$default(CharSequence charSequence, Regex regex, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.split(charSequence, i);
    }

    @NotNull
    public static /* synthetic */ List split$default(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return StringsKt.split(charSequence, cArr, z, i);
    }

    @NotNull
    public static /* synthetic */ List split$default(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return StringsKt.split(charSequence, strArr, z, i);
    }

    @NotNull
    public static final Sequence<String> splitToSequence(@NotNull CharSequence receiver$0, @NotNull char[] delimiters, boolean z, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiters, "delimiters");
        return SequencesKt.map(rangesDelimitedBy$StringsKt__StringsKt$default(receiver$0, delimiters, 0, z, i, 2, (Object) null), new StringsKt__StringsKt$splitToSequence$2(receiver$0));
    }

    @NotNull
    public static final Sequence<String> splitToSequence(@NotNull CharSequence receiver$0, @NotNull String[] delimiters, boolean z, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiters, "delimiters");
        return SequencesKt.map(rangesDelimitedBy$StringsKt__StringsKt$default(receiver$0, delimiters, 0, z, i, 2, (Object) null), new StringsKt__StringsKt$splitToSequence$1(receiver$0));
    }

    @NotNull
    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return StringsKt.splitToSequence(charSequence, cArr, z, i);
    }

    @NotNull
    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return StringsKt.splitToSequence(charSequence, strArr, z, i);
    }

    public static final boolean startsWith(@NotNull CharSequence receiver$0, char c, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        boolean z2 = false;
        if (receiver$0.length() > 0) {
            z2 = false;
            if (CharsKt.equals(receiver$0.charAt(0), c, z)) {
                z2 = true;
            }
        }
        return z2;
    }

    public static final boolean startsWith(@NotNull CharSequence receiver$0, @NotNull CharSequence prefix, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(prefix, "prefix");
        return (z || !(receiver$0 instanceof String) || !(prefix instanceof String)) ? StringsKt.regionMatchesImpl(receiver$0, i, prefix, 0, prefix.length(), z) : StringsKt.startsWith$default((String) receiver$0, (String) prefix, i, false, 4, (Object) null);
    }

    public static final boolean startsWith(@NotNull CharSequence receiver$0, @NotNull CharSequence prefix, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(prefix, "prefix");
        return (z || !(receiver$0 instanceof String) || !(prefix instanceof String)) ? StringsKt.regionMatchesImpl(receiver$0, 0, prefix, 0, prefix.length(), z) : StringsKt.startsWith$default((String) receiver$0, (String) prefix, false, 2, (Object) null);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.startsWith(charSequence, c, z);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt.startsWith(charSequence, charSequence2, i, z);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return StringsKt.startsWith(charSequence, charSequence2, z);
    }

    @NotNull
    public static final CharSequence subSequence(@NotNull CharSequence receiver$0, @NotNull IntRange range) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(range, "range");
        return receiver$0.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
    }

    @Deprecated(message = "Use parameters named startIndex and endIndex.", replaceWith = @ReplaceWith(expression = "subSequence(startIndex = start, endIndex = end)", imports = {}))
    @InlineOnly
    private static final CharSequence subSequence(@NotNull String str, int i, int i2) {
        return str.subSequence(i, i2);
    }

    @InlineOnly
    private static final String substring(@NotNull CharSequence charSequence, int i, int i2) {
        return charSequence.subSequence(i, i2).toString();
    }

    @NotNull
    public static final String substring(@NotNull CharSequence receiver$0, @NotNull IntRange range) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(range, "range");
        return receiver$0.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1).toString();
    }

    @NotNull
    public static final String substring(@NotNull String receiver$0, @NotNull IntRange range) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(range, "range");
        String substring = receiver$0.substring(range.getStart().intValue(), range.getEndInclusive().intValue() + 1);
        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    @InlineOnly
    static /* synthetic */ String substring$default(CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = charSequence.length();
        }
        return charSequence.subSequence(i, i2).toString();
    }

    @NotNull
    public static final String substringAfter(@NotNull String receiver$0, char c, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        int indexOf$default = StringsKt.indexOf$default((CharSequence) receiver$0, c, 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            missingDelimiterValue = receiver$0.substring(indexOf$default + 1, receiver$0.length());
            Intrinsics.checkExpressionValueIsNotNull(missingDelimiterValue, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static final String substringAfter(@NotNull String receiver$0, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        int indexOf$default = StringsKt.indexOf$default((CharSequence) receiver$0, delimiter, 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            missingDelimiterValue = receiver$0.substring(indexOf$default + delimiter.length(), receiver$0.length());
            Intrinsics.checkExpressionValueIsNotNull(missingDelimiterValue, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static /* synthetic */ String substringAfter$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return StringsKt.substringAfter(str, c, str2);
    }

    @NotNull
    public static /* synthetic */ String substringAfter$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return StringsKt.substringAfter(str, str2, str3);
    }

    @NotNull
    public static final String substringAfterLast(@NotNull String receiver$0, char c, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) receiver$0, c, 0, false, 6, (Object) null);
        if (lastIndexOf$default != -1) {
            missingDelimiterValue = receiver$0.substring(lastIndexOf$default + 1, receiver$0.length());
            Intrinsics.checkExpressionValueIsNotNull(missingDelimiterValue, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static final String substringAfterLast(@NotNull String receiver$0, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) receiver$0, delimiter, 0, false, 6, (Object) null);
        if (lastIndexOf$default != -1) {
            missingDelimiterValue = receiver$0.substring(lastIndexOf$default + delimiter.length(), receiver$0.length());
            Intrinsics.checkExpressionValueIsNotNull(missingDelimiterValue, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static /* synthetic */ String substringAfterLast$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return StringsKt.substringAfterLast(str, c, str2);
    }

    @NotNull
    public static /* synthetic */ String substringAfterLast$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return StringsKt.substringAfterLast(str, str2, str3);
    }

    @NotNull
    public static final String substringBefore(@NotNull String receiver$0, char c, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        int indexOf$default = StringsKt.indexOf$default((CharSequence) receiver$0, c, 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            missingDelimiterValue = receiver$0.substring(0, indexOf$default);
            Intrinsics.checkExpressionValueIsNotNull(missingDelimiterValue, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static final String substringBefore(@NotNull String receiver$0, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        int indexOf$default = StringsKt.indexOf$default((CharSequence) receiver$0, delimiter, 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            missingDelimiterValue = receiver$0.substring(0, indexOf$default);
            Intrinsics.checkExpressionValueIsNotNull(missingDelimiterValue, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static /* synthetic */ String substringBefore$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return StringsKt.substringBefore(str, c, str2);
    }

    @NotNull
    public static /* synthetic */ String substringBefore$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return StringsKt.substringBefore(str, str2, str3);
    }

    @NotNull
    public static final String substringBeforeLast(@NotNull String receiver$0, char c, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) receiver$0, c, 0, false, 6, (Object) null);
        if (lastIndexOf$default != -1) {
            missingDelimiterValue = receiver$0.substring(0, lastIndexOf$default);
            Intrinsics.checkExpressionValueIsNotNull(missingDelimiterValue, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static final String substringBeforeLast(@NotNull String receiver$0, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) receiver$0, delimiter, 0, false, 6, (Object) null);
        if (lastIndexOf$default != -1) {
            missingDelimiterValue = receiver$0.substring(0, lastIndexOf$default);
            Intrinsics.checkExpressionValueIsNotNull(missingDelimiterValue, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static /* synthetic */ String substringBeforeLast$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return StringsKt.substringBeforeLast(str, c, str2);
    }

    @NotNull
    public static /* synthetic */ String substringBeforeLast$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return StringsKt.substringBeforeLast(str, str2, str3);
    }

    @NotNull
    public static final CharSequence trim(@NotNull CharSequence receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        int length = receiver$0.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean isWhitespace = CharsKt.isWhitespace(receiver$0.charAt(!z ? i : length));
            if (!z) {
                if (!isWhitespace) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!isWhitespace) {
                break;
            } else {
                length--;
            }
        }
        return receiver$0.subSequence(i, length + 1);
    }

    @NotNull
    public static final CharSequence trim(@NotNull CharSequence receiver$0, @NotNull Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int length = receiver$0.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean booleanValue = predicate.invoke(Character.valueOf(receiver$0.charAt(!z ? i : length))).booleanValue();
            if (!z) {
                if (!booleanValue) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!booleanValue) {
                break;
            } else {
                length--;
            }
        }
        return receiver$0.subSequence(i, length + 1);
    }

    @NotNull
    public static final CharSequence trim(@NotNull CharSequence receiver$0, @NotNull char... chars) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(chars, "chars");
        int length = receiver$0.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean contains = ArraysKt.contains(chars, receiver$0.charAt(!z ? i : length));
            if (!z) {
                if (!contains) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!contains) {
                break;
            } else {
                length--;
            }
        }
        return receiver$0.subSequence(i, length + 1);
    }

    @InlineOnly
    private static final String trim(@NotNull String str) {
        if (str != null) {
            return StringsKt.trim((CharSequence) str).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    @NotNull
    public static final String trim(@NotNull String receiver$0, @NotNull Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        String str = receiver$0;
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean booleanValue = predicate.invoke(Character.valueOf(str.charAt(!z ? i : length))).booleanValue();
            if (!z) {
                if (!booleanValue) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!booleanValue) {
                break;
            } else {
                length--;
            }
        }
        return str.subSequence(i, length + 1).toString();
    }

    @NotNull
    public static final String trim(@NotNull String receiver$0, @NotNull char... chars) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(chars, "chars");
        String str = receiver$0;
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean contains = ArraysKt.contains(chars, str.charAt(!z ? i : length));
            if (!z) {
                if (!contains) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!contains) {
                break;
            } else {
                length--;
            }
        }
        return str.subSequence(i, length + 1).toString();
    }

    @NotNull
    public static final CharSequence trimEnd(@NotNull CharSequence receiver$0) {
        CharSequence charSequence;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        int length = receiver$0.length();
        while (true) {
            int i = length - 1;
            if (i < 0) {
                break;
            }
            length = i;
            if (!CharsKt.isWhitespace(receiver$0.charAt(i))) {
                charSequence = receiver$0.subSequence(0, i + 1);
                break;
            }
        }
        return charSequence;
    }

    @NotNull
    public static final CharSequence trimEnd(@NotNull CharSequence receiver$0, @NotNull Function1<? super Character, Boolean> predicate) {
        int i;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int length = receiver$0.length();
        do {
            i = length - 1;
            if (i < 0) {
                return "";
            }
            length = i;
        } while (predicate.invoke(Character.valueOf(receiver$0.charAt(i))).booleanValue());
        return receiver$0.subSequence(0, i + 1);
    }

    @NotNull
    public static final CharSequence trimEnd(@NotNull CharSequence receiver$0, @NotNull char... chars) {
        CharSequence charSequence;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(chars, "chars");
        int length = receiver$0.length();
        while (true) {
            int i = length - 1;
            if (i < 0) {
                break;
            }
            length = i;
            if (!ArraysKt.contains(chars, receiver$0.charAt(i))) {
                charSequence = receiver$0.subSequence(0, i + 1);
                break;
            }
        }
        return charSequence;
    }

    @InlineOnly
    private static final String trimEnd(@NotNull String str) {
        if (str != null) {
            return StringsKt.trimEnd((CharSequence) str).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    @NotNull
    public static final String trimEnd(@NotNull String receiver$0, @NotNull Function1<? super Character, Boolean> predicate) {
        String str;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        String str2 = receiver$0;
        int length = str2.length();
        while (true) {
            int i = length - 1;
            if (i < 0) {
                break;
            }
            length = i;
            if (!predicate.invoke(Character.valueOf(str2.charAt(i))).booleanValue()) {
                str = str2.subSequence(0, i + 1);
                break;
            }
        }
        return str.toString();
    }

    @NotNull
    public static final String trimEnd(@NotNull String receiver$0, @NotNull char... chars) {
        String str;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(chars, "chars");
        String str2 = receiver$0;
        int length = str2.length();
        while (true) {
            int i = length - 1;
            if (i < 0) {
                break;
            }
            length = i;
            if (!ArraysKt.contains(chars, str2.charAt(i))) {
                str = str2.subSequence(0, i + 1);
                break;
            }
        }
        return str.toString();
    }

    @NotNull
    public static final CharSequence trimStart(@NotNull CharSequence receiver$0) {
        CharSequence charSequence;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        int length = receiver$0.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if (!CharsKt.isWhitespace(receiver$0.charAt(i))) {
                charSequence = receiver$0.subSequence(i, receiver$0.length());
                break;
            } else {
                i++;
            }
        }
        return charSequence;
    }

    @NotNull
    public static final CharSequence trimStart(@NotNull CharSequence receiver$0, @NotNull Function1<? super Character, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int length = receiver$0.length();
        for (int i = 0; i < length; i++) {
            if (!predicate.invoke(Character.valueOf(receiver$0.charAt(i))).booleanValue()) {
                return receiver$0.subSequence(i, receiver$0.length());
            }
        }
        return "";
    }

    @NotNull
    public static final CharSequence trimStart(@NotNull CharSequence receiver$0, @NotNull char... chars) {
        CharSequence charSequence;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(chars, "chars");
        int length = receiver$0.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if (!ArraysKt.contains(chars, receiver$0.charAt(i))) {
                charSequence = receiver$0.subSequence(i, receiver$0.length());
                break;
            } else {
                i++;
            }
        }
        return charSequence;
    }

    @InlineOnly
    private static final String trimStart(@NotNull String str) {
        if (str != null) {
            return StringsKt.trimStart((CharSequence) str).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    @NotNull
    public static final String trimStart(@NotNull String receiver$0, @NotNull Function1<? super Character, Boolean> predicate) {
        String str;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        String str2 = receiver$0;
        int length = str2.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if (!predicate.invoke(Character.valueOf(str2.charAt(i))).booleanValue()) {
                str = str2.subSequence(i, str2.length());
                break;
            } else {
                i++;
            }
        }
        return str.toString();
    }

    @NotNull
    public static final String trimStart(@NotNull String receiver$0, @NotNull char... chars) {
        String str;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(chars, "chars");
        String str2 = receiver$0;
        int length = str2.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if (!ArraysKt.contains(chars, str2.charAt(i))) {
                str = str2.subSequence(i, str2.length());
                break;
            } else {
                i++;
            }
        }
        return str.toString();
    }
}
