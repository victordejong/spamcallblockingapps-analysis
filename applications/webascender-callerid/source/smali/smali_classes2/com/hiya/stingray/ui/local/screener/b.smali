.class public Lcom/hiya/stingray/ui/local/screener/b;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/local/screener/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/hiya/stingray/manager/e1;

.field private final c:Lcom/hiya/stingray/ui/login/o;

.field private final d:Lcom/hiya/stingray/manager/g1;

.field private final e:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/g1;Lcom/hiya/stingray/manager/o2;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHandler"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userFlagsManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUserInfoManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/screener/b;->b:Lcom/hiya/stingray/manager/e1;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/screener/b;->c:Lcom/hiya/stingray/ui/login/o;

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/screener/b;->d:Lcom/hiya/stingray/manager/g1;

    iput-object p4, p0, Lcom/hiya/stingray/ui/local/screener/b;->e:Lcom/hiya/stingray/manager/o2;

    return-void
.end method


# virtual methods
.method public final t()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/screener/c;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/screener/c;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/screener/b;->c:Lcom/hiya/stingray/ui/login/o;

    sget-object v2, Lcom/hiya/stingray/util/n;->d:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/screener/b;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o2;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u(Z)V
    .locals 4

    const-string v0, "enable_call_screener"

    const-string v1, "apply_setting"

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/screener/b;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/o2;->t()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/screener/c;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/local/screener/c;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/local/screener/b;->c:Lcom/hiya/stingray/ui/login/o;

    sget-object v3, Lcom/hiya/stingray/util/n;->d:[Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/screener/c;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/local/screener/c;->M0()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/screener/b;->e:Lcom/hiya/stingray/manager/o2;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/hiya/stingray/manager/o2;->D(Z)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/screener/b;->b:Lcom/hiya/stingray/manager/e1;

    .line 7
    new-instance v2, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v2}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    .line 8
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v0, "on"

    .line 9
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/util/g0/c$a;->n(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 10
    invoke-virtual {v2}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/screener/b;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/o2;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/screener/b;->e:Lcom/hiya/stingray/manager/o2;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/hiya/stingray/manager/o2;->D(Z)V

    .line 14
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/screener/b;->b:Lcom/hiya/stingray/manager/e1;

    .line 15
    new-instance v2, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v2}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    .line 16
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v0, "off"

    .line 17
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/util/g0/c$a;->n(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 18
    invoke-virtual {v2}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 20
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/screener/b;->d:Lcom/hiya/stingray/manager/g1;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/g1;->j()V

    return-void
.end method
