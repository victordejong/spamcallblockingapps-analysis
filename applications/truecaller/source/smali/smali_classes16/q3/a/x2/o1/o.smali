.class public final Lq3/a/x2/o1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/w/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/a/x2/o1/o$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "e",
        "",
        "(Ljava/lang/Throwable;)V",
        "key",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "getKey",
        "()Lkotlin/coroutines/CoroutineContext$Key;",
        "Key",
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
.field public static final b:Lq3/a/x2/o1/o$a;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq3/a/x2/o1/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq3/a/x2/o1/o$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lq3/a/x2/o1/o;->b:Lq3/a/x2/o1/o$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/a/x2/o1/o;->a:Ljava/lang/Throwable;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/w/f$b<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/x2/o1/o;->b:Lq3/a/x2/o1/o$a;

    return-object v0
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
