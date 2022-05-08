package androidx.work;

import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.OneTimeWorkRequest;
import kotlin.Metadata;
import p626l.p629c0.AbstractC14900c;
import p626l.p641z.C15105a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\u0015\u0010��\u001a\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003H\u0086\b\u001a\u001f\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0010\b\u0001\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006H\u0086\b¨\u0006\b"}, m815d2 = {"OneTimeWorkRequestBuilder", "Landroidx/work/OneTimeWorkRequest$Builder;", ExifInterface.LONGITUDE_WEST, "Landroidx/work/ListenableWorker;", "setInputMerger", "inputMerger", "Lkotlin/reflect/KClass;", "Landroidx/work/InputMerger;", "work-runtime-ktx_release"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes-dex2jar.jar:androidx/work/OneTimeWorkRequestKt.class */
public final class OneTimeWorkRequestKt {
    public static final /* synthetic */ <W extends ListenableWorker> OneTimeWorkRequest.Builder OneTimeWorkRequestBuilder() {
        C15149k.m385a(4, ExifInterface.LONGITUDE_WEST);
        throw null;
    }

    public static final OneTimeWorkRequest.Builder setInputMerger(OneTimeWorkRequest.Builder builder, @NonNull AbstractC14900c<? extends InputMerger> cVar) {
        C15149k.m377b(builder, "$this$setInputMerger");
        C15149k.m377b(cVar, "inputMerger");
        OneTimeWorkRequest.Builder inputMerger = builder.setInputMerger(C15105a.m424a((AbstractC14900c) cVar));
        C15149k.m383a((Object) inputMerger, "setInputMerger(inputMerger.java)");
        return inputMerger;
    }
}
