.class public final Le/a/l/a/b$b;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/CharSequence;",
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

    iput p1, p0, Le/a/l/a/b$b;->b:I

    iput-object p2, p0, Le/a/l/a/b$b;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/l/a/b$b;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    if-ne v1, v4, :cond_4

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v2, v4

    :cond_1
    xor-int v1, v4, v2

    if-eqz v1, :cond_2

    move-object v3, p1

    :cond_2
    if-eqz v3, :cond_3

    .line 3
    iget-object p1, p0, Le/a/l/a/b$b;->c:Ljava/lang/Object;

    check-cast p1, Le/a/l/a/b;

    invoke-static {p1}, Le/a/m0/a1$k;->M1(Landroidx/fragment/app/Fragment;)Le/a/z3/e;

    move-result-object p1

    .line 4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/a/z3/e;->B(Ljava/lang/String;)Le/a/z3/d;

    move-result-object p1

    .line 5
    iget-object v1, p0, Le/a/l/a/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/a/b;

    .line 6
    iget-object v1, v1, Le/a/l/a/b;->m:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p1, v1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 8
    iget-object p1, p0, Le/a/l/a/b$b;->c:Ljava/lang/Object;

    check-cast p1, Le/a/l/a/b;

    .line 9
    iget-object p1, p1, Le/a/l/a/b;->m:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v1, "goldTopImage"

    .line 10
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    :cond_3
    return-object v0

    .line 11
    :cond_4
    throw v3

    .line 12
    :cond_5
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    move v2, v4

    :cond_7
    xor-int v1, v4, v2

    if-eqz v1, :cond_8

    move-object v3, p1

    :cond_8
    if-eqz v3, :cond_9

    .line 14
    iget-object p1, p0, Le/a/l/a/b$b;->c:Ljava/lang/Object;

    check-cast p1, Le/a/l/a/b;

    invoke-static {p1}, Le/a/m0/a1$k;->M1(Landroidx/fragment/app/Fragment;)Le/a/z3/e;

    move-result-object p1

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/a/z3/e;->B(Ljava/lang/String;)Le/a/z3/d;

    move-result-object p1

    .line 16
    iget-object v1, p0, Le/a/l/a/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/a/b;

    .line 17
    iget-object v1, v1, Le/a/l/a/b;->o:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 18
    invoke-virtual {p1, v1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 19
    iget-object p1, p0, Le/a/l/a/b$b;->c:Ljava/lang/Object;

    check-cast p1, Le/a/l/a/b;

    .line 20
    iget-object p1, p1, Le/a/l/a/b;->o:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v1, "premiumTopImage"

    .line 21
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    :cond_9
    return-object v0
.end method
