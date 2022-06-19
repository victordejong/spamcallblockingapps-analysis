.class public interface abstract Lkotlinx/coroutines/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/u/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/b1$a;,
        Lkotlinx/coroutines/b1$b;
    }
.end annotation


# static fields
.field public static final e:Lkotlinx/coroutines/b1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/b1$b;->a:Lkotlinx/coroutines/b1$b;

    sput-object v0, Lkotlinx/coroutines/b1;->e:Lkotlinx/coroutines/b1$b;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract f(ZZLkotlin/w/b/l;)Lkotlinx/coroutines/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/r;",
            ">;)",
            "Lkotlinx/coroutines/n0;"
        }
    .end annotation
.end method

.method public abstract g()Ljava/util/concurrent/CancellationException;
.end method

.method public abstract r(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract start()Z
.end method

.method public abstract z(Lkotlinx/coroutines/n;)Lkotlinx/coroutines/l;
.end method
