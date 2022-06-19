.class public final Le/a/a/c/o8/i;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/o8/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/c/o8/j;",
        ">;",
        "Le/a/a/c/o8/g;"
    }
.end annotation


# instance fields
.field public d:Lq3/a/p1;

.field public e:Le/a/a/k/a/a/o;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Mention;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public final j:Ls1/w/f;

.field public final k:Le/a/r2/l;

.field public final l:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/c/o8/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Le/a/a/k/a/a/q;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/r2/l;Le/a/r2/f;Lo3/a;Le/a/a/k/a/a/q;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/r2/l;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;",
            "Lo3/a<",
            "Le/a/a/c/o8/g$a;",
            ">;",
            "Le/a/a/k/a/a/q;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actorsThreads"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSource"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/c/o8/i;->j:Ls1/w/f;

    iput-object p2, p0, Le/a/a/c/o8/i;->k:Le/a/r2/l;

    iput-object p3, p0, Le/a/a/c/o8/i;->l:Le/a/r2/f;

    iput-object p4, p0, Le/a/a/c/o8/i;->m:Lo3/a;

    iput-object p5, p0, Le/a/a/c/o8/i;->n:Le/a/a/k/a/a/q;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/o8/i;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public E6()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/o8/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Le/a/a/c/o8/j;->lx(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/c/o8/i;->d:Lq3/a/p1;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/a/c/o8/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iput v1, p0, Le/a/a/c/o8/i;->g:I

    .line 5
    iput-object v2, p0, Le/a/a/c/o8/i;->h:Ljava/lang/String;

    .line 6
    iput v1, p0, Le/a/a/c/o8/i;->i:I

    return-void
.end method

.method public final Ij(I)Lcom/truecaller/messaging/data/types/Mention;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/o8/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/truecaller/messaging/data/types/Mention;

    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v3

    if-gt v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v3

    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v2

    add-int/2addr v2, v3

    if-le v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/truecaller/messaging/data/types/Mention;

    return-object v1
.end method

.method public final Jj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o8/i;->m:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/o8/g$a;

    invoke-interface {v0}, Le/a/a/c/o8/g$a;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public Ti()[Lcom/truecaller/messaging/data/types/Mention;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/o8/i;->gj()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/c/o8/i;->f:Ljava/util/List;

    new-array v1, v1, [Lcom/truecaller/messaging/data/types/Mention;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Lcom/truecaller/messaging/data/types/Mention;

    goto :goto_0

    :cond_0
    new-array v0, v1, [Lcom/truecaller/messaging/data/types/Mention;

    :goto_0
    return-object v0
.end method

.method public V1(Landroid/text/Editable;)V
    .locals 8

    const-string v0, "editable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/o8/i;->Jj()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Lcom/truecaller/messaging/conversation/mention/MentionSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/conversation/mention/MentionSpan;

    .line 3
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 4
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 5
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v5, v4

    .line 6
    iget v6, v3, Lcom/truecaller/messaging/conversation/mention/MentionSpan;->b:I

    .line 7
    iget v7, v3, Lcom/truecaller/messaging/conversation/mention/MentionSpan;->a:I

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_1

    .line 8
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    .line 9
    invoke-virtual {p0, v4}, Le/a/a/c/o8/i;->Ij(I)Lcom/truecaller/messaging/data/types/Mention;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    iget-object v4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/a/c/o8/j;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v6

    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v3

    add-int/2addr v3, v6

    invoke-interface {v4, v5, v3}, Le/a/a/c/o8/j;->Hx(II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public W5(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/a/c/o8/i;->gj()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Le/a/a/c/o8/i;->f:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/Mention;

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v3

    if-le p1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-lt p2, v3, :cond_0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/Mention;

    .line 8
    iget-object v0, p0, Le/a/a/c/o8/i;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public W7(Ljava/lang/String;IZ)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    const-string v1, "text"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/o8/i;->Jj()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz p3, :cond_f

    .line 2
    iget-object v1, v6, Le/a/a/c/o8/i;->d:Lq3/a/p1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {v1, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v4, v6, Le/a/a/c/o8/i;->g:I

    const/4 v8, 0x0

    if-ge v1, v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v8

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v6, Le/a/a/c/o8/i;->g:I

    .line 5
    iput v0, v6, Le/a/a/c/o8/i;->i:I

    .line 6
    iget-object v4, v6, Le/a/a/c/o8/i;->m:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/c/o8/g$a;

    invoke-interface {v4}, Le/a/a/c/o8/g$a;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 7
    iget-object v4, v4, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    if-eqz v4, :cond_f

    add-int/lit8 v5, v0, -0x1

    const/4 v9, 0x4

    const-string v10, "@"

    .line 8
    invoke-static {v7, v10, v5, v8, v9}, Ls1/f0/v;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v5

    const/4 v9, -0x1

    if-eq v5, v9, :cond_2

    if-lt v0, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v8

    :goto_1
    const-string v9, ""

    if-eqz v3, :cond_7

    if-ge v5, v0, :cond_3

    add-int/lit8 v3, v5, 0x1

    .line 9
    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v10, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v3, v9

    :goto_2
    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {v6, v0}, Le/a/a/c/o8/i;->Ij(I)Lcom/truecaller/messaging/data/types/Mention;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 11
    iget-object v1, v6, Le/a/a/c/o8/i;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/o8/j;

    if-eqz v0, :cond_4

    invoke-interface {v0, v5}, Le/a/a/c/o8/j;->ko(I)V

    .line 13
    :cond_4
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/o8/j;

    if-eqz v0, :cond_5

    invoke-interface {v0, v8}, Le/a/a/c/o8/j;->lx(Z)V

    :cond_5
    return-void

    .line 14
    :cond_6
    new-instance v5, Le/a/a/c/o8/h;

    invoke-direct {v5, v6, v4, v3, v2}, Le/a/a/c/o8/h;-><init>(Le/a/a/c/o8/i;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v3, v5

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, v6, Le/a/a/c/o8/i;->d:Lq3/a/p1;

    goto :goto_3

    .line 15
    :cond_7
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/o8/j;

    if-eqz v0, :cond_8

    invoke-interface {v0, v8}, Le/a/a/c/o8/j;->lx(Z)V

    .line 16
    :cond_8
    :goto_3
    iget-object v0, v6, Le/a/a/c/o8/i;->h:Ljava/lang/String;

    if-eqz v0, :cond_9

    move-object v9, v0

    .line 17
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_4
    if-ge v8, v0, :cond_a

    .line 18
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_a

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 19
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v3, v6, Le/a/a/c/o8/i;->f:Ljava/util/List;

    .line 23
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/data/types/Mention;

    .line 24
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v5

    if-lt v5, v8, :cond_b

    .line 25
    new-instance v5, Lcom/truecaller/messaging/data/types/Mention;

    .line 26
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Mention;->getId()J

    move-result-wide v10

    .line 27
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Mention;->getImId()Ljava/lang/String;

    move-result-object v12

    .line 28
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v9

    add-int v13, v9, v0

    .line 29
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v14

    .line 30
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Mention;->getPrivateName()Ljava/lang/String;

    move-result-object v15

    .line 31
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Mention;->getPublicName()Ljava/lang/String;

    move-result-object v16

    move-object v9, v5

    .line 32
    invoke-direct/range {v9 .. v16}, Lcom/truecaller/messaging/data/types/Mention;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 35
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Mention;

    .line 36
    iget-object v3, v6, Le/a/a/c/o8/i;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 37
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Mention;

    .line 38
    iget-object v2, v6, Le/a/a/c/o8/i;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 39
    :cond_e
    iput-object v7, v6, Le/a/a/c/o8/i;->h:Ljava/lang/String;

    nop

    :cond_f
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o8/i;->e:Le/a/a/k/a/a/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/a/c/o8/i;->e:Le/a/a/k/a/a/o;

    .line 3
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public f()Le/a/a/k/a/a/o;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o8/i;->e:Le/a/a/k/a/a/o;

    return-object v0
.end method

.method public ff(IILjava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/o8/i;->Jj()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, p2, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Le/a/a/c/o8/i;->Ij(I)Lcom/truecaller/messaging/data/types/Mention;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result p1

    sub-int/2addr p1, v0

    .line 4
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/a/c/o8/j;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Le/a/a/c/o8/j;->Gl(I)V

    .line 5
    :cond_0
    iget p2, p0, Le/a/a/c/o8/i;->i:I

    if-eq p2, p1, :cond_1

    .line 6
    invoke-virtual {p0, p3, p1, v0}, Le/a/a/c/o8/i;->W7(Ljava/lang/String;IZ)V

    :cond_1
    return-void
.end method

.method public gj()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/o8/i;->Jj()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/c/o8/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public kb(Le/a/k3/l/k/a;)V
    .locals 13

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/k3/l/k/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Le/a/k3/l/k/a;->f:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/a/c/o8/i;->n:Le/a/a/k/a/a/q;

    .line 4
    iget-object v1, p1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Le/a/a/k/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v7, v0

    const/16 v0, 0x40

    .line 6
    invoke-static {v0, v7}, Le/d/c/a/a;->I1(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Le/a/a/c/o8/j;

    if-eqz v11, :cond_4

    .line 8
    invoke-interface {v11, v0}, Le/a/a/c/o8/j;->iu(Ljava/lang/String;)I

    move-result v5

    const/4 v0, -0x1

    if-eq v5, v0, :cond_3

    .line 9
    iget-object v0, p0, Le/a/a/c/o8/i;->f:Ljava/util/List;

    .line 10
    new-instance v12, Lcom/truecaller/messaging/data/types/Mention;

    const-wide/16 v2, 0x0

    .line 11
    iget-object v4, p1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 13
    iget-object v1, p1, Le/a/k3/l/k/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v8, v1

    goto :goto_2

    .line 14
    :cond_2
    iget-object v1, p0, Le/a/a/c/o8/i;->n:Le/a/a/k/a/a/q;

    .line 15
    iget-object p1, p1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    .line 16
    invoke-interface {v1, p1}, Le/a/a/k/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v8, p1

    :goto_2
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, v12

    .line 17
    invoke-direct/range {v1 .. v10}, Lcom/truecaller/messaging/data/types/Mention;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILs1/z/c/f;)V

    .line 18
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 p1, 0x0

    .line 19
    invoke-interface {v11, p1}, Le/a/a/c/o8/j;->lx(Z)V

    :cond_4
    return-void
.end method

.method public p4([Lcom/truecaller/messaging/data/types/Mention;Ljava/lang/String;)V
    .locals 3

    const-string v0, "mentions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/o8/i;->Jj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/a/c/o8/i;->E6()V

    .line 3
    iput-object p2, p0, Le/a/a/c/o8/i;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Le/a/a/c/o8/i;->g:I

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iput p2, p0, Le/a/a/c/o8/i;->i:I

    .line 6
    iget-object p2, p0, Le/a/a/c/o8/i;->f:Ljava/util/List;

    .line 7
    invoke-static {p2, p1}, Ls1/u/i;->c(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/Mention;

    .line 9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/o8/j;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v2

    invoke-virtual {p2}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result p2

    add-int/2addr p2, v2

    invoke-interface {v0, v1, p2}, Le/a/a/c/o8/j;->Hx(II)V

    goto :goto_0

    :cond_1
    return-void
.end method
