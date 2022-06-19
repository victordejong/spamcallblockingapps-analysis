.class public final enum Lcom/truecaller/background_work/WorkActionPeriod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/background_work/WorkActionPeriod$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/background_work/WorkActionPeriod;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0087\u0001\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013B)\u0008\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\u000c\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\u000bR\u0019\u0010\u000e\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000f\u0010\u000bj\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/truecaller/background_work/WorkActionPeriod;",
        "",
        "",
        "maxRetryCount",
        "I",
        "getMaxRetryCount",
        "()I",
        "Lw3/b/a/i;",
        "flexInterval",
        "Lw3/b/a/i;",
        "getFlexInterval",
        "()Lw3/b/a/i;",
        "exponentialBackoff",
        "getExponentialBackoff",
        "duration",
        "getDuration",
        "<init>",
        "(Ljava/lang/String;ILw3/b/a/i;Lw3/b/a/i;Lw3/b/a/i;I)V",
        "Companion",
        "a",
        "EVERY_THREE_HOURS",
        "EVERY_SIX_HOURS",
        "EVERY_TWELVE_HOURS",
        "DAILY",
        "WEEKLY",
        "MONTHLY",
        "background-work_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/background_work/WorkActionPeriod;

.field public static final Companion:Lcom/truecaller/background_work/WorkActionPeriod$a;

.field public static final enum DAILY:Lcom/truecaller/background_work/WorkActionPeriod;

.field public static final enum EVERY_SIX_HOURS:Lcom/truecaller/background_work/WorkActionPeriod;

.field public static final enum EVERY_THREE_HOURS:Lcom/truecaller/background_work/WorkActionPeriod;

.field public static final enum EVERY_TWELVE_HOURS:Lcom/truecaller/background_work/WorkActionPeriod;

.field public static final enum MONTHLY:Lcom/truecaller/background_work/WorkActionPeriod;

.field public static final enum WEEKLY:Lcom/truecaller/background_work/WorkActionPeriod;


# instance fields
.field private final duration:Lw3/b/a/i;

.field private final exponentialBackoff:Lw3/b/a/i;

.field private final flexInterval:Lw3/b/a/i;

.field private final maxRetryCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/background_work/WorkActionPeriod;

    new-instance v8, Lcom/truecaller/background_work/WorkActionPeriod;

    const-wide/16 v1, 0x3

    .line 1
    invoke-static {v1, v2}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v4

    const-string v1, "standardHours(3)"

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x1e

    .line 2
    invoke-static {v9, v10}, Lw3/b/a/i;->d(J)Lw3/b/a/i;

    move-result-object v5

    const-string v1, "standardMinutes(30)"

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v9, v10}, Lw3/b/a/i;->d(J)Lw3/b/a/i;

    move-result-object v6

    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "EVERY_THREE_HOURS"

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/truecaller/background_work/WorkActionPeriod;-><init>(Ljava/lang/String;ILw3/b/a/i;Lw3/b/a/i;Lw3/b/a/i;I)V

    sput-object v8, Lcom/truecaller/background_work/WorkActionPeriod;->EVERY_THREE_HOURS:Lcom/truecaller/background_work/WorkActionPeriod;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lcom/truecaller/background_work/WorkActionPeriod;

    const-wide/16 v2, 0x6

    .line 5
    invoke-static {v2, v3}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v14

    const-string v4, "standardHours(6)"

    invoke-static {v14, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x1

    .line 6
    invoke-static {v5, v6}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v15

    const-string v7, "standardHours(1)"

    invoke-static {v15, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v5, v6}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v8

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "EVERY_SIX_HOURS"

    const/4 v13, 0x1

    const/16 v17, 0x1

    move-object v11, v1

    move-object/from16 v16, v8

    .line 8
    invoke-direct/range {v11 .. v17}, Lcom/truecaller/background_work/WorkActionPeriod;-><init>(Ljava/lang/String;ILw3/b/a/i;Lw3/b/a/i;Lw3/b/a/i;I)V

    sput-object v1, Lcom/truecaller/background_work/WorkActionPeriod;->EVERY_SIX_HOURS:Lcom/truecaller/background_work/WorkActionPeriod;

    const/4 v8, 0x1

    aput-object v1, v0, v8

    new-instance v1, Lcom/truecaller/background_work/WorkActionPeriod;

    const-wide/16 v18, 0xc

    .line 9
    invoke-static/range {v18 .. v19}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v14

    const-string v8, "standardHours(12)"

    invoke-static {v14, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v5, v6}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v15

    invoke-static {v15, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v5, v6}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v13

    invoke-static {v13, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "EVERY_TWELVE_HOURS"

    const/16 v16, 0x2

    const/16 v17, 0x2

    move-object v11, v1

    move-object/from16 v20, v13

    move/from16 v13, v16

    move-object/from16 v16, v20

    .line 12
    invoke-direct/range {v11 .. v17}, Lcom/truecaller/background_work/WorkActionPeriod;-><init>(Ljava/lang/String;ILw3/b/a/i;Lw3/b/a/i;Lw3/b/a/i;I)V

    sput-object v1, Lcom/truecaller/background_work/WorkActionPeriod;->EVERY_TWELVE_HOURS:Lcom/truecaller/background_work/WorkActionPeriod;

    const/4 v11, 0x2

    aput-object v1, v0, v11

    new-instance v1, Lcom/truecaller/background_work/WorkActionPeriod;

    .line 13
    invoke-static {v5, v6}, Lw3/b/a/i;->a(J)Lw3/b/a/i;

    move-result-object v11

    const-string v12, "standardDays(1)"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static/range {v18 .. v19}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v13

    invoke-static {v13, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v5, v6}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v14

    invoke-static {v14, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v21, "DAILY"

    const/16 v22, 0x3

    const/16 v26, 0x2

    move-object/from16 v20, v1

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    .line 16
    invoke-direct/range {v20 .. v26}, Lcom/truecaller/background_work/WorkActionPeriod;-><init>(Ljava/lang/String;ILw3/b/a/i;Lw3/b/a/i;Lw3/b/a/i;I)V

    sput-object v1, Lcom/truecaller/background_work/WorkActionPeriod;->DAILY:Lcom/truecaller/background_work/WorkActionPeriod;

    const/4 v7, 0x3

    aput-object v1, v0, v7

    new-instance v1, Lcom/truecaller/background_work/WorkActionPeriod;

    const-wide/16 v13, 0x7

    .line 17
    invoke-static {v13, v14}, Lw3/b/a/i;->a(J)Lw3/b/a/i;

    move-result-object v7

    const-string v11, "standardDays(7)"

    invoke-static {v7, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v5, v6}, Lw3/b/a/i;->a(J)Lw3/b/a/i;

    move-result-object v11

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {v2, v3}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v2

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v21, "WEEKLY"

    const/16 v22, 0x4

    const/16 v26, 0x3

    move-object/from16 v20, v1

    move-object/from16 v23, v7

    move-object/from16 v24, v11

    move-object/from16 v25, v2

    .line 20
    invoke-direct/range {v20 .. v26}, Lcom/truecaller/background_work/WorkActionPeriod;-><init>(Ljava/lang/String;ILw3/b/a/i;Lw3/b/a/i;Lw3/b/a/i;I)V

    sput-object v1, Lcom/truecaller/background_work/WorkActionPeriod;->WEEKLY:Lcom/truecaller/background_work/WorkActionPeriod;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/background_work/WorkActionPeriod;

    .line 21
    invoke-static {v9, v10}, Lw3/b/a/i;->a(J)Lw3/b/a/i;

    move-result-object v2

    const-string v3, "standardDays(30)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v5, v6}, Lw3/b/a/i;->a(J)Lw3/b/a/i;

    move-result-object v3

    invoke-static {v3, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static/range {v18 .. v19}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v4

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v21, "MONTHLY"

    const/16 v22, 0x5

    move-object/from16 v20, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    .line 24
    invoke-direct/range {v20 .. v26}, Lcom/truecaller/background_work/WorkActionPeriod;-><init>(Ljava/lang/String;ILw3/b/a/i;Lw3/b/a/i;Lw3/b/a/i;I)V

    sput-object v1, Lcom/truecaller/background_work/WorkActionPeriod;->MONTHLY:Lcom/truecaller/background_work/WorkActionPeriod;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/background_work/WorkActionPeriod;->$VALUES:[Lcom/truecaller/background_work/WorkActionPeriod;

    new-instance v0, Lcom/truecaller/background_work/WorkActionPeriod$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/background_work/WorkActionPeriod$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/background_work/WorkActionPeriod;->Companion:Lcom/truecaller/background_work/WorkActionPeriod$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILw3/b/a/i;Lw3/b/a/i;Lw3/b/a/i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/i;",
            "Lw3/b/a/i;",
            "Lw3/b/a/i;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/background_work/WorkActionPeriod;->duration:Lw3/b/a/i;

    iput-object p4, p0, Lcom/truecaller/background_work/WorkActionPeriod;->flexInterval:Lw3/b/a/i;

    iput-object p5, p0, Lcom/truecaller/background_work/WorkActionPeriod;->exponentialBackoff:Lw3/b/a/i;

    iput p6, p0, Lcom/truecaller/background_work/WorkActionPeriod;->maxRetryCount:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/background_work/WorkActionPeriod;
    .locals 1

    const-class v0, Lcom/truecaller/background_work/WorkActionPeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/background_work/WorkActionPeriod;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/background_work/WorkActionPeriod;
    .locals 1

    sget-object v0, Lcom/truecaller/background_work/WorkActionPeriod;->$VALUES:[Lcom/truecaller/background_work/WorkActionPeriod;

    invoke-virtual {v0}, [Lcom/truecaller/background_work/WorkActionPeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/background_work/WorkActionPeriod;

    return-object v0
.end method


# virtual methods
.method public final getDuration()Lw3/b/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/background_work/WorkActionPeriod;->duration:Lw3/b/a/i;

    return-object v0
.end method

.method public final getExponentialBackoff()Lw3/b/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/background_work/WorkActionPeriod;->exponentialBackoff:Lw3/b/a/i;

    return-object v0
.end method

.method public final getFlexInterval()Lw3/b/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/background_work/WorkActionPeriod;->flexInterval:Lw3/b/a/i;

    return-object v0
.end method

.method public final getMaxRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/background_work/WorkActionPeriod;->maxRetryCount:I

    return v0
.end method
