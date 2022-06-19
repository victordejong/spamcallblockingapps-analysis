.class public Ln3/r/a/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/r/a/u0;->a(Ln3/r/a/u0$d$c;Ln3/r/a/u0$d$b;Ln3/r/a/c0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/r/a/u0$c;

.field public final synthetic b:Ln3/r/a/u0;


# direct methods
.method public constructor <init>(Ln3/r/a/u0;Ln3/r/a/u0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/r/a/u0$a;->b:Ln3/r/a/u0;

    iput-object p2, p0, Ln3/r/a/u0$a;->a:Ln3/r/a/u0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/r/a/u0$a;->b:Ln3/r/a/u0;

    iget-object v0, v0, Ln3/r/a/u0;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Ln3/r/a/u0$a;->a:Ln3/r/a/u0$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/r/a/u0$a;->a:Ln3/r/a/u0$c;

    .line 3
    iget-object v1, v0, Ln3/r/a/u0$d;->a:Ln3/r/a/u0$d$c;

    .line 4
    iget-object v0, v0, Ln3/r/a/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Ln3/r/a/u0$d$c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
