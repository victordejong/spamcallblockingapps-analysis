.class public Lg/g/a/a/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/d;


# instance fields
.field private final a:Lg/g/a/b/j1/m;

.field private final b:Lg/g/a/b/j1/i;

.field private final c:Lg/g/a/b/j1/g;

.field private final d:Lg/g/a/a/h/g;

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/g/a/b/j1/m;Lg/g/a/b/j1/i;Lg/g/a/b/j1/g;Lg/g/a/a/h/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/k/b;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lg/g/a/a/k/b;->a:Lg/g/a/b/j1/m;

    .line 4
    iput-object p3, p0, Lg/g/a/a/k/b;->b:Lg/g/a/b/j1/i;

    .line 5
    iput-object p4, p0, Lg/g/a/a/k/b;->c:Lg/g/a/b/j1/g;

    .line 6
    iput-object p5, p0, Lg/g/a/a/k/b;->d:Lg/g/a/a/h/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/k/b;->b:Lg/g/a/b/j1/i;

    invoke-interface {v0}, Lg/g/a/b/j1/i;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lg/g/a/a/k/b;->b:Lg/g/a/b/j1/i;

    invoke-interface {v1}, Lg/g/a/b/j1/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lg/g/a/a/k/b;->b:Lg/g/a/b/j1/i;

    invoke-interface {v1}, Lg/g/a/b/j1/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Hiya-Product-Name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v1, p0, Lg/g/a/a/k/b;->b:Lg/g/a/b/j1/i;

    invoke-interface {v1}, Lg/g/a/b/j1/i;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Hiya-Product-Version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lg/g/a/a/k/b;->b:Lg/g/a/b/j1/i;

    invoke-interface {v1}, Lg/g/a/b/j1/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "X-Hiya-Product-Version-Code"

    .line 8
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    iget-object v1, p0, Lg/g/a/a/k/b;->b:Lg/g/a/b/j1/i;

    invoke-interface {v1}, Lg/g/a/b/j1/i;->a()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "X-Hiya-Subproduct-Name"

    .line 11
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    iget-object v1, p0, Lg/g/a/a/k/b;->c:Lg/g/a/b/j1/g;

    invoke-interface {v1}, Lg/g/a/b/j1/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    iget-object v1, p0, Lg/g/a/a/k/b;->c:Lg/g/a/b/j1/g;

    invoke-interface {v1}, Lg/g/a/b/j1/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Hiya-Account-User-ID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_4
    iget-object v1, p0, Lg/g/a/a/k/b;->c:Lg/g/a/b/j1/g;

    invoke-interface {v1}, Lg/g/a/b/j1/g;->d()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "X-Hiya-Installation-User-ID"

    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_5
    iget-object v1, p0, Lg/g/a/a/k/b;->c:Lg/g/a/b/j1/g;

    invoke-interface {v1}, Lg/g/a/b/j1/g;->c()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "X-Hiya-Device-User-ID"

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_6
    iget-object v1, p0, Lg/g/a/a/k/b;->a:Lg/g/a/b/j1/m;

    invoke-interface {v1}, Lg/g/a/b/j1/m;->c()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "X-Hiya-User-Phone-Number"

    .line 22
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_7
    iget-object v1, p0, Lg/g/a/a/k/b;->a:Lg/g/a/b/j1/m;

    invoke-interface {v1}, Lg/g/a/b/j1/m;->a()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "X-Hiya-Obfuscated-User-Phones"

    .line 25
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_8
    iget-object v1, p0, Lg/g/a/a/k/b;->e:Landroid/content/Context;

    invoke-static {v1}, Lg/g/a/e/d;->c(Landroid/content/Context;)Lcom/google/common/base/j;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/google/common/base/j;->d()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 28
    invoke-virtual {v1}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "X-Hiya-Current-Carrier-ID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_9
    iget-object v1, p0, Lg/g/a/a/k/b;->e:Landroid/content/Context;

    invoke-static {v1}, Lg/g/a/e/d;->d(Landroid/content/Context;)Lcom/google/common/base/j;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/common/base/j;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 31
    invoke-virtual {v1}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "X-Hiya-Sim-Carrier-ID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_a
    iget-object v1, p0, Lg/g/a/a/k/b;->c:Lg/g/a/b/j1/g;

    invoke-interface {v1}, Lg/g/a/b/j1/g;->b()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "X-Hiya-Advertising-ID"

    .line 34
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_b
    iget-object v1, p0, Lg/g/a/a/k/b;->a:Lg/g/a/b/j1/m;

    invoke-interface {v1}, Lg/g/a/b/j1/m;->b()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "Accept-Language"

    .line 37
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_c
    iget-object v1, p0, Lg/g/a/a/k/b;->d:Lg/g/a/a/h/g;

    invoke-virtual {v1}, Lg/g/a/a/h/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 40
    invoke-static {}, Lcom/google/common/base/d;->c()Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/common/base/d;->i(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 41
    invoke-static {v1}, Lg/g/a/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    const-string v2, "X-Hiya-Country-Code"

    .line 42
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_e
    iget-object v1, p0, Lg/g/a/a/k/b;->b:Lg/g/a/b/j1/i;

    invoke-interface {v1}, Lg/g/a/b/j1/i;->e()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "X-Hiya-Samsung-Sales-Code"

    .line 45
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_f
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Hiya-User-TZ-Offset-Seconds"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lg/g/a/a/k/b;->b:Lg/g/a/b/j1/i;

    invoke-interface {v1}, Lg/g/a/b/j1/i;->f()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "X-Hiya-Product-AAR-Version"

    .line 49
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v0
.end method
