.class public final Le/a/s2/h/d;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/s2/h/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/s2/h/l;",
        ">;",
        "Le/a/s2/h/k;"
    }
.end annotation


# instance fields
.field public final b:Le/a/s2/h/e;

.field public final c:Le/a/l/p2/d2/b;

.field public final d:Le/a/s2/g/a;


# direct methods
.method public constructor <init>(Le/a/s2/h/e;Le/a/l/p2/d2/b;Le/a/s2/g/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "announceCallerIdSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumFeatureManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announceCallerIdEventLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/s2/h/d;->b:Le/a/s2/h/e;

    iput-object p2, p0, Le/a/s2/h/d;->c:Le/a/l/p2/d2/b;

    iput-object p3, p0, Le/a/s2/h/d;->d:Le/a/s2/g/a;

    return-void
.end method


# virtual methods
.method public final Hj(Ls1/z/b/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/s2/h/d;->c:Le/a/l/p2/d2/b;

    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->ANNOUNCE_CALL:Lcom/truecaller/premium/data/feature/PremiumFeature;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/l/p2/d2/b;->a(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s2/h/l;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Le/a/s2/h/l;->na(Z)V

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s2/h/l;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Le/a/s2/h/l;->P7(Z)V

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s2/h/l;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Le/a/s2/h/l;->Cw(Z)V

    .line 6
    :cond_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s2/h/l;

    if-eqz p1, :cond_4

    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/16 v2, 0x64

    const-string v3, "announce_caller_id_setting_change_status"

    .line 7
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-interface {p1, v0, v1}, Le/a/s2/h/l;->Ml(ILandroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/s2/h/l;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/s2/h/d;->b:Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->g3()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/s2/h/l;->na(Z)V

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s2/h/l;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/s2/h/d;->b:Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->o2()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/s2/h/l;->P7(Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s2/h/l;

    if-eqz p1, :cond_1

    iget-object v0, p0, Le/a/s2/h/d;->b:Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->d1()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/s2/h/l;->Cw(Z)V

    :cond_1
    return-void
.end method
