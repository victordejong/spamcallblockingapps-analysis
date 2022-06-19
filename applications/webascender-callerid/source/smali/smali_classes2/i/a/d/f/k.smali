.class final enum Li/a/d/f/k;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/a/d/f/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/a/d/f/k;",
        ">;",
        "Li/a/d/f/h;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/a/d/f/k;

.field public static final enum INSTANCE:Li/a/d/f/k;

.field private static final INVALID_ID:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/a/d/f/k;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/a/d/f/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/a/d/f/k;->INSTANCE:Li/a/d/f/k;

    const/4 v1, 0x1

    new-array v1, v1, [Li/a/d/f/k;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Li/a/d/f/k;->$VALUES:[Li/a/d/f/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li/a/d/f/k;
    .locals 1

    .line 1
    const-class v0, Li/a/d/f/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/a/d/f/k;

    return-object p0
.end method

.method public static values()[Li/a/d/f/k;
    .locals 1

    .line 1
    sget-object v0, Li/a/d/f/k;->$VALUES:[Li/a/d/f/k;

    invoke-virtual {v0}, [Li/a/d/f/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/a/d/f/k;

    return-object v0
.end method


# virtual methods
.method public generateSpanId()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3
    invoke-static {v1, v2}, Li/a/a/f/p;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateTraceId()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 4
    :cond_1
    invoke-static {v1, v2, v3, v4}, Li/a/a/f/u;->a(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
