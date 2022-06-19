.class public final Le/a/a/h/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h/a;


# direct methods
.method public constructor <init>(Le/a/a/h/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h/a$f;->a:Le/a/a/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "menuItem"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a00b2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/a/h/a$f;->a:Le/a/a/h/a;

    invoke-virtual {p1}, Le/a/a/h/a;->PA()Le/a/a/h/g;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/h/g;->T8()Z

    move-result p1

    :goto_0
    return p1
.end method
