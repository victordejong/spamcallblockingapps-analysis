.class public final Le/a/t3/c/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t3/c/q;-><init>(Le/a/t3/c/p$a;Landroid/view/View;Le/a/v0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/MenuItem;

.field public final synthetic b:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/t3/c/q$c;->a:Landroid/view/MenuItem;

    iput-object p2, p0, Le/a/t3/c/q$c;->b:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/t3/c/q$c;->a:Landroid/view/MenuItem;

    const-string v0, "menuResetValue"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2
    iget-object p1, p0, Le/a/t3/c/q$c;->b:Landroid/view/MenuItem;

    const-string v1, "menuSaveRestart"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/t3/c/q$c;->a:Landroid/view/MenuItem;

    const-string v0, "menuResetValue"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2
    iget-object p1, p0, Le/a/t3/c/q$c;->b:Landroid/view/MenuItem;

    const-string v1, "menuSaveRestart"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method
