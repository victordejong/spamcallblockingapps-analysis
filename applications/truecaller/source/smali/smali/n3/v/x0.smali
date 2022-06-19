.class public final Ln3/v/x0;
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
.field public a:Z

.field public final synthetic b:Ln3/v/i0;


# direct methods
.method public constructor <init>(Ln3/v/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/v/x0;->b:Ln3/v/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/v/x0;->a:Z

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
    iget-object v0, p0, Ln3/v/x0;->b:Ln3/v/i0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Ln3/v/x0;->a:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ln3/v/x0;->a:Z

    .line 5
    iget-object v0, p0, Ln3/v/x0;->b:Ln3/v/i0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
