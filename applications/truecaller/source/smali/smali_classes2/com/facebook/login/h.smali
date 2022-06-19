.class public final enum Lcom/facebook/login/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/login/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/login/CodeChallengeMethod;",
        "",
        "s",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "S256",
        "PLAIN",
        "facebook-common_release"
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
.field public static final enum a:Lcom/facebook/login/h;

.field public static final enum b:Lcom/facebook/login/h;

.field public static final synthetic c:[Lcom/facebook/login/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/facebook/login/h;

    const-string v1, "S256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/login/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/login/h;->a:Lcom/facebook/login/h;

    .line 2
    new-instance v1, Lcom/facebook/login/h;

    const-string v3, "PLAIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/login/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/login/h;->b:Lcom/facebook/login/h;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/login/h;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/facebook/login/h;->c:[Lcom/facebook/login/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/h;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/login/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/facebook/login/h;

    return-object p0
.end method

.method public static values()[Lcom/facebook/login/h;
    .locals 2

    sget-object v0, Lcom/facebook/login/h;->c:[Lcom/facebook/login/h;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/facebook/login/h;

    return-object v0
.end method
