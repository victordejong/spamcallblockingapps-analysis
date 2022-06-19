.class public final Lg2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/o/a/b/j;",
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

    iput p1, p0, Lg2;->b:I

    iput-object p2, p0, Lg2;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lg2;->b:I

    const-string v2, "presenter"

    const-string v3, "it"

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 1
    check-cast p1, Le/a/o/a/b/j;

    .line 2
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lg2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;

    .line 4
    iget-object v1, v1, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->d:Le/a/o/a/b/e;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, p1}, Le/a/o/a/b/e;->qe(Le/a/o/a/b/j;)V

    return-object v0

    .line 6
    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 7
    :cond_1
    throw v4

    .line 8
    :cond_2
    check-cast p1, Le/a/o/a/b/j;

    .line 9
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lg2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;

    .line 11
    iget-object v1, v1, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->d:Le/a/o/a/b/e;

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v1, p1}, Le/a/o/a/b/e;->w4(Le/a/o/a/b/j;)V

    return-object v0

    .line 13
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method
