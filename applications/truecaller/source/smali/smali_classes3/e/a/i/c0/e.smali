.class public final Le/a/i/c0/e;
.super Le/a/i/c0/d;
.source "SourceFile"

# interfaces
.implements Le/a/i/c0/o/e;


# instance fields
.field public b:Le/a/r2/a;

.field public c:Le/a/r2/a;

.field public d:Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Ljava/lang/String;

.field public final h:Le/a/r2/j;

.field public final i:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/i/c0/k;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/p5/c0;

.field public final k:Le/a/i/c0/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/r2/j;Le/a/r2/f;Le/a/p5/c0;Le/a/i/c0/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/r2/j;",
            "Le/a/r2/f<",
            "Le/a/i/c0/k;",
            ">;",
            "Le/a/p5/c0;",
            "Le/a/i/c0/b;",
            ")V"
        }
    .end annotation

    const-string v0, "ui"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leadgenRestManagerRef"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leadgenPixelManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/i/c0/d;-><init>()V

    iput-object p1, p0, Le/a/i/c0/e;->g:Ljava/lang/String;

    iput-object p2, p0, Le/a/i/c0/e;->h:Le/a/r2/j;

    iput-object p3, p0, Le/a/i/c0/e;->i:Le/a/r2/f;

    iput-object p4, p0, Le/a/i/c0/e;->j:Le/a/p5/c0;

    iput-object p5, p0, Le/a/i/c0/e;->k:Le/a/i/c0/b;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/i/c0/e;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public Hj()V
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/i/c0/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 2
    iget-boolean v1, p0, Le/a/i/c0/e;->f:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/i/c0/n;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Le/a/i/c0/n;->finish()V

    .line 5
    :cond_0
    iget-object v1, p0, Le/a/i/c0/e;->b:Le/a/r2/a;

    if-nez v1, :cond_12

    iget-object v1, p0, Le/a/i/c0/e;->c:Le/a/r2/a;

    if-nez v1, :cond_12

    iget-boolean v1, p0, Le/a/i/c0/e;->f:Z

    if-nez v1, :cond_12

    .line 6
    iget-object v1, p0, Le/a/i/c0/e;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v5, v2

    move v6, v3

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 8
    invoke-virtual {p0, v7}, Le/a/i/c0/e;->Kj(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;)Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-static {v8}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v8, p0, Le/a/i/c0/e;->j:Le/a/p5/c0;

    const v9, 0x7f12032c

    new-array v10, v3, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 10
    :cond_2
    invoke-virtual {v7}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->g()Ljava/lang/String;

    move-result-object v9

    const-string v10, "email"

    invoke-static {v9, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 11
    sget-object v9, Le/a/i/c0/h;->a:Ljava/util/regex/Pattern;

    .line 12
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_3

    .line 13
    iget-object v8, p0, Le/a/i/c0/e;->j:Le/a/p5/c0;

    const v9, 0x7f12032b

    new-array v10, v3, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 14
    :cond_3
    invoke-virtual {v7}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->g()Ljava/lang/String;

    move-result-object v9

    const-string v10, "phone"

    invoke-static {v9, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x4

    const-string v10, " "

    const-string v11, ""

    .line 15
    invoke-static {v8, v10, v11, v3, v9}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v8

    move v9, v3

    .line 16
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 17
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_4

    move v9, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    move v9, v4

    :goto_2
    if-eqz v9, :cond_6

    .line 18
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_6

    move v8, v4

    goto :goto_3

    :cond_6
    move v8, v3

    :goto_3
    if-nez v8, :cond_7

    .line 19
    iget-object v8, p0, Le/a/i/c0/e;->j:Le/a/p5/c0;

    const v9, 0x7f12032d

    new-array v10, v3, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_7
    move-object v8, v2

    .line 20
    :goto_4
    iget-object v9, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v9, Le/a/i/c0/n;

    if-eqz v9, :cond_8

    .line 21
    invoke-interface {v9, v7, v8}, Le/a/i/c0/n;->F4(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Ljava/lang/String;)V

    :cond_8
    if-eqz v8, :cond_1

    if-nez v5, :cond_9

    move-object v5, v7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_a
    move-object v2, v5

    goto :goto_5

    :cond_b
    move v6, v3

    :goto_5
    if-eqz v2, :cond_c

    .line 22
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/i/c0/n;

    if-eqz v1, :cond_c

    .line 23
    invoke-interface {v1, v2}, Le/a/i/c0/n;->L5(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;)V

    :cond_c
    if-lez v6, :cond_d

    move v3, v4

    :cond_d
    if-eqz v3, :cond_e

    goto :goto_7

    .line 24
    :cond_e
    iget-object v1, p0, Le/a/i/c0/e;->i:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/c0/k;

    .line 25
    iget-object v2, p0, Le/a/i/c0/e;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_10

    const/16 v3, 0xa

    .line 26
    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Le/q/f/a/d/a;->Y1(I)I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_f

    move v3, v4

    .line 27
    :cond_f
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 28
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 29
    check-cast v3, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 30
    invoke-virtual {v3}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Le/a/i/c0/e;->Kj(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 31
    :cond_10
    sget-object v4, Ls1/u/t;->a:Ls1/u/t;

    .line 32
    :cond_11
    invoke-interface {v1, v0, v4}, Le/a/i/c0/k;->b(Ljava/lang/String;Ljava/util/Map;)Le/a/r2/x;

    move-result-object v0

    .line 33
    iget-object v1, p0, Le/a/i/c0/e;->h:Le/a/r2/j;

    new-instance v2, Le/a/i/c0/e$a;

    invoke-direct {v2, p0}, Le/a/i/c0/e$a;-><init>(Le/a/i/c0/e;)V

    new-instance v3, Le/a/i/c0/f;

    invoke-direct {v3, v2}, Le/a/i/c0/f;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, v1, v3}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object v0

    iput-object v0, p0, Le/a/i/c0/e;->c:Le/a/r2/a;

    .line 34
    invoke-virtual {p0}, Le/a/i/c0/e;->Lj()V

    :cond_12
    :goto_7
    return-void
.end method

.method public Ij(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "leadgen_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/i/c0/e;->g:Ljava/lang/String;

    const-string v0, "leadgen_dto"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    iput-object v0, p0, Le/a/i/c0/e;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    const-string v0, "leadgen_map"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Le/a/p5/s0/g;->N1(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Le/a/i/c0/e;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public Jj(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/c0/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/i/c0/e;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    if-eqz v1, :cond_0

    const-string v1, "leadgen_id"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/i/c0/e;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    const-string v1, "leadgen_dto"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Le/a/i/c0/e;->e:Ljava/util/Map;

    invoke-static {v0}, Le/a/p5/s0/g;->J1(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "leadgen_map"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final Kj(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/i/c0/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->g()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x65b3d6e

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "phone"

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "+"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, p1, v1, v2, v3}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-static {p1, v0, v1, v2, v3}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final Lj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/i/c0/n;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/a/i/c0/e;->b:Le/a/r2/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Le/a/i/c0/e;->c:Le/a/r2/a;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Le/a/i/c0/n;->z4(Z)V

    :cond_2
    return-void
.end method

.method public final Mj()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/a/i/c0/e;->Lj()V

    .line 2
    iget-object v0, p0, Le/a/i/c0/e;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->a()Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->d()Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;

    move-result-object v2

    .line 5
    iget-boolean v3, p0, Le/a/i/c0/e;->f:Z

    if-eqz v3, :cond_5

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->a()Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_3

    .line 8
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/i/c0/n;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Le/a/i/c0/n;->d9(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/i/c0/n;

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0}, Le/a/i/c0/n;->C4()V

    .line 12
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/i/c0/n;

    if-eqz v0, :cond_a

    .line 13
    invoke-virtual {v1}, Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;->c()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v1}, Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;->b()Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object v4, p0, Le/a/i/c0/e;->j:Le/a/p5/c0;

    const v5, 0x7f120327

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resourceProvider.getString(R.string.LeadgenClose)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ""

    .line 16
    invoke-interface {v0, v2, v1, v4, v3}, Le/a/i/c0/n;->l9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 17
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/i/c0/n;

    if-eqz v0, :cond_6

    .line 18
    invoke-interface {v0}, Le/a/i/c0/n;->C4()V

    .line 19
    :cond_6
    iget-object v0, p0, Le/a/i/c0/e;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 21
    iget-object v4, p0, Le/a/i/c0/e;->e:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 22
    iget-object v4, p0, Le/a/i/c0/e;->e:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->h()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_8
    iget-object v4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/i/c0/n;

    if-eqz v4, :cond_7

    .line 24
    iget-object v5, p0, Le/a/i/c0/e;->e:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v3, p0, v5}, Le/a/i/c0/n;->E4(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Le/a/i/c0/o/e;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/i/c0/n;

    if-eqz v0, :cond_a

    .line 26
    invoke-virtual {v1}, Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v4, v1, v2}, Le/a/i/c0/n;->l9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public S(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/c0/e;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Le/a/i/c0/e;->c:Le/a/r2/a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/r2/a;->b()V

    .line 3
    :cond_0
    iput-object v0, p0, Le/a/i/c0/e;->c:Le/a/r2/a;

    .line 4
    iget-object v0, p0, Le/a/i/c0/e;->k:Le/a/i/c0/b;

    invoke-interface {v0}, Le/a/i/c0/b;->cancel()V

    return-void
.end method

.method public onCloseClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/i/c0/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/i/c0/n;->finish()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/i/c0/e;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/i/c0/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/i/c0/e;->i:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/c0/k;

    invoke-interface {v1, v0}, Le/a/i/c0/k;->a(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/i/c0/e;->h:Le/a/r2/j;

    new-instance v2, Le/a/i/c0/e$b;

    invoke-direct {v2, p0}, Le/a/i/c0/e$b;-><init>(Le/a/i/c0/e;)V

    new-instance v3, Le/a/i/c0/g;

    invoke-direct {v3, v2}, Le/a/i/c0/g;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, v1, v3}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object v0

    iput-object v0, p0, Le/a/i/c0/e;->b:Le/a/r2/a;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/i/c0/n;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Le/a/i/c0/n;->finish()V

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/a/i/c0/e;->Mj()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c0/e;->b:Le/a/r2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r2/a;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/i/c0/e;->b:Le/a/r2/a;

    return-void
.end method
