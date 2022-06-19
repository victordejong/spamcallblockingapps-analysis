.class public final synthetic Le/a/e/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Landroid/view/Menu;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/l;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/l;->b:Landroid/view/Menu;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/a/e/c/l;->a:Le/a/e/c/s1;

    iget-object v1, p0, Le/a/e/c/l;->b:Landroid/view/Menu;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00ba

    .line 2
    invoke-interface {v1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
