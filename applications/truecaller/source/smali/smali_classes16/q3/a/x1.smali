.class public final Lq3/a/x1;
.super Lq3/a/j2;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\'\u0010\u0004\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u00a2\u0006\u0002\u0008\n\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\r\u001a\u00020\u0008H\u0014R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/LazyStandaloneCoroutine;",
        "Lkotlinx/coroutines/StandaloneCoroutine;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V",
        "continuation",
        "onStart",
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


# instance fields
.field public final c:Ls1/w/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/z/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/z/b/p<",
            "-",
            "Lq3/a/i0;",
            "-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lq3/a/j2;-><init>(Ls1/w/f;Z)V

    .line 2
    invoke-static {p2, p0, p0}, Le/q/f/a/d/a;->Z(Ls1/z/b/p;Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    iput-object p1, p0, Lq3/a/x1;->c:Ls1/w/d;

    return-void
.end method


# virtual methods
.method public h0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/a/x1;->c:Ls1/w/d;

    invoke-static {v0, p0}, Ls1/a/a/a/v0/f/d;->t3(Ls1/w/d;Ls1/w/d;)V

    return-void
.end method
