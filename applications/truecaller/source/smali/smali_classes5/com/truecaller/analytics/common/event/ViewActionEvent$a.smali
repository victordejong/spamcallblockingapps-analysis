.class public final Lcom/truecaller/analytics/common/event/ViewActionEvent$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/analytics/common/event/ViewActionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 0

    and-int/lit8 p3, p4, 0x4

    const-string p3, "context"

    .line 1
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "action"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 1

    and-int/lit8 p3, p4, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p4, 0x4

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v1

    :cond_1
    const-string p4, "action"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->h(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupPromoAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupPromoAction;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->h(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->h(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->h(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->h(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 1

    const-string v0, "action"

    invoke-static {p2, v0, p2, p3, p1}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->h(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ImUpgradeAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ImUpgradeAction;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->h(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {p0, v0, p1, v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->h(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$PremiumAlertAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$PremiumAlertAction;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->h(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestName"

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 1
    invoke-static {p0, p1, v0, v1, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->h(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->h(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    return-object p1
.end method
