.class public Le/a/f4/g/m;
.super Le/a/f4/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/f4/g/b<",
        "Le/a/f4/g/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Le/a/k3/e;


# direct methods
.method public constructor <init>(Lx3/b;Le/a/r2/f;ILe/a/k3/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Le/a/f4/g/t;",
            ">;",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;I",
            "Le/a/k3/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/a/f4/g/b;-><init>(Lx3/b;)V

    .line 2
    iput-object p2, p0, Le/a/f4/g/m;->b:Le/a/r2/f;

    .line 3
    iput p3, p0, Le/a/f4/g/m;->c:I

    .line 4
    iput-object p4, p0, Le/a/f4/g/m;->d:Le/a/k3/e;

    return-void
.end method


# virtual methods
.method public a(Lx3/a0;Ljava/lang/Object;)Lx3/a0;
    .locals 9

    .line 1
    check-cast p2, Le/a/f4/g/t;

    .line 2
    invoke-virtual {p2}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->d1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v7

    .line 5
    iget-object v0, p0, Le/a/f4/g/m;->b:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le/a/l0/c;

    iget-object v0, p0, Le/a/f4/g/m;->d:Le/a/k3/e;

    iget v2, p0, Le/a/f4/g/m;->c:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v6

    .line 6
    invoke-interface/range {v0 .. v5}, Le/a/k3/e;->a(Lcom/truecaller/data/entity/Contact;ILjava/lang/Long;J)Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    .line 7
    invoke-interface {v8, v0, v6}, Le/a/l0/c;->f(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/data/entity/Contact;)Le/a/r2/x;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Le/a/r2/x;->g()V

    .line 9
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    .line 10
    new-instance v0, Le/a/k3/j/b;

    invoke-direct {v0, v7}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-static {v6}, Le/a/k3/j/b;->o(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-virtual {v0, v6}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Le/a/f4/g/t;

    iget v2, p2, Le/a/f4/g/t;->g:I

    invoke-direct {v1, v2, p2, v0}, Le/a/f4/g/t;-><init>(ILe/a/f4/g/t;Lcom/truecaller/data/entity/Contact;)V

    .line 14
    iget-object p1, p1, Lx3/a0;->a:Lu3/k0;

    .line 15
    invoke-static {v1, p1}, Lx3/a0;->d(Ljava/lang/Object;Lu3/k0;)Lx3/a0;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public clone()Lx3/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Le/a/f4/g/t;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/f4/g/m;

    iget-object v1, p0, Le/a/f4/g/b;->a:Lx3/b;

    invoke-interface {v1}, Lx3/b;->clone()Lx3/b;

    move-result-object v1

    iget-object v2, p0, Le/a/f4/g/m;->b:Le/a/r2/f;

    iget v3, p0, Le/a/f4/g/m;->c:I

    iget-object v4, p0, Le/a/f4/g/m;->d:Le/a/k3/e;

    invoke-direct {v0, v1, v2, v3, v4}, Le/a/f4/g/m;-><init>(Lx3/b;Le/a/r2/f;ILe/a/k3/e;)V

    return-object v0
.end method
