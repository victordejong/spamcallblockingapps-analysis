.class public Le/a/o5/i1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public final synthetic f:Le/a/o5/i1;


# direct methods
.method public constructor <init>(Le/a/o5/i1;Le/a/o5/i1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/o5/i1$b;->f:Le/a/o5/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/o5/i1$b;->a:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/o5/i1$b;->b:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/o5/i1$b;->c:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/o5/i1$b;->d:Ljava/util/List;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Le/a/o5/i1$b;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/o5/i1$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/o5/i1$b;->f:Le/a/o5/i1;

    .line 3
    iget-object v0, v0, Le/a/o5/i1;->b:Le/a/k3/j/j;

    .line 4
    iget-object v1, p0, Le/a/o5/i1$b;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/k3/j/j;->k(Ljava/util/List;)V

    .line 5
    iget v0, p0, Le/a/o5/i1$b;->e:I

    iget-object v1, p0, Le/a/o5/i1$b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Le/a/o5/i1$b;->e:I

    .line 6
    iget-object v0, p0, Le/a/o5/i1$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    :goto_0
    iget-object v0, p0, Le/a/o5/i1$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/o5/i1$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/o5/i1$b;->f:Le/a/o5/i1;

    .line 9
    iget-object v0, v0, Le/a/o5/i1;->b:Le/a/k3/j/j;

    .line 10
    iget-object v1, p0, Le/a/o5/i1$b;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Le/a/o5/i1$b;->c:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v3, v5}, Le/a/k3/j/j;->e(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v5, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/data/entity/Contact;

    const/4 v7, 0x1

    add-int/2addr v5, v7

    .line 17
    rem-int/lit8 v8, v5, 0x5

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    invoke-virtual {v0, v3, v4, v6, v7}, Le/a/k3/j/j;->j(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/entity/Contact;Z)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {v0, v3, v4}, Le/a/k3/j/f;->a(Ljava/util/ArrayList;Ljava/util/List;)Z

    .line 19
    iget-object v0, p0, Le/a/o5/i1$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/Contact;

    .line 20
    invoke-virtual {v1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 21
    iget-object v2, p0, Le/a/o5/i1$b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 22
    :cond_6
    iget v0, p0, Le/a/o5/i1$b;->e:I

    iget-object v1, p0, Le/a/o5/i1$b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Le/a/o5/i1$b;->e:I

    .line 23
    iget-object v0, p0, Le/a/o5/i1$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    iget-object v0, p0, Le/a/o5/i1$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_5
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o5/i1$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Le/a/o5/i1$b;->c:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Le/a/o5/i1$b;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/o5/i1$b;->a()V

    return-void
.end method
