.class public final synthetic Ln3/e/a/e/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/b1;

.field public final synthetic b:Ln3/e/b/g1;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/b1;Ln3/e/b/g1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/w;->a:Ln3/e/a/e/b1;

    iput-object p2, p0, Ln3/e/a/e/w;->b:Ln3/e/b/g1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln3/e/a/e/w;->a:Ln3/e/a/e/b1;

    iget-object v1, p0, Ln3/e/a/e/w;->b:Ln3/e/b/g1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use case "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " RESET"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v2, v3}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v2, v0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ln3/e/b/g1;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v1, v1, Ln3/e/b/g1;->k:Ln3/e/b/j1/j1;

    .line 6
    invoke-virtual {v2, v3, v1}, Ln3/e/b/j1/p1;->h(Ljava/lang/String;Ln3/e/b/j1/j1;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ln3/e/a/e/b1;->w(Z)V

    .line 8
    invoke-virtual {v0}, Ln3/e/a/e/b1;->z()V

    .line 9
    iget-object v1, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v2, Ln3/e/a/e/b1$e;->d:Ln3/e/a/e/b1$e;

    if-ne v1, v2, :cond_0

    .line 10
    invoke-virtual {v0}, Ln3/e/a/e/b1;->t()V

    :cond_0
    return-void
.end method
