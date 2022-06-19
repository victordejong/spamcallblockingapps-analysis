.class public Le/a/w4/s/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/search/global/CompositeAdapterDelegate;


# instance fields
.field public final a:Le/a/w4/s/z;

.field public final b:Le/a/w4/s/m0;

.field public final c:Le/a/w4/s/o0;

.field public final d:Le/a/w4/s/t0;

.field public final e:Le/a/w4/s/q;

.field public final f:Le/a/w4/s/t;

.field public final g:Le/a/w4/s/v;

.field public h:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

.field public i:Le/a/w4/s/s;

.field public final j:Le/a/o5/f0;

.field public final k:Le/a/o5/c2/k;


# direct methods
.method public constructor <init>(Le/a/w4/s/z;Le/a/w4/s/m0;Le/a/w4/s/o0;Le/a/w4/s/t0;Le/a/w4/s/q;Le/a/w4/s/t;Le/a/w4/s/v;Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;Le/a/o5/f0;Le/a/o5/c2/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/w4/s/x;->a:Le/a/w4/s/z;

    .line 3
    iput-object p2, p0, Le/a/w4/s/x;->b:Le/a/w4/s/m0;

    .line 4
    iput-object p3, p0, Le/a/w4/s/x;->c:Le/a/w4/s/o0;

    .line 5
    iput-object p4, p0, Le/a/w4/s/x;->d:Le/a/w4/s/t0;

    .line 6
    iput-object p5, p0, Le/a/w4/s/x;->e:Le/a/w4/s/q;

    .line 7
    iput-object p6, p0, Le/a/w4/s/x;->f:Le/a/w4/s/t;

    .line 8
    iput-object p7, p0, Le/a/w4/s/x;->g:Le/a/w4/s/v;

    .line 9
    iput-object p8, p0, Le/a/w4/s/x;->h:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    .line 10
    iput-object p9, p0, Le/a/w4/s/x;->j:Le/a/o5/f0;

    .line 11
    iput-object p10, p0, Le/a/w4/s/x;->k:Le/a/o5/c2/k;

    .line 12
    invoke-virtual {p0}, Le/a/w4/s/x;->n()Le/a/w4/s/w;

    move-result-object p1

    iput-object p1, p0, Le/a/w4/s/x;->i:Le/a/w4/s/s;

    .line 13
    invoke-virtual {p0}, Le/a/w4/s/x;->p()V

    return-void
.end method


# virtual methods
.method public a()Le/a/w4/s/s;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->b:Le/a/w4/s/m0;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->a:Le/a/w4/s/z;

    .line 2
    iput p1, v0, Le/a/w4/s/w;->a:I

    .line 3
    iget v1, v0, Le/a/w4/s/w;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Le/a/w4/s/w;->c:I

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->c:Le/a/w4/s/o0;

    .line 2
    iput p1, v0, Le/a/w4/s/w;->a:I

    .line 3
    iget v1, v0, Le/a/w4/s/w;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Le/a/w4/s/w;->c:I

    return-void
.end method

.method public d()Le/a/w4/s/s;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->c:Le/a/w4/s/o0;

    return-object v0
.end method

.method public e()Le/a/w4/s/s;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->a:Le/a/w4/s/z;

    return-object v0
.end method

.method public f()Le/a/w4/s/s;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->i:Le/a/w4/s/s;

    return-object v0
.end method

.method public g(Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/a/w4/s/x;->h:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    .line 2
    invoke-virtual {p0}, Le/a/w4/s/x;->n()Le/a/w4/s/w;

    move-result-object p1

    iput-object p1, p0, Le/a/w4/s/x;->i:Le/a/w4/s/s;

    .line 3
    iget-object v0, p0, Le/a/w4/s/x;->a:Le/a/w4/s/z;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    .line 5
    iget-object v0, p0, Le/a/w4/s/x;->c:Le/a/w4/s/o0;

    .line 6
    iput-object v1, v0, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    .line 7
    iget-object v0, p0, Le/a/w4/s/x;->b:Le/a/w4/s/m0;

    .line 8
    iput-object v1, v0, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    .line 9
    iget-object v0, p0, Le/a/w4/s/x;->d:Le/a/w4/s/t0;

    .line 10
    iput-object v1, v0, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    .line 11
    iget-object v0, p0, Le/a/w4/s/x;->f:Le/a/w4/s/t;

    .line 12
    iput-object v1, v0, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    .line 13
    iget-object v0, p0, Le/a/w4/s/x;->e:Le/a/w4/s/q;

    .line 14
    iput-object v1, v0, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    .line 15
    iget-object v0, p0, Le/a/w4/s/x;->g:Le/a/w4/s/v;

    .line 16
    iput-object v1, v0, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    const-string v0, "Main Adapter is not assigned."

    .line 17
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Le/a/w4/s/x;->i:Le/a/w4/s/s;

    check-cast p1, Le/a/w4/s/w;

    .line 19
    iput-object v1, p1, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    .line 20
    invoke-virtual {p0}, Le/a/w4/s/x;->p()V

    return-void
.end method

.method public h(Le/a/w4/s/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->a:Le/a/w4/s/z;

    .line 2
    iput-object p1, v0, Le/a/w4/s/w;->d:Le/a/w4/s/e0;

    .line 3
    iget-object v0, p0, Le/a/w4/s/x;->c:Le/a/w4/s/o0;

    .line 4
    iput-object p1, v0, Le/a/w4/s/w;->d:Le/a/w4/s/e0;

    .line 5
    iget-object v0, p0, Le/a/w4/s/x;->b:Le/a/w4/s/m0;

    .line 6
    iput-object p1, v0, Le/a/w4/s/w;->d:Le/a/w4/s/e0;

    .line 7
    iget-object v0, p0, Le/a/w4/s/x;->d:Le/a/w4/s/t0;

    .line 8
    iput-object p1, v0, Le/a/w4/s/w;->d:Le/a/w4/s/e0;

    .line 9
    iget-object v0, p0, Le/a/w4/s/x;->f:Le/a/w4/s/t;

    .line 10
    iput-object p1, v0, Le/a/w4/s/w;->d:Le/a/w4/s/e0;

    return-void
.end method

.method public i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->d:Le/a/w4/s/t0;

    .line 2
    iput p1, v0, Le/a/w4/s/w;->a:I

    .line 3
    iget v1, v0, Le/a/w4/s/w;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Le/a/w4/s/w;->c:I

    return-void
.end method

.method public j()Le/a/w4/s/s;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->f:Le/a/w4/s/t;

    return-object v0
.end method

.method public k()Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->h:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    return-object v0
.end method

.method public l(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->b:Le/a/w4/s/m0;

    .line 2
    iput p1, v0, Le/a/w4/s/w;->a:I

    .line 3
    iget v1, v0, Le/a/w4/s/w;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Le/a/w4/s/w;->c:I

    return-void
.end method

.method public m()Le/a/w4/s/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/w4/s/x;->o()Le/a/w4/s/w;

    move-result-object v0

    return-object v0
.end method

.method public final n()Le/a/w4/s/w;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->h:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/w4/s/x;->a:Le/a/w4/s/z;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/w4/s/x;->o()Le/a/w4/s/w;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/w4/s/x;->a:Le/a/w4/s/z;

    return-object v0
.end method

.method public final o()Le/a/w4/s/w;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->k:Le/a/o5/c2/k;

    invoke-virtual {v0}, Le/a/o5/c2/k;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/w4/s/x;->g:Le/a/w4/s/v;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/w4/s/x;->j:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/w4/s/x;->d:Le/a/w4/s/t0;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/a/w4/s/x;->e:Le/a/w4/s/q;

    :goto_0
    return-object v0
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w4/s/x;->i:Le/a/w4/s/s;

    const-string v1, "Main Adapter is not assigned."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/x;->h:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/w4/s/x;->b:Le/a/w4/s/m0;

    .line 4
    iget-object v1, p0, Le/a/w4/s/x;->c:Le/a/w4/s/o0;

    .line 5
    invoke-virtual {v0, v1}, Le/a/w4/s/w;->p(Le/a/w4/s/s;)V

    .line 6
    invoke-virtual {p0}, Le/a/w4/s/x;->o()Le/a/w4/s/w;

    move-result-object v0

    iget-object v1, p0, Le/a/w4/s/x;->b:Le/a/w4/s/m0;

    invoke-virtual {v0, v1}, Le/a/w4/s/w;->p(Le/a/w4/s/s;)V

    .line 7
    invoke-virtual {p0}, Le/a/w4/s/x;->o()Le/a/w4/s/w;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/w4/s/x;->b:Le/a/w4/s/m0;

    .line 9
    iget-object v1, p0, Le/a/w4/s/x;->c:Le/a/w4/s/o0;

    .line 10
    invoke-virtual {v0, v1}, Le/a/w4/s/w;->p(Le/a/w4/s/s;)V

    .line 11
    iget-object v0, p0, Le/a/w4/s/x;->a:Le/a/w4/s/z;

    iget-object v1, p0, Le/a/w4/s/x;->b:Le/a/w4/s/m0;

    invoke-virtual {v0, v1}, Le/a/w4/s/w;->p(Le/a/w4/s/s;)V

    .line 12
    iget-object v0, p0, Le/a/w4/s/x;->a:Le/a/w4/s/z;

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Le/a/w4/s/x;->c:Le/a/w4/s/o0;

    invoke-virtual {p0}, Le/a/w4/s/x;->o()Le/a/w4/s/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/w4/s/w;->p(Le/a/w4/s/s;)V

    .line 14
    iget-object v0, p0, Le/a/w4/s/x;->b:Le/a/w4/s/m0;

    iget-object v1, p0, Le/a/w4/s/x;->c:Le/a/w4/s/o0;

    invoke-virtual {v0, v1}, Le/a/w4/s/w;->p(Le/a/w4/s/s;)V

    .line 15
    iget-object v0, p0, Le/a/w4/s/x;->b:Le/a/w4/s/m0;

    .line 16
    :goto_0
    iget-object v1, p0, Le/a/w4/s/x;->f:Le/a/w4/s/t;

    invoke-virtual {v1, v0}, Le/a/w4/s/w;->p(Le/a/w4/s/s;)V

    .line 17
    iget-object v0, p0, Le/a/w4/s/x;->i:Le/a/w4/s/s;

    iget-object v1, p0, Le/a/w4/s/x;->f:Le/a/w4/s/t;

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, v1}, Le/a/w4/s/w;->p(Le/a/w4/s/s;)V

    return-void
.end method
