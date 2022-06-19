.class public Ln3/m0/c0/t/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "TIn;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOut;"
        }
    .end annotation
.end field

.field public final synthetic b:Ln3/m0/c0/t/x/a;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ln3/c/a/c/a;

.field public final synthetic e:Ln3/v/i0;


# direct methods
.method public constructor <init>(Ln3/m0/c0/t/x/a;Ljava/lang/Object;Ln3/c/a/c/a;Ln3/v/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/t/g;->b:Ln3/m0/c0/t/x/a;

    iput-object p2, p0, Ln3/m0/c0/t/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Ln3/m0/c0/t/g;->d:Ln3/c/a/c/a;

    iput-object p4, p0, Ln3/m0/c0/t/g;->e:Ln3/v/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln3/m0/c0/t/g;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIn;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/g;->b:Ln3/m0/c0/t/x/a;

    new-instance v1, Ln3/m0/c0/t/g$a;

    invoke-direct {v1, p0, p1}, Ln3/m0/c0/t/g$a;-><init>(Ln3/m0/c0/t/g;Ljava/lang/Object;)V

    check-cast v0, Ln3/m0/c0/t/x/b;

    .line 2
    iget-object p1, v0, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    invoke-virtual {p1, v1}, Ln3/m0/c0/t/k;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
