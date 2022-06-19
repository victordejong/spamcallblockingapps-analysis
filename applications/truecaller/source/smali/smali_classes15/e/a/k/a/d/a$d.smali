.class public final Le/a/k/a/d/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/d/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/a/d/a;


# direct methods
.method public constructor <init>(Le/a/k/a/d/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/d/a$d;->a:Le/a/k/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/k/a/d/a$d;->a:Le/a/k/a/d/a;

    .line 2
    iget-object p1, p1, Le/a/k/a/d/a;->e:Le/a/k/a/d/f;

    if-eqz p1, :cond_2

    .line 3
    check-cast p1, Le/a/k/a/d/k;

    .line 4
    iget-object v0, p1, Le/a/k/a/d/k;->d:Le/a/k/c/i1;

    const/4 v1, 0x1

    const-string v2, "guidelineIsAgreed"

    invoke-interface {v0, v2, v1}, Le/a/k/c/i1;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/d/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/k/a/d/g;->k0()Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/k/a/d/g;->iA(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;)V

    .line 6
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/d/g;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/k/a/d/g;->t()V

    :cond_1
    return-void

    :cond_2
    const-string p1, "presenter"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
