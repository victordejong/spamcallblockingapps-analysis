.class public Le/h/a/c/k0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/k0/a;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/k0/a;


# direct methods
.method public constructor <init>(Le/h/a/c/k0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/k0/a$b;->a:Le/h/a/c/k0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/k0/a$b;->a:Le/h/a/c/k0/a;

    .line 2
    iget-object v0, v0, Le/h/a/c/k0/a;->c:Le/h/a/c/r0/e;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le/h/a/c/k0/a$b;->a:Le/h/a/c/k0/a;

    .line 5
    iget-object v0, p1, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Le/m/a/c/t;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p1, Le/h/a/c/k0/a;->c:Le/h/a/c/r0/e;

    :cond_1
    return-void
.end method
