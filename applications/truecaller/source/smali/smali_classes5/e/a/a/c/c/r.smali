.class public final Le/a/a/c/c/r;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/c/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/c/c/q;",
        ">;",
        "Le/a/a/c/c/p;"
    }
.end annotation


# instance fields
.field public final A:Le/a/a/k/t;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/a/c/c/g;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Landroid/net/Uri;

.field public i:I

.field public final j:Ls1/w/f;

.field public final k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

.field public final l:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/o5/q0;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/o5/u0;

.field public final n:Le/a/a/k/a/a/q;

.field public final o:Le/a/a/c1/d;

.field public final p:Le/a/a/s0/d;

.field public final q:Le/a/a/i0;

.field public final r:Le/a/o5/u1;

.field public final s:Le/a/p5/j;

.field public final t:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/o5/x;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Le/a/a/i1/b;

.field public final v:Le/a/p5/c0;

.field public final w:Le/a/b0/q/b;

.field public final x:Le/a/o5/b0;

.field public final y:Le/a/a/c/c/f;

.field public final z:Le/a/a/c/o8/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Lcom/truecaller/messaging/conversation/draft/DraftArguments;Le/a/r2/f;Le/a/o5/u0;Le/a/a/k/a/a/q;Le/a/a/c1/d;Le/a/a/s0/d;Le/a/a/i0;Le/a/o5/u1;Le/a/p5/j;Le/a/r2/f;Le/a/a/i1/b;Le/a/p5/c0;Le/a/b0/q/b;Le/a/o5/b0;Le/a/a/c/c/f;Le/a/a/c/o8/g;Le/a/u3/g;Le/a/a/k/t;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lcom/truecaller/messaging/conversation/draft/DraftArguments;",
            "Le/a/r2/f<",
            "Le/a/o5/q0;",
            ">;",
            "Le/a/o5/u0;",
            "Le/a/a/k/a/a/q;",
            "Le/a/a/c1/d;",
            "Le/a/a/s0/d;",
            "Le/a/a/i0;",
            "Le/a/o5/u1;",
            "Le/a/p5/j;",
            "Le/a/r2/f<",
            "Le/a/o5/x;",
            ">;",
            "Le/a/a/i1/b;",
            "Le/a/p5/c0;",
            "Le/a/b0/q/b;",
            "Le/a/o5/b0;",
            "Le/a/a/c/c/f;",
            "Le/a/a/c/o8/g;",
            "Le/a/u3/g;",
            "Le/a/a/k/t;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "uiContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaHelper"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaUtils"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupUtil"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftSender"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultSmsHelper"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityCleaner"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUtils"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactsManager"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentStoreHelper"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mentionPresenter"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/a/c/c/r;->j:Ls1/w/f;

    iput-object v2, v0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    iput-object v3, v0, Le/a/a/c/c/r;->l:Le/a/r2/f;

    iput-object v4, v0, Le/a/a/c/c/r;->m:Le/a/o5/u0;

    iput-object v5, v0, Le/a/a/c/c/r;->n:Le/a/a/k/a/a/q;

    iput-object v6, v0, Le/a/a/c/c/r;->o:Le/a/a/c1/d;

    iput-object v7, v0, Le/a/a/c/c/r;->p:Le/a/a/s0/d;

    iput-object v8, v0, Le/a/a/c/c/r;->q:Le/a/a/i0;

    iput-object v9, v0, Le/a/a/c/c/r;->r:Le/a/o5/u1;

    iput-object v10, v0, Le/a/a/c/c/r;->s:Le/a/p5/j;

    iput-object v11, v0, Le/a/a/c/c/r;->t:Le/a/r2/f;

    iput-object v12, v0, Le/a/a/c/c/r;->u:Le/a/a/i1/b;

    iput-object v13, v0, Le/a/a/c/c/r;->v:Le/a/p5/c0;

    iput-object v14, v0, Le/a/a/c/c/r;->w:Le/a/b0/q/b;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/a/c/c/r;->x:Le/a/o5/b0;

    iput-object v15, v0, Le/a/a/c/c/r;->y:Le/a/a/c/c/f;

    move-object/from16 v1, p17

    iput-object v1, v0, Le/a/a/c/c/r;->z:Le/a/a/c/o8/g;

    move-object/from16 v1, p19

    iput-object v1, v0, Le/a/a/c/c/r;->A:Le/a/a/k/t;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Le/a/a/c/c/r;->d:Ljava/util/List;

    const/4 v1, -0x1

    .line 3
    iput v1, v0, Le/a/a/c/c/r;->i:I

    return-void
.end method


# virtual methods
.method public Af(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/a/c/c/r;->Pj(ZZ)V

    return-void
.end method

.method public D9(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uris"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Landroid/net/Uri;

    .line 4
    new-instance v2, Lcom/truecaller/messaging/conversation/draft/DraftUri;

    sget-object v3, Lcom/truecaller/messaging/conversation/draft/UriTypeHint;->UNKNOWN:Lcom/truecaller/messaging/conversation/draft/UriTypeHint;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/truecaller/messaging/conversation/draft/DraftUri;-><init>(Landroid/net/Uri;Lcom/truecaller/messaging/conversation/draft/UriTypeHint;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Le/a/a/c/c/r;->Jj(Ljava/util/List;)V

    return-void
.end method

.method public Hg(I)Lcom/truecaller/messaging/data/types/BinaryEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/c/g;

    .line 2
    iget-object p1, p1, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    return-object p1
.end method

.method public I3()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final Ij(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 6
    new-instance v4, Le/a/a/c/c/g;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6, v6, v5}, Le/a/a/c/c/g;-><init>(Lcom/truecaller/messaging/data/types/BinaryEntity;Ljava/lang/String;[Lcom/truecaller/messaging/data/types/Mention;I)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/c/g;

    iget-object v2, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 9
    iget-object v2, v2, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 10
    invoke-static {v2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/Draft;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    const-string v3, "arguments.drafts.first().text"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Le/a/a/c/c/g;->a(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/c/g;

    iget-object v2, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 12
    iget-object v2, v2, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 13
    invoke-static {v2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/Draft;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Draft;->f:[Lcom/truecaller/messaging/data/types/Mention;

    const-string v3, "arguments.drafts.first().mentions"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Le/a/a/c/c/g;->b([Lcom/truecaller/messaging/data/types/Mention;)V

    .line 14
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/a/c/c/q;->c0()V

    .line 15
    :cond_2
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v0

    .line 17
    invoke-virtual {p0, v0, v1}, Le/a/a/c/c/r;->Vj(IZ)V

    .line 18
    iget-object v0, p0, Le/a/a/c/c/r;->y:Le/a/a/c/c/f;

    iget-object v1, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 19
    iget-object v1, v1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 22
    check-cast v3, Lcom/truecaller/messaging/data/types/Draft;

    .line 23
    iget-object v3, v3, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v4, "it.participants"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ls1/u/i;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 24
    invoke-static {v2, v3}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    :cond_3
    new-array p1, p1, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 25
    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 26
    iget-object v1, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/c/g;

    .line 27
    iget-object v1, v1, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 28
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Le/a/a/c/c/f;->b([Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final Jj(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/conversation/draft/DraftUri;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/a/c/c/r;->j:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/a/c/c/r$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/a/c/c/r$a;-><init>(Le/a/a/c/c/r;Ljava/util/List;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public K2(J)V
    .locals 6

    .line 1
    new-instance v3, Le/a/a/c/c/r$e;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, p2, v0}, Le/a/a/c/c/r$e;-><init>(Le/a/a/c/c/r;JLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Kj(Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ls1/k<",
            "Le/a/a/c/c/g;",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Le/a/a/c/c/r$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/a/c/c/r$b;

    iget v3, v2, Le/a/a/c/c/r$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/a/c/c/r$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/a/c/c/r$b;

    invoke-direct {v2, v0, v1}, Le/a/a/c/c/r$b;-><init>(Le/a/a/c/c/r;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/a/c/c/r$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/a/c/c/r$b;->e:I

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v2, v2, Le/a/a/c/c/r$b;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v4, v0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 6
    iget-object v4, v4, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->a:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v8, 0x6

    if-eq v4, v8, :cond_8

    .line 8
    iget-object v2, v0, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/c/c/g;

    .line 10
    iget-object v4, v0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 11
    iget-object v4, v4, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 12
    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/data/types/Draft;

    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Draft$b;->f()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 14
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Draft$b;->d()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 15
    iget-object v5, v0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 16
    iget-boolean v5, v5, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->d:Z

    if-nez v5, :cond_3

    .line 17
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Draft$b;->e()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 18
    :cond_3
    iget-object v5, v3, Le/a/a/c/c/g;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    .line 20
    iget-object v5, v3, Le/a/a/c/c/g;->b:Ljava/lang/String;

    .line 21
    iput-object v5, v4, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    .line 22
    :cond_5
    iget-object v5, v3, Le/a/a/c/c/g;->c:[Lcom/truecaller/messaging/data/types/Mention;

    .line 23
    array-length v8, v5

    if-nez v8, :cond_6

    move v8, v6

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    xor-int/2addr v8, v6

    if-eqz v8, :cond_7

    .line 24
    iget-object v8, v4, Lcom/truecaller/messaging/data/types/Draft$b;->d:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 25
    iget-object v8, v4, Lcom/truecaller/messaging/data/types/Draft$b;->d:Ljava/util/Set;

    invoke-static {v8, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 26
    :cond_7
    iget-object v5, v3, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 27
    invoke-virtual {v4, v5}, Lcom/truecaller/messaging/data/types/Draft$b;->b(Lcom/truecaller/messaging/data/types/BinaryEntity;)Lcom/truecaller/messaging/data/types/Draft$b;

    .line 28
    iget-object v5, v0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 29
    iget-boolean v5, v5, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->d:Z

    .line 30
    iput-boolean v5, v4, Lcom/truecaller/messaging/data/types/Draft$b;->f:Z

    .line 31
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v4

    .line 32
    new-instance v5, Ls1/k;

    invoke-direct {v5, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_8
    iget-object v4, v0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 35
    iget-object v4, v4, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 36
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/messaging/data/types/Draft;

    .line 37
    iget-object v9, v0, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 38
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/a/c/c/g;

    .line 39
    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v11

    .line 40
    invoke-virtual {v11}, Lcom/truecaller/messaging/data/types/Draft$b;->f()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 41
    invoke-virtual {v11}, Lcom/truecaller/messaging/data/types/Draft$b;->d()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 42
    iget-object v12, v0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 43
    iget-boolean v12, v12, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->d:Z

    if-nez v12, :cond_a

    .line 44
    invoke-virtual {v11}, Lcom/truecaller/messaging/data/types/Draft$b;->e()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 45
    :cond_a
    iget-object v12, v10, Le/a/a/c/c/g;->b:Ljava/lang/String;

    .line 46
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_b

    move v12, v6

    goto :goto_5

    :cond_b
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_c

    .line 47
    iget-object v12, v10, Le/a/a/c/c/g;->b:Ljava/lang/String;

    .line 48
    iput-object v12, v11, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    .line 49
    :cond_c
    iget-object v12, v10, Le/a/a/c/c/g;->c:[Lcom/truecaller/messaging/data/types/Mention;

    .line 50
    array-length v13, v12

    if-nez v13, :cond_d

    move v13, v6

    goto :goto_6

    :cond_d
    const/4 v13, 0x0

    :goto_6
    xor-int/2addr v13, v6

    if-eqz v13, :cond_e

    .line 51
    iget-object v13, v11, Lcom/truecaller/messaging/data/types/Draft$b;->d:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->clear()V

    .line 52
    iget-object v13, v11, Lcom/truecaller/messaging/data/types/Draft$b;->d:Ljava/util/Set;

    invoke-static {v13, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 53
    :cond_e
    iget-object v12, v10, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 54
    invoke-virtual {v11, v12}, Lcom/truecaller/messaging/data/types/Draft$b;->b(Lcom/truecaller/messaging/data/types/BinaryEntity;)Lcom/truecaller/messaging/data/types/Draft$b;

    .line 55
    iget-object v12, v0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 56
    iget-boolean v12, v12, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->d:Z

    .line 57
    iput-boolean v12, v11, Lcom/truecaller/messaging/data/types/Draft$b;->f:Z

    .line 58
    invoke-virtual {v11}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v11

    .line 59
    new-instance v12, Ls1/k;

    invoke-direct {v12, v10, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 60
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 62
    check-cast v9, Ls1/k;

    .line 63
    iget-object v9, v9, Ls1/k;->b:Ljava/lang/Object;

    .line 64
    check-cast v9, Lcom/truecaller/messaging/data/types/Draft;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 65
    :cond_10
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v4, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 67
    check-cast v9, Lcom/truecaller/messaging/data/types/Draft;

    .line 68
    new-instance v15, Lcom/truecaller/messaging/ForwardContentItem;

    .line 69
    iget-object v11, v9, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    const-string v10, "it.text"

    invoke-static {v11, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v10, v0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 71
    iget-boolean v10, v10, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->d:Z

    if-eqz v10, :cond_11

    .line 72
    iget-boolean v10, v9, Lcom/truecaller/messaging/data/types/Draft;->d:Z

    if-eqz v10, :cond_11

    move v12, v6

    goto :goto_9

    :cond_11
    const/4 v12, 0x0

    .line 73
    :goto_9
    iget-object v9, v9, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v10, "it.media"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lcom/truecaller/messaging/data/types/BinaryEntity;

    const/4 v14, 0x3

    .line 74
    sget-object v9, Ls1/u/s;->a:Ls1/u/s;

    const/16 v16, 0x0

    const/16 v17, 0x20

    move-object v10, v15

    move-object v7, v15

    move-object v15, v9

    .line 75
    invoke-direct/range {v10 .. v17}, Lcom/truecaller/messaging/ForwardContentItem;-><init>(Ljava/lang/String;ZLcom/truecaller/messaging/data/types/BinaryEntity;ILjava/util/List;Lcom/truecaller/messaging/data/types/ImForwardInfo;I)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 76
    :cond_12
    iget-object v4, v0, Le/a/a/c/c/r;->l:Le/a/r2/f;

    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/o5/q0;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v7}, Le/a/o5/q0;->a(Ljava/util/ArrayList;)Le/a/r2/x;

    move-result-object v4

    iput-object v1, v2, Le/a/a/c/c/r$b;->g:Ljava/lang/Object;

    iput v6, v2, Le/a/a/c/c/r$b;->e:I

    invoke-static {v4, v2}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_13

    return-object v3

    :cond_13
    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    :goto_a
    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_17

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v4, 0x1

    if-ltz v4, :cond_14

    .line 79
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 80
    check-cast v5, Ls1/k;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 81
    new-instance v8, Ls1/k;

    .line 82
    iget-object v9, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 83
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 84
    check-cast v5, Lcom/truecaller/messaging/data/types/Draft;

    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Draft$b;->d()Lcom/truecaller/messaging/data/types/Draft$b;

    new-array v10, v6, [Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 86
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/data/types/BinaryEntity;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v10}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/truecaller/messaging/data/types/Draft$b;->a(Ljava/util/Collection;)Lcom/truecaller/messaging/data/types/Draft$b;

    .line 87
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v4

    .line 88
    invoke-direct {v8, v9, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_b

    .line 89
    :cond_14
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 v1, 0x0

    throw v1

    :cond_15
    move-object v1, v3

    :cond_16
    return-object v1

    .line 90
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public Li()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/c/c/q;->b2()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/a/c/c/q;->w4()V

    :cond_1
    return-void
.end method

.method public final Lj(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/conversation/draft/DraftUri;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;+",
            "Le/a/o5/o0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/a/c/c/r$c;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/a/c/c/r$c;

    iget v3, v2, Le/a/a/c/c/r$c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/a/c/c/r$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/a/c/c/r$c;

    invoke-direct {v2, v0, v1}, Le/a/a/c/c/r$c;-><init>(Le/a/a/c/c/r;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/a/c/c/r$c;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/a/c/c/r$c;->e:I

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x3

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v9, :cond_2

    if-ne v4, v7, :cond_1

    iget-wide v10, v2, Le/a/a/c/c/r$c;->k:J

    iget-object v4, v2, Le/a/a/c/c/r$c;->j:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;

    iget-object v12, v2, Le/a/a/c/c/r$c;->i:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v2, Le/a/a/c/c/r$c;->h:Ljava/lang/Object;

    check-cast v13, Ljava/util/Collection;

    iget-object v14, v2, Le/a/a/c/c/r$c;->g:Ljava/lang/Object;

    check-cast v14, Le/a/a/c/c/r;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-wide v10, v2, Le/a/a/c/c/r$c;->k:J

    iget-object v4, v2, Le/a/a/c/c/r$c;->j:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;

    iget-object v12, v2, Le/a/a/c/c/r$c;->i:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v2, Le/a/a/c/c/r$c;->h:Ljava/lang/Object;

    check-cast v13, Ljava/util/Collection;

    iget-object v14, v2, Le/a/a/c/c/r$c;->g:Ljava/lang/Object;

    check-cast v14, Le/a/a/c/c/r;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v5, v9

    goto/16 :goto_5

    :cond_3
    iget-wide v10, v2, Le/a/a/c/c/r$c;->k:J

    iget-object v4, v2, Le/a/a/c/c/r$c;->j:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;

    iget-object v12, v2, Le/a/a/c/c/r$c;->i:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v2, Le/a/a/c/c/r$c;->h:Ljava/lang/Object;

    check-cast v13, Ljava/util/Collection;

    iget-object v14, v2, Le/a/a/c/c/r$c;->g:Ljava/lang/Object;

    check-cast v14, Le/a/a/c/c/r;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v5, v9

    goto/16 :goto_6

    :cond_4
    iget-wide v10, v2, Le/a/a/c/c/r$c;->k:J

    iget-object v4, v2, Le/a/a/c/c/r$c;->j:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;

    iget-object v12, v2, Le/a/a/c/c/r$c;->i:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v2, Le/a/a/c/c/r$c;->h:Ljava/lang/Object;

    check-cast v13, Ljava/util/Collection;

    iget-object v14, v2, Le/a/a/c/c/r$c;->g:Ljava/lang/Object;

    check-cast v14, Le/a/a/c/c/r;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v5, v9

    goto/16 :goto_8

    :cond_5
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/a/c/c/r;->m:Le/a/o5/u0;

    iget-object v4, v0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 5
    iget-boolean v4, v4, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->d:Z

    if-eqz v4, :cond_6

    move v4, v6

    goto :goto_1

    :cond_6
    move v4, v8

    .line 6
    :goto_1
    invoke-interface {v1, v4}, Le/a/o5/u0;->d(I)J

    move-result-wide v10

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v14, v0

    move-object v13, v1

    move-object v12, v4

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    move-object v4, v1

    check-cast v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;

    .line 10
    iget-object v1, v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;->b:Lcom/truecaller/messaging/conversation/draft/UriTypeHint;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_e

    if-eq v1, v8, :cond_c

    if-eq v1, v6, :cond_a

    if-ne v1, v9, :cond_9

    .line 12
    iget-object v1, v14, Le/a/a/c/c/r;->l:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/o5/q0;

    new-instance v29, Le/a/a/a0;

    .line 13
    iget-object v15, v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;->a:Landroid/net/Uri;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0xffe

    move-object/from16 v16, v15

    move-object/from16 v15, v29

    .line 14
    invoke-direct/range {v15 .. v28}, Le/a/a/a0;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;I)V

    invoke-static/range {v29 .. v29}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    iget-object v5, v14, Le/a/a/c/c/r;->m:Le/a/o5/u0;

    invoke-interface {v5, v6}, Le/a/o5/u0;->d(I)J

    move-result-wide v8

    invoke-interface {v1, v15, v8, v9}, Le/a/o5/q0;->g(Ljava/util/Collection;J)Le/a/r2/x;

    move-result-object v1

    iput-object v14, v2, Le/a/a/c/c/r$c;->g:Ljava/lang/Object;

    iput-object v13, v2, Le/a/a/c/c/r$c;->h:Ljava/lang/Object;

    iput-object v12, v2, Le/a/a/c/c/r$c;->i:Ljava/lang/Object;

    iput-object v4, v2, Le/a/a/c/c/r$c;->j:Ljava/lang/Object;

    iput-wide v10, v2, Le/a/a/c/c/r$c;->k:J

    iput v7, v2, Le/a/a/c/c/r$c;->e:I

    invoke-static {v1, v2}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    :goto_3
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_8

    .line 15
    invoke-static {v1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/k;

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    const/4 v5, 0x3

    goto :goto_7

    :cond_9
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 16
    :cond_a
    iget-object v1, v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;->a:Landroid/net/Uri;

    .line 17
    iput-object v14, v2, Le/a/a/c/c/r$c;->g:Ljava/lang/Object;

    iput-object v13, v2, Le/a/a/c/c/r$c;->h:Ljava/lang/Object;

    iput-object v12, v2, Le/a/a/c/c/r$c;->i:Ljava/lang/Object;

    iput-object v4, v2, Le/a/a/c/c/r$c;->j:Ljava/lang/Object;

    iput-wide v10, v2, Le/a/a/c/c/r$c;->k:J

    const/4 v5, 0x3

    iput v5, v2, Le/a/a/c/c/r$c;->e:I

    invoke-virtual {v14, v1, v2}, Le/a/a/c/c/r;->Mj(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_b

    return-object v3

    :cond_b
    :goto_5
    check-cast v1, Ls1/k;

    goto :goto_7

    :cond_c
    move v5, v9

    .line 18
    iget-object v1, v14, Le/a/a/c/c/r;->l:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/o5/q0;

    .line 19
    iget-object v8, v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;->a:Landroid/net/Uri;

    .line 20
    iget-boolean v9, v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;->c:Z

    .line 21
    invoke-interface {v1, v8, v9, v10, v11}, Le/a/o5/q0;->f(Landroid/net/Uri;ZJ)Le/a/r2/x;

    move-result-object v1

    iput-object v14, v2, Le/a/a/c/c/r$c;->g:Ljava/lang/Object;

    iput-object v13, v2, Le/a/a/c/c/r$c;->h:Ljava/lang/Object;

    iput-object v12, v2, Le/a/a/c/c/r$c;->i:Ljava/lang/Object;

    iput-object v4, v2, Le/a/a/c/c/r$c;->j:Ljava/lang/Object;

    iput-wide v10, v2, Le/a/a/c/c/r$c;->k:J

    iput v6, v2, Le/a/a/c/c/r$c;->e:I

    invoke-static {v1, v2}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_d

    return-object v3

    :cond_d
    :goto_6
    check-cast v1, Ls1/k;

    :goto_7
    const/4 v8, 0x1

    goto :goto_9

    :cond_e
    move v5, v9

    .line 22
    iget-object v1, v14, Le/a/a/c/c/r;->l:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/o5/q0;

    .line 23
    iget-object v8, v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;->a:Landroid/net/Uri;

    .line 24
    iget-boolean v9, v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;->c:Z

    .line 25
    invoke-interface {v1, v8, v9}, Le/a/o5/q0;->c(Landroid/net/Uri;Z)Le/a/r2/x;

    move-result-object v1

    iput-object v14, v2, Le/a/a/c/c/r$c;->g:Ljava/lang/Object;

    iput-object v13, v2, Le/a/a/c/c/r$c;->h:Ljava/lang/Object;

    iput-object v12, v2, Le/a/a/c/c/r$c;->i:Ljava/lang/Object;

    iput-object v4, v2, Le/a/a/c/c/r$c;->j:Ljava/lang/Object;

    iput-wide v10, v2, Le/a/a/c/c/r$c;->k:J

    const/4 v8, 0x1

    iput v8, v2, Le/a/a/c/c/r$c;->e:I

    invoke-static {v1, v2}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_f

    return-object v3

    :cond_f
    :goto_8
    check-cast v1, Ls1/k;

    :goto_9
    if-eqz v1, :cond_11

    .line 26
    iget-object v9, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 27
    check-cast v9, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 28
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 29
    check-cast v1, Le/a/o5/o0;

    if-nez v9, :cond_10

    .line 30
    iget-boolean v15, v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;->c:Z

    if-eqz v15, :cond_10

    .line 31
    iget-object v15, v14, Le/a/a/c/c/r;->r:Le/a/o5/u1;

    .line 32
    iget-object v4, v4, Lcom/truecaller/messaging/conversation/draft/DraftUri;->a:Landroid/net/Uri;

    .line 33
    invoke-interface {v15, v4}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    .line 34
    :cond_10
    new-instance v4, Ls1/k;

    invoke-direct {v4, v9, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_12

    .line 35
    invoke-interface {v13, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_12
    move v9, v5

    goto/16 :goto_2

    .line 36
    :cond_13
    check-cast v13, Ljava/util/List;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 39
    check-cast v3, Ls1/k;

    .line 40
    iget-object v3, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 41
    check-cast v3, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v3, :cond_14

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 42
    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 44
    check-cast v4, Ls1/k;

    .line 45
    iget-object v4, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 46
    check-cast v4, Le/a/o5/o0;

    if-eqz v4, :cond_16

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 47
    :cond_17
    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/o5/o0;

    .line 48
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public Mc()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->a:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    .line 3
    sget-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->GIF:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Mj(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/VCardEntity;",
            "+",
            "Le/a/o5/o0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/a/c/c/r$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/a/c/c/r$d;

    iget v1, v0, Le/a/a/c/c/r$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/c/c/r$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/c/c/r$d;

    invoke-direct {v0, p0, p2}, Le/a/a/c/c/r$d;-><init>(Le/a/a/c/c/r;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/a/c/c/r$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/c/c/r$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/a/c/c/r;->t:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/o5/x;

    invoke-interface {p2, p1}, Le/a/o5/x;->g(Landroid/net/Uri;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "contactsManager.tell().getContactAsVCard(uri)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v3, v0, Le/a/a/c/c/r$d;->e:I

    invoke-static {p1, v0}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Le/a/o5/u;

    const/4 p1, 0x0

    if-eqz p2, :cond_4

    .line 6
    iget-object v0, p2, Le/a/o5/u;->a:Landroid/net/Uri;

    goto :goto_2

    :cond_4
    move-object v0, p1

    :goto_2
    if-nez v0, :cond_5

    .line 7
    sget-object p2, Le/a/o5/o0$b;->a:Le/a/o5/o0$b;

    .line 8
    new-instance v0, Ls1/k;

    invoke-direct {v0, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 9
    :cond_5
    new-instance v0, Lcom/truecaller/messaging/data/types/VCardEntity;

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    .line 10
    iget-object v1, p2, Le/a/o5/u;->a:Landroid/net/Uri;

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    .line 12
    iget-object v1, p2, Le/a/o5/u;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, ""

    :goto_3
    move-object v10, v1

    .line 13
    iget v11, p2, Le/a/o5/u;->e:I

    .line 14
    iget-object p2, p2, Le/a/o5/u;->b:Landroid/net/Uri;

    if-eqz p2, :cond_7

    goto :goto_4

    .line 15
    :cond_7
    sget-object p2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_4
    move-object v12, p2

    const-string v4, "text/x-vcard"

    move-object v1, v0

    .line 16
    invoke-direct/range {v1 .. v12}, Lcom/truecaller/messaging/data/types/VCardEntity;-><init>(JLjava/lang/String;ILjava/lang/String;ZJLjava/lang/String;ILandroid/net/Uri;)V

    .line 17
    new-instance p2, Ls1/k;

    invoke-direct {p2, v0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final Nj(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/a/c/c/r;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->a:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Le/a/a/c/c/r;->Oj(Z)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, v1}, Le/a/a/c/c/r;->Oj(Z)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/a/c/c/q;->q1()V

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_6

    iget-object v1, p0, Le/a/a/c/c/r;->q:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->r()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "messageSettings.fileMimeTypes"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Le/a/a/c/c/q;->O8([Ljava/lang/String;Z)V

    goto :goto_0

    .line 9
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Le/a/a/c/c/q;->yo(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final Oj(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->h:Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_5

    .line 3
    iget-object v1, p0, Le/a/a/c/c/r;->w:Le/a/b0/q/b;

    invoke-interface {v1}, Le/a/b0/q/b;->b()Landroid/net/Uri;

    move-result-object v1

    .line 4
    iput-object v1, p0, Le/a/a/c/c/r;->h:Landroid/net/Uri;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {v0, v1}, Le/a/a/c/c/q;->ci(Landroid/net/Uri;)V

    goto :goto_2

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 7
    iget-boolean p1, p1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->d:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Le/a/a/c/c/r;->m:Le/a/o5/u0;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Le/a/o5/u0;->d(I)J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Le/a/o5/u0;->c(J)J

    move-result-wide v2

    .line 9
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Le/a/a/c/c/q;->Fk(Landroid/net/Uri;J)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object p1, p0, Le/a/a/c/c/r;->m:Le/a/o5/u0;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Le/a/o5/u0;->d(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 11
    :goto_1
    invoke-interface {v0, v1, p1}, Le/a/a/c/c/q;->xm(Landroid/net/Uri;Ljava/lang/Long;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final Pj(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->h:Landroid/net/Uri;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Le/a/a/c/c/r;->h:Landroid/net/Uri;

    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 3
    iget-object p1, p0, Le/a/a/c/c/r;->r:Le/a/o5/u1;

    invoke-interface {p1, v0}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    .line 4
    iget-object p1, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-static {p1, p2, v2, v1}, Le/a/c/p/a;->i0(Le/a/a/c/c/q;ZILjava/lang/Object;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p2, Lcom/truecaller/messaging/conversation/draft/DraftUri;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/truecaller/messaging/conversation/draft/UriTypeHint;->IMAGE:Lcom/truecaller/messaging/conversation/draft/UriTypeHint;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/truecaller/messaging/conversation/draft/UriTypeHint;->VIDEO:Lcom/truecaller/messaging/conversation/draft/UriTypeHint;

    :goto_0
    invoke-direct {p2, v0, p1, v2}, Lcom/truecaller/messaging/conversation/draft/DraftUri;-><init>(Landroid/net/Uri;Lcom/truecaller/messaging/conversation/draft/UriTypeHint;Z)V

    invoke-static {p2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/a/c/c/r;->Jj(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public Q2()[Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->f:[Ljava/lang/String;

    sget-object v1, Lcom/truecaller/messaging/data/types/Entity;->e:[Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/u/i;->t0([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final Qj(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Ls1/k<",
            "Le/a/a/c/c/g;",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;",
            "Le/a/a/c1/b$e;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/a/c/c/r$f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/a/c/c/r$f;

    iget v1, v0, Le/a/a/c/c/r$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/c/c/r$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/c/c/r$f;

    invoke-direct {v0, p0, p1}, Le/a/a/c/c/r$f;-><init>(Le/a/a/c/c/r;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/a/c/c/r$f;->d:Ljava/lang/Object;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v0, Le/a/a/c/c/r$f;->e:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v10, :cond_2

    if-ne v1, v9, :cond_1

    iget-object v0, v0, Le/a/a/c/c/r$f;->g:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/r;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v1, v0, Le/a/a/c/c/r$f;->g:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/r;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 5
    iget-boolean p1, p1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->d:Z

    if-nez p1, :cond_5

    .line 6
    iget-object v1, p0, Le/a/a/c/c/r;->p:Le/a/a/s0/d;

    const v3, 0x7f12044f

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    iput-object p0, v0, Le/a/a/c/c/r$f;->g:Ljava/lang/Object;

    iput v10, v0, Le/a/a/c/c/r$f;->e:I

    const-string v2, "conversation-sendMms"

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Le/a/c/p/a;->t2(Le/a/a/s0/d;Ljava/lang/String;IZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_4

    return-object v8

    :cond_4
    move-object v1, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    return-object v11

    :cond_5
    move-object v1, p0

    .line 7
    :cond_6
    iput-object v1, v0, Le/a/a/c/c/r$f;->g:Ljava/lang/Object;

    iput v9, v0, Le/a/a/c/c/r$f;->e:I

    invoke-virtual {v1, v0}, Le/a/a/c/c/r;->Kj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_7

    return-object v8

    :cond_7
    move-object v0, v1

    .line 8
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_c

    .line 10
    iget-object p1, v0, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Le/a/a/c/c/g;

    .line 14
    iget-object v2, v2, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 16
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 17
    iget-object v2, v0, Le/a/a/c/c/r;->r:Le/a/o5/u1;

    invoke-interface {v2, v1}, Le/a/o5/u1;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    goto :goto_4

    .line 18
    :cond_9
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_a

    const v1, 0x7f12023a

    invoke-interface {p1, v1}, Le/a/a/c/c/q;->a(I)V

    .line 19
    :cond_a
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    invoke-static {p1, v0, v10, v11}, Le/a/c/p/a;->i0(Le/a/a/c/c/q;ZILjava/lang/Object;)V

    :cond_b
    return-object v11

    .line 20
    :cond_c
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Le/q/f/a/d/a;->Y1(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_d

    move v2, v3

    :cond_d
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 22
    move-object v4, v3

    check-cast v4, Ls1/k;

    .line 23
    iget-object v5, v0, Le/a/a/c/c/r;->o:Le/a/a/c1/d;

    .line 24
    iget-object v4, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 25
    move-object v6, v4

    check-cast v6, Lcom/truecaller/messaging/data/types/Draft;

    iget-object v6, v6, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v7, "it.second.media"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ls1/u/i;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 26
    new-instance v7, Ls1/k;

    invoke-direct {v7, v4, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    invoke-static {v7}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 28
    iget-object v4, v0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 29
    iget-object v7, v4, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->e:Ljava/lang/String;

    .line 30
    iget-boolean v8, v4, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->d:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 31
    invoke-interface/range {v5 .. v10}, Le/a/a/c1/d;->c(Ljava/util/List;Ljava/lang/String;ZZZ)Le/a/a/c1/b;

    move-result-object v4

    .line 32
    instance-of v5, v4, Le/a/a/c1/b$e;

    if-nez v5, :cond_16

    .line 33
    iget-object v1, v0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 34
    iget-object v1, v1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->a:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    .line 35
    sget-object v2, Lcom/truecaller/messaging/conversation/draft/DraftMode;->SHARED_CONTENT:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    if-ne v1, v2, :cond_f

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 38
    check-cast v2, Ls1/k;

    .line 39
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 40
    check-cast v2, Lcom/truecaller/messaging/data/types/Draft;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v3, "draftEntitiesReadyDrafts.second.media"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/u/i;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_6

    .line 42
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 43
    iget-object v2, v0, Le/a/a/c/c/r;->r:Le/a/o5/u1;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-interface {v2, v1}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    goto :goto_7

    .line 44
    :cond_f
    instance-of p1, v4, Le/a/a/c1/b$a;

    if-eqz p1, :cond_10

    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_15

    check-cast v4, Le/a/a/c1/b$a;

    .line 45
    iget-wide v0, v4, Le/a/a/c1/b$a;->a:J

    .line 46
    invoke-interface {p1, v0, v1}, Le/a/a/c/c/q;->uA(J)V

    goto :goto_8

    .line 47
    :cond_10
    instance-of p1, v4, Le/a/a/c1/b$b;

    if-eqz p1, :cond_11

    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Le/a/a/c/c/q;->j1()V

    goto :goto_8

    .line 48
    :cond_11
    instance-of p1, v4, Le/a/a/c1/b$c;

    if-eqz p1, :cond_12

    goto :goto_8

    .line 49
    :cond_12
    instance-of p1, v4, Le/a/a/c1/b$d;

    if-eqz p1, :cond_13

    goto :goto_8

    .line 50
    :cond_13
    instance-of p1, v4, Le/a/a/c1/b$f;

    if-eqz p1, :cond_14

    goto :goto_8

    .line 51
    :cond_14
    instance-of p1, v4, Le/a/a/c1/b$g;

    :cond_15
    :goto_8
    return-object v11

    .line 52
    :cond_16
    check-cast v4, Le/a/a/c1/b$e;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_17
    return-object v1
.end method

.method public final Rj(JLs1/w/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    sget-object v2, Ls1/s;->a:Ls1/s;

    instance-of v3, v1, Le/a/a/c/c/r$g;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/a/c/c/r$g;

    iget v4, v3, Le/a/a/c/c/r$g;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/a/c/c/r$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/a/c/c/r$g;

    invoke-direct {v3, v0, v1}, Le/a/a/c/c/r$g;-><init>(Le/a/a/c/c/r;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/a/c/c/r$g;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/a/c/c/r$g;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v5, :cond_3

    if-eq v5, v6, :cond_2

    if-ne v5, v7, :cond_1

    iget-wide v8, v3, Le/a/a/c/c/r$g;->i:J

    iget-object v5, v3, Le/a/a/c/c/r$g;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v10, v3, Le/a/a/c/c/r$g;->g:Ljava/lang/Object;

    check-cast v10, Le/a/a/c/c/r;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide v14, v8

    move-object v1, v10

    move v8, v7

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-wide v8, v3, Le/a/a/c/c/r$g;->i:J

    iget-object v5, v3, Le/a/a/c/c/r$g;->g:Ljava/lang/Object;

    check-cast v5, Le/a/a/c/c/r;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object v0, v3, Le/a/a/c/c/r$g;->g:Ljava/lang/Object;

    move-wide/from16 v8, p1

    iput-wide v8, v3, Le/a/a/c/c/r$g;->i:J

    iput v6, v3, Le/a/a/c/c/r$g;->e:I

    invoke-virtual {v0, v3}, Le/a/a/c/c/r;->Qj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_4

    return-object v4

    :cond_4
    move-object v5, v0

    :goto_1
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v14, v8

    move-object/from16 v17, v5

    move-object v5, v1

    move-object/from16 v1, v17

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/k;

    .line 7
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    check-cast v8, Lcom/truecaller/messaging/data/types/Draft;

    .line 9
    iget-object v10, v1, Le/a/a/c/c/r;->A:Le/a/a/k/t;

    .line 10
    iget-object v11, v1, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 11
    iget-object v11, v11, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->e:Ljava/lang/String;

    const-string v12, "conversation"

    .line 12
    invoke-virtual {v8, v11, v12}, Lcom/truecaller/messaging/data/types/Draft;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v11

    .line 13
    iget-object v12, v8, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    move-object/from16 p1, v4

    move-object/from16 p2, v5

    .line 14
    iget-wide v4, v8, Lcom/truecaller/messaging/data/types/Draft;->a:J

    .line 15
    iget v8, v8, Lcom/truecaller/messaging/data/types/Draft;->n:I

    if-eq v8, v7, :cond_7

    const/4 v13, 0x3

    if-eq v8, v13, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    iget-object v8, v1, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 17
    iget-boolean v8, v8, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->d:Z

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    move/from16 v16, v9

    goto :goto_5

    :cond_7
    :goto_4
    move/from16 v16, v7

    :goto_5
    const-string v9, "fullScreenDraft"

    move-object v8, v10

    move-object v10, v11

    move-object v11, v12

    move-wide v12, v14

    move-wide v6, v14

    move-wide v14, v4

    .line 18
    invoke-interface/range {v8 .. v16}, Le/a/a/k/t;->q(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;JJI)Le/a/r2/x;

    move-result-object v4

    const-string v5, "transportManager.schedul\u2026          }\n            )"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v3, Le/a/a/c/c/r$g;->g:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v3, Le/a/a/c/c/r$g;->h:Ljava/lang/Object;

    iput-wide v6, v3, Le/a/a/c/c/r$g;->i:J

    const/4 v8, 0x2

    iput v8, v3, Le/a/a/c/c/r$g;->e:I

    .line 19
    invoke-static {v4, v3}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v9, p1

    if-ne v4, v9, :cond_8

    return-object v9

    :cond_8
    move-wide v14, v6

    move-object v4, v9

    :goto_6
    move v7, v8

    const/4 v6, 0x1

    goto :goto_2

    .line 20
    :cond_9
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/q;

    if-eqz v1, :cond_a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v9, v4, v3}, Le/a/c/p/a;->i0(Le/a/a/c/c/q;ZILjava/lang/Object;)V

    :cond_a
    return-object v2
.end method

.method public final Sj()V
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/a/c/c/r;->e:Z

    .line 2
    new-instance v4, Le/a/a/c/c/r$h;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/a/c/c/r$h;-><init>(Le/a/a/c/c/r;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public T5()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/c/r;->i:I

    return v0
.end method

.method public final Tj(Ls1/w/d;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ls1/s;->a:Ls1/s;

    instance-of v3, v1, Le/a/a/c/c/r$i;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/a/c/c/r$i;

    iget v4, v3, Le/a/a/c/c/r$i;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/a/c/c/r$i;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/a/c/c/r$i;

    invoke-direct {v3, v0, v1}, Le/a/a/c/c/r$i;-><init>(Le/a/a/c/c/r;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/a/c/c/r$i;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/a/c/c/r$i;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v5, :cond_3

    if-eq v5, v6, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v5, v3, Le/a/a/c/c/r$i;->k:Ljava/lang/Object;

    iget-object v8, v3, Le/a/a/c/c/r$i;->j:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    iget-object v9, v3, Le/a/a/c/c/r$i;->i:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v3, Le/a/a/c/c/r$i;->h:Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    iget-object v11, v3, Le/a/a/c/c/r$i;->g:Ljava/lang/Object;

    check-cast v11, Le/a/a/c/c/r;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v5, v3, Le/a/a/c/c/r$i;->g:Ljava/lang/Object;

    check-cast v5, Le/a/a/c/c/r;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object v0, v3, Le/a/a/c/c/r$i;->g:Ljava/lang/Object;

    iput v6, v3, Le/a/a/c/c/r$i;->e:I

    invoke-virtual {v0, v3}, Le/a/a/c/c/r;->Qj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_4

    return-object v4

    :cond_4
    move-object v5, v0

    :goto_1
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_26

    .line 5
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Le/q/f/a/d/a;->Y1(I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v9, v1

    move-object v11, v5

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Le/a/a/c1/b$e;

    .line 10
    iget-object v12, v11, Le/a/a/c/c/r;->o:Le/a/a/c1/d;

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x8

    const/16 v19, 0x0

    const-string v15, "conversation-sendMms"

    invoke-static/range {v12 .. v19}, Le/a/c/p/a;->y2(Le/a/a/c1/d;Le/a/a/c1/b$e;ZLjava/lang/String;JILjava/lang/Object;)Le/a/r2/x;

    move-result-object v1

    iput-object v11, v3, Le/a/a/c/c/r$i;->g:Ljava/lang/Object;

    iput-object v8, v3, Le/a/a/c/c/r$i;->h:Ljava/lang/Object;

    iput-object v9, v3, Le/a/a/c/c/r$i;->i:Ljava/lang/Object;

    iput-object v8, v3, Le/a/a/c/c/r$i;->j:Ljava/lang/Object;

    iput-object v5, v3, Le/a/a/c/c/r$i;->k:Ljava/lang/Object;

    iput v7, v3, Le/a/a/c/c/r$i;->e:I

    .line 11
    invoke-static {v1, v3}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_5

    return-object v4

    :cond_5
    move-object v10, v8

    .line 12
    :goto_3
    check-cast v1, Le/a/a/c1/c;

    invoke-interface {v8, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v10

    goto :goto_2

    .line 13
    :cond_6
    iget-object v1, v11, Le/a/a/c/c/r;->y:Le/a/a/c/c/f;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, v11, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 14
    iget-object v4, v4, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 17
    check-cast v7, Lcom/truecaller/messaging/data/types/Draft;

    .line 18
    iget-object v7, v7, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v9, "it.participants"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ls1/u/i;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 19
    invoke-static {v5, v7}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    new-array v7, v4, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 20
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v5, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "results"

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "participants"

    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 24
    check-cast v9, Le/a/a/c1/c;

    .line 25
    instance-of v12, v9, Le/a/a/c1/c$b;

    if-nez v12, :cond_9

    goto :goto_6

    :cond_9
    move-object v10, v9

    :goto_6
    check-cast v10, Le/a/a/c1/c$b;

    if-eqz v10, :cond_8

    .line 26
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 27
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 29
    check-cast v9, Le/a/a/c1/c$b;

    .line 30
    iget-object v9, v9, Le/a/a/c1/c$b;->a:Ljava/util/List;

    .line 31
    invoke-static {v3, v9}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_7

    .line 32
    :cond_b
    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v3, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 34
    check-cast v9, Ls1/k;

    .line 35
    iget-object v9, v9, Ls1/k;->a:Ljava/lang/Object;

    .line 36
    check-cast v9, Lcom/truecaller/messaging/data/types/Draft;

    .line 37
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 38
    :cond_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto/16 :goto_c

    .line 39
    :cond_d
    invoke-static {v7}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Draft;

    iget-object v3, v3, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v9, "drafts.first().media"

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v3, :cond_12

    iget-object v3, v3, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    if-eqz v3, :cond_12

    const-string v9, "FullScreenDraftMessageSent"

    .line 40
    invoke-virtual {v1, v9, v5, v3}, Le/a/a/c/c/f;->a(Ljava/lang/String;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)Le/a/q2/g$b;

    move-result-object v3

    .line 41
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_a

    .line 42
    :cond_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/messaging/data/types/Draft;

    .line 43
    iget-object v9, v9, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    const-string v12, "it.text"

    invoke-static {v9, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_10

    move v9, v6

    goto :goto_9

    :cond_10
    move v9, v4

    :goto_9
    if-eqz v9, :cond_f

    move v5, v6

    goto :goto_b

    :cond_11
    :goto_a
    move v5, v4

    :goto_b
    const-string v9, "hasText"

    invoke-virtual {v3, v9, v5}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    .line 44
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 45
    iput-object v5, v3, Le/a/q2/g$b;->c:Ljava/lang/Double;

    .line 46
    invoke-virtual {v3}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v3

    .line 47
    iget-object v1, v1, Le/a/a/c/c/f;->c:Le/a/q2/a;

    const-string v5, "it"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 48
    :cond_12
    :goto_c
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_d

    .line 49
    :cond_13
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/c1/c;

    .line 50
    instance-of v3, v3, Le/a/a/c1/c$a;

    .line 51
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    move v1, v4

    goto :goto_e

    :cond_15
    :goto_d
    move v1, v6

    :goto_e
    if-eqz v1, :cond_1a

    .line 53
    iget-object v1, v11, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 54
    iget-object v3, v1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->a:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    .line 55
    sget-object v5, Lcom/truecaller/messaging/conversation/draft/DraftMode;->SHARED_CONTENT:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    if-ne v3, v5, :cond_18

    .line 56
    iget-object v1, v1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 57
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v6, :cond_17

    .line 58
    iget-object v1, v11, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/q;

    if-eqz v1, :cond_18

    .line 59
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/k;

    .line 60
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 61
    check-cast v3, Lcom/truecaller/messaging/data/types/Draft;

    iget-object v3, v3, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v3, :cond_16

    iget-wide v12, v3, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 62
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v12, v13}, Ljava/lang/Long;-><init>(J)V

    goto :goto_f

    :cond_16
    move-object v3, v10

    .line 63
    :goto_f
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/k;

    .line 64
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 65
    check-cast v5, Lcom/truecaller/messaging/data/types/Draft;

    iget-object v5, v5, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 66
    invoke-interface {v1, v3, v5, v10}, Le/a/a/c/c/q;->L3(Ljava/lang/Long;[Lcom/truecaller/data/entity/messaging/Participant;Landroid/content/Intent;)V

    goto :goto_10

    .line 67
    :cond_17
    iget-object v1, v11, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/q;

    if-eqz v1, :cond_18

    invoke-interface {v1}, Le/a/a/c/c/q;->w0()V

    .line 68
    :cond_18
    :goto_10
    iget-object v1, v11, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/q;

    if-eqz v1, :cond_19

    invoke-static {v1, v4, v6, v10}, Le/a/c/p/a;->i0(Le/a/a/c/c/q;ZILjava/lang/Object;)V

    :cond_19
    return-object v2

    .line 69
    :cond_1a
    iget-object v1, v11, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 70
    iget-object v1, v1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->a:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    .line 71
    sget-object v3, Lcom/truecaller/messaging/conversation/draft/DraftMode;->SHARED_CONTENT:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    if-ne v1, v3, :cond_1f

    .line 72
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Le/a/a/c1/c$a;

    if-eqz v5, :cond_1b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 75
    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 77
    check-cast v4, Le/a/a/c1/c$a;

    .line 78
    iget-object v4, v4, Le/a/a/c1/c$a;->a:Ljava/util/List;

    .line 79
    invoke-static {v1, v4}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_12

    .line 80
    :cond_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 82
    check-cast v4, Lcom/truecaller/messaging/data/types/Draft;

    .line 83
    iget-object v4, v4, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v5, "it.media"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/u/i;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 84
    invoke-static {v3, v4}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_13

    .line 85
    :cond_1e
    invoke-static {v3}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 86
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 87
    iget-object v4, v11, Le/a/a/c/c/r;->r:Le/a/o5/u1;

    iget-object v3, v3, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-interface {v4, v3}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    goto :goto_14

    .line 88
    :cond_1f
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 89
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Le/a/a/c1/c$b;

    xor-int/2addr v5, v6

    .line 91
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 93
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 94
    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/k;

    .line 97
    iget-object v4, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 98
    check-cast v4, Le/a/a/c/c/g;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 99
    :cond_22
    iget-object v1, v11, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Le/a/a/c/c/g;

    .line 102
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v6

    .line 103
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 104
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 105
    :cond_24
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/c/c/g;

    .line 106
    iget-object v5, v11, Le/a/a/c/c/r;->r:Le/a/o5/u1;

    .line 107
    iget-object v4, v4, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 108
    invoke-interface {v5, v4}, Le/a/o5/u1;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    goto :goto_18

    .line 109
    :cond_25
    iget-object v1, v11, Le/a/a/c/c/r;->d:Ljava/util/List;

    new-instance v4, Le/a/a/c/c/r$j;

    invoke-direct {v4, v3}, Le/a/a/c/c/r$j;-><init>(Ljava/util/List;)V

    invoke-static {v1, v4}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 110
    iget-object v1, v11, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-static {v1}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v11, v1, v6}, Le/a/a/c/c/r;->Vj(IZ)V

    .line 111
    iget-object v1, v11, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/q;

    if-eqz v1, :cond_26

    const v3, 0x7f12023a

    invoke-interface {v1, v3}, Le/a/a/c/c/q;->a(I)V

    :cond_26
    return-object v2
.end method

.method public final Uj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/c/c/g;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Le/a/a/c/c/r;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    .line 2
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/a/c/c/q;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Le/a/a/c/c/q;->za(Lcom/truecaller/messaging/mediaviewer/MediaPosition;)V

    :cond_1
    return-void

    .line 3
    :cond_2
    iget-object p2, p2, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_f

    iget-object p2, p2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-interface {v0, p1, p2}, Le/a/a/c/c/q;->nr(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;)V

    goto/16 :goto_7

    .line 5
    :cond_3
    instance-of v0, p2, Lcom/truecaller/messaging/data/types/VideoEntity;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_f

    iget-object v2, p2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    check-cast p2, Lcom/truecaller/messaging/data/types/VideoEntity;

    .line 6
    iget v3, p2, Lcom/truecaller/messaging/data/types/VideoEntity;->v:I

    if-lt v3, v1, :cond_5

    .line 7
    iget p2, p2, Lcom/truecaller/messaging/data/types/VideoEntity;->w:I

    if-ge p2, v1, :cond_4

    goto :goto_0

    :cond_4
    int-to-float v1, v3

    int-to-float p2, p2

    div-float/2addr v1, p2

    goto :goto_1

    :cond_5
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    :goto_1
    invoke-interface {v0, p1, v2, v1}, Le/a/a/c/c/q;->Mt(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;F)V

    goto/16 :goto_7

    .line 9
    :cond_6
    instance-of v0, p2, Lcom/truecaller/messaging/data/types/VCardEntity;

    const-string v2, "(this as java.lang.String).toUpperCase(locale)"

    const-string v3, "Locale.US"

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_f

    .line 10
    check-cast p2, Lcom/truecaller/messaging/data/types/VCardEntity;

    .line 11
    iget-object v1, p2, Lcom/truecaller/messaging/data/types/VCardEntity;->x:Landroid/net/Uri;

    .line 12
    iget-object v5, p0, Le/a/a/c/c/r;->u:Le/a/a/i1/b;

    .line 13
    iget-object v6, p2, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    .line 14
    iget p2, p2, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    .line 15
    invoke-interface {v5, v6, p2}, Le/a/a/i1/b;->E(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 16
    iget-object v5, p0, Le/a/a/c/c/r;->v:Le/a/p5/c0;

    const v6, 0x7f12001c

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v5, v6, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026ring.AttachmentTypeVCard)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {v0, p1, v1, p2, v3}, Le/a/a/c/c/q;->Jl(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 18
    :cond_7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_f

    .line 19
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    iget-object v6, p2, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz v5, :cond_8

    .line 20
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v6, :cond_8

    goto :goto_4

    .line 21
    :cond_8
    instance-of v5, p2, Lcom/truecaller/messaging/data/types/DocumentEntity;

    if-nez v5, :cond_9

    goto :goto_3

    .line 22
    :cond_9
    move-object v5, p2

    check-cast v5, Lcom/truecaller/messaging/data/types/DocumentEntity;

    .line 23
    iget-object v5, v5, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

    const/16 v8, 0x2e

    const/4 v9, 0x2

    .line 24
    invoke-static {v5, v8, v7, v9}, Ls1/f0/v;->c0(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v6, :cond_a

    goto :goto_2

    :cond_a
    move v1, v4

    :goto_2
    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    move-object v5, v7

    :goto_4
    const-string v1, ""

    if-eqz v5, :cond_c

    .line 25
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    move-object v3, v1

    .line 26
    :goto_5
    instance-of v2, p2, Lcom/truecaller/messaging/data/types/DocumentEntity;

    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    move-object v7, p2

    :goto_6
    check-cast v7, Lcom/truecaller/messaging/data/types/DocumentEntity;

    if-eqz v7, :cond_e

    .line 27
    iget-object v2, v7, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

    if-eqz v2, :cond_e

    move-object v1, v2

    .line 28
    :cond_e
    iget-object v2, p0, Le/a/a/c/c/r;->s:Le/a/p5/j;

    iget-wide v4, p2, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    invoke-virtual {v2, v4, v5}, Le/a/p5/j;->a(J)Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-interface {v0, p1, v3, v1, p2}, Le/a/a/c/c/q;->gu(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_7
    return-void
.end method

.method public Ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Le/a/a/c/c/r;->f:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Le/a/a/c/c/q;->If(Z)V

    :cond_0
    return-void
.end method

.method public final Vj(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2
    iget v1, p0, Le/a/a/c/c/r;->i:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/c/g;

    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/q;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/a/c/c/q;->m1()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Le/a/a/c/c/g;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 5
    iget v1, p0, Le/a/a/c/c/r;->i:I

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/c/g;

    iget-object v1, p0, Le/a/a/c/c/r;->z:Le/a/a/c/o8/g;

    invoke-interface {v1}, Le/a/a/c/o8/g;->Ti()[Lcom/truecaller/messaging/data/types/Mention;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/a/c/c/g;->b([Lcom/truecaller/messaging/data/types/Mention;)V

    .line 7
    :cond_3
    :goto_2
    iput p1, p0, Le/a/a/c/c/r;->i:I

    .line 8
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ltz p1, :cond_b

    if-gt v0, p1, :cond_4

    goto/16 :goto_6

    .line 9
    :cond_4
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 10
    iget v4, p0, Le/a/a/c/c/r;->i:I

    .line 11
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/c/g;

    .line 12
    iget-object v4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/a/c/c/q;

    if-eqz v4, :cond_a

    .line 13
    iget-object v5, v0, Le/a/a/c/c/g;->b:Ljava/lang/String;

    .line 14
    invoke-interface {v4, v5}, Le/a/a/c/c/q;->setText(Ljava/lang/String;)V

    .line 15
    iget-object v5, v0, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 16
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result v5

    invoke-interface {v4, v5}, Le/a/a/c/c/q;->r2(Z)V

    .line 17
    invoke-interface {v4, v1}, Le/a/a/c/c/q;->If(Z)V

    .line 18
    invoke-interface {v4}, Le/a/a/c/c/q;->c0()V

    if-eqz p2, :cond_7

    .line 19
    sget-object p2, Lcom/truecaller/messaging/mediaviewer/MediaPosition;->CURRENT:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    iget-object v5, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/c/c/g;

    invoke-virtual {p0, p2, v5}, Le/a/a/c/c/r;->Uj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/c/c/g;)V

    .line 20
    sget-object p2, Lcom/truecaller/messaging/mediaviewer/MediaPosition;->PREVIOUS:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    if-lez p1, :cond_5

    iget-object v5, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/c/c/g;

    goto :goto_3

    :cond_5
    move-object v5, v2

    :goto_3
    invoke-virtual {p0, p2, v5}, Le/a/a/c/c/r;->Uj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/c/c/g;)V

    .line 21
    sget-object p2, Lcom/truecaller/messaging/mediaviewer/MediaPosition;->NEXT:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    iget-object v5, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-static {v5}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v5

    if-ge p1, v5, :cond_6

    iget-object v5, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/c/c/g;

    goto :goto_4

    :cond_6
    move-object v5, v2

    :goto_4
    invoke-virtual {p0, p2, v5}, Le/a/a/c/c/r;->Uj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/c/c/g;)V

    .line 22
    :cond_7
    iget-object p2, v0, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 23
    instance-of v5, p2, Lcom/truecaller/messaging/data/types/VideoEntity;

    if-nez v5, :cond_8

    goto :goto_5

    .line 24
    :cond_8
    iget-object v2, p0, Le/a/a/c/c/r;->x:Le/a/o5/b0;

    move-object v5, p2

    check-cast v5, Lcom/truecaller/messaging/data/types/VideoEntity;

    .line 25
    iget v5, v5, Lcom/truecaller/messaging/data/types/VideoEntity;->x:I

    .line 26
    invoke-interface {v2, v5}, Le/a/o5/b0;->s(I)Ljava/lang/String;

    move-result-object v2

    .line 27
    iget-object v5, p0, Le/a/a/c/c/r;->s:Le/a/p5/j;

    iget-wide v6, p2, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    invoke-virtual {v5, v6, v7}, Le/a/p5/j;->a(J)Ljava/lang/String;

    move-result-object p2

    .line 28
    iget-object v5, p0, Le/a/a/c/c/r;->v:Le/a/p5/c0;

    const v6, 0x7f120aa8

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    aput-object p2, v7, v3

    invoke-interface {v5, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 29
    :goto_5
    invoke-interface {v4, v2}, Le/a/a/c/c/q;->c(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-static {p2}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result p2

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :cond_9
    invoke-interface {v4, p1}, Le/a/a/c/c/q;->scrollToPosition(I)V

    .line 31
    :cond_a
    iget-object p1, p0, Le/a/a/c/c/r;->z:Le/a/a/c/o8/g;

    .line 32
    iget-object p2, v0, Le/a/a/c/c/g;->c:[Lcom/truecaller/messaging/data/types/Mention;

    .line 33
    iget-object v0, v0, Le/a/a/c/c/g;->b:Ljava/lang/String;

    .line 34
    invoke-interface {p1, p2, v0}, Le/a/a/c/o8/g;->p4([Lcom/truecaller/messaging/data/types/Mention;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_b
    :goto_6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_c

    invoke-static {p1, v1, v3, v2}, Le/a/c/p/a;->i0(Le/a/a/c/c/q;ZILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Le/a/a/c/c/q;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 5
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 6
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Draft;

    .line 8
    iget v1, v1, Lcom/truecaller/messaging/data/types/Draft;->n:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 10
    iget-boolean v0, v0, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->d:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v3

    :goto_4
    if-eqz v0, :cond_6

    .line 11
    invoke-interface {p1}, Le/a/a/c/c/q;->x1()V

    .line 12
    :cond_6
    iget-object v1, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 13
    iget-object v1, v1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 14
    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_7

    .line 15
    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/data/types/Draft;

    .line 16
    iget-object v5, v4, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    array-length v5, v5

    if-gt v5, v3, :cond_a

    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Draft;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    move v4, v2

    goto :goto_6

    :cond_a
    :goto_5
    move v4, v3

    :goto_6
    if-eqz v4, :cond_8

    move v1, v2

    goto :goto_8

    :cond_b
    :goto_7
    move v1, v3

    :goto_8
    if-eqz v1, :cond_c

    invoke-interface {p1}, Le/a/a/c/c/q;->sb()V

    .line 17
    :cond_c
    iget-object v1, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 18
    iget-object v1, v1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_d

    .line 20
    iget-object v1, p0, Le/a/a/c/c/r;->v:Le/a/p5/c0;

    const v4, 0x7f120aa7

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "resourceProvider.getStri\u2026aft_screen_sharing_title)"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 21
    :cond_d
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/data/types/Draft;

    iget-object v4, v4, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v5, "draft.first().participants"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 22
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/data/types/Draft;

    iget-object v4, v4, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v4, :cond_e

    iget-object v4, v4, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v4, :cond_e

    .line 23
    iget-object v4, v4, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    if-eqz v4, :cond_e

    move-object v1, v4

    goto :goto_9

    .line 24
    :cond_e
    iget-object v4, p0, Le/a/a/c/c/r;->n:Le/a/a/k/a/a/q;

    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Draft;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v5, "draft.first().participan\u2026first().normalizedAddress"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Le/a/a/k/a/a/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 25
    :cond_f
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Draft;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1}, Le/a/c/p/a;->F1([Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    goto :goto_9

    :cond_10
    const-string v1, ""

    .line 26
    :goto_9
    invoke-interface {p1, v1}, Le/a/a/c/c/q;->setTitle(Ljava/lang/String;)V

    if-eqz v0, :cond_11

    const v0, 0x7f0405a1

    goto :goto_a

    :cond_11
    const v0, 0x7f04056c

    .line 27
    :goto_a
    invoke-interface {p1, v0}, Le/a/a/c/c/q;->M3(I)V

    .line 28
    iget-object v0, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    invoke-static {v0}, Le/a/c/p/a;->m1(Lcom/truecaller/messaging/conversation/draft/DraftArguments;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f08041d

    goto :goto_b

    :cond_12
    const v0, 0x7f0806aa

    :goto_b
    invoke-interface {p1, v0}, Le/a/a/c/c/q;->E8(I)V

    .line 29
    iget-object v0, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 30
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->a:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    .line 31
    sget-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->VCARD:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    if-eq v0, v1, :cond_14

    sget-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->DOCUMENTS:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    if-ne v0, v1, :cond_13

    goto :goto_c

    :cond_13
    move v0, v2

    goto :goto_d

    :cond_14
    :goto_c
    move v0, v3

    :goto_d
    invoke-interface {p1, v0}, Le/a/a/c/c/q;->vp(Z)V

    .line 32
    iget-object v0, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 33
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->a:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    .line 34
    sget-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->GIF:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    if-ne v0, v1, :cond_15

    move v2, v3

    :cond_15
    if-eqz v2, :cond_16

    .line 35
    invoke-interface {p1}, Le/a/a/c/c/q;->W7()V

    .line 36
    :cond_16
    iget-object p1, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 37
    iget-object p1, p1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 40
    check-cast v1, Lcom/truecaller/messaging/data/types/Draft;

    .line 41
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v2, "it.media"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/u/i;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_e

    .line 43
    :cond_17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 45
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->n()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 46
    :cond_19
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_1a

    goto :goto_10

    :cond_1a
    const/4 p1, 0x0

    :goto_10
    if-eqz p1, :cond_1b

    .line 47
    invoke-virtual {p0, p1}, Le/a/a/c/c/r;->Ij(Ljava/util/List;)V

    .line 48
    :cond_1b
    iget-object p1, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 49
    iget-object p1, p1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->c:Ljava/util/List;

    .line 50
    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/a/c/c/r;->Jj(Ljava/util/List;)V

    return-void
.end method

.method public Z()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget v0, p0, Le/a/a/c/c/r;->i:I

    .line 3
    iget-object v1, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-boolean v0, p0, Le/a/a/c/c/r;->e:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 5
    iget v1, p0, Le/a/a/c/c/r;->i:I

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/c/g;

    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/a/c/c/q;->m1()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Le/a/a/c/c/g;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 8
    iget v1, p0, Le/a/a/c/c/r;->i:I

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/c/g;

    iget-object v1, p0, Le/a/a/c/c/r;->z:Le/a/a/c/o8/g;

    invoke-interface {v1}, Le/a/a/c/o8/g;->Ti()[Lcom/truecaller/messaging/data/types/Mention;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/a/c/c/g;->b([Lcom/truecaller/messaging/data/types/Mention;)V

    .line 10
    iget-object v0, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    invoke-static {v0}, Le/a/c/p/a;->m1(Lcom/truecaller/messaging/conversation/draft/DraftArguments;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    const-string v1, "$this$isScheduled"

    .line 11
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 13
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 14
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Draft;

    .line 15
    iget v1, v1, Lcom/truecaller/messaging/data/types/Draft;->r:I

    const/16 v5, 0x81

    if-ne v1, v5, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_4

    :cond_6
    :goto_3
    move v3, v4

    :goto_4
    if-eqz v3, :cond_7

    .line 16
    new-instance v7, Le/a/a/c/c/s;

    invoke-direct {v7, p0, v2}, Le/a/a/c/c/s;-><init>(Le/a/a/c/c/r;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_5

    .line 17
    :cond_7
    invoke-virtual {p0}, Le/a/a/c/c/r;->Sj()V

    :cond_8
    :goto_5
    return-void
.end method

.method public Z6(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/a/c/c/r;->Pj(ZZ)V

    return-void
.end method

.method public ac(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uris"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Landroid/net/Uri;

    .line 4
    new-instance v2, Lcom/truecaller/messaging/conversation/draft/DraftUri;

    sget-object v3, Lcom/truecaller/messaging/conversation/draft/UriTypeHint;->UNKNOWN:Lcom/truecaller/messaging/conversation/draft/UriTypeHint;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/truecaller/messaging/conversation/draft/DraftUri;-><init>(Landroid/net/Uri;Lcom/truecaller/messaging/conversation/draft/UriTypeHint;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Le/a/a/c/c/r;->Jj(Ljava/util/List;)V

    return-void
.end method

.method public b1(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    const-string p2, "uri"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "releaseCallback"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_0

    const p2, 0x7f120dfd

    invoke-interface {p1, p2}, Le/a/a/c/c/q;->a(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/c/g;

    .line 3
    iget-object v2, p0, Le/a/a/c/c/r;->r:Le/a/o5/u1;

    .line 4
    iget-object v1, v1, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 5
    invoke-interface {v2, v1}, Le/a/o5/u1;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/a/c/c/r;->h:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/a/c/c/r;->r:Le/a/o5/u1;

    invoke-interface {v1, v0}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    .line 7
    :cond_1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public fa()V
    .locals 3

    .line 1
    iget v0, p0, Le/a/a/c/c/r;->i:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Le/a/a/c/c/r;->Vj(IZ)V

    .line 3
    iget v0, p0, Le/a/a/c/c/r;->i:I

    if-lez v0, :cond_0

    .line 4
    sget-object v1, Lcom/truecaller/messaging/mediaviewer/MediaPosition;->PREVIOUS:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    iget-object v2, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/c/g;

    invoke-virtual {p0, v1, v0}, Le/a/a/c/c/r;->Uj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/c/c/g;)V

    :cond_0
    return-void
.end method

.method public ga(Landroid/net/Uri;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/truecaller/messaging/conversation/draft/DraftUri;

    sget-object v1, Lcom/truecaller/messaging/conversation/draft/UriTypeHint;->VCARD:Lcom/truecaller/messaging/conversation/draft/UriTypeHint;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/truecaller/messaging/conversation/draft/DraftUri;-><init>(Landroid/net/Uri;Lcom/truecaller/messaging/conversation/draft/UriTypeHint;Z)V

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/a/c/c/r;->Jj(Ljava/util/List;)V

    return-void
.end method

.method public h()Lcom/truecaller/messaging/data/types/ImGroupInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/truecaller/messaging/data/types/Draft;

    .line 4
    iget-object v3, v3, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 5
    :goto_1
    check-cast v1, Lcom/truecaller/messaging/data/types/Draft;

    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    :cond_3
    return-object v2
.end method

.method public m()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Le/a/c/p/a;->i0(Le/a/a/c/c/q;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public m9(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0, v1}, Le/a/a/c/c/r;->Nj(Z)V

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Le/a/a/c/c/r;->i:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    invoke-static {v0}, Le/a/c/p/a;->m1(Lcom/truecaller/messaging/conversation/draft/DraftArguments;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Le/a/a/c/c/r;->Nj(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Le/a/a/c/c/r;->i:I

    if-ne p1, v0, :cond_8

    .line 5
    iget-boolean v0, p0, Le/a/a/c/c/r;->e:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Le/a/a/c/c/r;->r:Le/a/o5/u1;

    iget-object v3, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/c/c/g;

    .line 7
    iget-object v3, v3, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 8
    invoke-interface {v0, v3}, Le/a/o5/u1;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    .line 9
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Le/a/a/c/c/r;->i:I

    .line 11
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/a/c/c/q;->c0()V

    .line 12
    :cond_3
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v0

    if-gt p1, v0, :cond_4

    .line 13
    invoke-virtual {p0, p1, v1}, Le/a/a/c/c/r;->Vj(IZ)V

    goto :goto_0

    :cond_4
    if-lez p1, :cond_5

    sub-int/2addr p1, v1

    .line 14
    invoke-virtual {p0, p1, v1}, Le/a/a/c/c/r;->Vj(IZ)V

    goto :goto_0

    .line 15
    :cond_5
    iget-object p1, p0, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 16
    iget-object p1, p1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->a:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    .line 17
    sget-object v0, Lcom/truecaller/messaging/conversation/draft/DraftMode;->CAPTURE_PHOTO:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, v1}, Le/a/a/c/c/r;->Oj(Z)V

    goto :goto_0

    .line 18
    :cond_6
    sget-object v0, Lcom/truecaller/messaging/conversation/draft/DraftMode;->CAPTURE_VIDEO:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, v2}, Le/a/a/c/c/r;->Oj(Z)V

    goto :goto_0

    .line 19
    :cond_7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    invoke-static {p1, v2, v1, v0}, Le/a/c/p/a;->i0(Le/a/a/c/c/q;ZILjava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_8
    invoke-virtual {p0, p1, v1}, Le/a/a/c/c/r;->Vj(IZ)V

    :cond_9
    :goto_0
    return-void
.end method

.method public mh()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2
    iget v1, p0, Le/a/a/c/c/r;->i:I

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/c/g;

    .line 4
    iget-object v0, v0, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/a/c/c/q;->xb()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/a/c/c/r;->g:Z

    .line 2
    iget-object v1, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 3
    iget v2, p0, Le/a/a/c/c/r;->i:I

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    if-le v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v2, v0}, Le/a/a/c/c/r;->Vj(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/c/c/q;->n3()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/a/c/c/r;->g:Z

    return-void
.end method

.method public pc(ZZ)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Le/a/a/c/c/r;->f:Z

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_0

    const v0, 0x7f080534

    invoke-interface {p1, v0}, Le/a/a/c/c/q;->z2(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Le/a/a/c/c/q;->r2(Z)V

    :cond_1
    if-eqz p2, :cond_4

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Le/a/a/c/c/q;->If(Z)V

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/a/c/c/q;->oj()V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_4

    const p2, 0x7f080535

    invoke-interface {p1, p2}, Le/a/a/c/c/q;->z2(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public pf()V
    .locals 3

    .line 1
    iget v0, p0, Le/a/a/c/c/r;->i:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Le/a/a/c/c/r;->Vj(IZ)V

    .line 3
    iget v0, p0, Le/a/a/c/c/r;->i:I

    .line 4
    iget-object v1, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-static {v1}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/truecaller/messaging/mediaviewer/MediaPosition;->NEXT:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    iget-object v1, p0, Le/a/a/c/c/r;->d:Ljava/util/List;

    .line 5
    iget v2, p0, Le/a/a/c/c/r;->i:I

    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/c/g;

    invoke-virtual {p0, v0, v1}, Le/a/a/c/c/r;->Uj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/c/c/g;)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->q:Le/a/a/i0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/a/i0;->U3(Z)V

    .line 2
    invoke-virtual {p0}, Le/a/a/c/c/r;->Sj()V

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/c/r;->q:Le/a/a/i0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/i0;->U3(Z)V

    .line 2
    invoke-virtual {p0}, Le/a/a/c/c/r;->Sj()V

    return-void
.end method
