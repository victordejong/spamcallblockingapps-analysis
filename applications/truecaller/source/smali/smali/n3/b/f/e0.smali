.class public Ln3/b/f/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/i/g$a;


# instance fields
.field public final synthetic a:Ln3/b/f/g0;


# direct methods
.method public constructor <init>(Ln3/b/f/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/f/e0;->a:Ln3/b/f/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/b/e/i/g;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/b/f/e0;->a:Ln3/b/f/g0;

    iget-object p1, p1, Ln3/b/f/g0;->e:Ln3/b/f/g0$b;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ln3/b/f/g0$b;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ln3/b/e/i/g;)V
    .locals 0

    return-void
.end method
