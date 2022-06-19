.class public Ln3/b/e/i/d$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/b/e/i/d$c;->a(Ln3/b/e/i/g;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/e/i/d$d;

.field public final synthetic b:Landroid/view/MenuItem;

.field public final synthetic c:Ln3/b/e/i/g;

.field public final synthetic d:Ln3/b/e/i/d$c;


# direct methods
.method public constructor <init>(Ln3/b/e/i/d$c;Ln3/b/e/i/d$d;Landroid/view/MenuItem;Ln3/b/e/i/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/e/i/d$c$a;->d:Ln3/b/e/i/d$c;

    iput-object p2, p0, Ln3/b/e/i/d$c$a;->a:Ln3/b/e/i/d$d;

    iput-object p3, p0, Ln3/b/e/i/d$c$a;->b:Landroid/view/MenuItem;

    iput-object p4, p0, Ln3/b/e/i/d$c$a;->c:Ln3/b/e/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/b/e/i/d$c$a;->a:Ln3/b/e/i/d$d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ln3/b/e/i/d$c$a;->d:Ln3/b/e/i/d$c;

    iget-object v1, v1, Ln3/b/e/i/d$c;->a:Ln3/b/e/i/d;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ln3/b/e/i/d;->A:Z

    .line 3
    iget-object v0, v0, Ln3/b/e/i/d$d;->b:Ln3/b/e/i/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/b/e/i/g;->c(Z)V

    .line 4
    iget-object v0, p0, Ln3/b/e/i/d$c$a;->d:Ln3/b/e/i/d$c;

    iget-object v0, v0, Ln3/b/e/i/d$c;->a:Ln3/b/e/i/d;

    iput-boolean v1, v0, Ln3/b/e/i/d;->A:Z

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/b/e/i/d$c$a;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln3/b/e/i/d$c$a;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Ln3/b/e/i/d$c$a;->c:Ln3/b/e/i/g;

    iget-object v1, p0, Ln3/b/e/i/d$c$a;->b:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ln3/b/e/i/g;->r(Landroid/view/MenuItem;I)Z

    :cond_1
    return-void
.end method
