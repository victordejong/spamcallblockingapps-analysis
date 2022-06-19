.class final Lcom/hiya/stingray/f$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/f;->q(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lcom/hiya/stingray/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/f;

.field final synthetic g:Lcom/hiya/client/callerid/ui/b0/j;

.field final synthetic h:Lg/g/b/c/k;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/f;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    iput-object p2, p0, Lcom/hiya/stingray/f$g;->g:Lcom/hiya/client/callerid/ui/b0/j;

    iput-object p3, p0, Lcom/hiya/stingray/f$g;->h:Lg/g/b/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/f$b;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    invoke-static {v1}, Lcom/hiya/stingray/f;->k(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/t/i1/f0;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->c()Lg/g/b/c/f;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->d()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/hiya/stingray/t/i1/f0;->a(Lg/g/b/c/f;Z)Lcom/hiya/stingray/t/h0;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    invoke-static {v2}, Lcom/hiya/stingray/f;->j(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/t/i1/c0;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lcom/hiya/stingray/t/h0;->b()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    .line 4
    iget-object v4, v0, Lcom/hiya/stingray/f$g;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/t/h0;->b()Lcom/hiya/stingray/t/n0;

    move-result-object v5

    const-string v6, "callerIdItem.identityData"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/hiya/stingray/t/n0;->k()Lcom/google/common/collect/z;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    const/4 v14, 0x1

    xor-int/2addr v5, v14

    .line 6
    invoke-virtual {v2, v3, v4, v5}, Lcom/hiya/stingray/t/i1/c0;->a(Lcom/hiya/stingray/t/n0;Ljava/lang/String;Z)Lcom/hiya/stingray/t/p0;

    move-result-object v2

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->c()Lg/g/b/c/f;

    move-result-object v3

    invoke-virtual {v3}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object v3

    invoke-static {v3}, Lcom/hiya/stingray/t/i1/h0;->e(Lg/g/b/c/q;)Lcom/hiya/stingray/t/z0;

    move-result-object v3

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->c()Lg/g/b/c/f;

    move-result-object v4

    invoke-virtual {v4}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object v4

    invoke-static {v4}, Lcom/hiya/stingray/t/i1/h0;->b(Lg/g/b/c/i;)Lcom/hiya/stingray/t/m0;

    move-result-object v15

    .line 9
    iget-object v4, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    invoke-static {v4}, Lcom/hiya/stingray/f;->i(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/t/i1/t;

    move-result-object v4

    .line 10
    iget-object v5, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    invoke-static {v5}, Lcom/hiya/stingray/f;->l(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/u3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v5

    .line 11
    invoke-virtual {v4, v2, v3, v15, v5}, Lcom/hiya/stingray/t/i1/t;->d(Lcom/hiya/stingray/t/p0;Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/m0;Z)Lcom/hiya/stingray/ui/o;

    move-result-object v13

    .line 12
    iget-object v4, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    invoke-static {v4}, Lcom/hiya/stingray/f;->i(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/t/i1/t;

    move-result-object v4

    .line 13
    iget-object v5, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    invoke-static {v5}, Lcom/hiya/stingray/f;->l(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/u3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v5

    .line 14
    invoke-virtual {v4, v2, v3, v15, v5}, Lcom/hiya/stingray/t/i1/t;->a(Lcom/hiya/stingray/t/p0;Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/m0;Z)Lcom/hiya/stingray/ui/b;

    move-result-object v6

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->a()Lcom/hiya/stingray/manager/n1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/n1;->b()Lcom/hiya/stingray/t/b0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/t/b0;->isBlocked()Z

    move-result v2

    const/16 v16, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/hiya/stingray/f$g;->h:Lg/g/b/c/k;

    sget-object v4, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne v2, v4, :cond_0

    .line 16
    iget-object v2, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    .line 17
    invoke-static {v2}, Lcom/hiya/stingray/f;->f(Lcom/hiya/stingray/f;)Landroid/content/Context;

    move-result-object v4

    .line 18
    iget-object v5, v0, Lcom/hiya/stingray/f$g;->g:Lcom/hiya/client/callerid/ui/b0/j;

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->c()Lg/g/b/c/f;

    move-result-object v6

    .line 20
    invoke-static {v2, v4, v5, v1, v6}, Lcom/hiya/stingray/f;->n(Lcom/hiya/stingray/f;Landroid/content/Context;Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/stingray/t/h0;Lg/g/b/c/f;)V

    goto :goto_2

    .line 21
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->a()Lcom/hiya/stingray/manager/n1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/n1;->b()Lcom/hiya/stingray/t/b0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/t/b0;->isBlocked()Z

    move-result v2

    if-nez v2, :cond_5

    .line 22
    iget-object v4, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    .line 23
    iget-object v5, v0, Lcom/hiya/stingray/f$g;->g:Lcom/hiya/client/callerid/ui/b0/j;

    const-string v2, "callLogDisplayType"

    .line 24
    invoke-static {v6, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "notificationType"

    .line 25
    invoke-static {v13, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->c()Lg/g/b/c/f;

    move-result-object v9

    .line 27
    iget-object v10, v0, Lcom/hiya/stingray/f$g;->h:Lg/g/b/c/k;

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->b()Lcom/hiya/stingray/t/e0;

    move-result-object v2

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/hiya/stingray/t/e0;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v11, v2

    goto :goto_0

    :cond_1
    move-object v11, v7

    .line 29
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->b()Lcom/hiya/stingray/t/e0;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->b()Lcom/hiya/stingray/t/e0;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/hiya/stingray/t/e0;->f()I

    move-result v2

    invoke-static {v2}, Lcom/hiya/stingray/t/i1/e;->e(I)Lcom/hiya/stingray/t/f0;

    move-result-object v2

    sget-object v7, Lcom/hiya/stingray/t/f0;->MISSED:Lcom/hiya/stingray/t/f0;

    if-ne v2, v7, :cond_2

    const/4 v12, 0x1

    .line 31
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->b()Lcom/hiya/stingray/t/e0;

    move-result-object v2

    move-object v7, v13

    move-object v8, v1

    move-object/from16 v17, v13

    move-object v13, v2

    .line 32
    invoke-static/range {v4 .. v13}, Lcom/hiya/stingray/f;->p(Lcom/hiya/stingray/f;Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/stingray/ui/b;Lcom/hiya/stingray/ui/o;Lcom/hiya/stingray/t/h0;Lg/g/b/c/f;Lg/g/b/c/k;Ljava/lang/Integer;ZLcom/hiya/stingray/t/e0;)V

    goto :goto_3

    .line 33
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v7

    :cond_5
    :goto_2
    move-object/from16 v17, v13

    :goto_3
    const-string v2, "CallLifecycleHandler"

    .line 34
    invoke-static {v2}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 35
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v16

    aput-object v15, v4, v14

    const/4 v3, 0x2

    .line 36
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "Showing post call notification: reputation=(%s) identity=(%s) notification=(%s)"

    .line 37
    invoke-virtual {v2, v3, v4}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v2, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->a()Lcom/hiya/stingray/manager/n1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/n1;->a()Lcom/hiya/stingray/service/a/a;

    move-result-object v3

    iget-object v4, v0, Lcom/hiya/stingray/f$g;->h:Lg/g/b/c/k;

    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->d()Z

    move-result v5

    invoke-static {v2, v1, v3, v4, v5}, Lcom/hiya/stingray/f;->o(Lcom/hiya/stingray/f;Lcom/hiya/stingray/t/h0;Lcom/hiya/stingray/service/a/a;Lg/g/b/c/k;Z)V

    .line 39
    iget-object v1, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    invoke-static {v1}, Lcom/hiya/stingray/f;->g(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/h2;

    move-result-object v1

    .line 40
    iget-object v2, v0, Lcom/hiya/stingray/f$g;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->b()Lcom/hiya/stingray/t/e0;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hiya/stingray/manager/h2;->v(Ljava/lang/String;Lcom/hiya/stingray/t/e0;)V

    .line 41
    iget-object v2, v0, Lcom/hiya/stingray/f$g;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/hiya/stingray/f$g;->h:Lg/g/b/c/k;

    invoke-virtual {v1, v2, v3}, Lcom/hiya/stingray/manager/h2;->x(Ljava/lang/String;Lg/g/b/c/k;)V

    .line 42
    iget-object v2, v0, Lcom/hiya/stingray/f$g;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->d()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/hiya/stingray/manager/h2;->z(Ljava/lang/String;Z)V

    .line 43
    iget-object v2, v0, Lcom/hiya/stingray/f$g;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->c()Lg/g/b/c/f;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hiya/stingray/manager/h2;->w(Ljava/lang/String;Lg/g/b/c/f;)V

    .line 44
    iget-object v2, v0, Lcom/hiya/stingray/f$g;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->a()Lcom/hiya/stingray/manager/n1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/n1;->a()Lcom/hiya/stingray/service/a/a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hiya/stingray/manager/h2;->s(Ljava/lang/String;Lcom/hiya/stingray/service/a/a;)V

    .line 45
    iget-object v2, v0, Lcom/hiya/stingray/f$g;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->a()Lcom/hiya/stingray/manager/n1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/n1;->b()Lcom/hiya/stingray/t/b0;

    move-result-object v3

    sget-object v4, Lcom/hiya/stingray/t/b0;->WHITE_LISTED:Lcom/hiya/stingray/t/b0;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 47
    :goto_4
    invoke-virtual {v1, v2, v3}, Lcom/hiya/stingray/manager/h2;->B(Ljava/lang/String;Z)V

    .line 48
    iget-object v2, v0, Lcom/hiya/stingray/f$g;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/f$b;->a()Lcom/hiya/stingray/manager/n1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/n1;->b()Lcom/hiya/stingray/t/b0;

    move-result-object v3

    sget-object v4, Lcom/hiya/stingray/t/b0;->MANUAL_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-ne v3, v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    .line 50
    :goto_5
    invoke-virtual {v1, v2, v14}, Lcom/hiya/stingray/manager/h2;->u(Ljava/lang/String;Z)V

    .line 51
    iget-object v1, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    invoke-static {v1}, Lcom/hiya/stingray/f;->g(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/h2;

    move-result-object v1

    .line 52
    iget-object v2, v0, Lcom/hiya/stingray/f$g;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 53
    iget-object v3, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    invoke-static {v3}, Lcom/hiya/stingray/f;->h(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/o2;

    move-result-object v3

    .line 54
    iget-object v4, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    invoke-static {v4}, Lcom/hiya/stingray/f;->f(Lcom/hiya/stingray/f;)Landroid/content/Context;

    move-result-object v4

    .line 55
    invoke-virtual {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/h2;->d(Ljava/lang/String;Lcom/hiya/stingray/manager/o2;Landroid/content/Context;)Li/c/b0/b/e;

    move-result-object v1

    .line 56
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v1

    .line 57
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v1

    .line 58
    sget-object v2, Lcom/hiya/stingray/f$g$a;->f:Lcom/hiya/stingray/f$g$a;

    .line 59
    sget-object v3, Lcom/hiya/stingray/f$g$b;->f:Lcom/hiya/stingray/f$g$b;

    .line 60
    invoke-virtual {v1, v2, v3}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    .line 61
    iget-object v1, v0, Lcom/hiya/stingray/f$g;->f:Lcom/hiya/stingray/f;

    invoke-static {v1}, Lcom/hiya/stingray/f;->m(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/util/a0;

    move-result-object v1

    .line 62
    new-instance v2, Lcom/hiya/stingray/util/i0/d;

    .line 63
    sget-object v3, Lcom/hiya/stingray/util/i0/d$a;->FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;

    .line 64
    invoke-direct {v2, v3}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    .line 65
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/f$b;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/f$g;->a(Lcom/hiya/stingray/f$b;)V

    return-void
.end method
