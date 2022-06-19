.class public final Le/a/l/d1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/d1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Le/a/l/d1;


# direct methods
.method public constructor <init>(Le/a/l/d1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/l/d1$c;->b:Le/a/l/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Le/a/l/d1$c;->a:I

    return-void
.end method


# virtual methods
.method public Xm(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Le/a/l/d1$c;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    iput p1, p0, Le/a/l/d1$c;->a:I

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/l/d1$c;->b:Le/a/l/d1;

    .line 4
    sget v0, Le/a/l/d1;->m:I

    .line 5
    invoke-virtual {p1}, Le/a/l/d1;->PA()Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget v0, p0, Le/a/l/d1$c;->a:I

    add-int/2addr v0, p2

    if-nez v0, :cond_1

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitleEnabled(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p0, Le/a/l/d1$c;->b:Le/a/l/d1;

    .line 9
    invoke-virtual {p2}, Le/a/l/d1;->PA()Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-result-object p2

    const-string v0, "collapsingToolbar"

    .line 10
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-boolean p2, p2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitleEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method
