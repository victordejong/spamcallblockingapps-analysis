.class public Le/a/f4/g/c;
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
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lx3/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Le/a/f4/g/t;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/a/f4/g/b;-><init>(Lx3/b;)V

    .line 2
    iput-object p2, p0, Le/a/f4/g/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lx3/a0;Ljava/lang/Object;)Lx3/a0;
    .locals 3

    .line 1
    check-cast p2, Le/a/f4/g/t;

    .line 2
    iget-object v0, p2, Le/a/f4/g/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p2}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object p2

    .line 4
    new-instance v0, Le/a/k3/j/b;

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    .line 5
    invoke-static {p2}, Le/a/k3/j/b;->o(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0, p2}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    .line 9
    iget-object p2, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 10
    check-cast p2, Le/a/f4/g/t;

    .line 11
    iget-object v1, p0, Le/a/f4/g/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->V0(Ljava/lang/String;)V

    .line 12
    new-instance v1, Le/a/f4/g/t;

    iget v2, p2, Le/a/f4/g/t;->g:I

    invoke-direct {v1, v2, p2, v0}, Le/a/f4/g/t;-><init>(ILe/a/f4/g/t;Lcom/truecaller/data/entity/Contact;)V

    .line 13
    iget-object p1, p1, Lx3/a0;->a:Lu3/k0;

    .line 14
    iget-object p1, p1, Lu3/k0;->g:Lu3/z;

    .line 15
    invoke-static {v1, p1}, Lx3/a0;->c(Ljava/lang/Object;Lu3/z;)Lx3/a0;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public clone()Lx3/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Le/a/f4/g/t;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/f4/g/c;

    iget-object v1, p0, Le/a/f4/g/b;->a:Lx3/b;

    invoke-interface {v1}, Lx3/b;->clone()Lx3/b;

    move-result-object v1

    iget-object v2, p0, Le/a/f4/g/c;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Le/a/f4/g/c;-><init>(Lx3/b;Ljava/lang/String;)V

    return-object v0
.end method
