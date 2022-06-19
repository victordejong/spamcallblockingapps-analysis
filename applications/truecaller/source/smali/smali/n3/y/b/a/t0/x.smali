.class public final synthetic Ln3/y/b/a/t0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/t0/c0$a;

.field public final b:Ln3/y/b/a/t0/c0;

.field public final c:Ln3/y/b/a/t0/c0$b;

.field public final d:Ln3/y/b/a/t0/c0$c;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/c0$a;Ln3/y/b/a/t0/c0;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/x;->a:Ln3/y/b/a/t0/c0$a;

    iput-object p2, p0, Ln3/y/b/a/t0/x;->b:Ln3/y/b/a/t0/c0;

    iput-object p3, p0, Ln3/y/b/a/t0/x;->c:Ln3/y/b/a/t0/c0$b;

    iput-object p4, p0, Ln3/y/b/a/t0/x;->d:Ln3/y/b/a/t0/c0$c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ln3/y/b/a/t0/x;->a:Ln3/y/b/a/t0/c0$a;

    iget-object v1, p0, Ln3/y/b/a/t0/x;->b:Ln3/y/b/a/t0/c0;

    iget-object v2, p0, Ln3/y/b/a/t0/x;->c:Ln3/y/b/a/t0/c0$b;

    iget-object v3, p0, Ln3/y/b/a/t0/x;->d:Ln3/y/b/a/t0/c0$c;

    .line 1
    iget v4, v0, Ln3/y/b/a/t0/c0$a;->a:I

    iget-object v0, v0, Ln3/y/b/a/t0/c0$a;->b:Ln3/y/b/a/t0/t$a;

    invoke-interface {v1, v4, v0, v2, v3}, Ln3/y/b/a/t0/c0;->t(ILn3/y/b/a/t0/t$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V

    return-void
.end method
