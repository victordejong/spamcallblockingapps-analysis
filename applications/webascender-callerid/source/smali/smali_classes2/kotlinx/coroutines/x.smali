.class public abstract Lkotlinx/coroutines/x;
.super Lkotlin/u/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/u/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/x$a;
    }
.end annotation


# static fields
.field public static final f:Lkotlinx/coroutines/x$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/x$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lkotlinx/coroutines/x;->f:Lkotlinx/coroutines/x$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/u/e;->c:Lkotlin/u/e$b;

    invoke-direct {p0, v0}, Lkotlin/u/a;-><init>(Lkotlin/u/g$c;)V

    return-void
.end method


# virtual methods
.method public abstract A(Lkotlin/u/g;Ljava/lang/Runnable;)V
.end method

.method public C(Lkotlin/u/g;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lkotlin/u/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/d<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/internal/e;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/e;->i()Lkotlinx/coroutines/i;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlinx/coroutines/i;->o()V

    :cond_0
    return-void
.end method

.method public final c(Lkotlin/u/d;)Lkotlin/u/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/u/d<",
            "-TT;>;)",
            "Lkotlin/u/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/e;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/e;-><init>(Lkotlinx/coroutines/x;Lkotlin/u/d;)V

    return-object v0
.end method

.method public get(Lkotlin/u/g$c;)Lkotlin/u/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/u/g$b;",
            ">(",
            "Lkotlin/u/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/u/e$a;->a(Lkotlin/u/e;Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object p1

    return-object p1
.end method

.method public minusKey(Lkotlin/u/g$c;)Lkotlin/u/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/g$c<",
            "*>;)",
            "Lkotlin/u/g;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/u/e$a;->b(Lkotlin/u/e;Lkotlin/u/g$c;)Lkotlin/u/g;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/i0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/i0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
