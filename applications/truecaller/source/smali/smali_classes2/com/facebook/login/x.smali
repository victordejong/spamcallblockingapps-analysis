.class public final enum Lcom/facebook/login/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/login/x;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0008B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/login/LoginTargetApp;",
        "",
        "targetApp",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
        "FACEBOOK",
        "INSTAGRAM",
        "Companion",
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
.field public static final b:Lcom/facebook/login/x$a;

.field public static final enum c:Lcom/facebook/login/x;

.field public static final enum d:Lcom/facebook/login/x;

.field public static final synthetic e:[Lcom/facebook/login/x;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/facebook/login/x;

    const-string v1, "FACEBOOK"

    const/4 v2, 0x0

    const-string v3, "facebook"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/login/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/x;->c:Lcom/facebook/login/x;

    .line 2
    new-instance v1, Lcom/facebook/login/x;

    const-string v3, "INSTAGRAM"

    const/4 v4, 0x1

    const-string v5, "instagram"

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/login/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/login/x;->d:Lcom/facebook/login/x;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/login/x;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/facebook/login/x;->e:[Lcom/facebook/login/x;

    new-instance v0, Lcom/facebook/login/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/login/x$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/facebook/login/x;->b:Lcom/facebook/login/x$a;

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

    iput-object p3, p0, Lcom/facebook/login/x;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/x;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/login/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/facebook/login/x;

    return-object p0
.end method

.method public static values()[Lcom/facebook/login/x;
    .locals 2

    sget-object v0, Lcom/facebook/login/x;->e:[Lcom/facebook/login/x;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/facebook/login/x;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/x;->a:Ljava/lang/String;

    return-object v0
.end method
