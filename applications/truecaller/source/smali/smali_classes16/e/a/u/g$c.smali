.class public final Le/a/u/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/u/g;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/u/g;


# direct methods
.method public constructor <init>(Le/a/u/g;)V
    .locals 0

    iput-object p1, p0, Le/a/u/g$c;->a:Le/a/u/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/u/g$c;->a:Le/a/u/g;

    .line 2
    iget-object v0, p1, Le/a/u/g;->a:Le/a/u/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Le/a/u/g;->TA()Landroid/view/View;

    move-result-object p1

    const-string v1, "shareImage"

    .line 4
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/u/e;->Yb(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
