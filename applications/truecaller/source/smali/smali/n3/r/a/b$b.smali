.class public Ln3/r/a/b$b;
.super Ln3/r/a/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/r/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Z

.field public d:Z

.field public e:Ln3/r/a/p;


# direct methods
.method public constructor <init>(Ln3/r/a/u0$d;Ln3/k/e/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/r/a/b$c;-><init>(Ln3/r/a/u0$d;Ln3/k/e/a;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ln3/r/a/b$b;->d:Z

    .line 3
    iput-boolean p3, p0, Ln3/r/a/b$b;->c:Z

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Ln3/r/a/p;
    .locals 4

    .line 1
    iget-boolean v0, p0, Ln3/r/a/b$b;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Ln3/r/a/b$b;->e:Ln3/r/a/p;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    .line 4
    iget-object v1, v0, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 5
    iget-object v0, v0, Ln3/r/a/u0$d;->a:Ln3/r/a/u0$d$c;

    .line 6
    sget-object v2, Ln3/r/a/u0$d$c;->b:Ln3/r/a/u0$d$c;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Ln3/r/a/b$b;->c:Z

    .line 7
    invoke-static {p1, v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->N0(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Ln3/r/a/p;

    move-result-object p1

    iput-object p1, p0, Ln3/r/a/b$b;->e:Ln3/r/a/p;

    .line 8
    iput-boolean v3, p0, Ln3/r/a/b$b;->d:Z

    return-object p1
.end method
