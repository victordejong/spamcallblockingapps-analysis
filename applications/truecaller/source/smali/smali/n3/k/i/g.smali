.class public Ln3/k/i/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field public final synthetic a:Ln3/k/i/h;


# direct methods
.method public constructor <init>(Ln3/k/i/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/k/i/g;->a:Ln3/k/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/i/g;->a:Ln3/k/i/h;

    invoke-interface {v0, p1}, Ln3/k/i/h;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/i/g;->a:Ln3/k/i/h;

    invoke-interface {v0, p1}, Ln3/k/i/h;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
