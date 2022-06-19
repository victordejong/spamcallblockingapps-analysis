.class public final synthetic Ln3/e/d/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/d/z;

.field public final synthetic b:Ln3/e/b/f1;


# direct methods
.method public synthetic constructor <init>(Ln3/e/d/z;Ln3/e/b/f1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/l;->a:Ln3/e/d/z;

    iput-object p2, p0, Ln3/e/d/l;->b:Ln3/e/b/f1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ln3/e/d/l;->a:Ln3/e/d/z;

    iget-object v1, p0, Ln3/e/d/l;->b:Ln3/e/b/f1;

    .line 1
    iget-object v2, v0, Ln3/e/d/z;->h:Ln3/e/b/f1;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_0

    .line 2
    iput-object v3, v0, Ln3/e/d/z;->h:Ln3/e/b/f1;

    .line 3
    iput-object v3, v0, Ln3/e/d/z;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    :cond_0
    iget-object v1, v0, Ln3/e/d/z;->l:Ln3/e/d/v$a;

    if-eqz v1, :cond_1

    .line 5
    check-cast v1, Ln3/e/d/d;

    invoke-virtual {v1}, Ln3/e/d/d;->a()V

    .line 6
    iput-object v3, v0, Ln3/e/d/z;->l:Ln3/e/d/v$a;

    :cond_1
    return-void
.end method
