.class public Ln3/r/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/r/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ln3/r/a/u0$d;

.field public final b:Ln3/k/e/a;


# direct methods
.method public constructor <init>(Ln3/r/a/u0$d;Ln3/k/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    .line 3
    iput-object p2, p0, Ln3/r/a/b$c;->b:Ln3/k/e/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    iget-object v1, p0, Ln3/r/a/b$c;->b:Ln3/k/e/a;

    .line 2
    iget-object v2, v0, Ln3/r/a/u0$d;->e:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ln3/r/a/u0$d;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/r/a/u0$d;->b()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    .line 2
    iget-object v0, v0, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 4
    invoke-static {v0}, Ln3/r/a/u0$d$c;->d(Landroid/view/View;)Ln3/r/a/u0$d$c;

    move-result-object v0

    .line 5
    iget-object v1, p0, Ln3/r/a/b$c;->a:Ln3/r/a/u0$d;

    .line 6
    iget-object v1, v1, Ln3/r/a/u0$d;->a:Ln3/r/a/u0$d$c;

    if-eq v0, v1, :cond_1

    .line 7
    sget-object v2, Ln3/r/a/u0$d$c;->b:Ln3/r/a/u0$d$c;

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
