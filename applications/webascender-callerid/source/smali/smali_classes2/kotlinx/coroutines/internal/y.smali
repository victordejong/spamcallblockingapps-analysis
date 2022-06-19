.class public final Lkotlinx/coroutines/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/u;

.field private static final b:Lkotlin/w/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/p<",
            "Ljava/lang/Object;",
            "Lkotlin/u/g$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lkotlin/w/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/p<",
            "Lkotlinx/coroutines/q1<",
            "*>;",
            "Lkotlin/u/g$b;",
            "Lkotlinx/coroutines/q1<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final d:Lkotlin/w/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/p<",
            "Lkotlinx/coroutines/internal/b0;",
            "Lkotlin/u/g$b;",
            "Lkotlinx/coroutines/internal/b0;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lkotlin/w/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/p<",
            "Lkotlinx/coroutines/internal/b0;",
            "Lkotlin/u/g$b;",
            "Lkotlinx/coroutines/internal/b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "ZERO"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/y;->a:Lkotlinx/coroutines/internal/u;

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/y$a;->f:Lkotlinx/coroutines/internal/y$a;

    sput-object v0, Lkotlinx/coroutines/internal/y;->b:Lkotlin/w/b/p;

    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/y$b;->f:Lkotlinx/coroutines/internal/y$b;

    sput-object v0, Lkotlinx/coroutines/internal/y;->c:Lkotlin/w/b/p;

    .line 4
    sget-object v0, Lkotlinx/coroutines/internal/y$d;->f:Lkotlinx/coroutines/internal/y$d;

    sput-object v0, Lkotlinx/coroutines/internal/y;->d:Lkotlin/w/b/p;

    .line 5
    sget-object v0, Lkotlinx/coroutines/internal/y$c;->f:Lkotlinx/coroutines/internal/y$c;

    sput-object v0, Lkotlinx/coroutines/internal/y;->e:Lkotlin/w/b/p;

    return-void
.end method

.method public static final a(Lkotlin/u/g;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/y;->a:Lkotlinx/coroutines/internal/u;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/b0;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/internal/b0;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b0;->c()V

    .line 4
    sget-object v0, Lkotlinx/coroutines/internal/y;->e:Lkotlin/w/b/p;

    invoke-interface {p0, p1, v0}, Lkotlin/u/g;->fold(Ljava/lang/Object;Lkotlin/w/b/p;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    sget-object v1, Lkotlinx/coroutines/internal/y;->c:Lkotlin/w/b/p;

    invoke-interface {p0, v0, v1}, Lkotlin/u/g;->fold(Ljava/lang/Object;Lkotlin/w/b/p;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/q1;

    .line 6
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/q1;->l(Lkotlin/u/g;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Lkotlin/u/g;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/y;->b:Lkotlin/w/b/p;

    invoke-interface {p0, v0, v1}, Lkotlin/u/g;->fold(Ljava/lang/Object;Lkotlin/w/b/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/w/c/k;->d(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Lkotlin/u/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/internal/y;->b(Lkotlin/u/g;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/y;->a:Lkotlinx/coroutines/internal/u;

    goto :goto_1

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Lkotlinx/coroutines/internal/b0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/b0;-><init>(Lkotlin/u/g;I)V

    sget-object p1, Lkotlinx/coroutines/internal/y;->d:Lkotlin/w/b/p;

    invoke-interface {p0, v0, p1}, Lkotlin/u/g;->fold(Ljava/lang/Object;Lkotlin/w/b/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/q1;

    .line 6
    invoke-interface {p1, p0}, Lkotlinx/coroutines/q1;->y(Lkotlin/u/g;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method
