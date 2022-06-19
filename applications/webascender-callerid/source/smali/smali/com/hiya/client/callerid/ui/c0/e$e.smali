.class final Lcom/hiya/client/callerid/ui/c0/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/c0/e;->j(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLcom/hiya/client/callerid/ui/overlay/f;Landroid/content/Context;Lg/g/d/e;)V
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
        "Lcom/hiya/client/callerid/ui/c0/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/c0/e;

.field final synthetic g:Lg/g/d/e;

.field final synthetic h:Lg/g/b/c/k;

.field final synthetic i:Lcom/hiya/client/callerid/ui/b0/j;

.field final synthetic j:J

.field final synthetic k:Z

.field final synthetic l:Lcom/hiya/client/callerid/ui/overlay/f;

.field final synthetic m:Lg/g/a/e/e/n;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/c0/e;Lg/g/d/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;JZLcom/hiya/client/callerid/ui/overlay/f;Lg/g/a/e/e/n;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/e$e;->f:Lcom/hiya/client/callerid/ui/c0/e;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/c0/e$e;->g:Lg/g/d/e;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/c0/e$e;->h:Lg/g/b/c/k;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/c0/e$e;->i:Lcom/hiya/client/callerid/ui/b0/j;

    iput-wide p5, p0, Lcom/hiya/client/callerid/ui/c0/e$e;->j:J

    iput-boolean p7, p0, Lcom/hiya/client/callerid/ui/c0/e$e;->k:Z

    iput-object p8, p0, Lcom/hiya/client/callerid/ui/c0/e$e;->l:Lcom/hiya/client/callerid/ui/overlay/f;

    iput-object p9, p0, Lcom/hiya/client/callerid/ui/c0/e$e;->m:Lg/g/a/e/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/client/callerid/ui/c0/e$a;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/c0/e$a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/c0/e$a;->c()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->f:Lcom/hiya/client/callerid/ui/c0/e;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/c0/e;->c(Lcom/hiya/client/callerid/ui/c0/e;)Lcom/hiya/client/callerid/ui/a0/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/a0/m;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/c0/e$a;->a()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v11

    .line 4
    iget-object v4, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->g:Lg/g/d/e;

    invoke-virtual {v11}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v5

    invoke-interface {v4, v5}, Lg/g/d/e;->g(Z)V

    .line 5
    iget-object v4, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->g:Lg/g/d/e;

    iget-object v5, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->f:Lcom/hiya/client/callerid/ui/c0/e;

    invoke-static {v5}, Lcom/hiya/client/callerid/ui/c0/e;->f(Lcom/hiya/client/callerid/ui/c0/e;)Z

    move-result v5

    invoke-virtual {v11}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/hiya/client/callerid/ui/e0/e;->b(Lg/g/d/e;ZLg/g/b/c/f;)V

    .line 6
    iget-object v4, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->f:Lcom/hiya/client/callerid/ui/c0/e;

    iget-object v6, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->h:Lg/g/b/c/k;

    iget-object v7, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->i:Lcom/hiya/client/callerid/ui/b0/j;

    iget-wide v8, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->j:J

    iget-object v10, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->g:Lg/g/d/e;

    move-object v5, v11

    invoke-static/range {v4 .. v10}, Lcom/hiya/client/callerid/ui/c0/e;->g(Lcom/hiya/client/callerid/ui/c0/e;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;JLg/g/d/e;)V

    if-eqz v1, :cond_9

    .line 7
    sget-object v1, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 8
    iget-object v5, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->i:Lcom/hiya/client/callerid/ui/b0/j;

    .line 9
    iget-object v6, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->h:Lg/g/b/c/k;

    .line 10
    iget-boolean v7, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->k:Z

    .line 11
    invoke-interface {v4, v5, v11, v6, v7}, Lcom/hiya/client/callerid/ui/d;->m(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Z)Lcom/hiya/client/callerid/ui/d$c;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    new-instance v4, Lcom/hiya/client/callerid/ui/d$c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/hiya/client/callerid/ui/d$c;-><init>(ZZLg/g/b/c/f;ILkotlin/w/c/g;)V

    .line 13
    :goto_1
    invoke-virtual {v11}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v11}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v5

    invoke-virtual {v5}, Lg/g/b/c/f;->i()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/d$c;->b()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 14
    sget-object v5, Lg/g/a/e/e/b;->c:Lg/g/a/e/e/b;

    iget-object v6, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->i:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v6}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lg/g/a/e/e/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_4
    new-instance v5, Lcom/hiya/client/callerid/ui/b0/e;

    .line 16
    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/d$c;->a()Lg/g/b/c/f;

    move-result-object v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v11}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v6

    .line 17
    :goto_3
    invoke-virtual {v11}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v7

    .line 18
    invoke-direct {v5, v6, v7}, Lcom/hiya/client/callerid/ui/b0/e;-><init>(Lg/g/b/c/f;Z)V

    .line 19
    iget-object v6, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->f:Lcom/hiya/client/callerid/ui/c0/e;

    invoke-static {v6}, Lcom/hiya/client/callerid/ui/c0/e;->d(Lcom/hiya/client/callerid/ui/c0/e;)Lcom/hiya/client/callerid/ui/overlay/d;

    move-result-object v12

    .line 20
    iget-object v13, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->i:Lcom/hiya/client/callerid/ui/b0/j;

    .line 21
    iget-object v14, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->h:Lg/g/b/c/k;

    .line 22
    iget-object v6, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->l:Lcom/hiya/client/callerid/ui/overlay/f;

    if-eqz v6, :cond_6

    :goto_4
    move-object/from16 v17, v6

    goto :goto_6

    .line 23
    :cond_6
    new-instance v6, Lcom/hiya/client/callerid/ui/overlay/f;

    iget-object v7, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->f:Lcom/hiya/client/callerid/ui/c0/e;

    invoke-static {v7}, Lcom/hiya/client/callerid/ui/c0/e;->c(Lcom/hiya/client/callerid/ui/c0/e;)Lcom/hiya/client/callerid/ui/a0/m;

    move-result-object v7

    iget-object v8, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->h:Lg/g/b/c/k;

    sget-object v9, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne v8, v9, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v7, v2}, Lcom/hiya/client/callerid/ui/a0/m;->h(Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/hiya/client/callerid/ui/overlay/f;-><init>(Landroid/view/View;)V

    goto :goto_4

    :goto_6
    move-object v15, v5

    move-object/from16 v16, v4

    .line 24
    invoke-virtual/range {v12 .. v17}, Lcom/hiya/client/callerid/ui/overlay/d;->a(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/e;Lcom/hiya/client/callerid/ui/d$c;Lcom/hiya/client/callerid/ui/overlay/f;)V

    .line 25
    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1, v5, v4}, Lcom/hiya/client/callerid/ui/d;->a(Lcom/hiya/client/callerid/ui/b0/e;Lcom/hiya/client/callerid/ui/d$c;)V

    .line 26
    :cond_8
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->m:Lg/g/a/e/e/n;

    invoke-static {v1, v11}, Lcom/hiya/client/callerid/ui/d0/d;->a(Lg/g/a/e/e/n;Lcom/hiya/client/callerid/ui/b0/e;)V

    .line 27
    sget-object v1, Lg/g/a/e/e/b;->c:Lg/g/a/e/e/b;

    iget-object v2, v0, Lcom/hiya/client/callerid/ui/c0/e$e;->i:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v3

    invoke-virtual {v3}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lg/g/a/e/e/b;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/c0/e$a;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/c0/e$e;->a(Lcom/hiya/client/callerid/ui/c0/e$a;)V

    return-void
.end method
