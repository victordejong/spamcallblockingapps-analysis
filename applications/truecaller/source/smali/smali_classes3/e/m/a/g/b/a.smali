.class public Le/m/a/g/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/n;


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/b/a;->a:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;
    .locals 2

    .line 1
    iget-object p1, p0, Le/m/a/g/b/a;->a:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p1, Lcom/google/android/material/appbar/AppBarLayout;->g:Ln3/k/i/d0;

    .line 6
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iput-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->g:Ln3/k/i/d0;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->h()V

    .line 9
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_1
    return-object p2
.end method
