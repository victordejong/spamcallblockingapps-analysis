.class public final enum Lcom/facebook/appevents/a0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/a0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/appevents/FlushReason;",
        "",
        "(Ljava/lang/String;I)V",
        "EXPLICIT",
        "TIMER",
        "SESSION_CHANGE",
        "PERSISTED_EVENTS",
        "EVENT_THRESHOLD",
        "EAGER_FLUSHING_EVENT",
        "facebook-core_release"
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
.field public static final enum a:Lcom/facebook/appevents/a0;

.field public static final enum b:Lcom/facebook/appevents/a0;

.field public static final enum c:Lcom/facebook/appevents/a0;

.field public static final enum d:Lcom/facebook/appevents/a0;

.field public static final enum e:Lcom/facebook/appevents/a0;

.field public static final enum f:Lcom/facebook/appevents/a0;

.field public static final synthetic g:[Lcom/facebook/appevents/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/facebook/appevents/a0;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/a0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/a0;->a:Lcom/facebook/appevents/a0;

    .line 2
    new-instance v1, Lcom/facebook/appevents/a0;

    const-string v3, "TIMER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/appevents/a0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/appevents/a0;->b:Lcom/facebook/appevents/a0;

    .line 3
    new-instance v3, Lcom/facebook/appevents/a0;

    const-string v5, "SESSION_CHANGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/appevents/a0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/appevents/a0;->c:Lcom/facebook/appevents/a0;

    .line 4
    new-instance v5, Lcom/facebook/appevents/a0;

    const-string v7, "PERSISTED_EVENTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/appevents/a0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/appevents/a0;->d:Lcom/facebook/appevents/a0;

    .line 5
    new-instance v7, Lcom/facebook/appevents/a0;

    const-string v9, "EVENT_THRESHOLD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/facebook/appevents/a0;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/facebook/appevents/a0;->e:Lcom/facebook/appevents/a0;

    .line 6
    new-instance v9, Lcom/facebook/appevents/a0;

    const-string v11, "EAGER_FLUSHING_EVENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/facebook/appevents/a0;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/facebook/appevents/a0;->f:Lcom/facebook/appevents/a0;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/facebook/appevents/a0;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/facebook/appevents/a0;->g:[Lcom/facebook/appevents/a0;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/a0;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/appevents/a0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/facebook/appevents/a0;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/a0;
    .locals 2

    sget-object v0, Lcom/facebook/appevents/a0;->g:[Lcom/facebook/appevents/a0;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/facebook/appevents/a0;

    return-object v0
.end method
