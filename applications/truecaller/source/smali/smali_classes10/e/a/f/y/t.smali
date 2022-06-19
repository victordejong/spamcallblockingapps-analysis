.class public final Le/a/f/y/t;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/incallui/utils/BlockAction;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f/y/o;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Le/a/f/y/o;Z)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/t;->b:Le/a/f/y/o;

    iput-boolean p2, p0, Le/a/f/y/t;->c:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/truecaller/incallui/utils/BlockAction;

    .line 2
    iget-object v0, p0, Le/a/f/y/t;->b:Le/a/f/y/o;

    .line 3
    invoke-virtual {v0, p1}, Le/a/f/y/o;->Tj(Lcom/truecaller/incallui/utils/BlockAction;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Le/a/f/y/t;->b:Le/a/f/y/o;

    iget-boolean v2, p0, Le/a/f/y/t;->c:Z

    .line 5
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/y/k;

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v3, :cond_1

    invoke-interface {v3}, Le/a/f/y/k;->r()Landroid/telecom/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v3}, Landroid/telecom/Call;->getState()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 7
    iget-object v2, v1, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {v2, v3}, Le/a/f/y/c;->B(Landroid/telecom/Call;)V

    .line 8
    iget-object v1, v1, Le/a/f/y/o;->p:Le/a/f/y/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Le/a/m0/a1$k;->Y0(Le/a/f/y/c;ZILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v1, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {v1, v3, p1, v2}, Le/a/f/y/c;->K(Landroid/telecom/Call;Lcom/truecaller/incallui/utils/BlockAction;Z)V

    .line 10
    :cond_1
    :goto_0
    iget-object v1, p0, Le/a/f/y/t;->b:Le/a/f/y/o;

    .line 11
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/y/k;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Le/a/f/y/k;->r()Landroid/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v1, p1}, Le/a/f/y/o;->Tj(Lcom/truecaller/incallui/utils/BlockAction;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Landroid/telecom/Call;->getState()I

    move-result p1

    if-ne p1, v5, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, v1, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {p1}, Le/a/f/y/c;->h()Lq3/a/w2/h;

    move-result-object p1

    .line 14
    iget-object v2, v1, Le/a/f/y/o;->e:Lq3/a/i0;

    new-instance v3, Le/a/f/y/p;

    invoke-direct {v3, v1, v4}, Le/a/f/y/p;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    invoke-static {v2, p1, v3}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 15
    :cond_3
    :goto_1
    iget-object p1, p0, Le/a/f/y/t;->b:Le/a/f/y/o;

    .line 16
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/y/k;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Le/a/f/y/k;->r()Landroid/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v5, :cond_4

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {p1}, Le/a/f/y/o;->Lj()V

    .line 19
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
