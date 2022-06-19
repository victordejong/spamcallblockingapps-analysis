.class final Lcom/hiya/client/callerid/dao/e$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/e;->f(Lg/g/b/c/j;Z)Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;",
        "Li/c/b0/b/i0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/dao/e;

.field final synthetic g:Lg/g/b/c/j;

.field final synthetic h:Z


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/e;Lg/g/b/c/j;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/e$l;->f:Lcom/hiya/client/callerid/dao/e;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/e$l;->g:Lg/g/b/c/j;

    iput-boolean p3, p0, Lcom/hiya/client/callerid/dao/e$l;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Li/c/b0/b/e0;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/e0<",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/hiya/client/callerid/dao/e$l;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v2}, Lcom/hiya/client/callerid/dao/e;->j(Lcom/hiya/client/callerid/dao/e;)Lg/g/b/b/d/c;

    move-result-object v2

    const-string v3, "unhashed"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lg/g/b/c/r;->Companion:Lg/g/b/c/r$a;

    invoke-virtual {v3}, Lg/g/b/c/r$a;->a()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lg/g/b/b/d/c;->f(Ljava/lang/String;Ljava/util/Set;)Lg/g/b/c/f;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lg/g/b/c/f;->o()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    invoke-virtual {v2}, Lg/g/b/c/f;->w()Lg/g/b/c/r;

    move-result-object v3

    sget-object v4, Lg/g/b/c/r;->BUSINESS_PROFILE:Lg/g/b/c/r;

    if-eq v3, v4, :cond_1

    .line 3
    invoke-virtual {v2}, Lg/g/b/c/f;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0x3bffff

    const/16 v30, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v30}, Lg/g/b/c/f;->b(Lg/g/b/c/f;Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;ZILjava/lang/Object;)Lg/g/b/c/f;

    move-result-object v1

    .line 5
    iget-object v3, v0, Lcom/hiya/client/callerid/dao/e$l;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v3}, Lcom/hiya/client/callerid/dao/e;->j(Lcom/hiya/client/callerid/dao/e;)Lg/g/b/b/d/c;

    move-result-object v3

    invoke-virtual {v3, v1}, Lg/g/b/b/d/c;->j(Lg/g/b/c/f;)V

    .line 6
    invoke-static {v1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object v1

    .line 7
    new-instance v3, Lcom/hiya/client/callerid/dao/e$l$c;

    invoke-direct {v3, v0}, Lcom/hiya/client/callerid/dao/e$l$c;-><init>(Lcom/hiya/client/callerid/dao/e$l;)V

    invoke-virtual {v1, v3}, Li/c/b0/b/e0;->m(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v1

    .line 8
    new-instance v3, Lcom/hiya/client/callerid/dao/e$l$d;

    invoke-direct {v3, v0, v2}, Lcom/hiya/client/callerid/dao/e$l$d;-><init>(Lcom/hiya/client/callerid/dao/e$l;Lg/g/b/c/f;)V

    invoke-virtual {v1, v3}, Li/c/b0/b/e0;->i(Li/c/b0/d/g;)Li/c/b0/b/e0;

    move-result-object v1

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/hiya/client/callerid/dao/e$l;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v2}, Lcom/hiya/client/callerid/dao/e;->l(Lcom/hiya/client/callerid/dao/e;)Lg/g/a/a/g/i/a;

    move-result-object v2

    .line 10
    iget-object v3, v0, Lcom/hiya/client/callerid/dao/e$l;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v3}, Lcom/hiya/client/callerid/dao/e;->n(Lcom/hiya/client/callerid/dao/e;)Lg/g/b/a/g/a/i/d;

    move-result-object v4

    .line 11
    iget-object v3, v0, Lcom/hiya/client/callerid/dao/e$l;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v3}, Lcom/hiya/client/callerid/dao/e;->o(Lcom/hiya/client/callerid/dao/e;)Lcom/hiya/client/callerid/prefs/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/client/callerid/prefs/e;->b()Lcom/hiya/client/callerid/prefs/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/client/callerid/prefs/c;->c()Z

    move-result v5

    .line 12
    iget-object v3, v0, Lcom/hiya/client/callerid/dao/e$l;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v3}, Lcom/hiya/client/callerid/dao/e;->o(Lcom/hiya/client/callerid/dao/e;)Lcom/hiya/client/callerid/prefs/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/client/callerid/prefs/e;->b()Lcom/hiya/client/callerid/prefs/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/client/callerid/prefs/c;->g()Z

    move-result v6

    .line 13
    iget-object v3, v0, Lcom/hiya/client/callerid/dao/e$l;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v3}, Lcom/hiya/client/callerid/dao/e;->o(Lcom/hiya/client/callerid/dao/e;)Lcom/hiya/client/callerid/prefs/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/client/callerid/prefs/e;->b()Lcom/hiya/client/callerid/prefs/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/client/callerid/prefs/c;->d()I

    move-result v3

    invoke-static {v3}, Lg/g/b/a/k/g;->b(I)Ljava/lang/Boolean;

    move-result-object v7

    .line 14
    iget-object v8, v0, Lcom/hiya/client/callerid/dao/e$l;->g:Lg/g/b/c/j;

    .line 15
    iget-boolean v9, v0, Lcom/hiya/client/callerid/dao/e$l;->h:Z

    .line 16
    invoke-virtual/range {v4 .. v9}, Lg/g/b/a/g/a/i/d;->b(ZZLjava/lang/Boolean;Lg/g/b/c/j;Z)Lg/g/a/a/i/e;

    move-result-object v3

    .line 17
    invoke-interface {v2, v3}, Lg/g/a/a/g/i/a;->a(Lg/g/a/a/i/e;)Li/c/b0/b/v;

    move-result-object v2

    .line 18
    invoke-static {v2}, Li/c/b0/b/e0;->q(Li/c/b0/b/a0;)Li/c/b0/b/e0;

    move-result-object v2

    .line 19
    new-instance v3, Lcom/hiya/client/callerid/dao/e$l$a;

    invoke-direct {v3, v0, v1}, Lcom/hiya/client/callerid/dao/e$l$a;-><init>(Lcom/hiya/client/callerid/dao/e$l;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/hiya/client/callerid/dao/e$l$b;

    invoke-direct {v2, v0}, Lcom/hiya/client/callerid/dao/e$l$b;-><init>(Lcom/hiya/client/callerid/dao/e$l;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/e0;->i(Li/c/b0/d/g;)Li/c/b0/b/e0;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/e$l;->a(Ljava/lang/String;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method
