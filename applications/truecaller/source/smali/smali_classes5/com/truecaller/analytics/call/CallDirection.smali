.class public final enum Lcom/truecaller/analytics/call/CallDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/analytics/call/CallDirection;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0003\u001a\u00020\u00028F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004R\u0013\u0010\u0005\u001a\u00020\u00028F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0004R\u0019\u0010\u0007\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/analytics/call/CallDirection;",
        "",
        "",
        "isOutgoing",
        "()Z",
        "isIncoming",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "INCOMING",
        "OUTGOING",
        "analytics-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/analytics/call/CallDirection;

.field public static final enum INCOMING:Lcom/truecaller/analytics/call/CallDirection;

.field public static final enum OUTGOING:Lcom/truecaller/analytics/call/CallDirection;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/analytics/call/CallDirection;

    new-instance v1, Lcom/truecaller/analytics/call/CallDirection;

    const-string v2, "INCOMING"

    const/4 v3, 0x0

    const-string v4, "incoming"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/call/CallDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/call/CallDirection;->INCOMING:Lcom/truecaller/analytics/call/CallDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/call/CallDirection;

    const-string v2, "OUTGOING"

    const/4 v3, 0x1

    const-string v4, "outgoing"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/call/CallDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/call/CallDirection;->OUTGOING:Lcom/truecaller/analytics/call/CallDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/analytics/call/CallDirection;->$VALUES:[Lcom/truecaller/analytics/call/CallDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/analytics/call/CallDirection;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/analytics/call/CallDirection;
    .locals 1

    const-class v0, Lcom/truecaller/analytics/call/CallDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/analytics/call/CallDirection;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/analytics/call/CallDirection;
    .locals 1

    sget-object v0, Lcom/truecaller/analytics/call/CallDirection;->$VALUES:[Lcom/truecaller/analytics/call/CallDirection;

    invoke-virtual {v0}, [Lcom/truecaller/analytics/call/CallDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/analytics/call/CallDirection;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/analytics/call/CallDirection;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final isIncoming()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/analytics/call/CallDirection;->INCOMING:Lcom/truecaller/analytics/call/CallDirection;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isOutgoing()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/analytics/call/CallDirection;->OUTGOING:Lcom/truecaller/analytics/call/CallDirection;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
