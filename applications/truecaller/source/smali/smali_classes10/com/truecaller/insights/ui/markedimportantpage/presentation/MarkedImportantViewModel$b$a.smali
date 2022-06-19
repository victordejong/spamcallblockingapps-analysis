.class public final Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b$a;->a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 2
    iget-object v1, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b$a;->a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;

    iget-object v3, v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    iget-boolean v4, v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->h:Z

    iget-object v5, v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->i:Ljava/util/List;

    iget-object v1, v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->g:Ljava/util/List;

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    if-nez v4, :cond_7

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Le/a/c/a/l/b$c;

    .line 6
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v6

    if-eqz v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v5, v3, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->a:Le/a/c/a/k/c/b;

    .line 8
    iget-object v5, v5, Le/a/c/a/k/c/b;->a:Le/a/c/a/k/c/d;

    if-eqz v5, :cond_5

    .line 9
    iget-object v5, v5, Le/a/c/a/k/c/d;->a:Lcom/truecaller/insights/ui/models/AdapterItem$i;

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    .line 10
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v6

    if-eqz v8, :cond_2

    .line 11
    iget-object v7, v5, Lcom/truecaller/insights/ui/models/AdapterItem$i;->d:Le/a/c/a/c/g/c;

    :cond_2
    move-object v13, v7

    .line 12
    iget v9, v5, Lcom/truecaller/insights/ui/models/AdapterItem$i;->a:I

    iget-object v10, v5, Lcom/truecaller/insights/ui/models/AdapterItem$i;->b:Ljava/lang/Integer;

    .line 13
    iget-wide v11, v5, Lcom/truecaller/insights/ui/models/AdapterItem$i;->c:J

    .line 14
    iget-object v14, v5, Lcom/truecaller/insights/ui/models/AdapterItem$i;->e:Le/a/c/a/c/g/b;

    iget-object v15, v5, Lcom/truecaller/insights/ui/models/AdapterItem$i;->f:Ljava/lang/Integer;

    iget-object v5, v5, Lcom/truecaller/insights/ui/models/AdapterItem$i;->g:Ljava/lang/Integer;

    .line 15
    new-instance v7, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    move-object v8, v7

    move-object/from16 v16, v5

    invoke-direct/range {v8 .. v16}, Lcom/truecaller/insights/ui/models/AdapterItem$i;-><init>(ILjava/lang/Integer;JLe/a/c/a/c/g/c;Le/a/c/a/c/g/b;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 16
    :cond_3
    iget-object v5, v3, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->a:Le/a/c/a/k/c/b;

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 19
    check-cast v10, Le/a/c/a/l/b$c;

    .line 20
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v9, "markImpValueItems"

    .line 21
    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Le/a/c/a/k/c/d;

    invoke-direct {v9, v7, v8}, Le/a/c/a/k/c/d;-><init>(Lcom/truecaller/insights/ui/models/AdapterItem$i;Ljava/util/List;)V

    .line 22
    iput-object v9, v5, Le/a/c/a/k/c/b;->a:Le/a/c/a/k/c/d;

    .line 23
    :cond_5
    invoke-virtual {v3}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->d()V

    .line 24
    iget-object v3, v3, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->c:Ln3/v/k0;

    const/4 v5, 0x2

    new-array v5, v5, [Le/a/c/a/k/c/c;

    .line 25
    new-instance v7, Le/a/c/a/k/c/c$b;

    invoke-direct {v7, v1}, Le/a/c/a/k/c/c$b;-><init>(Ljava/util/List;)V

    aput-object v7, v5, v2

    .line 26
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_6

    .line 27
    new-instance v1, Le/a/c/a/k/c/c$c;

    invoke-direct {v1, v2}, Le/a/c/a/k/c/c$c;-><init>(Z)V

    goto :goto_2

    .line 28
    :cond_6
    new-instance v1, Le/a/c/a/k/c/c$c;

    invoke-direct {v1, v6}, Le/a/c/a/k/c/c$c;-><init>(Z)V

    :goto_2
    aput-object v1, v5, v6

    .line 29
    invoke-static {v5}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 30
    invoke-virtual {v3, v1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    goto :goto_3

    .line 31
    :cond_7
    invoke-virtual {v3}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->e()Lq3/a/p1;

    .line 32
    :goto_3
    iget-object v1, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b$a;->a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;

    iget-object v2, v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    iget-boolean v3, v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->h:Z

    iget-object v1, v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->g:Ljava/util/List;

    invoke-static {v2, v3, v1, v6}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->c(Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;ZLjava/util/List;Z)V

    goto :goto_4

    .line 33
    :cond_8
    iget-object v1, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b$a;->a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;

    iget-object v3, v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    iget-boolean v1, v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->h:Z

    .line 34
    iget-object v3, v3, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->c:Ln3/v/k0;

    .line 35
    new-instance v4, Le/a/c/a/k/c/c$a;

    invoke-direct {v4, v1}, Le/a/c/a/k/c/c$a;-><init>(Z)V

    const-string v1, "$this$toSet"

    .line 36
    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {v4}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 38
    invoke-virtual {v3, v1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 39
    iget-object v1, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b$a;->a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;

    iget-object v3, v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    iget-boolean v4, v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->h:Z

    iget-object v1, v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->g:Ljava/util/List;

    invoke-static {v3, v4, v1, v2}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->c(Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;ZLjava/util/List;Z)V

    .line 40
    :goto_4
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
