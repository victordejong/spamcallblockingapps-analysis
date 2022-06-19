.class public final Ln3/v/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "TX;>;"
    }
.end annotation


# instance fields
.field public a:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Ln3/c/a/c/a;

.field public final synthetic c:Ln3/v/i0;


# direct methods
.method public constructor <init>(Ln3/c/a/c/a;Ln3/v/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/v/w0;->b:Ln3/c/a/c/a;

    iput-object p2, p0, Ln3/v/w0;->c:Ln3/v/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/v/w0;->b:Ln3/c/a/c/a;

    invoke-interface {v0, p1}, Ln3/c/a/c/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 2
    iget-object v0, p0, Ln3/v/w0;->a:Landroidx/lifecycle/LiveData;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Ln3/v/w0;->c:Ln3/v/i0;

    invoke-virtual {v1, v0}, Ln3/v/i0;->n(Landroidx/lifecycle/LiveData;)V

    .line 4
    :cond_1
    iput-object p1, p0, Ln3/v/w0;->a:Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Ln3/v/w0;->c:Ln3/v/i0;

    new-instance v1, Ln3/v/w0$a;

    invoke-direct {v1, p0}, Ln3/v/w0$a;-><init>(Ln3/v/w0;)V

    invoke-virtual {v0, p1, v1}, Ln3/v/i0;->m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    :cond_2
    return-void
.end method
