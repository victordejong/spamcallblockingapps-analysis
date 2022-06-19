.class public final synthetic Ln3/y/b/a/t0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/t0/c0$a;

.field public final b:Ln3/y/b/a/t0/c0;

.field public final c:Ln3/y/b/a/t0/t$a;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/c0$a;Ln3/y/b/a/t0/c0;Ln3/y/b/a/t0/t$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/u;->a:Ln3/y/b/a/t0/c0$a;

    iput-object p2, p0, Ln3/y/b/a/t0/u;->b:Ln3/y/b/a/t0/c0;

    iput-object p3, p0, Ln3/y/b/a/t0/u;->c:Ln3/y/b/a/t0/t$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ln3/y/b/a/t0/u;->a:Ln3/y/b/a/t0/c0$a;

    iget-object v1, p0, Ln3/y/b/a/t0/u;->b:Ln3/y/b/a/t0/c0;

    iget-object v2, p0, Ln3/y/b/a/t0/u;->c:Ln3/y/b/a/t0/t$a;

    .line 1
    iget v0, v0, Ln3/y/b/a/t0/c0$a;->a:I

    invoke-interface {v1, v0, v2}, Ln3/y/b/a/t0/c0;->l(ILn3/y/b/a/t0/t$a;)V

    return-void
.end method
