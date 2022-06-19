.class public Ln3/r/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/r/a/b;->b(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ln3/r/a/u0$d;

.field public final synthetic c:Ln3/r/a/b;


# direct methods
.method public constructor <init>(Ln3/r/a/b;Ljava/util/List;Ln3/r/a/u0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/r/a/b$a;->c:Ln3/r/a/b;

    iput-object p2, p0, Ln3/r/a/b$a;->a:Ljava/util/List;

    iput-object p3, p0, Ln3/r/a/b$a;->b:Ln3/r/a/u0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/r/a/b$a;->a:Ljava/util/List;

    iget-object v1, p0, Ln3/r/a/b$a;->b:Ln3/r/a/u0$d;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/r/a/b$a;->a:Ljava/util/List;

    iget-object v1, p0, Ln3/r/a/b$a;->b:Ln3/r/a/u0$d;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Ln3/r/a/b$a;->c:Ln3/r/a/b;

    iget-object v1, p0, Ln3/r/a/b$a;->b:Ln3/r/a/u0$d;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, v1, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 6
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 7
    iget-object v1, v1, Ln3/r/a/u0$d;->a:Ln3/r/a/u0$d$c;

    .line 8
    invoke-virtual {v1, v0}, Ln3/r/a/u0$d$c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
