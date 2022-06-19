.class public final Le/a/k/a/e/m/f;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/k/a/e/m/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/k/a/e/m/e;",
        ">;",
        "Le/a/k/a/e/m/d;"
    }
.end annotation


# instance fields
.field public final b:Le/a/k/c/h0;

.field public final c:Le/a/k/c/r0;


# direct methods
.method public constructor <init>(Le/a/k/c/h0;Le/a/k/c/r0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/k/a/e/m/f;->b:Le/a/k/c/h0;

    iput-object p2, p0, Le/a/k/a/e/m/f;->c:Le/a/k/c/r0;

    return-void
.end method


# virtual methods
.method public Hj(Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;Z)V
    .locals 1

    const-string v0, "preferences"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/k/a/e/m/e;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Le/a/k/a/e/m/e;->N()V

    .line 2
    :cond_1
    iget-object p2, p0, Le/a/k/a/e/m/f;->b:Le/a/k/c/h0;

    invoke-interface {p2, p1}, Le/a/k/c/h0;->g(Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;)V

    .line 3
    invoke-virtual {p0}, Le/a/k/a/e/m/f;->Ij()V

    return-void
.end method

.method public final Ij()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k/a/e/m/f;->b:Le/a/k/c/h0;

    invoke-interface {v0}, Le/a/k/c/h0;->e()Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    move-result-object v0

    sget-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Everyone:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/k/a/e/m/f;->c:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/e/m/e;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Le/a/k/a/e/m/e;->Z(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/k/a/e/m/f;->b:Le/a/k/c/h0;

    invoke-interface {v0}, Le/a/k/c/h0;->e()Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    move-result-object v0

    sget-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Contacts:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Le/a/k/a/e/m/f;->c:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/e/m/e;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Le/a/k/a/e/m/e;->r0(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/k/a/e/m/f;->b:Le/a/k/c/h0;

    invoke-interface {v0}, Le/a/k/c/h0;->e()Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    move-result-object v0

    sget-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->NoOne:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/e/m/e;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Le/a/k/a/e/m/e;->k0(Z)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/e/m/e;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Le/a/k/a/e/m/e;->k0(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/k/a/e/m/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/k/a/e/m/f;->c:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Le/a/k/a/e/m/e;->y(Z)V

    .line 6
    invoke-interface {p1, v2}, Le/a/k/a/e/m/e;->J0(Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/k/a/e/m/f;->c:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Le/a/k/a/e/m/e;->J0(Z)V

    .line 9
    invoke-interface {p1, v2}, Le/a/k/a/e/m/e;->y(Z)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p1, v2}, Le/a/k/a/e/m/e;->y(Z)V

    .line 11
    invoke-interface {p1, v2}, Le/a/k/a/e/m/e;->J0(Z)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Le/a/k/a/e/m/f;->Ij()V

    return-void
.end method
