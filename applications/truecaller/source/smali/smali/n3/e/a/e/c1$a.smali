.class public Ln3/e/a/e/c1$a;
.super Ln3/v/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/v/i0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public m:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field public n:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ln3/v/i0;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/a/e/c1$a;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c1$a;->m:Landroidx/lifecycle/LiveData;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln3/e/a/e/c1$a;->n:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TS;>;",
            "Ln3/v/l0<",
            "-TS;>;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c1$a;->m:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Ln3/v/i0;->n(Landroidx/lifecycle/LiveData;)V

    .line 3
    :cond_0
    iput-object p1, p0, Ln3/e/a/e/c1$a;->m:Landroidx/lifecycle/LiveData;

    .line 4
    new-instance v0, Ln3/e/a/e/h0;

    invoke-direct {v0, p0}, Ln3/e/a/e/h0;-><init>(Ln3/e/a/e/c1$a;)V

    invoke-super {p0, p1, v0}, Ln3/v/i0;->m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    return-void
.end method
