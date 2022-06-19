.class public abstract Lcom/hiya/client/callerid/ui/incallui/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/incallui/c$b;,
        Lcom/hiya/client/callerid/ui/incallui/c$d;,
        Lcom/hiya/client/callerid/ui/incallui/c$a;,
        Lcom/hiya/client/callerid/ui/incallui/c$c;
    }
.end annotation


# instance fields
.field private f:Lcom/hiya/client/callerid/ui/incallui/c$b;

.field private g:Ljava/lang/Integer;

.field private h:I

.field private i:Z

.field private j:Z

.field private final k:Li/c/b0/c/a;

.field private final l:Landroid/content/Context;

.field private final m:Lg/g/b/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/g/b/a/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaCallerId"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/incallui/c;->m:Lg/g/b/a/b;

    .line 2
    sget-object p1, Lcom/hiya/client/callerid/ui/incallui/c$b;->FULL_SCREEN:Lcom/hiya/client/callerid/ui/incallui/c$b;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->f:Lcom/hiya/client/callerid/ui/incallui/c$b;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->i:Z

    .line 4
    iput-boolean p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->j:Z

    .line 5
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->k:Li/c/b0/c/a;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/ui/incallui/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    return-object p0
.end method

.method private final j(Ljava/lang/String;)Li/c/b0/b/e0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/e0<",
            "Lg/g/b/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->m:Lg/g/b/a/b;

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.packageName"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, Lg/g/b/c/d;->IMAGE:Lg/g/b/c/d;

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Lg/g/b/a/b;->i(Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/d;)Li/c/b0/b/e0;

    move-result-object p1

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object p1

    .line 6
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object p1

    const-string v0, "hiyaCallerId.getAssetByU\u2026dSchedulers.mainThread())"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final b(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$a;
    .locals 12

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->f:Lcom/hiya/client/callerid/ui/incallui/c$b;

    sget-object v1, Lcom/hiya/client/callerid/ui/incallui/c$b;->FULL_SCREEN:Lcom/hiya/client/callerid/ui/incallui/c$b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/hiya/client/callerid/ui/incallui/c$b;->HEADS_UP:Lcom/hiya/client/callerid/ui/incallui/c$b;

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/16 v6, 0x8

    const/4 v7, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    sget v0, Lcom/hiya/client/callerid/ui/n;->g:I

    .line 4
    sget v1, Lcom/hiya/client/callerid/ui/n;->e:I

    :goto_1
    move v7, v1

    goto :goto_3

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)I

    move-result v0

    if-eq v0, v7, :cond_3

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)I

    move-result v0

    if-eq v0, v5, :cond_3

    .line 7
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)I

    move-result v0

    if-ne v0, v4, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    sget v0, Lcom/hiya/client/callerid/ui/n;->b:I

    .line 9
    sget v1, Lcom/hiya/client/callerid/ui/n;->c:I

    move v7, v1

    const/4 v6, 0x4

    goto :goto_3

    .line 10
    :cond_3
    :goto_2
    sget v0, Lcom/hiya/client/callerid/ui/n;->f:I

    .line 11
    sget v1, Lcom/hiya/client/callerid/ui/n;->d:I

    goto :goto_1

    .line 12
    :goto_3
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->v()Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_b

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->m()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->i:Z

    if-nez v1, :cond_4

    goto/16 :goto_6

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object v1

    invoke-static {v1}, Lg/g/b/a/g/a/c;->a(Lg/g/b/c/q;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    sget p1, Lcom/hiya/client/callerid/ui/o;->p:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v10, p1

    move-object v11, v8

    const/4 v5, 0x0

    goto :goto_7

    .line 15
    :cond_5
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)I

    move-result v1

    if-eq v1, v5, :cond_6

    .line 16
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)I

    move-result v1

    if-eq v1, v4, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 17
    :goto_4
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v4

    invoke-virtual {v4}, Lg/g/b/c/f;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_b

    .line 18
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->i()Ljava/lang/String;

    move-result-object p1

    move-object v11, p1

    move-object v10, v8

    const/4 v5, 0x0

    move v8, v1

    goto :goto_8

    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v8

    .line 19
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v8

    .line 20
    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v8

    :cond_b
    :goto_6
    move v5, v6

    move-object v10, v8

    move-object v11, v10

    :goto_7
    const/4 v8, 0x0

    .line 21
    :goto_8
    new-instance p1, Lcom/hiya/client/callerid/ui/incallui/c$a;

    move-object v4, p1

    move v6, v0

    invoke-direct/range {v4 .. v11}, Lcom/hiya/client/callerid/ui/incallui/c$a;-><init>(IIIZZLjava/lang/Integer;Ljava/lang/String;)V

    return-object p1
.end method

.method protected final c(Lcom/hiya/client/callerid/ui/a0/c$b;)I
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->q()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected final d()Li/c/b0/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->k:Li/c/b0/c/a;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->h:I

    return v0
.end method

.method public final f(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$c;
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/incallui/c$c;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->m()Z

    move-result p1

    invoke-direct {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/c$c;-><init>(Z)V

    return-object v0
.end method

.method public final g(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$d;
    .locals 7

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    sget v3, Lcom/hiya/client/callerid/ui/s;->q:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    .line 4
    sget v5, Lcom/hiya/client/callerid/ui/s;->r:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hiya/client/callerid/ui/e0/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 6
    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    .line 8
    sget v5, Lcom/hiya/client/callerid/ui/s;->s:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hiya/client/callerid/ui/e0/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 10
    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)I

    move-result v3

    if-eq v3, v1, :cond_4

    .line 12
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)I

    move-result p1

    if-ne p1, v2, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    sget v1, Lcom/hiya/client/callerid/ui/m;->j:I

    invoke-static {p1, v1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    .line 15
    sget v1, Lcom/hiya/client/callerid/ui/m;->f:I

    .line 16
    invoke-static {p1, v1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 17
    :goto_2
    new-instance v1, Lcom/hiya/client/callerid/ui/incallui/c$d;

    invoke-direct {v1, v4, v0, p1}, Lcom/hiya/client/callerid/ui/incallui/c$d;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v1
.end method

.method public final h(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$d;
    .locals 5

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->m()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    sget v1, Lcom/hiya/client/callerid/ui/s;->c:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2026"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    :cond_1
    :goto_1
    move-object p1, v2

    goto/16 :goto_5

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    sget v0, Lcom/hiya/client/callerid/ui/s;->f:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v0

    if-ne v0, v4, :cond_4

    .line 7
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    sget v0, Lcom/hiya/client/callerid/ui/s;->h:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lg/g/b/a/g/a/c;->a(Lg/g/b/c/q;)Z

    move-result v0

    if-ne v0, v4, :cond_5

    goto :goto_1

    .line 9
    :cond_5
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 10
    invoke-static {v0}, Lg/g/b/a/g/a/c;->a(Lg/g/b/c/q;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-ne v0, v4, :cond_8

    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->j:Z

    if-eqz v0, :cond_8

    .line 12
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 13
    :cond_8
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lg/g/b/c/f;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    if-ne v0, v4, :cond_b

    .line 14
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lg/g/b/c/f;->h()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    move-object p1, v2

    goto/16 :goto_0

    .line 15
    :cond_b
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/c;->f(Lcom/hiya/client/callerid/ui/b0/j;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "location"

    .line 16
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_c

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_1

    goto/16 :goto_0

    .line 17
    :goto_5
    new-instance v0, Lcom/hiya/client/callerid/ui/incallui/c$d;

    invoke-direct {v0, v1, p1, v2}, Lcom/hiya/client/callerid/ui/incallui/c$d;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final i(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$d;
    .locals 4

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->m()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const-string p1, " "

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    sget v3, Lcom/hiya/client/callerid/ui/m;->j:I

    invoke-static {v0, v3}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    .line 6
    sget v3, Lcom/hiya/client/callerid/ui/m;->i:I

    .line 7
    invoke-static {v0, v3}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 8
    :goto_1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->v()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    sget v2, Lcom/hiya/client/callerid/ui/s;->g:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v3

    invoke-virtual {v3}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 12
    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 13
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    sget v2, Lcom/hiya/client/callerid/ui/s;->z:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    move-object v2, v0

    .line 14
    :goto_5
    new-instance v0, Lcom/hiya/client/callerid/ui/incallui/c$d;

    invoke-direct {v0, v1, p1, v2}, Lcom/hiya/client/callerid/ui/incallui/c$d;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->h:I

    return-void
.end method

.method public final l(Lcom/hiya/client/callerid/ui/incallui/c$b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->f:Lcom/hiya/client/callerid/ui/incallui/c$b;

    return-void
.end method

.method public final m(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->g:Ljava/lang/Integer;

    return-void
.end method

.method public n(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->h()Lcom/hiya/client/callerid/ui/d$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/d$c;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hiya/client/callerid/ui/incallui/c;->i:Z

    .line 2
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->h()Lcom/hiya/client/callerid/ui/d$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/d$c;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->j:Z

    return-void
.end method

.method protected final o(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Lcom/hiya/client/callerid/ui/incallui/c$a;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameView"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapperView"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarViewUpdate"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/incallui/c$a;->g()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p3, 0x2

    new-array v0, p3, [Landroid/widget/ImageView;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    .line 2
    aget-object v3, v0, v2

    .line 3
    sget v4, Lcom/hiya/client/callerid/ui/p;->e:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const-string v5, "view.avatar"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget-object v5, p0, Lcom/hiya/client/callerid/ui/incallui/c;->l:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 5
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/incallui/c$a;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 6
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/incallui/c$a;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 7
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/incallui/c$a;->d()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 8
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/incallui/c$a;->f()Z

    move-result p3

    if-eqz p3, :cond_2

    sget p3, Lcom/hiya/client/callerid/ui/o;->q:I

    goto :goto_1

    :cond_2
    sget p3, Lcom/hiya/client/callerid/ui/o;->r:I

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/incallui/c$a;->b()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/incallui/c$a;->a()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 12
    sget p3, Lcom/hiya/client/callerid/ui/p;->e:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    :cond_4
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/incallui/c$a;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 14
    iget-object p3, p0, Lcom/hiya/client/callerid/ui/incallui/c;->k:Li/c/b0/c/a;

    invoke-virtual {p3}, Li/c/b0/c/a;->d()V

    .line 15
    invoke-direct {p0, p2}, Lcom/hiya/client/callerid/ui/incallui/c;->j(Ljava/lang/String;)Li/c/b0/b/e0;

    move-result-object p2

    .line 16
    new-instance p3, Lcom/hiya/client/callerid/ui/incallui/c$e;

    invoke-direct {p3, p0, p1, p4}, Lcom/hiya/client/callerid/ui/incallui/c$e;-><init>(Lcom/hiya/client/callerid/ui/incallui/c;Landroid/widget/ImageView;Lcom/hiya/client/callerid/ui/incallui/c$a;)V

    .line 17
    sget-object p1, Lcom/hiya/client/callerid/ui/incallui/c$g;->f:Lcom/hiya/client/callerid/ui/incallui/c$g;

    .line 18
    invoke-virtual {p2, p3, p1}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/incallui/c;->k:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    :cond_5
    return-void
.end method

.method protected final p(Landroid/widget/RemoteViews;Lcom/hiya/client/callerid/ui/incallui/c$a;)V
    .locals 2

    const-string v0, "remoteViews"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarViewUpdate"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/hiya/client/callerid/ui/p;->g:I

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/incallui/c$a;->g()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2
    sget v0, Lcom/hiya/client/callerid/ui/p;->f:I

    .line 3
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/incallui/c$a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget v1, Lcom/hiya/client/callerid/ui/o;->q:I

    goto :goto_0

    .line 5
    :cond_0
    sget v1, Lcom/hiya/client/callerid/ui/o;->r:I

    .line 6
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/incallui/c$a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 8
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/incallui/c$a;->a()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 10
    sget v0, Lcom/hiya/client/callerid/ui/p;->e:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_2
    return-void
.end method

.method protected final q(Landroid/widget/RemoteViews;Lcom/hiya/client/callerid/ui/incallui/c$a;ILandroid/app/Notification;)V
    .locals 8

    const-string v0, "remoteViews"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarViewUpdate"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/hiya/client/callerid/ui/p;->g:I

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/incallui/c$a;->g()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/incallui/c$a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/c;->k:Li/c/b0/c/a;

    invoke-virtual {v1}, Li/c/b0/c/a;->d()V

    .line 4
    invoke-direct {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/c;->j(Ljava/lang/String;)Li/c/b0/b/e0;

    move-result-object v0

    .line 5
    new-instance v7, Lcom/hiya/client/callerid/ui/incallui/c$f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hiya/client/callerid/ui/incallui/c$f;-><init>(Lcom/hiya/client/callerid/ui/incallui/c;Landroid/widget/RemoteViews;ILandroid/app/Notification;Lcom/hiya/client/callerid/ui/incallui/c$a;)V

    .line 6
    sget-object p1, Lcom/hiya/client/callerid/ui/incallui/c$h;->f:Lcom/hiya/client/callerid/ui/incallui/c$h;

    .line 7
    invoke-virtual {v0, v7, p1}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/incallui/c;->k:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    :cond_0
    return-void
.end method

.method protected final r(Landroid/widget/ProgressBar;Lcom/hiya/client/callerid/ui/incallui/c$c;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressIndicatorUpdate"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/incallui/c$c;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected final s(Landroid/widget/RemoteViews;Lcom/hiya/client/callerid/ui/incallui/c$c;)V
    .locals 1

    const-string v0, "remoteViews"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressIndicatorUpdate"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/hiya/client/callerid/ui/p;->U:I

    .line 2
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/incallui/c$c;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 3
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method protected final t(Landroid/widget/RemoteViews;ILcom/hiya/client/callerid/ui/incallui/c$d;)V
    .locals 1

    const-string v0, "remoteViews"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "update"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lcom/hiya/client/callerid/ui/incallui/c$d;->c()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2
    invoke-virtual {p3}, Lcom/hiya/client/callerid/ui/incallui/c$d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p3}, Lcom/hiya/client/callerid/ui/incallui/c$d;->b()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_0
    return-void
.end method

.method protected final u(Landroid/widget/TextView;Lcom/hiya/client/callerid/ui/incallui/c$d;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "update"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/incallui/c$d;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/incallui/c$d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/incallui/c$d;->b()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
