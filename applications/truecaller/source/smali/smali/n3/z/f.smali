.class public final Ln3/z/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/z/b;

.field public final synthetic b:Ln3/z/q1;

.field public final synthetic c:Ln3/z/q1;

.field public final synthetic d:I

.field public final synthetic e:Ln3/z/q1;

.field public final synthetic f:Ln3/z/o2;

.field public final synthetic g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ln3/z/b;Ln3/z/q1;Ln3/z/q1;ILn3/z/q1;Ln3/z/o2;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Ln3/z/f;->a:Ln3/z/b;

    iput-object p2, p0, Ln3/z/f;->b:Ln3/z/q1;

    iput-object p3, p0, Ln3/z/f;->c:Ln3/z/q1;

    iput p4, p0, Ln3/z/f;->d:I

    iput-object p5, p0, Ln3/z/f;->e:Ln3/z/q1;

    iput-object p6, p0, Ln3/z/f;->f:Ln3/z/o2;

    iput-object p7, p0, Ln3/z/f;->g:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/z/f;->b:Ln3/z/q1;

    .line 2
    iget-object v0, v0, Ln3/z/q1;->h:Ln3/z/x1;

    .line 3
    iget-object v1, p0, Ln3/z/f;->c:Ln3/z/q1;

    .line 4
    iget-object v1, v1, Ln3/z/q1;->h:Ln3/z/x1;

    .line 5
    iget-object v2, p0, Ln3/z/f;->a:Ln3/z/b;

    .line 6
    iget-object v2, v2, Ln3/z/b;->b:Ln3/b0/a/c;

    .line 7
    iget-object v2, v2, Ln3/b0/a/c;->b:Ln3/b0/a/h$e;

    const-string v3, "config.diffCallback"

    .line 8
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->B(Ln3/z/z0;Ln3/z/z0;Ln3/b0/a/h$e;)Ln3/z/y0;

    move-result-object v0

    .line 10
    iget-object v1, p0, Ln3/z/f;->a:Ln3/z/b;

    .line 11
    iget-object v1, v1, Ln3/z/b;->c:Ljava/util/concurrent/Executor;

    .line 12
    new-instance v2, Ln3/z/f$a;

    invoke-direct {v2, p0, v0}, Ln3/z/f$a;-><init>(Ln3/z/f;Ln3/z/y0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
