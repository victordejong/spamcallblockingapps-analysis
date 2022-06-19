.class public final Le/a/k/b/a$a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/b/a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/k/b/n;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/k/b/a$a$a;->b:I

    iput-object p2, p0, Le/a/k/b/a$a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/k/b/a$a$a;->b:I

    const-string v2, "videoFileItem"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 1
    check-cast p1, Le/a/k/b/n;

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/k/b/a$a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/k/b/a$a;

    iget-object v5, v1, Le/a/k/b/a$a;->g:Le/a/k/b/a;

    .line 4
    iget-object p1, p1, Le/a/k/b/n;->b:Le/a/k/c/g;

    .line 5
    iget-object p1, p1, Le/a/k/c/g;->a:Ljava/lang/String;

    .line 6
    sget-object v1, Le/a/k/b/a;->k:[Ls1/a/l;

    .line 7
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v8, Le/a/k/b/c;

    invoke-direct {v8, v5, p1, v4}, Le/a/k/b/c;-><init>(Le/a/k/b/a;Ljava/lang/String;Ls1/w/d;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0

    .line 9
    :cond_0
    throw v4

    .line 10
    :cond_1
    check-cast p1, Le/a/k/b/n;

    .line 11
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-boolean v1, p1, Le/a/k/b/n;->c:Z

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Le/a/k/b/a$a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/k/b/a$a;

    iget-object v1, v1, Le/a/k/b/a$a;->g:Le/a/k/b/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parentFragmentManager"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Le/a/k/b/n;->b:Le/a/k/c/g;

    .line 15
    iget-object p1, p1, Le/a/k/c/g;->a:Ljava/lang/String;

    const-string v2, "fragmentManager"

    .line 16
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "path"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v3, Le/a/k/b/k;

    invoke-direct {v3}, Le/a/k/b/k;-><init>()V

    .line 18
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 19
    const-class p1, Le/a/k/b/k;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object p1, p1, Le/a/k/b/n;->b:Le/a/k/c/g;

    .line 22
    iget-object p1, p1, Le/a/k/c/g;->a:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 24
    iget-object p1, p0, Le/a/k/b/a$a$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/k/b/a$a;

    iget-object p1, p1, Le/a/k/b/a$a;->g:Le/a/k/b/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-object v0
.end method
