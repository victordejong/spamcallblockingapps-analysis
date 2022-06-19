.class public final synthetic Ln3/e/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/d/t;

.field public final synthetic b:Ln3/e/b/l0;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ln3/e/d/t;Ln3/e/b/l0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/b;->a:Ln3/e/d/t;

    iput-object p2, p0, Ln3/e/d/b;->b:Ln3/e/b/l0;

    iput-object p3, p0, Ln3/e/d/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ln3/e/d/b;->a:Ln3/e/d/t;

    iget-object v1, p0, Ln3/e/d/b;->b:Ln3/e/b/l0;

    iget-object v2, p0, Ln3/e/d/b;->c:Ljava/util/List;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v3, Ln3/e/d/s;

    invoke-direct {v3, v0, p1, v1}, Ln3/e/d/s;-><init>(Ln3/e/d/t;Ln3/h/a/b;Ln3/e/b/l0;)V

    .line 3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    check-cast v1, Ln3/e/b/j1/z;

    .line 5
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 6
    invoke-interface {v1, p1, v3}, Ln3/e/b/j1/z;->b(Ljava/util/concurrent/Executor;Ln3/e/b/j1/q;)V

    const-string p1, "waitForCaptureResult"

    return-object p1
.end method
