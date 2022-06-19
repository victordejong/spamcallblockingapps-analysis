.class final Lkotlinx/coroutines/internal/y$c;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/p<",
        "Lkotlinx/coroutines/internal/b0;",
        "Lkotlin/u/g$b;",
        "Lkotlinx/coroutines/internal/b0;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lkotlinx/coroutines/internal/y$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/y$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/y$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/y$c;->f:Lkotlinx/coroutines/internal/y$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/b0;Lkotlin/u/g$b;)Lkotlinx/coroutines/internal/b0;
    .locals 2

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/q1;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lkotlinx/coroutines/q1;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b0;->b()Lkotlin/u/g;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b0;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lkotlinx/coroutines/q1;->l(Lkotlin/u/g;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/b0;

    check-cast p2, Lkotlin/u/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/y$c;->a(Lkotlinx/coroutines/internal/b0;Lkotlin/u/g$b;)Lkotlinx/coroutines/internal/b0;

    return-object p1
.end method
