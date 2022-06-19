.class public final Ln3/z/e;
.super Ln3/z/q1$b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln3/z/b;


# direct methods
.method public constructor <init>(Ln3/z/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln3/z/e;->a:Ln3/z/b;

    invoke-direct {p0}, Ln3/z/q1$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/z/e;->a:Ln3/z/b;

    invoke-virtual {v0}, Ln3/z/b;->b()Ln3/b0/a/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public b(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/e;->a:Ln3/z/b;

    invoke-virtual {v0}, Ln3/z/b;->b()Ln3/b0/a/q;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ln3/b0/a/q;->onInserted(II)V

    return-void
.end method

.method public c(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/e;->a:Ln3/z/b;

    invoke-virtual {v0}, Ln3/z/b;->b()Ln3/b0/a/q;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ln3/b0/a/q;->onRemoved(II)V

    return-void
.end method
