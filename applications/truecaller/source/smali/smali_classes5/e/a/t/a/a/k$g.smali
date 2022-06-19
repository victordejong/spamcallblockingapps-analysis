.class public final Le/a/t/a/a/k$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/a/k;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/a/k;


# direct methods
.method public constructor <init>(Le/a/t/a/a/k;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/a/k$g;->a:Le/a/t/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/t/a/a/k$g;->a:Le/a/t/a/a/k;

    .line 2
    invoke-virtual {v0}, Le/a/t/a/a/k;->g()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "etSearch"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, "etSearch.text"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v0, v0, Le/a/t/a/a/k;->p:Le/a/t/a/a/q;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/t/a/a/q;->b(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string v0, "searchListener"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
