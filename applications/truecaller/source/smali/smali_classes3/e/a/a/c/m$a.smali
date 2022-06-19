.class public final Le/a/a/c/m$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/m;->oq(Le/a/a/c/g3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/c/m$a;->b:I

    iput-object p2, p0, Le/a/a/c/m$a;->c:Ljava/lang/Object;

    iput-object p3, p0, Le/a/a/c/m$a;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/a/c/m$a;->b:I

    const/4 v2, 0x0

    const-string v3, "it"

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/a/c/m$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/g3;

    .line 4
    iget-object p1, p1, Le/a/a/c/g3;->c:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p0, Le/a/a/c/m$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/m;

    invoke-virtual {v1}, Le/a/a/c/m;->PA()Le/a/a/c/s4;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/a/c/k/a/j$b;->D(Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 6
    :cond_1
    throw v2

    .line 7
    :cond_2
    check-cast p1, Landroid/view/View;

    .line 8
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/a/a/c/m$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/g3;

    .line 10
    iget-object p1, p1, Le/a/a/c/g3;->c:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 11
    iget-object v1, p0, Le/a/a/c/m$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/m;

    invoke-virtual {v1}, Le/a/a/c/m;->PA()Le/a/a/c/s4;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/a/c/k/a/j$b;->D(Ljava/lang/String;)V

    :cond_3
    return-object v0

    .line 12
    :cond_4
    check-cast p1, Landroid/view/View;

    .line 13
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Le/a/a/c/m$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/g3;

    .line 15
    iget-object p1, p1, Le/a/a/c/g3;->b:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 16
    iget-object v1, p0, Le/a/a/c/m$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/m;

    invoke-virtual {v1}, Le/a/a/c/m;->PA()Le/a/a/c/s4;

    move-result-object v1

    invoke-interface {v1, p1}, Le/a/a/c/k/a/j$b;->V0(Ljava/lang/String;)V

    :cond_5
    return-object v0

    .line 17
    :cond_6
    check-cast p1, Landroid/view/View;

    .line 18
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Le/a/a/c/m$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/g3;

    .line 20
    iget-object p1, p1, Le/a/a/c/g3;->c:Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 21
    iget-object v1, p0, Le/a/a/c/m$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/m;

    .line 22
    invoke-virtual {v1}, Le/m/a/g/e/e;->dismiss()V

    .line 23
    iget-object v1, p0, Le/a/a/c/m$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/m;

    invoke-virtual {v1}, Le/a/a/c/m;->PA()Le/a/a/c/s4;

    move-result-object v1

    check-cast p1, Lcom/truecaller/messaging/data/types/Entity;

    invoke-interface {v1, p1, v2}, Le/a/a/c/k/a/j$b;->h1(Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;)V

    :cond_7
    return-object v0
.end method
