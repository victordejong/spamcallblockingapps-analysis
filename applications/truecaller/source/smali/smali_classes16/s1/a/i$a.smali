.class public final enum Ls1/a/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/i$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/reflect/KParameter$Kind;",
        "",
        "(Ljava/lang/String;I)V",
        "INSTANCE",
        "EXTENSION_RECEIVER",
        "VALUE",
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
.field public static final enum a:Ls1/a/i$a;

.field public static final enum b:Ls1/a/i$a;

.field public static final enum c:Ls1/a/i$a;

.field public static final synthetic d:[Ls1/a/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ls1/a/i$a;

    new-instance v1, Ls1/a/i$a;

    const-string v2, "INSTANCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls1/a/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/i$a;->a:Ls1/a/i$a;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/i$a;

    const-string v2, "EXTENSION_RECEIVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls1/a/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/i$a;->b:Ls1/a/i$a;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/i$a;

    const-string v2, "VALUE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ls1/a/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/i$a;->c:Ls1/a/i$a;

    aput-object v1, v0, v3

    sput-object v0, Ls1/a/i$a;->d:[Ls1/a/i$a;

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

.method public static valueOf(Ljava/lang/String;)Ls1/a/i$a;
    .locals 1

    const-class v0, Ls1/a/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/i$a;

    return-object p0
.end method

.method public static values()[Ls1/a/i$a;
    .locals 1

    sget-object v0, Ls1/a/i$a;->d:[Ls1/a/i$a;

    invoke-virtual {v0}, [Ls1/a/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/i$a;

    return-object v0
.end method
