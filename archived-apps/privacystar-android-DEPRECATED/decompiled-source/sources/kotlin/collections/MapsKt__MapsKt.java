package kotlin.collections;

import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.TypeCastException;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��~\n��\n\u0002\u0010\b\n��\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010%\n��\n\u0002\u0010&\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010(\n\u0002\u0010)\n\u0002\u0010'\n\u0002\b\n\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0016\u001a\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005\u001a1\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0007j\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005`\b\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005H\u0087\b\u001a_\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0007j\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005`\b\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u00052*\u0010\t\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0\n\"\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b¢\u0006\u0002\u0010\f\u001a1\u0010\r\u001a\u001e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000ej\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005`\u000f\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005H\u0087\b\u001a_\u0010\r\u001a\u001e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000ej\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005`\u000f\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u00052*\u0010\t\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0\n\"\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b¢\u0006\u0002\u0010\u0010\u001a\u0010\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0001\u001a!\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005H\u0087\b\u001aO\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u00052*\u0010\t\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0\n\"\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b¢\u0006\u0002\u0010\u0014\u001a!\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0016\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005H\u0087\b\u001aO\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0016\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u00052*\u0010\t\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0\n\"\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b¢\u0006\u0002\u0010\u0014\u001a*\u0010\u0017\u001a\u0002H\u0004\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0018H\u0087\n¢\u0006\u0002\u0010\u0019\u001a*\u0010\u001a\u001a\u0002H\u0005\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0018H\u0087\n¢\u0006\u0002\u0010\u0019\u001a9\u0010\u001b\u001a\u00020\u001c\"\t\b��\u0010\u0004¢\u0006\u0002\b\u001d\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0006\u0010\u001e\u001a\u0002H\u0004H\u0087\n¢\u0006\u0002\u0010\u001f\u001a1\u0010 \u001a\u00020\u001c\"\t\b��\u0010\u0004¢\u0006\u0002\b\u001d*\u000e\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0002\b\u00030\u00032\u0006\u0010\u001e\u001a\u0002H\u0004H\u0087\b¢\u0006\u0002\u0010\u001f\u001a7\u0010!\u001a\u00020\u001c\"\u0004\b��\u0010\u0004\"\t\b\u0001\u0010\u0005¢\u0006\u0002\b\u001d*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0006\u0010\"\u001a\u0002H\u0005H\u0087\b¢\u0006\u0002\u0010\u001f\u001aS\u0010#\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u001e\u0010$\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0018\u0012\u0004\u0012\u00020\u001c0%H\u0086\b\u001aG\u0010&\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u00020\u001c0%H\u0086\b\u001aS\u0010'\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u001e\u0010$\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0018\u0012\u0004\u0012\u00020\u001c0%H\u0086\b\u001an\u0010(\u001a\u0002H)\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005\"\u0018\b\u0002\u0010)*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u0016*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0006\u0010*\u001a\u0002H)2\u001e\u0010$\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0018\u0012\u0004\u0012\u00020\u001c0%H\u0086\b¢\u0006\u0002\u0010+\u001an\u0010,\u001a\u0002H)\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005\"\u0018\b\u0002\u0010)*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u0016*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0006\u0010*\u001a\u0002H)2\u001e\u0010$\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0018\u0012\u0004\u0012\u00020\u001c0%H\u0086\b¢\u0006\u0002\u0010+\u001aG\u0010-\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u00020\u001c0%H\u0086\b\u001a;\u0010.\u001a\u0004\u0018\u0001H\u0005\"\t\b��\u0010\u0004¢\u0006\u0002\b\u001d\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0006\u0010\u001e\u001a\u0002H\u0004H\u0087\n¢\u0006\u0002\u0010/\u001a@\u00100\u001a\u0002H\u0005\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0006\u0010\u001e\u001a\u0002H\u00042\f\u00101\u001a\b\u0012\u0004\u0012\u0002H\u000502H\u0087\b¢\u0006\u0002\u00103\u001a@\u00104\u001a\u0002H\u0005\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0006\u0010\u001e\u001a\u0002H\u00042\f\u00101\u001a\b\u0012\u0004\u0012\u0002H\u000502H\u0080\b¢\u0006\u0002\u00103\u001a@\u00105\u001a\u0002H\u0005\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00162\u0006\u0010\u001e\u001a\u0002H\u00042\f\u00101\u001a\b\u0012\u0004\u0012\u0002H\u000502H\u0086\b¢\u0006\u0002\u00103\u001a1\u00106\u001a\u0002H\u0005\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0006\u0010\u001e\u001a\u0002H\u0004H\u0007¢\u0006\u0002\u0010/\u001a<\u00107\u001a\u0002H8\"\u0014\b��\u0010)*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003*\u0002H8\"\u0004\b\u0001\u00108*\u0002H)2\f\u00101\u001a\b\u0012\u0004\u0012\u0002H802H\u0087\b¢\u0006\u0002\u00109\u001a'\u0010:\u001a\u00020\u001c\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003H\u0087\b\u001a:\u0010;\u001a\u00020\u001c\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0012\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005\u0018\u00010\u0003H\u0087\b\u0082\u0002\u000e\n\f\b��\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010��\u001a9\u0010<\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00180=\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003H\u0087\n\u001a<\u0010<\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050?0>\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0016H\u0087\n¢\u0006\u0002\b@\u001aY\u0010A\u001a\u000e\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005\"\u0004\b\u0002\u00108*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u001e\u0010B\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0018\u0012\u0004\u0012\u0002H80%H\u0086\b\u001at\u0010C\u001a\u0002H)\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005\"\u0004\b\u0002\u00108\"\u0018\b\u0003\u0010)*\u0012\u0012\u0006\b��\u0012\u0002H8\u0012\u0006\b��\u0012\u0002H\u00050\u0016*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0006\u0010*\u001a\u0002H)2\u001e\u0010B\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0018\u0012\u0004\u0012\u0002H80%H\u0086\b¢\u0006\u0002\u0010+\u001aY\u0010D\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H80\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005\"\u0004\b\u0002\u00108*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u001e\u0010B\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0018\u0012\u0004\u0012\u0002H80%H\u0086\b\u001at\u0010E\u001a\u0002H)\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005\"\u0004\b\u0002\u00108\"\u0018\b\u0003\u0010)*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H80\u0016*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0006\u0010*\u001a\u0002H)2\u001e\u0010B\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0018\u0012\u0004\u0012\u0002H80%H\u0086\b¢\u0006\u0002\u0010+\u001a@\u0010F\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0006\u0010\u001e\u001a\u0002H\u0004H\u0087\u0002¢\u0006\u0002\u0010G\u001aH\u0010F\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u000e\u0010H\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00040\nH\u0087\u0002¢\u0006\u0002\u0010I\u001aA\u0010F\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\f\u0010H\u001a\b\u0012\u0004\u0012\u0002H\u00040JH\u0087\u0002\u001aA\u0010F\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\f\u0010H\u001a\b\u0012\u0004\u0012\u0002H\u00040KH\u0087\u0002\u001a2\u0010L\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00162\u0006\u0010\u001e\u001a\u0002H\u0004H\u0087\n¢\u0006\u0002\u0010N\u001a:\u0010L\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00162\u000e\u0010H\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00040\nH\u0087\n¢\u0006\u0002\u0010O\u001a3\u0010L\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00162\f\u0010H\u001a\b\u0012\u0004\u0012\u0002H\u00040JH\u0087\n\u001a3\u0010L\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00162\f\u0010H\u001a\b\u0012\u0004\u0012\u0002H\u00040KH\u0087\n\u001a0\u0010P\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003H��\u001a3\u0010Q\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005\u0018\u00010\u0003H\u0087\b\u001aT\u0010R\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u001a\u0010\t\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0\nH\u0086\u0002¢\u0006\u0002\u0010S\u001aG\u0010R\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0012\u0010T\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000bH\u0086\u0002\u001aM\u0010R\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0018\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0JH\u0086\u0002\u001aI\u0010R\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0014\u0010U\u001a\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003H\u0086\u0002\u001aM\u0010R\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0018\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0KH\u0086\u0002\u001aJ\u0010V\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u00162\u001a\u0010\t\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0\nH\u0087\n¢\u0006\u0002\u0010W\u001a=\u0010V\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u00162\u0012\u0010T\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000bH\u0087\n\u001aC\u0010V\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u00162\u0018\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0JH\u0087\n\u001a=\u0010V\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u00162\u0012\u0010U\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003H\u0087\n\u001aC\u0010V\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u00162\u0018\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0KH\u0087\n\u001aG\u0010X\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u00162\u001a\u0010\t\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0\n¢\u0006\u0002\u0010W\u001a@\u0010X\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u00162\u0018\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0J\u001a@\u0010X\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u00162\u0018\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0K\u001a;\u0010Y\u001a\u0004\u0018\u0001H\u0005\"\t\b��\u0010\u0004¢\u0006\u0002\b\u001d\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00162\u0006\u0010\u001e\u001a\u0002H\u0004H\u0087\b¢\u0006\u0002\u0010/\u001a:\u0010Z\u001a\u00020M\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00162\u0006\u0010\u001e\u001a\u0002H\u00042\u0006\u0010\"\u001a\u0002H\u0005H\u0087\n¢\u0006\u0002\u0010[\u001a;\u0010\\\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0\n¢\u0006\u0002\u0010\u0014\u001aQ\u0010\\\u001a\u0002H)\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005\"\u0018\b\u0002\u0010)*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u0016*\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0\n2\u0006\u0010*\u001a\u0002H)¢\u0006\u0002\u0010]\u001a4\u0010\\\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0J\u001aO\u0010\\\u001a\u0002H)\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005\"\u0018\b\u0002\u0010)*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u0016*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0J2\u0006\u0010*\u001a\u0002H)¢\u0006\u0002\u0010^\u001a2\u0010\\\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003H\u0007\u001aM\u0010\\\u001a\u0002H)\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005\"\u0018\b\u0002\u0010)*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u0016*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00032\u0006\u0010*\u001a\u0002H)H\u0007¢\u0006\u0002\u0010_\u001a4\u0010\\\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0K\u001aO\u0010\\\u001a\u0002H)\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005\"\u0018\b\u0002\u0010)*\u0012\u0012\u0006\b��\u0012\u0002H\u0004\u0012\u0006\b��\u0012\u0002H\u00050\u0016*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b0K2\u0006\u0010*\u001a\u0002H)¢\u0006\u0002\u0010`\u001a2\u0010a\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0016\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u0010\u0012\u0006\b\u0001\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003H\u0007\u001a1\u0010b\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u000b\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0018H\u0087\b\"\u000e\u0010��\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��¨\u0006c"}, m254d2 = {"INT_MAX_POWER_OF_TWO", "", "emptyMap", "", "K", "V", "hashMapOf", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "pairs", "", "Lkotlin/Pair;", "([Lkotlin/Pair;)Ljava/util/HashMap;", "linkedMapOf", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "([Lkotlin/Pair;)Ljava/util/LinkedHashMap;", "mapCapacity", "expectedSize", "mapOf", "([Lkotlin/Pair;)Ljava/util/Map;", "mutableMapOf", "", "component1", "", "(Ljava/util/Map$Entry;)Ljava/lang/Object;", "component2", "contains", "", "Lkotlin/internal/OnlyInputTypes;", "key", "(Ljava/util/Map;Ljava/lang/Object;)Z", "containsKey", "containsValue", FirebaseAnalytics.Param.VALUE, "filter", "predicate", "Lkotlin/Function1;", "filterKeys", "filterNot", "filterNotTo", "M", FirebaseAnalytics.Param.DESTINATION, "(Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;", "filterTo", "filterValues", "get", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;", "getOrElse", "defaultValue", "Lkotlin/Function0;", "(Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "getOrElseNullable", "getOrPut", "getValue", "ifEmpty", "R", "(Ljava/util/Map;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "isNotEmpty", "isNullOrEmpty", "iterator", "", "", "", "mutableIterator", "mapKeys", "transform", "mapKeysTo", "mapValues", "mapValuesTo", "minus", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;", "keys", "(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;", "", "Lkotlin/sequences/Sequence;", "minusAssign", "", "(Ljava/util/Map;Ljava/lang/Object;)V", "(Ljava/util/Map;[Ljava/lang/Object;)V", "optimizeReadOnlyMap", "orEmpty", "plus", "(Ljava/util/Map;[Lkotlin/Pair;)Ljava/util/Map;", "pair", "map", "plusAssign", "(Ljava/util/Map;[Lkotlin/Pair;)V", "putAll", ProductAction.ACTION_REMOVE, "set", "(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V", "toMap", "([Lkotlin/Pair;Ljava/util/Map;)Ljava/util/Map;", "(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/Map;", "(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;", "(Lkotlin/sequences/Sequence;Ljava/util/Map;)Ljava/util/Map;", "toMutableMap", "toPair", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/collections/MapsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/MapsKt__MapsKt.class */
public class MapsKt__MapsKt extends MapsKt__MapsJVMKt {
    private static final int INT_MAX_POWER_OF_TWO = 1073741824;

    @InlineOnly
    private static final <K, V> K component1(@NotNull Map.Entry<? extends K, ? extends V> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return (K) receiver$0.getKey();
    }

    @InlineOnly
    private static final <K, V> V component2(@NotNull Map.Entry<? extends K, ? extends V> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return (V) receiver$0.getValue();
    }

    @InlineOnly
    private static final <K, V> boolean contains(@NotNull Map<? extends K, ? extends V> receiver$0, K k) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.containsKey(k);
    }

    @InlineOnly
    private static final <K> boolean containsKey(@NotNull Map<? extends K, ?> map, K k) {
        if (map != null) {
            return map.containsKey(k);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Map<K, *>");
    }

    @InlineOnly
    private static final <K, V> boolean containsValue(@NotNull Map<K, ? extends V> map, V v) {
        return map.containsValue(v);
    }

    @NotNull
    public static final <K, V> Map<K, V> emptyMap() {
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (emptyMap != null) {
            return emptyMap;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Map<K, V>");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> Map<K, V> filter(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : receiver$0.entrySet()) {
            if (predicate.invoke(entry).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> Map<K, V> filterKeys(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Function1<? super K, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : receiver$0.entrySet()) {
            if (predicate.invoke((Object) entry.getKey()).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> Map<K, V> filterNot(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : receiver$0.entrySet()) {
            if (!predicate.invoke(entry).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M filterNotTo(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull M destination, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (Map.Entry<? extends K, ? extends V> entry : receiver$0.entrySet()) {
            if (!predicate.invoke(entry).booleanValue()) {
                destination.put(entry.getKey(), entry.getValue());
            }
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M filterTo(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull M destination, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        for (Map.Entry<? extends K, ? extends V> entry : receiver$0.entrySet()) {
            if (predicate.invoke(entry).booleanValue()) {
                destination.put(entry.getKey(), entry.getValue());
            }
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> Map<K, V> filterValues(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Function1<? super V, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : receiver$0.entrySet()) {
            if (predicate.invoke((Object) entry.getValue()).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @InlineOnly
    private static final <K, V> V get(@NotNull Map<? extends K, ? extends V> receiver$0, K k) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return (V) receiver$0.get(k);
    }

    @InlineOnly
    private static final <K, V> V getOrElse(@NotNull Map<K, ? extends V> map, K k, Function0<? extends V> function0) {
        V v = (V) map.get(k);
        if (v == null) {
            v = (V) function0.invoke();
        }
        return v;
    }

    public static final <K, V> V getOrElseNullable(@NotNull Map<K, ? extends V> receiver$0, K k, @NotNull Function0<? extends V> defaultValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(defaultValue, "defaultValue");
        V v = (V) receiver$0.get(k);
        return (v != null || receiver$0.containsKey(k)) ? v : (V) defaultValue.invoke();
    }

    public static final <K, V> V getOrPut(@NotNull Map<K, V> receiver$0, K k, @NotNull Function0<? extends V> defaultValue) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(defaultValue, "defaultValue");
        V v = receiver$0.get(k);
        V v2 = v;
        if (v == null) {
            v2 = (V) defaultValue.invoke();
            receiver$0.put(k, v2);
        }
        return v2;
    }

    @SinceKotlin(version = "1.1")
    public static final <K, V> V getValue(@NotNull Map<K, ? extends V> receiver$0, K k) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return (V) MapsKt.getOrImplicitDefaultNullable(receiver$0, k);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> HashMap<K, V> hashMapOf() {
        return new HashMap<>();
    }

    @NotNull
    public static final <K, V> HashMap<K, V> hashMapOf(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        HashMap<K, V> hashMap = new HashMap<>(MapsKt.mapCapacity(pairs.length));
        MapsKt.putAll(hashMap, pairs);
        return hashMap;
    }

    /* JADX WARN: Incorrect types in method signature: <M::Ljava/util/Map<**>;:TR;R:Ljava/lang/Object;>(TM;Lkotlin/jvm/functions/Function0<+TR;>;)TR; */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final Object ifEmpty(Map map, Function0 function0) {
        Object obj = map;
        if (map.isEmpty()) {
            obj = function0.invoke();
        }
        return obj;
    }

    @InlineOnly
    private static final <K, V> boolean isNotEmpty(@NotNull Map<? extends K, ? extends V> map) {
        return !map.isEmpty();
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <K, V> boolean isNullOrEmpty(@Nullable Map<? extends K, ? extends V> map) {
        return map == null || map.isEmpty();
    }

    @InlineOnly
    private static final <K, V> Iterator<Map.Entry<K, V>> iterator(@NotNull Map<? extends K, ? extends V> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return (Iterator<Map.Entry<? extends K, ? extends V>>) receiver$0.entrySet().iterator();
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> LinkedHashMap<K, V> linkedMapOf() {
        return new LinkedHashMap<>();
    }

    @NotNull
    public static final <K, V> LinkedHashMap<K, V> linkedMapOf(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        return (LinkedHashMap) MapsKt.toMap(pairs, new LinkedHashMap(MapsKt.mapCapacity(pairs.length)));
    }

    @PublishedApi
    public static final int mapCapacity(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return i + (i / 3);
        }
        return Integer.MAX_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V, R> Map<R, V> mapKeys(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(receiver$0.size()));
        for (Object obj : receiver$0.entrySet()) {
            linkedHashMap.put(transform.invoke(obj), ((Map.Entry) obj).getValue());
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V, R, M extends Map<? super R, ? super V>> M mapKeysTo(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull M destination, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        for (Object obj : receiver$0.entrySet()) {
            destination.put(transform.invoke(obj), ((Map.Entry) obj).getValue());
        }
        return destination;
    }

    @InlineOnly
    private static final <K, V> Map<K, V> mapOf() {
        return MapsKt.emptyMap();
    }

    @NotNull
    public static final <K, V> Map<K, V> mapOf(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        return pairs.length > 0 ? MapsKt.toMap(pairs, new LinkedHashMap(MapsKt.mapCapacity(pairs.length))) : MapsKt.emptyMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V, R> Map<K, R> mapValues(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(receiver$0.size()));
        for (Object obj : receiver$0.entrySet()) {
            linkedHashMap.put(((Map.Entry) obj).getKey(), transform.invoke(obj));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V, R, M extends Map<? super K, ? super R>> M mapValuesTo(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull M destination, @NotNull Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        for (Object obj : receiver$0.entrySet()) {
            destination.put(((Map.Entry) obj).getKey(), transform.invoke(obj));
        }
        return destination;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> minus(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Iterable<? extends K> keys) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(keys, "keys");
        Map mutableMap = MapsKt.toMutableMap(receiver$0);
        CollectionsKt.removeAll(mutableMap.keySet(), keys);
        return MapsKt.optimizeReadOnlyMap(mutableMap);
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> minus(@NotNull Map<? extends K, ? extends V> receiver$0, K k) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Map mutableMap = MapsKt.toMutableMap(receiver$0);
        mutableMap.remove(k);
        return MapsKt.optimizeReadOnlyMap(mutableMap);
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> minus(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Sequence<? extends K> keys) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(keys, "keys");
        Map mutableMap = MapsKt.toMutableMap(receiver$0);
        CollectionsKt.removeAll(mutableMap.keySet(), keys);
        return MapsKt.optimizeReadOnlyMap(mutableMap);
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> minus(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull K[] keys) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(keys, "keys");
        Map mutableMap = MapsKt.toMutableMap(receiver$0);
        CollectionsKt.removeAll(mutableMap.keySet(), keys);
        return MapsKt.optimizeReadOnlyMap(mutableMap);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> void minusAssign(@NotNull Map<K, V> receiver$0, Iterable<? extends K> iterable) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        CollectionsKt.removeAll(receiver$0.keySet(), iterable);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> void minusAssign(@NotNull Map<K, V> receiver$0, K k) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        receiver$0.remove(k);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> void minusAssign(@NotNull Map<K, V> receiver$0, Sequence<? extends K> sequence) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        CollectionsKt.removeAll(receiver$0.keySet(), sequence);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> void minusAssign(@NotNull Map<K, V> receiver$0, K[] kArr) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        CollectionsKt.removeAll(receiver$0.keySet(), kArr);
    }

    @InlineOnly
    @JvmName(name = "mutableIterator")
    private static final <K, V> Iterator<Map.Entry<K, V>> mutableIterator(@NotNull Map<K, V> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return receiver$0.entrySet().iterator();
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <K, V> Map<K, V> mutableMapOf() {
        return new LinkedHashMap();
    }

    @NotNull
    public static final <K, V> Map<K, V> mutableMapOf(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(pairs.length));
        MapsKt.putAll(linkedHashMap, pairs);
        return linkedHashMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> optimizeReadOnlyMap(@NotNull Map<K, ? extends V> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        int size = receiver$0.size();
        Object obj = receiver$0;
        switch (size) {
            case 0:
                obj = (Map<K, V>) MapsKt.emptyMap();
                break;
            case 1:
                obj = (Map<K, V>) MapsKt.toSingletonMap(receiver$0);
                break;
        }
        return (Map<K, V>) obj;
    }

    @InlineOnly
    private static final <K, V> Map<K, V> orEmpty(@Nullable Map<K, ? extends V> map) {
        Object obj = map;
        if (map == null) {
            obj = (Map<K, V>) MapsKt.emptyMap();
        }
        return (Map<K, V>) obj;
    }

    @NotNull
    public static final <K, V> Map<K, V> plus(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Iterable<? extends Pair<? extends K, ? extends V>> pairs) {
        LinkedHashMap linkedHashMap;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        if (receiver$0.isEmpty()) {
            linkedHashMap = MapsKt.toMap(pairs);
        } else {
            linkedHashMap = new LinkedHashMap(receiver$0);
            MapsKt.putAll(linkedHashMap, pairs);
        }
        return linkedHashMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> plus(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(map, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(receiver$0);
        linkedHashMap.putAll(map);
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> Map<K, V> plus(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Pair<? extends K, ? extends V> pair) {
        LinkedHashMap linkedHashMap;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(pair, "pair");
        if (receiver$0.isEmpty()) {
            linkedHashMap = MapsKt.mapOf(pair);
        } else {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(receiver$0);
            linkedHashMap2.put(pair.getFirst(), pair.getSecond());
            linkedHashMap = linkedHashMap2;
        }
        return linkedHashMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> plus(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Sequence<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(receiver$0);
        MapsKt.putAll(linkedHashMap, pairs);
        return MapsKt.optimizeReadOnlyMap(linkedHashMap);
    }

    @NotNull
    public static final <K, V> Map<K, V> plus(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull Pair<? extends K, ? extends V>[] pairs) {
        LinkedHashMap linkedHashMap;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        if (receiver$0.isEmpty()) {
            linkedHashMap = MapsKt.toMap(pairs);
        } else {
            linkedHashMap = new LinkedHashMap(receiver$0);
            MapsKt.putAll(linkedHashMap, pairs);
        }
        return linkedHashMap;
    }

    @InlineOnly
    private static final <K, V> void plusAssign(@NotNull Map<? super K, ? super V> receiver$0, Iterable<? extends Pair<? extends K, ? extends V>> iterable) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        MapsKt.putAll(receiver$0, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final <K, V> void plusAssign(@NotNull Map<? super K, ? super V> receiver$0, Map<K, ? extends V> map) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        receiver$0.putAll(map);
    }

    @InlineOnly
    private static final <K, V> void plusAssign(@NotNull Map<? super K, ? super V> receiver$0, Pair<? extends K, ? extends V> pair) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        receiver$0.put((Object) pair.getFirst(), (Object) pair.getSecond());
    }

    @InlineOnly
    private static final <K, V> void plusAssign(@NotNull Map<? super K, ? super V> receiver$0, Sequence<? extends Pair<? extends K, ? extends V>> sequence) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        MapsKt.putAll(receiver$0, sequence);
    }

    @InlineOnly
    private static final <K, V> void plusAssign(@NotNull Map<? super K, ? super V> receiver$0, Pair<? extends K, ? extends V>[] pairArr) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        MapsKt.putAll(receiver$0, pairArr);
    }

    public static final <K, V> void putAll(@NotNull Map<? super K, ? super V> receiver$0, @NotNull Iterable<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        Iterator<? extends Pair<? extends K, ? extends V>> it = pairs.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            receiver$0.put((Object) pair.component1(), (Object) pair.component2());
        }
    }

    public static final <K, V> void putAll(@NotNull Map<? super K, ? super V> receiver$0, @NotNull Sequence<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        Iterator<? extends Pair<? extends K, ? extends V>> it = pairs.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            receiver$0.put((Object) pair.component1(), (Object) pair.component2());
        }
    }

    public static final <K, V> void putAll(@NotNull Map<? super K, ? super V> receiver$0, @NotNull Pair<? extends K, ? extends V>[] pairs) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            receiver$0.put((Object) pair.component1(), (Object) pair.component2());
        }
    }

    @InlineOnly
    private static final <K, V> V remove(@NotNull Map<? extends K, V> map, K k) {
        if (map != null) {
            return (V) TypeIntrinsics.asMutableMap(map).remove(k);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>");
    }

    @InlineOnly
    private static final <K, V> void set(@NotNull Map<K, V> receiver$0, K k, V v) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        receiver$0.put(k, v);
    }

    @NotNull
    public static final <K, V> Map<K, V> toMap(@NotNull Iterable<? extends Pair<? extends K, ? extends V>> receiver$0) {
        Map<K, V> map;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        if (!(receiver$0 instanceof Collection)) {
            return MapsKt.optimizeReadOnlyMap(MapsKt.toMap(receiver$0, new LinkedHashMap()));
        }
        Collection collection = (Collection) receiver$0;
        switch (collection.size()) {
            case 0:
                map = MapsKt.emptyMap();
                break;
            case 1:
                map = MapsKt.mapOf((Pair) (receiver$0 instanceof List ? ((List) receiver$0).get(0) : receiver$0.iterator().next()));
                break;
            default:
                map = MapsKt.toMap(receiver$0, new LinkedHashMap(MapsKt.mapCapacity(collection.size())));
                break;
        }
        return map;
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(@NotNull Iterable<? extends Pair<? extends K, ? extends V>> receiver$0, @NotNull M destination) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        MapsKt.putAll(destination, receiver$0);
        return destination;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> toMap(@NotNull Map<? extends K, ? extends V> receiver$0) {
        Map<K, V> map;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        switch (receiver$0.size()) {
            case 0:
                map = MapsKt.emptyMap();
                break;
            case 1:
                map = MapsKt.toSingletonMap(receiver$0);
                break;
            default:
                map = MapsKt.toMutableMap(receiver$0);
                break;
        }
        return map;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(@NotNull Map<? extends K, ? extends V> receiver$0, @NotNull M destination) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        destination.putAll(receiver$0);
        return destination;
    }

    @NotNull
    public static final <K, V> Map<K, V> toMap(@NotNull Sequence<? extends Pair<? extends K, ? extends V>> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return MapsKt.optimizeReadOnlyMap(MapsKt.toMap(receiver$0, new LinkedHashMap()));
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(@NotNull Sequence<? extends Pair<? extends K, ? extends V>> receiver$0, @NotNull M destination) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        MapsKt.putAll(destination, receiver$0);
        return destination;
    }

    @NotNull
    public static final <K, V> Map<K, V> toMap(@NotNull Pair<? extends K, ? extends V>[] receiver$0) {
        Map<K, V> map;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        switch (receiver$0.length) {
            case 0:
                map = MapsKt.emptyMap();
                break;
            case 1:
                map = MapsKt.mapOf(receiver$0[0]);
                break;
            default:
                map = MapsKt.toMap(receiver$0, new LinkedHashMap(MapsKt.mapCapacity(receiver$0.length)));
                break;
        }
        return map;
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(@NotNull Pair<? extends K, ? extends V>[] receiver$0, @NotNull M destination) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        MapsKt.putAll(destination, receiver$0);
        return destination;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> toMutableMap(@NotNull Map<? extends K, ? extends V> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return new LinkedHashMap(receiver$0);
    }

    @InlineOnly
    private static final <K, V> Pair<K, V> toPair(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        return new Pair<>(entry.getKey(), entry.getValue());
    }
}
