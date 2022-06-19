.class public final Ll2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/h5/l;",
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

    iput p1, p0, Ll2;->b:I

    iput-object p2, p0, Ll2;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Ll2;->b:I

    const-string v2, "it"

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1
    check-cast p1, Le/a/h5/l;

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p1, Le/a/h5/l;->a:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Ll2;->c:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/a/a/b/a;

    .line 5
    sget-object v1, Le/a/b/a/a/a/b/a;->h:[Ls1/a/l;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Le/a/b0/q/s;->c()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 9
    :cond_2
    check-cast p1, Le/a/h5/l;

    .line 10
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-boolean p1, p1, Le/a/h5/l;->a:Z

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Ll2;->c:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/a/a/b/a;

    .line 13
    sget-object v1, Le/a/b/a/a/a/b/a;->h:[Ls1/a/l;

    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/a/b0/q/s;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    return-object v0
.end method
