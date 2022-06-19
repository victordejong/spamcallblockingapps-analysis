.class public abstract Le/a/b/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/a/e/a$h;,
        Le/a/b/a/e/a$f;,
        Le/a/b/a/e/a$g;,
        Le/a/b/a/e/a$i;,
        Le/a/b/a/e/a$e;,
        Le/a/b/a/e/a$d;,
        Le/a/b/a/e/a$j;,
        Le/a/b/a/e/a$a;,
        Le/a/b/a/e/a$b;,
        Le/a/b/a/e/a$c;,
        Le/a/b/a/e/a$k;,
        Le/a/b/a/e/a$m;,
        Le/a/b/a/e/a$l;
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p0, Le/a/b/a/e/a$h;

    const-string v1, "ViewVisited"

    const-string v2, "SelectedContent"

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p0, Le/a/b/a/e/a$f;

    if-eqz v0, :cond_1

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 3
    :cond_1
    instance-of v0, p0, Le/a/b/a/e/a$g;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Le/a/b/a/e/a$i;->a:Le/a/b/a/e/a$i;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Le/a/b/a/e/a$e;->a:Le/a/b/a/e/a$e;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    sget-object v0, Le/a/b/a/e/a$d;->a:Le/a/b/a/e/a$d;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    sget-object v0, Le/a/b/a/e/a$j;->a:Le/a/b/a/e/a$j;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 8
    :cond_6
    sget-object v0, Le/a/b/a/e/a$a;->a:Le/a/b/a/e/a$a;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 9
    :cond_7
    instance-of v0, p0, Le/a/b/a/e/a$b;

    if-eqz v0, :cond_8

    goto :goto_0

    .line 10
    :cond_8
    instance-of v0, p0, Le/a/b/a/e/a$c;

    if-eqz v0, :cond_9

    goto :goto_0

    .line 11
    :cond_9
    sget-object v0, Le/a/b/a/e/a$k;->a:Le/a/b/a/e/a$k;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    .line 12
    :cond_a
    instance-of v0, p0, Le/a/b/a/e/a$m;

    if-eqz v0, :cond_b

    const-string v1, "VerifiedBusinessAwarenessDetailEvent"

    goto :goto_1

    .line 13
    :cond_b
    instance-of v0, p0, Le/a/b/a/e/a$l;

    if-eqz v0, :cond_c

    const-string v1, "PriorityCallAwarenessDetailEvent"

    :goto_1
    return-object v1

    :cond_c
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method

.method public final b()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Le/a/b/a/e/a$h;

    const-string v1, "Status"

    const-string v2, "LocationForm"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "ViewId"

    if-eqz v0, :cond_0

    new-array v0, v5, [Ls1/k;

    .line 2
    new-instance v5, Ls1/k;

    invoke-direct {v5, v6, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v4

    .line 3
    move-object v2, p0

    check-cast v2, Le/a/b/a/e/a$h;

    .line 4
    iget-object v2, v2, Le/a/b/a/e/a$h;->a:Ljava/lang/String;

    .line 5
    new-instance v4, Ls1/k;

    invoke-direct {v4, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    .line 6
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0

    .line 7
    :cond_0
    instance-of v0, p0, Le/a/b/a/e/a$f;

    const/4 v7, 0x3

    if-eqz v0, :cond_1

    new-array v0, v7, [Ls1/k;

    .line 8
    new-instance v7, Ls1/k;

    invoke-direct {v7, v6, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v4

    .line 9
    new-instance v2, Ls1/k;

    const-string v4, "PermissionReqShown"

    invoke-direct {v2, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    .line 10
    move-object v1, p0

    check-cast v1, Le/a/b/a/e/a$f;

    .line 11
    iget-boolean v1, v1, Le/a/b/a/e/a$f;->a:Z

    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance v2, Ls1/k;

    const-string v3, "Result"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v5

    .line 14
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0

    .line 15
    :cond_1
    instance-of v0, p0, Le/a/b/a/e/a$g;

    const-string v8, "SubmitBtn"

    const-string v9, "ItemName"

    if-eqz v0, :cond_2

    new-array v0, v7, [Ls1/k;

    .line 16
    new-instance v7, Ls1/k;

    invoke-direct {v7, v6, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v4

    .line 17
    new-instance v2, Ls1/k;

    invoke-direct {v2, v9, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    .line 18
    new-instance v2, Ls1/k;

    const-string v3, "PincodeShown"

    invoke-direct {v2, v1, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v5

    .line 19
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0

    .line 20
    :cond_2
    sget-object v0, Le/a/b/a/e/a$i;->a:Le/a/b/a/e/a$i;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v7, [Ls1/k;

    .line 21
    new-instance v7, Ls1/k;

    invoke-direct {v7, v6, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v4

    .line 22
    new-instance v2, Ls1/k;

    invoke-direct {v2, v9, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    .line 23
    new-instance v2, Ls1/k;

    const-string v3, "ManualFormShown"

    invoke-direct {v2, v1, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v5

    .line 24
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0

    .line 25
    :cond_3
    sget-object v0, Le/a/b/a/e/a$e;->a:Le/a/b/a/e/a$e;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "LocationConfirmation"

    if-eqz v0, :cond_4

    .line 26
    new-instance v0, Ls1/k;

    invoke-direct {v0, v6, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    invoke-static {v0}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0

    .line 28
    :cond_4
    sget-object v0, Le/a/b/a/e/a$d;->a:Le/a/b/a/e/a$d;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v5, [Ls1/k;

    .line 29
    new-instance v2, Ls1/k;

    invoke-direct {v2, v6, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v4

    .line 30
    new-instance v1, Ls1/k;

    invoke-direct {v1, v9, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 31
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0

    .line 32
    :cond_5
    sget-object v0, Le/a/b/a/e/a$j;->a:Le/a/b/a/e/a$j;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    new-instance v0, Ls1/k;

    const-string v1, "OnboardingIntro"

    invoke-direct {v0, v6, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    invoke-static {v0}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0

    .line 35
    :cond_6
    sget-object v0, Le/a/b/a/e/a$a;->a:Le/a/b/a/e/a$a;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-array v0, v5, [Ls1/k;

    .line 36
    new-instance v1, Ls1/k;

    const-string v2, "BusinessName"

    invoke-direct {v1, v6, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    .line 37
    new-instance v1, Ls1/k;

    invoke-direct {v1, v9, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 38
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0

    .line 39
    :cond_7
    instance-of v0, p0, Le/a/b/a/e/a$b;

    if-eqz v0, :cond_8

    new-array v0, v5, [Ls1/k;

    .line 40
    new-instance v1, Ls1/k;

    const-string v2, "L1Category"

    invoke-direct {v1, v6, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    .line 41
    new-instance v1, Ls1/k;

    invoke-direct {v1, v9, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 42
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_8
    instance-of v0, p0, Le/a/b/a/e/a$c;

    if-eqz v0, :cond_9

    new-array v0, v5, [Ls1/k;

    .line 44
    new-instance v1, Ls1/k;

    const-string v2, "L2Category"

    invoke-direct {v1, v6, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    .line 45
    new-instance v1, Ls1/k;

    invoke-direct {v1, v9, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 46
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_9
    sget-object v0, Le/a/b/a/e/a$k;->a:Le/a/b/a/e/a$k;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 48
    new-instance v0, Ls1/k;

    const-string v1, "OnboardingSuccess"

    invoke-direct {v0, v6, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    invoke-static {v0}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_a
    instance-of v0, p0, Le/a/b/a/e/a$m;

    const-string v1, "Action"

    if-eqz v0, :cond_b

    .line 51
    move-object v0, p0

    check-cast v0, Le/a/b/a/e/a$m;

    .line 52
    iget-object v0, v0, Le/a/b/a/e/a$m;->a:Ljava/lang/String;

    .line 53
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    invoke-static {v2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_b
    instance-of v0, p0, Le/a/b/a/e/a$l;

    if-eqz v0, :cond_c

    .line 56
    move-object v0, p0

    check-cast v0, Le/a/b/a/e/a$l;

    .line 57
    iget-object v0, v0, Le/a/b/a/e/a$l;->a:Ljava/lang/String;

    .line 58
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    invoke-static {v2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_c
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
