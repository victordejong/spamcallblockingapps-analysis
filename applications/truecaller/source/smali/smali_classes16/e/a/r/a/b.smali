.class public final Le/a/r/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/e/k;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    iput-object v0, p0, Le/a/r/a/b;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/account/network/CompleteOnboardingDto;)Le/a/r/r/a;
    .locals 7

    const-string v0, "requestDto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    const-class v1, Le/a/n2/a/c;

    new-instance v2, Le/a/b0/b/a/b;

    invoke-direct {v2}, Le/a/b0/b/a/b;-><init>()V

    .line 3
    sget-object v3, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v2, v3, v1}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/truecaller/common/network/util/AuthRequirement;->NONE:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v5}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 5
    new-instance v4, Le/a/b0/b/g/a$b;

    invoke-direct {v4, v0}, Le/a/b0/b/g/a$b;-><init>(Z)V

    iput-object v4, v3, Le/a/b0/b/g/b;->c:Le/a/b0/b/g/a$b;

    .line 6
    invoke-static {v3}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v0

    .line 7
    invoke-virtual {v2, v0}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 8
    new-instance v0, Le/a/n2/a/d;

    invoke-direct {v0}, Le/a/n2/a/d;-><init>()V

    const-string v3, "interceptor"

    .line 9
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v3, v2, Le/a/b0/b/a/b;->d:Ljava/util/List;

    if-nez v3, :cond_0

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Le/a/b0/b/a/b;->d:Ljava/util/List;

    .line 12
    :cond_0
    iget-object v3, v2, Le/a/b0/b/a/b;->d:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    invoke-virtual {v2, v1}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/n2/a/c;

    .line 14
    invoke-interface {v0, p1}, Le/a/n2/a/c;->h(Lcom/truecaller/account/network/CompleteOnboardingDto;)Lx3/b;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    iget-object v0, p0, Le/a/r/a/b;->a:Le/m/e/k;

    invoke-static {p1, v0}, Le/a/p5/s0/g;->O1(Lx3/a0;Le/m/e/k;)Le/a/r/r/a;

    move-result-object p1

    return-object p1
.end method
