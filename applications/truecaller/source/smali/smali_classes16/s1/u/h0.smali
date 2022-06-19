.class public final enum Ls1/u/h0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/u/h0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/collections/State;",
        "",
        "(Ljava/lang/String;I)V",
        "Ready",
        "NotReady",
        "Done",
        "Failed",
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
.field public static final enum a:Ls1/u/h0;

.field public static final enum b:Ls1/u/h0;

.field public static final enum c:Ls1/u/h0;

.field public static final enum d:Ls1/u/h0;

.field public static final synthetic e:[Ls1/u/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ls1/u/h0;

    new-instance v1, Ls1/u/h0;

    const-string v2, "Ready"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls1/u/h0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/u/h0;->a:Ls1/u/h0;

    aput-object v1, v0, v3

    new-instance v1, Ls1/u/h0;

    const-string v2, "NotReady"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls1/u/h0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/u/h0;->b:Ls1/u/h0;

    aput-object v1, v0, v3

    new-instance v1, Ls1/u/h0;

    const-string v2, "Done"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ls1/u/h0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/u/h0;->c:Ls1/u/h0;

    aput-object v1, v0, v3

    new-instance v1, Ls1/u/h0;

    const-string v2, "Failed"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ls1/u/h0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/u/h0;->d:Ls1/u/h0;

    aput-object v1, v0, v3

    sput-object v0, Ls1/u/h0;->e:[Ls1/u/h0;

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

.method public static valueOf(Ljava/lang/String;)Ls1/u/h0;
    .locals 1

    const-class v0, Ls1/u/h0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/u/h0;

    return-object p0
.end method

.method public static values()[Ls1/u/h0;
    .locals 1

    sget-object v0, Ls1/u/h0;->e:[Ls1/u/h0;

    invoke-virtual {v0}, [Ls1/u/h0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/u/h0;

    return-object v0
.end method
