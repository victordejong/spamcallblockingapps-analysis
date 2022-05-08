package com.tmobile.services.nameid.utility;

import android.content.Context;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.Contact;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B3\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0004R\u0019\u0010\t\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0004R\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0016\u001a\u00020\u00158\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0019\u0010\u001a\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u000e\u001a\u0004\b\u001b\u0010\u0004¨\u0006\u001e"}, d2 = {"Lcom/tmobile/services/nameid/utility/PnbNotificationFormatter;", "Lcom/tmobile/services/nameid/utility/NotificationFormatter;", "", "getLine1", "()Ljava/lang/String;", "getLine2", "getName", "getSummary", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "action", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "getAction", "()Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "callerIdName", "Ljava/lang/String;", "getCallerIdName", "Lcom/tmobile/services/nameid/model/Contact;", "contact", "Lcom/tmobile/services/nameid/model/Contact;", "getContact", "()Lcom/tmobile/services/nameid/model/Contact;", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "displayNumber", "getDisplayNumber", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/tmobile/services/nameid/model/CallerSetting$Action;Lcom/tmobile/services/nameid/model/Contact;Landroid/content/Context;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/PnbNotificationFormatter.class */
public final class PnbNotificationFormatter implements NotificationFormatter {
    @NotNull

    /* renamed from: a */
    private final String f14424a;
    @Nullable

    /* renamed from: b */
    private final String f14425b;
    @NotNull

    /* renamed from: c */
    private final CallerSetting.Action f14426c;
    @Nullable

    /* renamed from: d */
    private final Contact f14427d;
    @NotNull

    /* renamed from: e */
    private final Context f14428e;

    public PnbNotificationFormatter(@NotNull String displayNumber, @Nullable String str, @NotNull CallerSetting.Action action, @Nullable Contact contact, @NotNull Context context) {
        Intrinsics.m1830e(displayNumber, "displayNumber");
        Intrinsics.m1830e(action, "action");
        Intrinsics.m1830e(context, "context");
        this.f14424a = displayNumber;
        this.f14425b = str;
        this.f14426c = action;
        this.f14427d = contact;
        this.f14428e = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r3 != null) goto L_0x001a;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String m5397d() {
        /*
            r2 = this;
            r0 = r2
            com.tmobile.services.nameid.model.Contact r0 = r0.f14427d
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0015
            r0 = r3
            java.lang.String r0 = r0.getName()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0015
            goto L_0x001a
        L_0x0015:
            r0 = r2
            java.lang.String r0 = r0.f14425b
            r3 = r0
        L_0x001a:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.PnbNotificationFormatter.m5397d():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    @Override // com.tmobile.services.nameid.utility.NotificationFormatter
    @org.jetbrains.annotations.NotNull
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo5379a() {
        /*
            r3 = this;
            r0 = r3
            com.tmobile.services.nameid.model.CallerSetting$Action r0 = r0.f14426c
            r1 = r3
            android.content.Context r1 = r1.f14428e
            java.lang.String r0 = com.tmobile.services.nameid.utility.NotificationFormatterKt.m5463a(r0, r1)
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.m5397d()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0024
            r0 = r5
            boolean r0 = kotlin.text.StringsKt.m1515r(r0)
            if (r0 == 0) goto L_0x001f
            goto L_0x0024
        L_0x001f:
            r0 = 0
            r6 = r0
            goto L_0x0026
        L_0x0024:
            r0 = 1
            r6 = r0
        L_0x0026:
            r0 = r6
            if (r0 == 0) goto L_0x002d
            goto L_0x0050
        L_0x002d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            r1 = r3
            java.lang.String r1 = r1.f14424a
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = " - "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.toString()
            r4 = r0
        L_0x0050:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.PnbNotificationFormatter.mo5379a():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    @Override // com.tmobile.services.nameid.utility.NotificationFormatter
    @org.jetbrains.annotations.NotNull
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo5378b() {
        /*
            r2 = this;
            r0 = r2
            java.lang.String r0 = r0.m5397d()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0018
            r0 = r3
            boolean r0 = kotlin.text.StringsKt.m1515r(r0)
            if (r0 == 0) goto L_0x0013
            goto L_0x0018
        L_0x0013:
            r0 = 0
            r4 = r0
            goto L_0x001a
        L_0x0018:
            r0 = 1
            r4 = r0
        L_0x001a:
            r0 = r4
            if (r0 == 0) goto L_0x0023
            r0 = r2
            java.lang.String r0 = r0.f14424a
            r3 = r0
        L_0x0023:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.PnbNotificationFormatter.mo5378b():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0055  */
    @Override // com.tmobile.services.nameid.utility.NotificationFormatter
    @org.jetbrains.annotations.NotNull
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo5377c() {
        /*
            r3 = this;
            r0 = r3
            com.tmobile.services.nameid.model.CallerSetting$Action r0 = r0.f14426c
            r1 = r3
            android.content.Context r1 = r1.f14428e
            java.lang.String r0 = com.tmobile.services.nameid.utility.NotificationFormatterKt.m5463a(r0, r1)
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.m5397d()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0024
            r0 = r5
            boolean r0 = kotlin.text.StringsKt.m1515r(r0)
            if (r0 == 0) goto L_0x001f
            goto L_0x0024
        L_0x001f:
            r0 = 0
            r6 = r0
            goto L_0x0026
        L_0x0024:
            r0 = 1
            r6 = r0
        L_0x0026:
            r0 = r6
            if (r0 == 0) goto L_0x0055
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = r3
            java.lang.String r1 = r1.f14424a
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = " - "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            r4 = r0
            goto L_0x007a
        L_0x0055:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = " - "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            r4 = r0
        L_0x007a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.PnbNotificationFormatter.mo5377c():java.lang.String");
    }
}
