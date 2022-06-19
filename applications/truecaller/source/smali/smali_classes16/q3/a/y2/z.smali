.class public final Lq3/a/y2/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0000\u001a\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0000\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"$\u0010\u0002\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\",\u0010\u0006\u001a \u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00070\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\" \u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "NO_THREAD_ELEMENTS",
        "Lkotlinx/coroutines/internal/Symbol;",
        "countAll",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "findOne",
        "Lkotlinx/coroutines/ThreadContextElement;",
        "updateState",
        "Lkotlinx/coroutines/internal/ThreadState;",
        "restoreThreadContext",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "oldState",
        "threadContextElements",
        "updateThreadContext",
        "countOrElement",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lq3/a/y2/x;

.field public static final b:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "Ljava/lang/Object;",
            "Ls1/w/f$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "Lq3/a/l2<",
            "*>;",
            "Ls1/w/f$a;",
            "Lq3/a/l2<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final d:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "Lq3/a/y2/e0;",
            "Ls1/w/f$a;",
            "Lq3/a/y2/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq3/a/y2/x;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lq3/a/y2/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/a/y2/z;->a:Lq3/a/y2/x;

    .line 2
    sget-object v0, Lq3/a/y2/z$a;->b:Lq3/a/y2/z$a;

    sput-object v0, Lq3/a/y2/z;->b:Ls1/z/b/p;

    .line 3
    sget-object v0, Lq3/a/y2/z$b;->b:Lq3/a/y2/z$b;

    sput-object v0, Lq3/a/y2/z;->c:Ls1/z/b/p;

    .line 4
    sget-object v0, Lq3/a/y2/z$c;->b:Lq3/a/y2/z$c;

    sput-object v0, Lq3/a/y2/z;->d:Ls1/z/b/p;

    return-void
.end method

.method public static final a(Ls1/w/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-object v0, Lq3/a/y2/z;->a:Lq3/a/y2/x;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lq3/a/y2/e0;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lq3/a/y2/e0;

    .line 4
    iget-object v0, p1, Lq3/a/y2/e0;->c:[Lq3/a/l2;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 5
    iget-object v2, p1, Lq3/a/y2/e0;->c:[Lq3/a/l2;

    aget-object v2, v2, v0

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    iget-object v3, p1, Lq3/a/y2/e0;->b:[Ljava/lang/Object;

    aget-object v0, v3, v0

    invoke-interface {v2, p0, v0}, Lq3/a/l2;->J(Ls1/w/f;Ljava/lang/Object;)V

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6
    sget-object v1, Lq3/a/y2/z;->c:Ls1/z/b/p;

    invoke-interface {p0, v0, v1}, Ls1/w/f;->fold(Ljava/lang/Object;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lq3/a/l2;

    .line 7
    invoke-interface {v0, p0, p1}, Lq3/a/l2;->J(Ls1/w/f;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static final b(Ls1/w/f;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lq3/a/y2/z;->b:Ls1/z/b/p;

    invoke-interface {p0, v0, v1}, Ls1/w/f;->fold(Ljava/lang/Object;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Ls1/w/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Lq3/a/y2/z;->b(Ls1/w/f;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lq3/a/y2/z;->a:Lq3/a/y2/x;

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Lq3/a/y2/e0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lq3/a/y2/e0;-><init>(Ls1/w/f;I)V

    sget-object p1, Lq3/a/y2/z;->d:Ls1/z/b/p;

    invoke-interface {p0, v0, p1}, Ls1/w/f;->fold(Ljava/lang/Object;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_2
    check-cast p1, Lq3/a/l2;

    .line 6
    invoke-interface {p1, p0}, Lq3/a/l2;->D0(Ls1/w/f;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
