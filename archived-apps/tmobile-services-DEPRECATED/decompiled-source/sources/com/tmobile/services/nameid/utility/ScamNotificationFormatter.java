package com.tmobile.services.nameid.utility;

import android.content.Context;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.model.CallerSetting;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B'\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0004R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0012\u001a\u00020\u00118\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/utility/ScamNotificationFormatter;", "Lcom/tmobile/services/nameid/utility/NotificationFormatter;", "", "getLine1", "()Ljava/lang/String;", "getLine2", "getSummary", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "action", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "getAction", "()Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "", "bucketId", "I", "getBucketId", "()I", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "displayNumber", "Ljava/lang/String;", "<init>", "(Ljava/lang/String;Lcom/tmobile/services/nameid/model/CallerSetting$Action;Landroid/content/Context;I)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ScamNotificationFormatter.class */
public final class ScamNotificationFormatter implements NotificationFormatter {

    /* renamed from: a */
    private final String f14429a;
    @NotNull

    /* renamed from: b */
    private final CallerSetting.Action f14430b;
    @NotNull

    /* renamed from: c */
    private final Context f14431c;

    public ScamNotificationFormatter(@NotNull String displayNumber, @NotNull CallerSetting.Action action, @NotNull Context context, int i) {
        Intrinsics.m1830e(displayNumber, "displayNumber");
        Intrinsics.m1830e(action, "action");
        Intrinsics.m1830e(context, "context");
        this.f14429a = displayNumber;
        this.f14430b = action;
        this.f14431c = context;
    }

    @Override // com.tmobile.services.nameid.utility.NotificationFormatter
    @NotNull
    /* renamed from: a */
    public String mo5379a() {
        String a = NotificationFormatterKt.m5463a(this.f14430b, this.f14431c);
        return this.f14429a + " - " + a;
    }

    @Override // com.tmobile.services.nameid.utility.NotificationFormatter
    @NotNull
    /* renamed from: b */
    public String mo5378b() {
        String string = this.f14431c.getString(C1517R.string.category_name_scam_likely);
        Intrinsics.m1831d(string, "context.getString(R.stri…ategory_name_scam_likely)");
        return string;
    }

    @Override // com.tmobile.services.nameid.utility.NotificationFormatter
    @NotNull
    /* renamed from: c */
    public String mo5377c() {
        return mo5378b() + " - " + mo5379a();
    }
}
