.class public Lcom/hiya/stingray/ui/login/l;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/login/m;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private final c:Lcom/hiya/stingray/manager/i1;

.field private final d:Lcom/hiya/stingray/ui/login/o;

.field private final e:Lcom/hiya/stingray/manager/g3;

.field private final f:Lcom/hiya/stingray/manager/d3;

.field private final g:Lcom/hiya/stingray/manager/u3;

.field private final h:Lcom/hiya/stingray/manager/a4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/o3;Lcom/hiya/stingray/manager/g3;Lcom/hiya/stingray/manager/d3;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/a4;Lcom/hiya/stingray/manager/s2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/l;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/login/l;->c:Lcom/hiya/stingray/manager/i1;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/ui/login/l;->d:Lcom/hiya/stingray/ui/login/o;

    .line 5
    iput-object p5, p0, Lcom/hiya/stingray/ui/login/l;->e:Lcom/hiya/stingray/manager/g3;

    .line 6
    iput-object p6, p0, Lcom/hiya/stingray/ui/login/l;->f:Lcom/hiya/stingray/manager/d3;

    .line 7
    iput-object p7, p0, Lcom/hiya/stingray/ui/login/l;->g:Lcom/hiya/stingray/manager/u3;

    .line 8
    iput-object p8, p0, Lcom/hiya/stingray/ui/login/l;->h:Lcom/hiya/stingray/manager/a4;

    return-void
.end method


# virtual methods
.method t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/m;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/m;->cancel()V

    return-void
.end method

.method u(Lcom/hiya/stingray/exception/a;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/exception/HiyaGenericException;

    sget-object v1, Lg/g/a/a/d;->UNDEFINED:Lg/g/a/a/d;

    const-string v2, "There was an API error during user OnBoarding process"

    invoke-direct {v0, v1, v2, p1}, Lcom/hiya/stingray/exception/HiyaGenericException;-><init>(Lg/g/a/a/b;Ljava/lang/String;Lcom/hiya/stingray/exception/a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "There was an API error during user OnBoarding process %s"

    .line 3
    invoke-static {v0, p1, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/l;->c:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/i1;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/m;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/m;->s()V

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/l;->e:Lcom/hiya/stingray/manager/g3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/g3;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/m;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/m;->u()V

    goto/16 :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/l;->f:Lcom/hiya/stingray/manager/d3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/d3;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/l;->f:Lcom/hiya/stingray/manager/d3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/d3;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/m;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/m;->d()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/l;->d:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/ui/login/l;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/login/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/m;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/m;->h()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/l;->e:Lcom/hiya/stingray/manager/g3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/g3;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/m;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/m;->e()V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/l;->h:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/l;->h:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/l;->g:Lcom/hiya/stingray/manager/u3;

    .line 12
    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/l;->h:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/m;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/m;->f()V

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/l;->f:Lcom/hiya/stingray/manager/d3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/d3;->r(Z)V

    .line 15
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/login/m;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/login/m;->i()V

    :goto_0
    return-void
.end method
