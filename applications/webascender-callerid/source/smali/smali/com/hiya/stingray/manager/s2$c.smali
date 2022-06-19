.class public final enum Lcom/hiya/stingray/manager/s2$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/s2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/manager/s2$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/manager/s2$c;

.field public static final enum BLOCKED_CALL_STATS:Lcom/hiya/stingray/manager/s2$c;

.field public static final enum END_AND_REPORT:Lcom/hiya/stingray/manager/s2$c;

.field public static final enum IN_CALL_UI:Lcom/hiya/stingray/manager/s2$c;

.field public static final enum NEWSLETTER:Lcom/hiya/stingray/manager/s2$c;

.field public static final enum NO_AVATAR:Lcom/hiya/stingray/manager/s2$c;

.field public static final enum NO_CALL_REASON:Lcom/hiya/stingray/manager/s2$c;

.field public static final enum PERMISSIONS_ONBOARDING:Lcom/hiya/stingray/manager/s2$c;

.field public static final enum USER_REPORTS:Lcom/hiya/stingray/manager/s2$c;


# instance fields
.field private final code:Ljava/lang/String;

.field private final done:Z

.field private final remoteConfigName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/hiya/stingray/manager/s2$c;

    .line 1
    sget-object v1, Lcom/hiya/stingray/manager/s2$e;->PO:Lcom/hiya/stingray/manager/s2$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "Locale.ROOT"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v9, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    new-instance v11, Lcom/hiya/stingray/manager/s2$c;

    const-string v6, "PERMISSIONS_ONBOARDING"

    const/4 v7, 0x0

    const-string v8, "experiment_permissions_onboarding"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/hiya/stingray/manager/s2$c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v11, Lcom/hiya/stingray/manager/s2$c;->PERMISSIONS_ONBOARDING:Lcom/hiya/stingray/manager/s2$c;

    const/4 v5, 0x0

    aput-object v11, v0, v5

    const/4 v5, 0x1

    const/4 v8, 0x1

    .line 2
    sget-object v6, Lcom/hiya/stingray/manager/s2$e;->US:Lcom/hiya/stingray/manager/s2$e;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    new-instance v14, Lcom/hiya/stingray/manager/s2$c;

    const-string v7, "USER_REPORTS"

    const-string v9, "experiment_user_reports_s"

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/hiya/stingray/manager/s2$c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILkotlin/w/c/g;)V

    sput-object v14, Lcom/hiya/stingray/manager/s2$c;->USER_REPORTS:Lcom/hiya/stingray/manager/s2$c;

    aput-object v14, v0, v5

    const/4 v5, 0x2

    const/4 v8, 0x2

    .line 3
    sget-object v6, Lcom/hiya/stingray/manager/s2$e;->BS:Lcom/hiya/stingray/manager/s2$e;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    new-instance v14, Lcom/hiya/stingray/manager/s2$c;

    const-string v7, "BLOCKED_CALL_STATS"

    const-string v9, "experiment_blocked_call_stats"

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/hiya/stingray/manager/s2$c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILkotlin/w/c/g;)V

    sput-object v14, Lcom/hiya/stingray/manager/s2$c;->BLOCKED_CALL_STATS:Lcom/hiya/stingray/manager/s2$c;

    aput-object v14, v0, v5

    const/4 v5, 0x3

    const/4 v8, 0x3

    .line 4
    sget-object v6, Lcom/hiya/stingray/manager/s2$e;->NL:Lcom/hiya/stingray/manager/s2$e;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    new-instance v14, Lcom/hiya/stingray/manager/s2$c;

    const-string v7, "NEWSLETTER"

    const-string v9, "experiment_newsletter"

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/hiya/stingray/manager/s2$c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILkotlin/w/c/g;)V

    sput-object v14, Lcom/hiya/stingray/manager/s2$c;->NEWSLETTER:Lcom/hiya/stingray/manager/s2$c;

    aput-object v14, v0, v5

    const/4 v5, 0x4

    const/4 v8, 0x4

    .line 5
    sget-object v6, Lcom/hiya/stingray/manager/s2$e;->NA:Lcom/hiya/stingray/manager/s2$e;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    new-instance v14, Lcom/hiya/stingray/manager/s2$c;

    const-string v7, "NO_AVATAR"

    const-string v9, "experiment_no_avatar"

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/hiya/stingray/manager/s2$c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILkotlin/w/c/g;)V

    sput-object v14, Lcom/hiya/stingray/manager/s2$c;->NO_AVATAR:Lcom/hiya/stingray/manager/s2$c;

    aput-object v14, v0, v5

    const/4 v5, 0x5

    const/4 v8, 0x5

    .line 6
    sget-object v6, Lcom/hiya/stingray/manager/s2$e;->NC:Lcom/hiya/stingray/manager/s2$e;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    new-instance v14, Lcom/hiya/stingray/manager/s2$c;

    const-string v7, "NO_CALL_REASON"

    const-string v9, "experiment_no_call_reason"

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/hiya/stingray/manager/s2$c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILkotlin/w/c/g;)V

    sput-object v14, Lcom/hiya/stingray/manager/s2$c;->NO_CALL_REASON:Lcom/hiya/stingray/manager/s2$c;

    aput-object v14, v0, v5

    const/4 v5, 0x6

    const/4 v8, 0x6

    .line 7
    sget-object v6, Lcom/hiya/stingray/manager/s2$e;->IU:Lcom/hiya/stingray/manager/s2$e;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    new-instance v14, Lcom/hiya/stingray/manager/s2$c;

    const-string v7, "IN_CALL_UI"

    const-string v9, "experiment_in_call_ui_test"

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/hiya/stingray/manager/s2$c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILkotlin/w/c/g;)V

    sput-object v14, Lcom/hiya/stingray/manager/s2$c;->IN_CALL_UI:Lcom/hiya/stingray/manager/s2$c;

    aput-object v14, v0, v5

    const/4 v5, 0x7

    const/4 v8, 0x7

    .line 8
    sget-object v6, Lcom/hiya/stingray/manager/s2$e;->ER:Lcom/hiya/stingray/manager/s2$e;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    new-instance v1, Lcom/hiya/stingray/manager/s2$c;

    const-string v7, "END_AND_REPORT"

    const-string v9, "experiment_end_and_report"

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Lcom/hiya/stingray/manager/s2$c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILkotlin/w/c/g;)V

    sput-object v1, Lcom/hiya/stingray/manager/s2$c;->END_AND_REPORT:Lcom/hiya/stingray/manager/s2$c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hiya/stingray/manager/s2$c;->$VALUES:[Lcom/hiya/stingray/manager/s2$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/hiya/stingray/manager/s2$c;->remoteConfigName:Ljava/lang/String;

    iput-object p4, p0, Lcom/hiya/stingray/manager/s2$c;->code:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/hiya/stingray/manager/s2$c;->done:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILkotlin/w/c/g;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/manager/s2$c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/manager/s2$c;
    .locals 1

    const-class v0, Lcom/hiya/stingray/manager/s2$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/manager/s2$c;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/manager/s2$c;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/manager/s2$c;->$VALUES:[Lcom/hiya/stingray/manager/s2$c;

    invoke-virtual {v0}, [Lcom/hiya/stingray/manager/s2$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/manager/s2$c;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/s2$c;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/manager/s2$c;->done:Z

    return v0
.end method

.method public final getRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/s2$c;->remoteConfigName:Ljava/lang/String;

    return-object v0
.end method
