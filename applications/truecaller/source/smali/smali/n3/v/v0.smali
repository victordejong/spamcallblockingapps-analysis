.class public final Ln3/v/v0;
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
.field public final synthetic a:Ln3/v/i0;

.field public final synthetic b:Ln3/c/a/c/a;


# direct methods
.method public constructor <init>(Ln3/v/i0;Ln3/c/a/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/v/v0;->a:Ln3/v/i0;

    iput-object p2, p0, Ln3/v/v0;->b:Ln3/c/a/c/a;

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
    iget-object v0, p0, Ln3/v/v0;->a:Ln3/v/i0;

    iget-object v1, p0, Ln3/v/v0;->b:Ln3/c/a/c/a;

    invoke-interface {v1, p1}, Ln3/c/a/c/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    return-void
.end method
