.class public final enum Lq3/a/j0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq3/a/j0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JC\u0010\u0008\u001a\u00020\t\"\u0004\u0008\u0000\u0010\n2\u001c\u0010\u000b\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000c2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\n0\rH\u0087\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J\\\u0010\u0008\u001a\u00020\t\"\u0004\u0008\u0000\u0010\u0011\"\u0004\u0008\u0001\u0010\n2\'\u0010\u000b\u001a#\u0008\u0001\u0012\u0004\u0012\u0002H\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0012\u00a2\u0006\u0002\u0008\u00132\u0006\u0010\u0014\u001a\u0002H\u00112\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\n0\rH\u0087\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0003\u0010\u0007j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineStart;",
        "",
        "(Ljava/lang/String;I)V",
        "isLazy",
        "",
        "isLazy$annotations",
        "()V",
        "()Z",
        "invoke",
        "",
        "T",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "completion",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V",
        "R",
        "Lkotlin/Function2;",
        "Lkotlin/ExtensionFunctionType;",
        "receiver",
        "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V",
        "DEFAULT",
        "LAZY",
        "ATOMIC",
        "UNDISPATCHED",
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
.field public static final enum a:Lq3/a/j0;

.field public static final enum b:Lq3/a/j0;

.field public static final enum c:Lq3/a/j0;

.field public static final enum d:Lq3/a/j0;

.field public static final synthetic e:[Lq3/a/j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lq3/a/j0;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq3/a/j0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq3/a/j0;->a:Lq3/a/j0;

    .line 2
    new-instance v1, Lq3/a/j0;

    const-string v3, "LAZY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lq3/a/j0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq3/a/j0;->b:Lq3/a/j0;

    .line 3
    new-instance v3, Lq3/a/j0;

    const-string v5, "ATOMIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lq3/a/j0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lq3/a/j0;->c:Lq3/a/j0;

    .line 4
    new-instance v5, Lq3/a/j0;

    const-string v7, "UNDISPATCHED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lq3/a/j0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lq3/a/j0;->d:Lq3/a/j0;

    const/4 v7, 0x4

    new-array v7, v7, [Lq3/a/j0;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lq3/a/j0;->e:[Lq3/a/j0;

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

.method public static valueOf(Ljava/lang/String;)Lq3/a/j0;
    .locals 1

    const-class v0, Lq3/a/j0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lq3/a/j0;

    return-object p0
.end method

.method public static values()[Lq3/a/j0;
    .locals 2

    sget-object v0, Lq3/a/j0;->e:[Lq3/a/j0;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lq3/a/j0;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-object v0, Lq3/a/j0;->b:Lq3/a/j0;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
