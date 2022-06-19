.class public final synthetic Le/a/e/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/l0;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/details/DetailsActionBar;

.field public final synthetic b:Lcom/truecaller/data/entity/Contact;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Le/a/e/c/r1;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/details/DetailsActionBar;Lcom/truecaller/data/entity/Contact;ZZZZLe/a/e/c/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/k;->a:Lcom/truecaller/ui/details/DetailsActionBar;

    iput-object p2, p0, Le/a/e/c/k;->b:Lcom/truecaller/data/entity/Contact;

    iput-boolean p3, p0, Le/a/e/c/k;->c:Z

    iput-boolean p4, p0, Le/a/e/c/k;->d:Z

    iput-boolean p5, p0, Le/a/e/c/k;->e:Z

    iput-boolean p6, p0, Le/a/e/c/k;->f:Z

    iput-object p7, p0, Le/a/e/c/k;->g:Le/a/e/c/r1;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 13

    iget-object v0, p0, Le/a/e/c/k;->a:Lcom/truecaller/ui/details/DetailsActionBar;

    iget-object v1, p0, Le/a/e/c/k;->b:Lcom/truecaller/data/entity/Contact;

    iget-boolean v2, p0, Le/a/e/c/k;->c:Z

    iget-boolean v3, p0, Le/a/e/c/k;->d:Z

    iget-boolean v4, p0, Le/a/e/c/k;->e:Z

    iget-boolean v5, p0, Le/a/e/c/k;->f:Z

    iget-object v6, p0, Le/a/e/c/k;->g:Le/a/e/c/r1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    .line 4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v8

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v9

    .line 7
    :goto_1
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    move v2, v9

    goto :goto_2

    :cond_3
    move v2, v8

    :goto_2
    if-eqz p1, :cond_4

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    const/4 p1, 0x6

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_4
    invoke-static {}, Le/a/j4/b/a/h;->s()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, v0, Lcom/truecaller/ui/details/DetailsActionBar;->p:Z

    if-nez p1, :cond_7

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v3, v8

    :goto_3
    if-ge v3, p1, :cond_6

    .line 11
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/data/entity/Number;

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 12
    iget-object v10, v0, Lcom/truecaller/ui/details/DetailsActionBar;->i:Le/a/y/c/b;

    const-string v11, "+"

    const-string v12, ""

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Le/a/y/c/b;->b(Ljava/lang/String;)Le/a/y/g/d;

    move-result-object v4

    .line 13
    iget-boolean v4, v4, Le/a/y/g/d;->c:Z

    if-eqz v4, :cond_5

    move p1, v9

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move p1, v8

    :goto_4
    if-eqz p1, :cond_7

    const/4 p1, 0x2

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v2, :cond_9

    if-eqz v5, :cond_8

    const/4 p1, 0x5

    goto :goto_5

    :cond_8
    const/4 p1, 0x4

    .line 15
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_9
    iget-object p1, v0, Lcom/truecaller/ui/details/DetailsActionBar;->f:Le/a/e/c/r1;

    if-eqz p1, :cond_a

    .line 17
    iget p1, p1, Le/a/e/c/r1;->a:I

    iget v1, v6, Le/a/e/c/r1;->a:I

    if-eq p1, v1, :cond_a

    move v8, v9

    .line 18
    :cond_a
    iput-object v6, v0, Lcom/truecaller/ui/details/DetailsActionBar;->f:Le/a/e/c/r1;

    .line 19
    invoke-virtual {v0, v7, v8}, Lcom/truecaller/ui/details/DetailsActionBar;->e(Ljava/util/List;Z)V

    return-void
.end method
