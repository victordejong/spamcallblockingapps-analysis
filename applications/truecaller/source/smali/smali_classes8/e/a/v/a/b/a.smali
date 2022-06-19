.class public final Le/a/v/a/b/a;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/b/b;
.implements Le/a/l4/c$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/v/a/b/c;",
        ">;",
        "Le/a/v/a/b/b;",
        "Le/a/l4/c$b;"
    }
.end annotation


# instance fields
.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public f:Le/a/l4/c$a;

.field public final g:Le/a/l4/c;

.field public final h:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Le/a/l4/c;Le/a/p5/h0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "availabilityManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/v/a/b/a;->g:Le/a/l4/c;

    iput-object p2, p0, Le/a/v/a/b/a;->h:Le/a/p5/h0;

    .line 2
    sget-object p1, Ls1/h;->c:Ls1/h;

    new-instance p2, Le/a/v/a/b/a$b;

    invoke-direct {p2, p0}, Le/a/v/a/b/a$b;-><init>(Le/a/v/a/b/a;)V

    invoke-static {p1, p2}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/v/a/b/a;->b:Ls1/g;

    .line 3
    new-instance p2, Le/a/v/a/b/a$a;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Le/a/v/a/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/v/a/b/a;->c:Ls1/g;

    .line 4
    new-instance p2, Le/a/v/a/b/a$a;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Le/a/v/a/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/v/a/b/a;->d:Ls1/g;

    .line 5
    new-instance p2, Le/a/v/a/b/a$a;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Le/a/v/a/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v/a/b/a;->e:Ls1/g;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/v/a/b/c;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/v/a/b/a;->g:Le/a/l4/c;

    invoke-interface {p1}, Le/a/l4/c;->I1()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/v/a/b/a;->f:Le/a/l4/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l4/c$a;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/v/a/b/a;->g:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->Y()V

    return-void
.end method

.method public ki(Le/a/l4/e;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p1, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/b/c;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/v/a/b/c;->Q()V

    :cond_1
    return-void

    .line 3
    :cond_2
    iget-object v1, p1, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    .line 5
    :goto_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/b/c;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Le/a/v/a/b/c;->Q()V

    goto :goto_4

    .line 6
    :cond_5
    iget-object v1, p1, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz v1, :cond_6

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getContext()Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v2, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 8
    :goto_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/b/c;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Le/a/v/a/b/c;->Q()V

    goto :goto_4

    .line 9
    :cond_8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/b/c;

    if-eqz v0, :cond_b

    .line 10
    iget-object v1, p0, Le/a/v/a/b/a;->d:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const-string v2, "silentIcon"

    .line 11
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Le/a/v/a/b/c;->L0(Landroid/graphics/drawable/Drawable;Le/a/l4/e;)V

    goto :goto_4

    .line 12
    :cond_9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/b/c;

    if-eqz v0, :cond_b

    .line 13
    iget-object v1, p0, Le/a/v/a/b/a;->e:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const-string v2, "onCallIcon"

    .line 14
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Le/a/v/a/b/c;->L0(Landroid/graphics/drawable/Drawable;Le/a/l4/e;)V

    goto :goto_4

    .line 15
    :cond_a
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/b/c;

    if-eqz v0, :cond_b

    .line 16
    iget-object v1, p0, Le/a/v/a/b/a;->c:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const-string v2, "availableIcon"

    .line 17
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Le/a/v/a/b/c;->L0(Landroid/graphics/drawable/Drawable;Le/a/l4/e;)V

    :cond_b
    :goto_4
    return-void
.end method
