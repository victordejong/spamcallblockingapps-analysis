.class public final synthetic Ln3/y/b/a/t0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/t0/f0;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/e0;->a:Ln3/y/b/a/t0/f0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln3/y/b/a/t0/e0;->a:Ln3/y/b/a/t0/f0;

    .line 1
    iget-boolean v1, v0, Ln3/y/b/a/t0/f0;->P:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Ln3/y/b/a/t0/f0;->p:Ln3/y/b/a/t0/s$a;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v1, v0}, Ln3/y/b/a/t0/k0$a;->l(Ln3/y/b/a/t0/k0;)V

    :cond_0
    return-void
.end method
