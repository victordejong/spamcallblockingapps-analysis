.class public final Le/a/a/e/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/e/a;


# direct methods
.method public constructor <init>(Le/a/a/e/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/a$b;->a:Le/a/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/a/e/a$b;->a:Le/a/a/e/a;

    .line 2
    iget-boolean v0, p1, Le/a/a/e/a;->l:Z

    if-eqz v0, :cond_8

    .line 3
    iget-object v0, p1, Le/a/a/e/a;->c:Le/a/a/i0;

    const-string v1, "settings"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/a/a/i0;->R1()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p1, Le/a/a/e/a;->c:Le/a/a/i0;

    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Le/a/a/i0;->T(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p1, Le/a/a/e/a;->c:Le/a/a/i0;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/a/i0;->k0()I

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p1, Le/a/a/e/a;->c:Le/a/a/i0;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Le/a/a/i0;->t(Z)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_3
    :goto_1
    iget-object v0, p1, Le/a/a/e/a;->c:Le/a/a/i0;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/a/i0;->y()I

    move-result v0

    if-nez v0, :cond_8

    .line 8
    iget-object p1, p1, Le/a/a/e/a;->c:Le/a/a/i0;

    if-eqz p1, :cond_4

    invoke-interface {p1, v3}, Le/a/a/i0;->b1(Z)V

    goto :goto_2

    :cond_4
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_5
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_6
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_7
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_8
    :goto_2
    iget-object p1, p0, Le/a/a/e/a$b;->a:Le/a/a/e/a;

    .line 13
    iget-object p1, p1, Le/a/a/e/a;->m:Ls1/z/b/a;

    .line 14
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method
