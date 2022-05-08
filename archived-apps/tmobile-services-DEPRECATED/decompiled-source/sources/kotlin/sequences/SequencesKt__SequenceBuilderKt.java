package kotlin.sequences;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aP\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��2/\b\t\u0010\u0007\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006H\u0087\bø\u0001��¢\u0006\u0004\b\t\u0010\n\u001aP\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000b\"\u0004\b��\u0010��2/\b\t\u0010\u0007\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006H\u0087\bø\u0001��¢\u0006\u0004\b\f\u0010\r\u001aO\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��2/\b\u0001\u0010\u000e\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006H\u0007ø\u0001��¢\u0006\u0004\b\u000f\u0010\n\u001aO\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u000b\"\u0004\b��\u0010��2/\b\u0001\u0010\u000e\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006H\u0007ø\u0001��¢\u0006\u0004\b\u0010\u0010\r\"\u001a\u0010\u0013\u001a\u00060\u0011j\u0002`\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014\"\u001a\u0010\u0015\u001a\u00060\u0011j\u0002`\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014\"\u001a\u0010\u0016\u001a\u00060\u0011j\u0002`\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014\"\u001a\u0010\u0017\u001a\u00060\u0011j\u0002`\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0014\"\u001a\u0010\u0018\u001a\u00060\u0011j\u0002`\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0014\"\u001a\u0010\u0019\u001a\u00060\u0011j\u0002`\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0014*V\b\u0007\u0010%\u001a\u0004\b��\u0010��\"\b\u0012\u0004\u0012\u00028��0\u00022\b\u0012\u0004\u0012\u00028��0\u0002B6\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u001c\b\u001d\u0012\u0018\b\u000bB\u0014\b\u001e\u0012\u0006\b\u001f\u0012\u0002\b\f\u0012\b\b \u0012\u0004\b\b(!\u0012\n\b\"\u0012\u0006\b\n0#8$*\f\b\u0002\u0010&\"\u00020\u00112\u00020\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"T", "Lkotlin/Function2;", "Lkotlin/sequences/SequenceScope;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "builderAction", "", "buildIterator", "(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;", "Lkotlin/sequences/Sequence;", "buildSequence", "(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;", "block", "iterator", "sequence", "", "Lkotlin/sequences/State;", "State_Done", "I", "State_Failed", "State_ManyNotReady", "State_ManyReady", "State_NotReady", "State_Ready", "Lkotlin/Deprecated;", "message", "Use SequenceScope class instead.", "replaceWith", "Lkotlin/ReplaceWith;", "imports", "expression", "SequenceScope<T>", FirebaseAnalytics.Param.LEVEL, "Lkotlin/DeprecationLevel;", "ERROR", "SequenceBuilder", "State", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/sequences/SequencesKt")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt__SequenceBuilderKt.class */
public class SequencesKt__SequenceBuilderKt {
    @SinceKotlin
    @NotNull
    /* renamed from: a */
    public static <T> Iterator<T> m1632a(@BuilderInference @NotNull Function2<? super SequenceScope<? super T>, ? super Continuation<? super Unit>, ? extends Object> block) {
        Continuation<Unit> b;
        Intrinsics.m1830e(block, "block");
        SequenceBuilderIterator sequenceBuilderIterator = new SequenceBuilderIterator();
        b = IntrinsicsKt__IntrinsicsJvmKt.m1922b(block, sequenceBuilderIterator, sequenceBuilderIterator);
        sequenceBuilderIterator.m1646h(b);
        return sequenceBuilderIterator;
    }
}
