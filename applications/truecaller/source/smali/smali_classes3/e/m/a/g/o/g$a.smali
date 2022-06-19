.class public Le/m/a/g/o/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/o/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/o/g;


# direct methods
.method public constructor <init>(Le/m/a/g/o/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/o/g$a;->a:Le/m/a/g/o/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 2
    iget-object v0, p0, Le/m/a/g/o/g$a;->a:Le/m/a/g/o/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/m/a/g/o/g;->m(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Ln3/b/e/i/i;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/m/a/g/o/g$a;->a:Le/m/a/g/o/g;

    iget-object v2, v0, Le/m/a/g/o/g;->c:Ln3/b/e/i/g;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Ln3/b/e/i/g;->s(Landroid/view/MenuItem;Ln3/b/e/i/m;I)Z

    move-result v0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ln3/b/e/i/i;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Le/m/a/g/o/g$a;->a:Le/m/a/g/o/g;

    iget-object v0, v0, Le/m/a/g/o/g;->e:Le/m/a/g/o/g$c;

    invoke-virtual {v0, p1}, Le/m/a/g/o/g$c;->g(Ln3/b/e/i/i;)V

    goto :goto_0

    :cond_0
    move v1, v3

    .line 7
    :goto_0
    iget-object p1, p0, Le/m/a/g/o/g$a;->a:Le/m/a/g/o/g;

    invoke-virtual {p1, v3}, Le/m/a/g/o/g;->m(Z)V

    if-eqz v1, :cond_1

    .line 8
    iget-object p1, p0, Le/m/a/g/o/g$a;->a:Le/m/a/g/o/g;

    invoke-virtual {p1, v3}, Le/m/a/g/o/g;->d(Z)V

    :cond_1
    return-void
.end method
