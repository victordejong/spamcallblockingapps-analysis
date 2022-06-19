.class public final enum Lq3/a/z2/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/z2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq3/a/z2/a$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        "",
        "(Ljava/lang/String;I)V",
        "CPU_ACQUIRED",
        "BLOCKING",
        "PARKING",
        "DORMANT",
        "TERMINATED",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum a:Lq3/a/z2/a$b;

.field public static final enum b:Lq3/a/z2/a$b;

.field public static final enum c:Lq3/a/z2/a$b;

.field public static final enum d:Lq3/a/z2/a$b;

.field public static final enum e:Lq3/a/z2/a$b;

.field public static final synthetic f:[Lq3/a/z2/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lq3/a/z2/a$b;

    const-string v1, "CPU_ACQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq3/a/z2/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq3/a/z2/a$b;->a:Lq3/a/z2/a$b;

    .line 2
    new-instance v1, Lq3/a/z2/a$b;

    const-string v3, "BLOCKING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lq3/a/z2/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq3/a/z2/a$b;->b:Lq3/a/z2/a$b;

    .line 3
    new-instance v3, Lq3/a/z2/a$b;

    const-string v5, "PARKING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lq3/a/z2/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lq3/a/z2/a$b;->c:Lq3/a/z2/a$b;

    .line 4
    new-instance v5, Lq3/a/z2/a$b;

    const-string v7, "DORMANT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lq3/a/z2/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lq3/a/z2/a$b;->d:Lq3/a/z2/a$b;

    .line 5
    new-instance v7, Lq3/a/z2/a$b;

    const-string v9, "TERMINATED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lq3/a/z2/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lq3/a/z2/a$b;->e:Lq3/a/z2/a$b;

    const/4 v9, 0x5

    new-array v9, v9, [Lq3/a/z2/a$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lq3/a/z2/a$b;->f:[Lq3/a/z2/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lq3/a/z2/a$b;
    .locals 1

    const-class v0, Lq3/a/z2/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lq3/a/z2/a$b;

    return-object p0
.end method

.method public static values()[Lq3/a/z2/a$b;
    .locals 2

    sget-object v0, Lq3/a/z2/a$b;->f:[Lq3/a/z2/a$b;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lq3/a/z2/a$b;

    return-object v0
.end method
