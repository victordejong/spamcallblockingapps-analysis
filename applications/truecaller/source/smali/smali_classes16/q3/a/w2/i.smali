.class public final enum Lq3/a/w2/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq3/a/w2/i;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "",
        "(Ljava/lang/String;I)V",
        "SUSPEND",
        "DROP_OLDEST",
        "DROP_LATEST",
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
.field public static final enum a:Lq3/a/w2/i;

.field public static final enum b:Lq3/a/w2/i;

.field public static final enum c:Lq3/a/w2/i;

.field public static final synthetic d:[Lq3/a/w2/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lq3/a/w2/i;

    const-string v1, "SUSPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq3/a/w2/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq3/a/w2/i;->a:Lq3/a/w2/i;

    .line 2
    new-instance v1, Lq3/a/w2/i;

    const-string v3, "DROP_OLDEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lq3/a/w2/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq3/a/w2/i;->b:Lq3/a/w2/i;

    .line 3
    new-instance v3, Lq3/a/w2/i;

    const-string v5, "DROP_LATEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lq3/a/w2/i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lq3/a/w2/i;->c:Lq3/a/w2/i;

    const/4 v5, 0x3

    new-array v5, v5, [Lq3/a/w2/i;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lq3/a/w2/i;->d:[Lq3/a/w2/i;

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

.method public static valueOf(Ljava/lang/String;)Lq3/a/w2/i;
    .locals 1

    const-class v0, Lq3/a/w2/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lq3/a/w2/i;

    return-object p0
.end method

.method public static values()[Lq3/a/w2/i;
    .locals 2

    sget-object v0, Lq3/a/w2/i;->d:[Lq3/a/w2/i;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lq3/a/w2/i;

    return-object v0
.end method
