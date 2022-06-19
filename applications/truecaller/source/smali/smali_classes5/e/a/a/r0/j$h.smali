.class public final Le/a/a/r0/j$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/r0/j;->Vs(ZZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Le/a/b0/a/c0/a;",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/r0/j;


# direct methods
.method public constructor <init>(Le/a/a/r0/j;ZZZZZZ)V
    .locals 0

    iput-object p1, p0, Le/a/a/r0/j$h;->b:Le/a/a/r0/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Le/a/b0/a/c0/a;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "<anonymous parameter 0>"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/a/r0/j$h;->b:Le/a/a/r0/j;

    invoke-virtual {p1}, Le/a/a/r0/j;->SA()Le/a/a/r0/m;

    move-result-object p1

    invoke-virtual {p1, p2}, Le/a/a/r0/m;->Sj(I)V

    .line 4
    iget-object p1, p0, Le/a/a/r0/j$h;->b:Le/a/a/r0/j;

    .line 5
    iget-object p1, p1, Le/a/a/r0/j;->a:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/r0/g;

    .line 7
    invoke-interface {p2}, Le/a/a/r0/g;->Q5()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/a/r0/j$h;->b:Le/a/a/r0/j;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    instance-of p2, p1, Le/a/b0/a/w/c$a;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Le/a/b0/a/w/c$a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/b0/a/w/c$a;->L1()V

    .line 9
    :cond_2
    iget-object p1, p0, Le/a/a/r0/j$h;->b:Le/a/a/r0/j;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    instance-of p2, p1, Le/a/b0/a/w/c$a;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    check-cast v0, Le/a/b0/a/w/c$a;

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Le/a/b0/a/w/c$a;->v7(Z)V

    .line 10
    :cond_4
    iget-object p1, p0, Le/a/a/r0/j$h;->b:Le/a/a/r0/j;

    invoke-virtual {p1}, Le/a/a/r0/j;->SA()Le/a/a/r0/m;

    move-result-object p1

    invoke-virtual {p1}, Le/a/a/r0/m;->bk()V

    .line 11
    iget-object p1, p0, Le/a/a/r0/j$h;->b:Le/a/a/r0/j;

    invoke-virtual {p1}, Le/a/a/r0/j;->VA()V

    .line 12
    iget-object p1, p0, Le/a/a/r0/j$h;->b:Le/a/a/r0/j;

    .line 13
    iget-boolean p2, p1, Le/a/a/r0/j;->d:Z

    if-eqz p2, :cond_5

    .line 14
    invoke-virtual {p1}, Le/a/a/r0/j;->OA()V

    .line 15
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
