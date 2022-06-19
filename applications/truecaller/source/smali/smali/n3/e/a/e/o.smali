.class public final synthetic Ln3/e/a/e/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/b1$f$b;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/b1$f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/o;->a:Ln3/e/a/e/b1$f$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ln3/e/a/e/o;->a:Ln3/e/a/e/b1$f$b;

    .line 1
    iget-boolean v1, v0, Ln3/e/a/e/b1$f$b;->b:Z

    if-nez v1, :cond_1

    .line 2
    iget-object v1, v0, Ln3/e/a/e/b1$f$b;->c:Ln3/e/a/e/b1$f;

    iget-object v1, v1, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object v1, v1, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v2, Ln3/e/a/e/b1$e;->f:Ln3/e/a/e/b1$e;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 4
    iget-object v0, v0, Ln3/e/a/e/b1$f$b;->c:Ln3/e/a/e/b1$f;

    iget-object v0, v0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    invoke-virtual {v0, v3}, Ln3/e/a/e/b1;->s(Z)V

    :cond_1
    return-void
.end method
