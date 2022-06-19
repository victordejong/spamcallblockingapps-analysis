.class public Lcom/hiya/stingray/manager/a4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/a4$a;
    }
.end annotation


# static fields
.field private static final g:Lg/g/a/a/m/c;


# instance fields
.field private final a:Li/c/b0/c/a;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/hiya/stingray/q/d/e;

.field private final d:Lcom/hiya/stingray/q/d/f;

.field private final e:Lcom/hiya/stingray/manager/l1;

.field private final f:Lcom/hiya/stingray/manager/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lg/g/a/a/m/c;

    const-string v1, "debug_id"

    const-string v2, "Debug Partner"

    invoke-direct {v0, v1, v2}, Lg/g/a/a/m/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/hiya/stingray/manager/a4;->g:Lg/g/a/a/m/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/e;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/l1;Lcom/hiya/stingray/manager/e1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedUserSharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSharedPreferences"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/a4;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/a4;->c:Lcom/hiya/stingray/q/d/e;

    iput-object p3, p0, Lcom/hiya/stingray/manager/a4;->d:Lcom/hiya/stingray/q/d/f;

    iput-object p4, p0, Lcom/hiya/stingray/manager/a4;->e:Lcom/hiya/stingray/manager/l1;

    iput-object p5, p0, Lcom/hiya/stingray/manager/a4;->f:Lcom/hiya/stingray/manager/e1;

    .line 2
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/a4;->a:Li/c/b0/c/a;

    return-void
.end method

.method private final i(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->d:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->H(Z)V

    return-void
.end method

.method private final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->f:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/a4;->d()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/e1;->f(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->c:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hiya/stingray/manager/a4;->g:Lg/g/a/a/m/c;

    invoke-virtual {v0}, Lg/g/a/a/m/c;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->c:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->f()Lcom/hiya/stingray/manager/a4$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4$a;->a()Lg/g/a/a/m/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/g/a/a/m/c;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->c:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hiya/stingray/manager/a4;->g:Lg/g/a/a/m/c;

    invoke-virtual {v0}, Lg/g/a/a/m/c;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->c:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->f()Lcom/hiya/stingray/manager/a4$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4$a;->a()Lg/g/a/a/m/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/g/a/a/m/c;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->d:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->m()Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/util/Map;
    .locals 2
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
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/a4;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hsel_exp"

    goto :goto_0

    :cond_0
    const-string v0, "hsel"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    const-string v1, "user_type"

    .line 3
    invoke-static {v1, v0}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/a4;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "partner_id"

    .line 2
    invoke-static {v1, v0}, Lcom/hiya/stingray/manager/e1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->c:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->f()Lcom/hiya/stingray/manager/a4$a;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SelectManagerLog"

    .line 4
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "No select info cache found, re-fetching the auth token..."

    invoke-virtual {v0, v3, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->e:Lcom/hiya/stingray/manager/l1;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/manager/l1;->b(ZZ)Li/c/b0/b/e;

    move-result-object v0

    .line 6
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 7
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/hiya/stingray/manager/a4$b;->f:Lcom/hiya/stingray/manager/a4$b;

    .line 9
    sget-object v2, Lcom/hiya/stingray/manager/a4$c;->f:Lcom/hiya/stingray/manager/a4$c;

    .line 10
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/hiya/stingray/manager/a4;->a:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    :cond_1
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->c:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->f()Lcom/hiya/stingray/manager/a4$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4$a;->a()Lg/g/a/a/m/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->c:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->d:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->l()Z

    move-result v0

    return v0
.end method

.method public final h(Lg/g/a/a/m/c;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->c:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->f()Lcom/hiya/stingray/manager/a4$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4$a;->a()Lg/g/a/a/m/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SelectManagerLog"

    .line 2
    invoke-static {v1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Select info changed from ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 3
    invoke-static {v1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Select status has been expired."

    invoke-virtual {v0, v2, v1}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/a4;->i(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->c:Lcom/hiya/stingray/q/d/e;

    new-instance v1, Lcom/hiya/stingray/manager/a4$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/hiya/stingray/manager/a4$a;-><init>(Lg/g/a/a/m/c;J)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/e;->m(Lcom/hiya/stingray/manager/a4$a;)V

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/manager/a4;->k()V

    return-void
.end method

.method public final j(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/a4;->d:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->K(Z)V

    return-void
.end method
