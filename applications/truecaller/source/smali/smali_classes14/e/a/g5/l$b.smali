.class public Le/a/g5/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g5/l;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g5/l;


# direct methods
.method public constructor <init>(Le/a/g5/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/g5/l$b;->a:Le/a/g5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/g5/l$b;->a:Le/a/g5/l;

    .line 2
    iget-object v0, v0, Le/a/g5/l;->a:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4
    iget-object v0, p0, Le/a/g5/l$b;->a:Le/a/g5/l;

    .line 5
    iget-object v1, v0, Le/a/g5/l;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 6
    iget-object v1, v0, Le/a/g5/l;->a:Landroid/view/View;

    new-instance v2, Le/a/g5/a;

    invoke-direct {v2, v0}, Le/a/g5/a;-><init>(Le/a/g5/l;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    return v0
.end method
