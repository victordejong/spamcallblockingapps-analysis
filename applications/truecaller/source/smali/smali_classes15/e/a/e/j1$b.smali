.class public Le/a/e/j1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/j1;


# direct methods
.method public constructor <init>(Le/a/e/j1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/j1$b;->a:Le/a/e/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/j1$b;->a:Le/a/e/j1;

    .line 2
    iget-object v0, v0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    const-string v1, "wi"

    .line 3
    invoke-virtual {v0, v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Le/a/e/j1$b;->a:Le/a/e/j1;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Le/a/e/j1;->V(Z)V

    .line 7
    iget-object v1, p0, Le/a/e/j1$b;->a:Le/a/e/j1;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/j2;->y3()Le/a/j3/f;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f0a0750

    if-ne p1, v2, :cond_1

    .line 9
    new-instance p1, Le/a/e/p;

    invoke-direct {p1, p0}, Le/a/e/p;-><init>(Le/a/e/j1$b;)V

    invoke-interface {v1, v0, p1}, Le/a/j3/f;->a(Ljava/lang/String;Le/a/j3/f$a;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0a074f

    if-ne p1, v2, :cond_2

    .line 10
    new-instance p1, Le/a/e/o;

    invoke-direct {p1, p0}, Le/a/e/o;-><init>(Le/a/e/j1$b;)V

    invoke-interface {v1, v0, p1}, Le/a/j3/f;->b(Ljava/lang/String;Le/a/j3/f$a;)V

    :cond_2
    :goto_0
    return-void
.end method
