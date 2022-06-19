.class public final enum Lcom/truecaller/ghost_call/ScheduleDuration;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ghost_call/ScheduleDuration;",
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B#\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/truecaller/ghost_call/ScheduleDuration;",
        "",
        "",
        "delay",
        "J",
        "getDelay",
        "()J",
        "",
        "titleRes",
        "I",
        "getTitleRes",
        "()I",
        "Ljava/util/concurrent/TimeUnit;",
        "timeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "getTimeUnit",
        "()Ljava/util/concurrent/TimeUnit;",
        "<init>",
        "(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;I)V",
        "IMMEDIATE",
        "TEN_SECONDS",
        "ONE_MINUTE",
        "FIVE_MINUTES",
        "THIRTY_MINUTES",
        "ghost-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ghost_call/ScheduleDuration;

.field public static final enum FIVE_MINUTES:Lcom/truecaller/ghost_call/ScheduleDuration;

.field public static final enum IMMEDIATE:Lcom/truecaller/ghost_call/ScheduleDuration;

.field public static final enum ONE_MINUTE:Lcom/truecaller/ghost_call/ScheduleDuration;

.field public static final enum TEN_SECONDS:Lcom/truecaller/ghost_call/ScheduleDuration;

.field public static final enum THIRTY_MINUTES:Lcom/truecaller/ghost_call/ScheduleDuration;


# instance fields
.field private final delay:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;

.field private final titleRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/ghost_call/ScheduleDuration;

    new-instance v8, Lcom/truecaller/ghost_call/ScheduleDuration;

    .line 1
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget v7, Lcom/truecaller/ghost_call/R$string;->PretendCallScheduleDurationImmediately:I

    const-string v2, "IMMEDIATE"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/ghost_call/ScheduleDuration;-><init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;I)V

    sput-object v8, Lcom/truecaller/ghost_call/ScheduleDuration;->IMMEDIATE:Lcom/truecaller/ghost_call/ScheduleDuration;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v8, Lcom/truecaller/ghost_call/ScheduleDuration;

    .line 2
    sget v7, Lcom/truecaller/ghost_call/R$string;->PretendCallScheduleDurationTenSeconds:I

    const-string v2, "TEN_SECONDS"

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/ghost_call/ScheduleDuration;-><init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;I)V

    sput-object v8, Lcom/truecaller/ghost_call/ScheduleDuration;->TEN_SECONDS:Lcom/truecaller/ghost_call/ScheduleDuration;

    const/4 v1, 0x1

    aput-object v8, v0, v1

    new-instance v1, Lcom/truecaller/ghost_call/ScheduleDuration;

    .line 3
    sget-object v16, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget v15, Lcom/truecaller/ghost_call/R$string;->PretendCallScheduleDurationOneMinute:I

    const-string v10, "ONE_MINUTE"

    const/4 v11, 0x2

    const-wide/16 v12, 0x1

    move-object v9, v1

    move-object/from16 v14, v16

    invoke-direct/range {v9 .. v15}, Lcom/truecaller/ghost_call/ScheduleDuration;-><init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;I)V

    sput-object v1, Lcom/truecaller/ghost_call/ScheduleDuration;->ONE_MINUTE:Lcom/truecaller/ghost_call/ScheduleDuration;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/ghost_call/ScheduleDuration;

    .line 4
    sget v8, Lcom/truecaller/ghost_call/R$string;->PretendCallScheduleDurationFiveMinutes:I

    const-string v3, "FIVE_MINUTES"

    const/4 v4, 0x3

    const-wide/16 v5, 0x5

    move-object v2, v1

    move-object/from16 v7, v16

    invoke-direct/range {v2 .. v8}, Lcom/truecaller/ghost_call/ScheduleDuration;-><init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;I)V

    sput-object v1, Lcom/truecaller/ghost_call/ScheduleDuration;->FIVE_MINUTES:Lcom/truecaller/ghost_call/ScheduleDuration;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/ghost_call/ScheduleDuration;

    .line 5
    sget v8, Lcom/truecaller/ghost_call/R$string;->PretendCallScheduleDurationThirtyMinutes:I

    const-string v3, "THIRTY_MINUTES"

    const/4 v4, 0x4

    const-wide/16 v5, 0x1e

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/truecaller/ghost_call/ScheduleDuration;-><init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;I)V

    sput-object v1, Lcom/truecaller/ghost_call/ScheduleDuration;->THIRTY_MINUTES:Lcom/truecaller/ghost_call/ScheduleDuration;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/ghost_call/ScheduleDuration;->$VALUES:[Lcom/truecaller/ghost_call/ScheduleDuration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/truecaller/ghost_call/ScheduleDuration;->delay:J

    iput-object p5, p0, Lcom/truecaller/ghost_call/ScheduleDuration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iput p6, p0, Lcom/truecaller/ghost_call/ScheduleDuration;->titleRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ghost_call/ScheduleDuration;
    .locals 1

    const-class v0, Lcom/truecaller/ghost_call/ScheduleDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ghost_call/ScheduleDuration;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ghost_call/ScheduleDuration;
    .locals 1

    sget-object v0, Lcom/truecaller/ghost_call/ScheduleDuration;->$VALUES:[Lcom/truecaller/ghost_call/ScheduleDuration;

    invoke-virtual {v0}, [Lcom/truecaller/ghost_call/ScheduleDuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ghost_call/ScheduleDuration;

    return-object v0
.end method


# virtual methods
.method public final getDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/ghost_call/ScheduleDuration;->delay:J

    return-wide v0
.end method

.method public final getTimeUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ghost_call/ScheduleDuration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public final getTitleRes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ghost_call/ScheduleDuration;->titleRes:I

    return v0
.end method
