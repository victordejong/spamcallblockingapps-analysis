.class public final Le/a/h/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b0;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;",
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;",
            "Lo3/a<",
            "Le/a/p5/c0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callingSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/c0;->a:Lo3/a;

    iput-object p2, p0, Le/a/h/c0;->b:Lo3/a;

    iput-object p3, p0, Le/a/h/c0;->c:Lo3/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/h/c0;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "multiSimManager.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "multiSimManager.get().selectedCallSimToken"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "-1"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    iget-object v3, p0, Le/a/h/c0;->a:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/settings/CallingSettings;

    const-string v4, "selectedCallSimToken"

    invoke-interface {v3, v4, v2}, Lcom/truecaller/settings/CallingSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "callingSettings.get().ge\u2026KEN_UNKNOWN\n            )"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Le/a/h/c0;->b:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/e4/p;

    invoke-interface {v3}, Le/a/e4/p;->d()Ljava/util/List;

    move-result-object v1

    const-string v3, "multiSimManager.get().allSimInfos"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/truecaller/multisim/SimInfo;

    iget-object v4, v4, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    invoke-static {v4, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Lcom/truecaller/multisim/SimInfo;

    if-eqz v3, :cond_2

    iget-object v1, v3, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public b()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/h/c0;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    .line 2
    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/h/c0;->b:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/e4/p;

    invoke-interface {v1, v0}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "multiSimManager.get().ge\u2026mManager.SIM_SLOT_UNKNOWN"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget v0, v0, Lcom/truecaller/multisim/SimInfo;->a:I

    return v0

    :cond_1
    return v2
.end method

.method public c()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h/c0;->b()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const v0, 0x7f0807bd

    goto :goto_0

    :cond_0
    const v0, 0x7f08078e

    goto :goto_0

    :cond_1
    const v0, 0x7f08078d

    :goto_0
    return v0
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/h/c0;->b()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    if-eq v2, v1, :cond_3

    .line 2
    iget-object v0, p0, Le/a/h/c0;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e4/p;

    invoke-interface {v0, v2}, Le/a/e4/p;->e(I)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "multiSimManager.get().ge\u2026ex(currentSlot) ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    const-string v1, "simInfo.simToken"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/a/h/c0;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const-string v0, "-1"

    .line 4
    invoke-virtual {p0, v0}, Le/a/h/c0;->f(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/h/c0;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 2
    iget-object v2, p0, Le/a/h/c0;->b:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/e4/p;

    invoke-interface {v2, v0}, Le/a/e4/p;->e(I)Lcom/truecaller/multisim/SimInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "multiSimManager.get().ge\u2026rrentSlot) ?: return null"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Le/a/h/c0;->c:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/p5/c0;

    const v4, 0x7f03002c

    invoke-interface {v3, v4}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "resourceProvider.get().g\u2026ref_items_multi_sim_slot)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/q/f/a/d/a;->i3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    iget-object v3, v2, Lcom/truecaller/multisim/SimInfo;->d:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    if-nez v3, :cond_2

    const-string v3, " - "

    .line 6
    invoke-static {v0, v3}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Lcom/truecaller/multisim/SimInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_2
    iget-object v2, p0, Le/a/h/c0;->c:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/p5/c0;

    const v3, 0x7f120f86

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.get().g\u2026switched_to_sim, simName)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_4
    iget-object v0, p0, Le/a/h/c0;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/c0;

    const v2, 0x7f120d9e

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.get().g\u2026ing.multi_sim_always_ask)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "simToken"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/c0;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/settings/CallingSettings;

    const-string v1, "selectedCallSimToken"

    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/h/c0;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "multiSimManager.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/e4/p;

    invoke-interface {v0, p1}, Le/a/e4/p;->j(Ljava/lang/String;)V

    return-void
.end method
