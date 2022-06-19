.class public final synthetic Ln3/e/d/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/d/z;

.field public final synthetic b:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Ln3/e/d/z;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/n;->a:Ln3/e/d/z;

    iput-object p2, p0, Ln3/e/d/n;->b:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Ln3/e/d/n;->a:Ln3/e/d/z;

    iget-object v1, p0, Ln3/e/d/n;->b:Landroid/view/Surface;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TextureViewImpl"

    const-string v4, "Surface set on Preview."

    .line 2
    invoke-static {v3, v4, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v2, v0, Ln3/e/d/z;->h:Ln3/e/b/f1;

    .line 4
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ln3/e/d/p;

    invoke-direct {v4, p1}, Ln3/e/d/p;-><init>(Ln3/h/a/b;)V

    .line 5
    invoke-virtual {v2, v1, v3, v4}, Ln3/e/b/f1;->a(Landroid/view/Surface;Ljava/util/concurrent/Executor;Ln3/k/h/b;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provideSurface[request="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ln3/e/d/z;->h:Ln3/e/b/f1;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " surface="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
