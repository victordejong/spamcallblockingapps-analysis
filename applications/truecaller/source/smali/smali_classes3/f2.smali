.class public final Lf2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lf2;->b:I

    iput-object p2, p0, Lf2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lf2;->d:Ljava/lang/Object;

    iput-object p4, p0, Lf2;->e:Ljava/lang/Object;

    iput-object p5, p0, Lf2;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lf2;->b:I

    const-string v2, "detailsViewModel.contact.displayNameOrNumber"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 1
    iget-object v1, p0, Lf2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/i0/d;

    .line 2
    iget-object v1, v1, Le/a/v/a/i0/d;->f:Le/a/v/a/z/a;

    .line 3
    iget-object v3, v1, Le/a/v/a/z/a;->a:Ljava/lang/String;

    const-string v5, "ContextCallOnDemand"

    const-string v6, "action"

    .line 4
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v6, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v6, v5, v4, v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, v1, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v6, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 7
    iget-object v1, p0, Lf2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/i0/d;

    .line 8
    iget-object v1, v1, Le/a/v/a/i0/d;->c:Le/a/v/p/g;

    .line 9
    iget-object v3, p0, Lf2;->d:Ljava/lang/Object;

    check-cast v3, Le/a/v/a/s;

    .line 10
    iget-object v3, v3, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 11
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lf2;->e:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/data/entity/Number;

    iget-object v4, p0, Lf2;->f:Ljava/lang/Object;

    check-cast v4, Ls1/k;

    .line 12
    iget-object v4, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 13
    check-cast v4, Lcom/truecaller/details_view/ui/numbers/SimData;

    invoke-virtual {v4}, Lcom/truecaller/details_view/ui/numbers/SimData;->getSlot()I

    move-result v4

    invoke-interface {v1, v3, v2, v4}, Le/a/v/p/g;->c(Ljava/lang/String;Lcom/truecaller/data/entity/Number;I)V

    return-object v0

    .line 14
    :cond_0
    throw v4

    .line 15
    :cond_1
    iget-object v1, p0, Lf2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/i0/d;

    .line 16
    iget-object v1, v1, Le/a/v/a/i0/d;->f:Le/a/v/a/z/a;

    .line 17
    invoke-virtual {v1}, Le/a/v/a/z/a;->a()V

    .line 18
    iget-object v1, p0, Lf2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/i0/d;

    .line 19
    iget-object v1, v1, Le/a/v/a/i0/d;->c:Le/a/v/p/g;

    .line 20
    iget-object v3, p0, Lf2;->d:Ljava/lang/Object;

    check-cast v3, Le/a/v/a/s;

    .line 21
    iget-object v3, v3, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 22
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lf2;->e:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/data/entity/Number;

    iget-object v4, p0, Lf2;->f:Ljava/lang/Object;

    check-cast v4, Ls1/k;

    .line 23
    iget-object v4, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 24
    check-cast v4, Lcom/truecaller/details_view/ui/numbers/SimData;

    invoke-virtual {v4}, Lcom/truecaller/details_view/ui/numbers/SimData;->getSlot()I

    move-result v4

    invoke-interface {v1, v3, v2, v4}, Le/a/v/p/g;->d(Ljava/lang/String;Lcom/truecaller/data/entity/Number;I)V

    return-object v0
.end method
