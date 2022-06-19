.class public Lcom/hiya/stingray/t/i1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lg/g/a/a/i/c;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/c;

    invoke-direct {v0}, Lg/g/a/a/i/c;-><init>()V

    .line 2
    sget-object v1, Lcom/hiya/stingray/util/j;->FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/j;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/j;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/c;->setType(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lg/g/a/a/i/c;->setPhone(Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Lcom/hiya/stingray/t/c0;)Lg/g/a/a/i/c;
    .locals 4

    .line 1
    new-instance v0, Lg/g/a/a/i/c;

    invoke-direct {v0}, Lg/g/a/a/i/c;-><init>()V

    .line 2
    sget-object v1, Lcom/hiya/stingray/util/k;->BEGINS_WITH_TYPE:Lcom/hiya/stingray/util/k;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/k;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/c0;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/hiya/stingray/util/j;->BEGINS_WITH_TYPE:Lcom/hiya/stingray/util/j;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/j;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/c;->setType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c0;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/g/a/a/i/c;->setBeginsWith(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/hiya/stingray/util/k;->FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/k;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/k;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/c0;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lcom/hiya/stingray/util/j;->FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/j;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/j;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/c;->setType(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c0;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/g/a/a/i/c;->setPhone(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error delete blacklist type is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/c0;->m()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Blacklist number Type: %s"

    invoke-static {v1, p1, v2}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)Lg/g/a/a/i/d;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    new-instance v2, Lg/g/a/a/i/d;

    invoke-direct {v2}, Lg/g/a/a/i/d;-><init>()V

    .line 4
    sget-object v3, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->FULL_NUMBER:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    if-ne p2, v3, :cond_2

    .line 5
    sget-object p2, Lcom/hiya/stingray/util/l;->FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/l;

    invoke-virtual {p2}, Lcom/hiya/stingray/util/l;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lg/g/a/a/i/d;->setType(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, p1}, Lg/g/a/a/i/d;->setPhone(Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_2
    sget-object v3, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->BEGINS_WITH:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    if-ne p2, v3, :cond_3

    .line 8
    sget-object p2, Lcom/hiya/stingray/util/l;->BEGINS_WITH_TYPE:Lcom/hiya/stingray/util/l;

    invoke-virtual {p2}, Lcom/hiya/stingray/util/l;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lg/g/a/a/i/d;->setType(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, p1}, Lg/g/a/a/i/d;->setBeginsWith(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Error dialog type invalid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "Dialog Type: %s"

    invoke-static {v3, p2, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object p2, Lcom/hiya/stingray/util/l;->FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/l;

    invoke-virtual {p2}, Lcom/hiya/stingray/util/l;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lg/g/a/a/i/d;->setType(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p1}, Lg/g/a/a/i/d;->setPhone(Ljava/lang/String;)V

    :goto_2
    return-object v2
.end method

.method public d(Lcom/hiya/stingray/t/j0;Ljava/util/Set;Lcom/hiya/stingray/q/c/i/a;)Lcom/hiya/stingray/t/c0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/j0;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hiya/stingray/q/c/i/a;",
            ")",
            "Lcom/hiya/stingray/t/c0;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/hiya/stingray/q/c/i/a;->O0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/k;->n(Ljava/lang/String;)Lorg/joda/time/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/k;->e()J

    move-result-wide v3

    .line 2
    invoke-virtual {p3}, Lcom/hiya/stingray/q/c/i/a;->P0()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p3}, Lcom/hiya/stingray/q/c/i/a;->Q0()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/hiya/stingray/util/k;->FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/k;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/hiya/stingray/util/k;->BEGINS_WITH_TYPE:Lcom/hiya/stingray/util/k;

    :goto_0
    invoke-virtual {p3}, Lcom/hiya/stingray/util/k;->getType()Ljava/lang/String;

    move-result-object p3

    move-object v6, p3

    .line 4
    invoke-static {p2}, Lcom/google/common/collect/z;->t(Ljava/util/Collection;)Lcom/google/common/collect/z;

    move-result-object v5

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/hiya/stingray/t/c0;->d(Lcom/hiya/stingray/t/j0;Ljava/lang/String;JLcom/google/common/collect/z;Ljava/lang/String;)Lcom/hiya/stingray/t/c0;

    move-result-object p1

    return-object p1
.end method

.method public e(ZLg/g/a/a/i/c;)Lcom/hiya/stingray/q/c/i/a;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-virtual {p2}, Lg/g/a/a/i/c;->getPhone()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p2}, Lg/g/a/a/i/c;->getPhone()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lg/g/a/a/i/c;->getBeginsWith()Ljava/lang/String;

    move-result-object v2

    .line 4
    :goto_1
    invoke-virtual {p2}, Lg/g/a/a/i/c;->getPhone()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_2
    new-instance v1, Lcom/hiya/stingray/q/c/i/a;

    invoke-direct {v1}, Lcom/hiya/stingray/q/c/i/a;-><init>()V

    .line 6
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/q/c/i/a;->U0(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/hiya/stingray/q/c/i/a;->V0(Z)V

    .line 8
    invoke-virtual {p2}, Lg/g/a/a/i/c;->getCreatedAt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/hiya/stingray/q/c/i/a;->R0(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/q/c/i/a;->T0(Z)V

    .line 10
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/i/a;->P0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v0, p1}, Lcom/hiya/stingray/q/c/i/a;->S0(Ljava/lang/String;ZZ)V

    return-object v1
.end method

.method public f(ZLg/g/a/a/i/d;)Lcom/hiya/stingray/q/c/i/a;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-virtual {p2}, Lg/g/a/a/i/d;->getPhone()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p2}, Lg/g/a/a/i/d;->getPhone()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lg/g/a/a/i/d;->getBeginsWith()Ljava/lang/String;

    move-result-object v2

    .line 4
    :goto_1
    invoke-virtual {p2}, Lg/g/a/a/i/d;->getPhone()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_2
    new-instance p2, Lcom/hiya/stingray/q/c/i/a;

    invoke-direct {p2}, Lcom/hiya/stingray/q/c/i/a;-><init>()V

    .line 6
    invoke-virtual {p2, v2}, Lcom/hiya/stingray/q/c/i/a;->U0(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, v0}, Lcom/hiya/stingray/q/c/i/a;->V0(Z)V

    .line 8
    new-instance v1, Lorg/joda/time/m;

    invoke-direct {v1}, Lorg/joda/time/m;-><init>()V

    invoke-virtual {v1}, Lorg/joda/time/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/hiya/stingray/q/c/i/a;->R0(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, p1}, Lcom/hiya/stingray/q/c/i/a;->T0(Z)V

    .line 10
    invoke-virtual {p2}, Lcom/hiya/stingray/q/c/i/a;->P0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0, p1}, Lcom/hiya/stingray/q/c/i/a;->S0(Ljava/lang/String;ZZ)V

    return-object p2
.end method
