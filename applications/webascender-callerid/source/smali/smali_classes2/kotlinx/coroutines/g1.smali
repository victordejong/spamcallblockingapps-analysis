.class public abstract Lkotlinx/coroutines/g1;
.super Lkotlinx/coroutines/t;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/n0;
.implements Lkotlinx/coroutines/w0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/b1;",
        ">",
        "Lkotlinx/coroutines/t;",
        "Lkotlinx/coroutines/n0;",
        "Lkotlinx/coroutines/w0;"
    }
.end annotation


# instance fields
.field public final i:Lkotlinx/coroutines/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/b1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/t;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/g1;->i:Lkotlinx/coroutines/b1;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Lkotlinx/coroutines/l1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/g1;->i:Lkotlinx/coroutines/b1;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/h1;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/h1;->b0(Lkotlinx/coroutines/g1;)V

    return-void
.end method
