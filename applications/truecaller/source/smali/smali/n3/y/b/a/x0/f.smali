.class public final synthetic Ln3/y/b/a/x0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/x0/e$b;

.field public final b:Ln3/y/b/a/x0/e$a;


# direct methods
.method public constructor <init>(Ln3/y/b/a/x0/e$b;Ln3/y/b/a/x0/e$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/x0/f;->a:Ln3/y/b/a/x0/e$b;

    iput-object p2, p0, Ln3/y/b/a/x0/f;->b:Ln3/y/b/a/x0/e$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ln3/y/b/a/x0/f;->a:Ln3/y/b/a/x0/e$b;

    iget-object v1, p0, Ln3/y/b/a/x0/f;->b:Ln3/y/b/a/x0/e$a;

    .line 1
    iget-boolean v2, v0, Ln3/y/b/a/x0/e$b;->c:Z

    if-nez v2, :cond_0

    .line 2
    iget-object v0, v0, Ln3/y/b/a/x0/e$b;->b:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ln3/y/b/a/x0/e$a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
