.class public final Lq3/a/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/w/f$a;
.implements Ls1/w/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/w/f$a;",
        "Ls1/w/f$b<",
        "Lq3/a/t2;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c2\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/coroutines/UndispatchedMarker;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "()V",
        "key",
        "getKey",
        "()Lkotlin/coroutines/CoroutineContext$Key;",
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
.field public static final a:Lq3/a/t2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/a/t2;

    invoke-direct {v0}, Lq3/a/t2;-><init>()V

    sput-object v0, Lq3/a/t2;->a:Lq3/a/t2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Ls1/z/b/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ls1/z/b/p<",
            "-TR;-",
            "Ls1/w/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Ls1/w/f$a$a;->a(Ls1/w/f$a;Ljava/lang/Object;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ls1/w/f$b;)Ls1/w/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ls1/w/f$a;",
            ">(",
            "Ls1/w/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ls1/w/f$a$a;->b(Ls1/w/f$a;Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ls1/w/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/w/f$b<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public minusKey(Ls1/w/f$b;)Ls1/w/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f$b<",
            "*>;)",
            "Ls1/w/f;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ls1/w/f$a$a;->c(Ls1/w/f$a;Ls1/w/f$b;)Ls1/w/f;

    move-result-object p1

    return-object p1
.end method

.method public plus(Ls1/w/f;)Ls1/w/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ls1/w/f$a$a;->d(Ls1/w/f$a;Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    return-object p1
.end method
