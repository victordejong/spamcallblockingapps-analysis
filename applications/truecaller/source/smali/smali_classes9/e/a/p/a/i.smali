.class public final Le/a/p/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$c;


# instance fields
.field public final synthetic a:Le/a/p/a/b;

.field public final synthetic b:Ls1/z/c/a0;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/p/a/b;Ls1/z/c/a0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/p/a/i;->a:Le/a/p/a/b;

    iput-object p2, p0, Le/a/p/a/i;->b:Ls1/z/c/a0;

    iput-object p3, p0, Le/a/p/a/i;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Xm(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/p/a/i;->b:Ls1/z/c/a0;

    iget v1, v0, Ls1/z/c/a0;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "appBar"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    iput p1, v0, Ls1/z/c/a0;->a:I

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/p/a/i;->b:Ls1/z/c/a0;

    iget p1, p1, Ls1/z/c/a0;->a:I

    add-int/2addr p1, p2

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/p/a/i;->a:Le/a/p/a/b;

    .line 5
    iget-object p1, p1, Le/a/p/a/b;->N:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz p1, :cond_2

    .line 6
    iget-object p2, p0, Le/a/p/a/i;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/p/a/i;->a:Le/a/p/a/b;

    .line 8
    iget-object p1, p1, Le/a/p/a/b;->N:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz p1, :cond_2

    const-string p2, ""

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
