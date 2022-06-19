.class public final Lp3/a/n1/m1$o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1$o;->b(Lp3/a/r0$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/r0$e;

.field public final synthetic b:Lp3/a/n1/m1$o;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$o;Lp3/a/r0$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iput-object p2, p0, Lp3/a/n1/m1$o$b;->a:Lp3/a/r0$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    sget-object v0, Lp3/a/c0;->a:Lp3/a/a$c;

    sget-object v1, Lp3/a/e$a;->a:Lp3/a/e$a;

    sget-object v2, Lp3/a/e$a;->b:Lp3/a/e$a;

    iget-object v3, p0, Lp3/a/n1/m1$o$b;->a:Lp3/a/r0$e;

    .line 2
    iget-object v4, v3, Lp3/a/r0$e;->a:Ljava/util/List;

    .line 3
    iget-object v5, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v5, v5, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 4
    iget-object v5, v5, Lp3/a/n1/m1;->Q:Lp3/a/e;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    .line 5
    iget-object v3, v3, Lp3/a/r0$e;->b:Lp3/a/a;

    const/4 v9, 0x1

    aput-object v3, v7, v9

    const-string v3, "Resolved address: {0}, config={1}"

    .line 6
    invoke-virtual {v5, v1, v3, v7}, Lp3/a/e;->b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v3, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v3, v3, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 8
    iget-object v5, v3, Lp3/a/n1/m1;->T:Lp3/a/n1/m1$q;

    .line 9
    sget-object v7, Lp3/a/n1/m1$q;->b:Lp3/a/n1/m1$q;

    if-eq v5, v7, :cond_0

    .line 10
    iget-object v3, v3, Lp3/a/n1/m1;->Q:Lp3/a/e;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v8

    const-string v10, "Address resolved: {0}"

    .line 11
    invoke-virtual {v3, v2, v10, v5}, Lp3/a/e;->b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v3, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v3, v3, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 13
    iput-object v7, v3, Lp3/a/n1/m1;->T:Lp3/a/n1/m1$q;

    .line 14
    :cond_0
    iget-object v3, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v3, v3, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    const/4 v5, 0x0

    .line 15
    iput-object v5, v3, Lp3/a/n1/m1;->d0:Lp3/a/n1/l;

    .line 16
    iget-object v3, p0, Lp3/a/n1/m1$o$b;->a:Lp3/a/r0$e;

    .line 17
    iget-object v7, v3, Lp3/a/r0$e;->c:Lp3/a/r0$b;

    .line 18
    iget-object v3, v3, Lp3/a/r0$e;->b:Lp3/a/a;

    .line 19
    iget-object v3, v3, Lp3/a/a;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 20
    check-cast v3, Lp3/a/c0;

    if-eqz v7, :cond_1

    .line 21
    iget-object v10, v7, Lp3/a/r0$b;->b:Ljava/lang/Object;

    if-eqz v10, :cond_1

    .line 22
    check-cast v10, Lp3/a/n1/s1;

    goto :goto_0

    :cond_1
    move-object v10, v5

    :goto_0
    if-eqz v7, :cond_2

    .line 23
    iget-object v11, v7, Lp3/a/r0$b;->a:Lp3/a/g1;

    goto :goto_1

    :cond_2
    move-object v11, v5

    .line 24
    :goto_1
    iget-object v12, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v12, v12, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 25
    iget-boolean v13, v12, Lp3/a/n1/m1;->W:Z

    if-nez v13, :cond_5

    if-eqz v10, :cond_3

    .line 26
    iget-object v7, v12, Lp3/a/n1/m1;->Q:Lp3/a/e;

    const-string v10, "Service config from name resolver discarded by channel settings"

    .line 27
    invoke-virtual {v7, v2, v10}, Lp3/a/e;->a(Lp3/a/e$a;Ljava/lang/String;)V

    .line 28
    :cond_3
    iget-object v7, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v7, v7, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 29
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v7, Lp3/a/n1/m1;->l0:Lp3/a/n1/s1;

    if-eqz v3, :cond_4

    .line 31
    iget-object v3, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v3, v3, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 32
    iget-object v3, v3, Lp3/a/n1/m1;->Q:Lp3/a/e;

    const-string v10, "Config selector from name resolver discarded by channel settings"

    .line 33
    invoke-virtual {v3, v2, v10}, Lp3/a/e;->a(Lp3/a/e$a;Ljava/lang/String;)V

    .line 34
    :cond_4
    iget-object v3, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v3, v3, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 35
    iget-object v3, v3, Lp3/a/n1/m1;->S:Lp3/a/n1/m1$p;

    .line 36
    invoke-virtual {v7}, Lp3/a/n1/s1;->b()Lp3/a/c0;

    move-result-object v10

    invoke-virtual {v3, v10}, Lp3/a/n1/m1$p;->j(Lp3/a/c0;)V

    goto/16 :goto_5

    :cond_5
    if-eqz v10, :cond_7

    if-eqz v3, :cond_6

    .line 37
    iget-object v7, v12, Lp3/a/n1/m1;->S:Lp3/a/n1/m1$p;

    .line 38
    invoke-virtual {v7, v3}, Lp3/a/n1/m1$p;->j(Lp3/a/c0;)V

    .line 39
    invoke-virtual {v10}, Lp3/a/n1/s1;->b()Lp3/a/c0;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 40
    iget-object v3, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v3, v3, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 41
    iget-object v3, v3, Lp3/a/n1/m1;->Q:Lp3/a/e;

    const-string v7, "Method configs in service config will be discarded due to presence ofconfig-selector"

    .line 42
    invoke-virtual {v3, v1, v7}, Lp3/a/e;->a(Lp3/a/e$a;Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :cond_6
    iget-object v3, v12, Lp3/a/n1/m1;->S:Lp3/a/n1/m1$p;

    .line 44
    invoke-virtual {v10}, Lp3/a/n1/s1;->b()Lp3/a/c0;

    move-result-object v7

    invoke-virtual {v3, v7}, Lp3/a/n1/m1$p;->j(Lp3/a/c0;)V

    goto :goto_2

    :cond_7
    if-eqz v11, :cond_9

    .line 45
    iget-boolean v3, v12, Lp3/a/n1/m1;->V:Z

    if-nez v3, :cond_8

    .line 46
    iget-object v0, v12, Lp3/a/n1/m1;->Q:Lp3/a/e;

    const-string v1, "Fallback to error due to invalid first service config without default config"

    .line 47
    invoke-virtual {v0, v2, v1}, Lp3/a/e;->a(Lp3/a/e$a;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    .line 49
    iget-object v1, v7, Lp3/a/r0$b;->a:Lp3/a/g1;

    .line 50
    invoke-virtual {v0, v1}, Lp3/a/n1/m1$o;->a(Lp3/a/g1;)V

    return-void

    .line 51
    :cond_8
    iget-object v10, v12, Lp3/a/n1/m1;->U:Lp3/a/n1/s1;

    goto :goto_2

    .line 52
    :cond_9
    sget-object v10, Lp3/a/n1/m1;->l0:Lp3/a/n1/s1;

    .line 53
    iget-object v3, v12, Lp3/a/n1/m1;->S:Lp3/a/n1/m1$p;

    .line 54
    invoke-virtual {v3, v5}, Lp3/a/n1/m1$p;->j(Lp3/a/c0;)V

    .line 55
    :cond_a
    :goto_2
    iget-object v3, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v3, v3, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 56
    iget-object v3, v3, Lp3/a/n1/m1;->U:Lp3/a/n1/s1;

    .line 57
    invoke-virtual {v10, v3}, Lp3/a/n1/s1;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 58
    iget-object v3, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v3, v3, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 59
    iget-object v3, v3, Lp3/a/n1/m1;->Q:Lp3/a/e;

    new-array v7, v9, [Ljava/lang/Object;

    .line 60
    sget-object v11, Lp3/a/n1/m1;->l0:Lp3/a/n1/s1;

    if-ne v10, v11, :cond_b

    const-string v11, " to empty"

    goto :goto_3

    :cond_b
    const-string v11, ""

    :goto_3
    aput-object v11, v7, v8

    const-string v11, "Service config changed{0}"

    .line 61
    invoke-virtual {v3, v2, v11, v7}, Lp3/a/e;->b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v3, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v3, v3, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 63
    iput-object v10, v3, Lp3/a/n1/m1;->U:Lp3/a/n1/s1;

    .line 64
    :cond_c
    :try_start_0
    iget-object v3, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v3, v3, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 65
    iput-boolean v9, v3, Lp3/a/n1/m1;->V:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    .line 66
    sget-object v7, Lp3/a/n1/m1;->g0:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v12, "["

    invoke-static {v12}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v13, v13, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 67
    iget-object v13, v13, Lp3/a/n1/m1;->a:Lp3/a/e0;

    .line 68
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "] Unexpected exception from parsing service config"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 69
    invoke-virtual {v7, v11, v12, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    move-object v7, v10

    .line 70
    :goto_5
    iget-object v3, p0, Lp3/a/n1/m1$o$b;->a:Lp3/a/r0$e;

    .line 71
    iget-object v3, v3, Lp3/a/r0$e;->b:Lp3/a/a;

    .line 72
    iget-object v10, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v11, v10, Lp3/a/n1/m1$o;->a:Lp3/a/n1/m1$n;

    iget-object v10, v10, Lp3/a/n1/m1$o;->c:Lp3/a/n1/m1;

    .line 73
    iget-object v10, v10, Lp3/a/n1/m1;->A:Lp3/a/n1/m1$n;

    if-ne v11, v10, :cond_13

    .line 74
    invoke-virtual {v3}, Lp3/a/a;->a()Lp3/a/a$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lp3/a/a$b;->b(Lp3/a/a$c;)Lp3/a/a$b;

    .line 75
    iget-object v0, v7, Lp3/a/n1/s1;->f:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 76
    sget-object v10, Lp3/a/i0;->a:Lp3/a/a$c;

    .line 77
    invoke-virtual {v3, v10, v0}, Lp3/a/a$b;->c(Lp3/a/a$c;Ljava/lang/Object;)Lp3/a/a$b;

    .line 78
    invoke-virtual {v3}, Lp3/a/a$b;->a()Lp3/a/a;

    .line 79
    :cond_d
    iget-object v0, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v0, v0, Lp3/a/n1/m1$o;->a:Lp3/a/n1/m1$n;

    iget-object v0, v0, Lp3/a/n1/m1$n;->a:Lp3/a/n1/k$b;

    .line 80
    sget-object v10, Lp3/a/a;->b:Lp3/a/a;

    .line 81
    invoke-virtual {v3}, Lp3/a/a$b;->a()Lp3/a/a;

    move-result-object v3

    .line 82
    iget-object v7, v7, Lp3/a/n1/s1;->e:Ljava/lang/Object;

    .line 83
    new-instance v10, Ljava/util/ArrayList;

    const-string v11, "addresses"

    .line 84
    invoke-static {v4, v11}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const-string v10, "attributes"

    .line 85
    invoke-static {v3, v10}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    check-cast v7, Lp3/a/n1/m2$b;

    if-nez v7, :cond_e

    .line 88
    :try_start_1
    iget-object v7, v0, Lp3/a/n1/k$b;->d:Lp3/a/n1/k;

    .line 89
    iget-object v10, v7, Lp3/a/n1/k;->b:Ljava/lang/String;

    const-string v11, "using default policy"

    .line 90
    invoke-static {v7, v10, v11}, Lp3/a/n1/k;->a(Lp3/a/n1/k;Ljava/lang/String;Ljava/lang/String;)Lp3/a/j0;

    move-result-object v7
    :try_end_1
    .catch Lp3/a/n1/k$f; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    new-instance v10, Lp3/a/n1/m2$b;

    invoke-direct {v10, v7, v5}, Lp3/a/n1/m2$b;-><init>(Lp3/a/j0;Ljava/lang/Object;)V

    move-object v7, v10

    goto :goto_6

    :catch_1
    move-exception v1

    .line 92
    sget-object v2, Lp3/a/g1;->o:Lp3/a/g1;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v1

    .line 93
    iget-object v2, v0, Lp3/a/n1/k$b;->a:Lp3/a/i0$d;

    sget-object v3, Lp3/a/o;->c:Lp3/a/o;

    new-instance v4, Lp3/a/n1/k$d;

    invoke-direct {v4, v1}, Lp3/a/n1/k$d;-><init>(Lp3/a/g1;)V

    invoke-virtual {v2, v3, v4}, Lp3/a/i0$d;->d(Lp3/a/o;Lp3/a/i0$i;)V

    .line 94
    iget-object v1, v0, Lp3/a/n1/k$b;->b:Lp3/a/i0;

    invoke-virtual {v1}, Lp3/a/i0;->c()V

    .line 95
    iput-object v5, v0, Lp3/a/n1/k$b;->c:Lp3/a/j0;

    .line 96
    new-instance v1, Lp3/a/n1/k$e;

    invoke-direct {v1, v5}, Lp3/a/n1/k$e;-><init>(Lp3/a/n1/k$a;)V

    iput-object v1, v0, Lp3/a/n1/k$b;->b:Lp3/a/i0;

    .line 97
    sget-object v0, Lp3/a/g1;->f:Lp3/a/g1;

    goto/16 :goto_7

    .line 98
    :cond_e
    :goto_6
    iget-object v10, v0, Lp3/a/n1/k$b;->c:Lp3/a/j0;

    if-eqz v10, :cond_f

    iget-object v10, v7, Lp3/a/n1/m2$b;->a:Lp3/a/j0;

    .line 99
    invoke-virtual {v10}, Lp3/a/j0;->b()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lp3/a/n1/k$b;->c:Lp3/a/j0;

    invoke-virtual {v11}, Lp3/a/j0;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 100
    :cond_f
    iget-object v10, v0, Lp3/a/n1/k$b;->a:Lp3/a/i0$d;

    sget-object v11, Lp3/a/o;->a:Lp3/a/o;

    new-instance v12, Lp3/a/n1/k$c;

    invoke-direct {v12, v5}, Lp3/a/n1/k$c;-><init>(Lp3/a/n1/k$a;)V

    invoke-virtual {v10, v11, v12}, Lp3/a/i0$d;->d(Lp3/a/o;Lp3/a/i0$i;)V

    .line 101
    iget-object v10, v0, Lp3/a/n1/k$b;->b:Lp3/a/i0;

    invoke-virtual {v10}, Lp3/a/i0;->c()V

    .line 102
    iget-object v10, v7, Lp3/a/n1/m2$b;->a:Lp3/a/j0;

    iput-object v10, v0, Lp3/a/n1/k$b;->c:Lp3/a/j0;

    .line 103
    iget-object v11, v0, Lp3/a/n1/k$b;->b:Lp3/a/i0;

    .line 104
    iget-object v12, v0, Lp3/a/n1/k$b;->a:Lp3/a/i0$d;

    invoke-virtual {v10, v12}, Lp3/a/i0$c;->a(Lp3/a/i0$d;)Lp3/a/i0;

    move-result-object v10

    iput-object v10, v0, Lp3/a/n1/k$b;->b:Lp3/a/i0;

    .line 105
    iget-object v10, v0, Lp3/a/n1/k$b;->a:Lp3/a/i0$d;

    invoke-virtual {v10}, Lp3/a/i0$d;->b()Lp3/a/e;

    move-result-object v10

    new-array v6, v6, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v8

    iget-object v11, v0, Lp3/a/n1/k$b;->b:Lp3/a/i0;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    const-string v11, "Load balancer changed from {0} to {1}"

    .line 107
    invoke-virtual {v10, v2, v11, v6}, Lp3/a/e;->b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_10
    iget-object v2, v7, Lp3/a/n1/m2$b;->b:Ljava/lang/Object;

    if-eqz v2, :cond_11

    .line 109
    iget-object v6, v0, Lp3/a/n1/k$b;->a:Lp3/a/i0$d;

    invoke-virtual {v6}, Lp3/a/i0$d;->b()Lp3/a/e;

    move-result-object v6

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v7, v7, Lp3/a/n1/m2$b;->b:Ljava/lang/Object;

    aput-object v7, v9, v8

    const-string v7, "Load-balancing config: {0}"

    invoke-virtual {v6, v1, v7, v9}, Lp3/a/e;->b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_11
    iget-object v0, v0, Lp3/a/n1/k$b;->b:Lp3/a/i0;

    .line 111
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 112
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lp3/a/g1;->p:Lp3/a/g1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameResolver returned no usable address. addrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", attrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    goto :goto_7

    .line 114
    :cond_12
    new-instance v1, Lp3/a/i0$g;

    invoke-direct {v1, v4, v3, v2, v5}, Lp3/a/i0$g;-><init>(Ljava/util/List;Lp3/a/a;Ljava/lang/Object;Lp3/a/i0$a;)V

    .line 115
    invoke-virtual {v0, v1}, Lp3/a/i0;->b(Lp3/a/i0$g;)V

    .line 116
    sget-object v0, Lp3/a/g1;->f:Lp3/a/g1;

    .line 117
    :goto_7
    invoke-virtual {v0}, Lp3/a/g1;->g()Z

    move-result v1

    if-nez v1, :cond_13

    .line 118
    iget-object v1, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lp3/a/n1/m1$o$b;->b:Lp3/a/n1/m1$o;

    iget-object v3, v3, Lp3/a/n1/m1$o;->b:Lp3/a/r0;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " was used"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    invoke-static {v1, v0}, Lp3/a/n1/m1$o;->c(Lp3/a/n1/m1$o;Lp3/a/g1;)V

    :cond_13
    return-void
.end method
