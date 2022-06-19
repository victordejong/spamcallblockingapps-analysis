.class public final enum Ls1/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/DeprecationLevel;",
        "",
        "(Ljava/lang/String;I)V",
        "WARNING",
        "ERROR",
        "HIDDEN",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final enum a:Ls1/b;

.field public static final enum b:Ls1/b;

.field public static final enum c:Ls1/b;

.field public static final synthetic d:[Ls1/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ls1/b;

    new-instance v1, Ls1/b;

    const-string v2, "WARNING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/b;->a:Ls1/b;

    aput-object v1, v0, v3

    new-instance v1, Ls1/b;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/b;->b:Ls1/b;

    aput-object v1, v0, v3

    new-instance v1, Ls1/b;

    const-string v2, "HIDDEN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/b;->c:Ls1/b;

    aput-object v1, v0, v3

    sput-object v0, Ls1/b;->d:[Ls1/b;

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

.method public static valueOf(Ljava/lang/String;)Ls1/b;
    .locals 1

    const-class v0, Ls1/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/b;

    return-object p0
.end method

.method public static values()[Ls1/b;
    .locals 1

    sget-object v0, Ls1/b;->d:[Ls1/b;

    invoke-virtual {v0}, [Ls1/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/b;

    return-object v0
.end method
