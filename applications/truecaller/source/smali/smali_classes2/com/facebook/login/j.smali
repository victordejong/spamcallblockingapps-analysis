.class public final enum Lcom/facebook/login/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/login/j;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/login/DefaultAudience;",
        "",
        "nativeProtocolAudience",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getNativeProtocolAudience",
        "()Ljava/lang/String;",
        "NONE",
        "ONLY_ME",
        "FRIENDS",
        "EVERYONE",
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
.field public static final enum b:Lcom/facebook/login/j;

.field public static final enum c:Lcom/facebook/login/j;

.field public static final enum d:Lcom/facebook/login/j;

.field public static final enum e:Lcom/facebook/login/j;

.field public static final synthetic f:[Lcom/facebook/login/j;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/facebook/login/j;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/login/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/j;->b:Lcom/facebook/login/j;

    .line 2
    new-instance v1, Lcom/facebook/login/j;

    const-string v3, "ONLY_ME"

    const/4 v4, 0x1

    const-string v5, "only_me"

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/login/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/login/j;->c:Lcom/facebook/login/j;

    .line 3
    new-instance v3, Lcom/facebook/login/j;

    const-string v5, "FRIENDS"

    const/4 v6, 0x2

    const-string v7, "friends"

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/login/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/login/j;->d:Lcom/facebook/login/j;

    .line 4
    new-instance v5, Lcom/facebook/login/j;

    const-string v7, "EVERYONE"

    const/4 v8, 0x3

    const-string v9, "everyone"

    invoke-direct {v5, v7, v8, v9}, Lcom/facebook/login/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/login/j;->e:Lcom/facebook/login/j;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/login/j;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/facebook/login/j;->f:[Lcom/facebook/login/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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

    iput-object p3, p0, Lcom/facebook/login/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/j;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/login/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/facebook/login/j;

    return-object p0
.end method

.method public static values()[Lcom/facebook/login/j;
    .locals 2

    sget-object v0, Lcom/facebook/login/j;->f:[Lcom/facebook/login/j;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/facebook/login/j;

    return-object v0
.end method
