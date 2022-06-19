.class public final Le/a/t3/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t3/c/g;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Le/a/t3/c/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "+",
            "Le/a/t3/c/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/b/f;


# direct methods
.method public constructor <init>(Lo3/a;Le/a/c/b/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "+",
            "Le/a/t3/c/g$a;",
            ">;",
            "Le/a/c/b/f;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsFeatureControl"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/t3/c/k;->b:Lo3/a;

    iput-object p2, p0, Le/a/t3/c/k;->c:Le/a/c/b/f;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 6

    .line 1
    check-cast p1, Le/a/t3/c/f;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Le/a/t3/c/f;->Y()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "null cannot be cast to non-null type com.truecaller.feature_toggles.control_panel.FeatureItem.FirebaseStringFeatureItem"

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    .line 5
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/t3/c/e;

    .line 6
    instance-of v3, v3, Le/a/t3/c/e$c;

    if-nez v3, :cond_1

    .line 7
    iget-object v3, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    .line 8
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/t3/c/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 9
    iget-object v4, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    add-int/lit8 v5, p2, -0x1

    .line 10
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/t3/c/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v0

    goto :goto_1

    .line 11
    :cond_1
    iget-object v3, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    .line 12
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/t3/c/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 13
    iget-object v4, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    add-int/lit8 v5, p2, -0x1

    .line 14
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/t3/c/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v0

    if-nez v3, :cond_3

    .line 15
    iget-object v3, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    .line 16
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Le/a/t3/c/e$c;

    .line 17
    iget-object v3, v3, Le/a/t3/c/e$c;->d:Ljava/lang/String;

    .line 18
    iget-object v4, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    .line 19
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Le/a/t3/c/e$c;

    .line 20
    iget-object v4, v4, Le/a/t3/c/e$c;->d:Ljava/lang/String;

    .line 21
    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v0

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v0

    .line 22
    :goto_1
    instance-of v4, p1, Le/a/t3/c/t;

    if-eqz v4, :cond_4

    .line 23
    check-cast p1, Le/a/t3/c/t;

    .line 24
    iget-object v0, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    .line 25
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/t3/c/e$c;

    .line 26
    iget-object v0, p2, Le/a/t3/c/e$c;->b:Ljava/lang/String;

    .line 27
    invoke-interface {p1, v0}, Le/a/t3/c/t;->setTitle(Ljava/lang/String;)V

    .line 28
    iget-object v0, p2, Le/a/t3/c/e$c;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    .line 29
    invoke-virtual {v0}, Lcom/truecaller/featuretoggles/FeatureKey;->getJiraTicket()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/t3/c/t;->d(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firebase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v2, p2, Le/a/t3/c/e$c;->d:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v2, p2, Le/a/t3/c/e$c;->c:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/t3/c/t;->p4(Ljava/lang/String;)V

    .line 35
    new-instance v0, Le/a/t3/c/j;

    invoke-direct {v0, p2, p0, p1}, Le/a/t3/c/j;-><init>(Le/a/t3/c/e$c;Le/a/t3/c/k;Le/a/t3/c/t;)V

    invoke-interface {p1, v0}, Le/a/t3/c/t;->j0(Ls1/z/b/a;)V

    if-eqz v3, :cond_8

    .line 36
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    iget-object p2, p2, Le/a/t3/c/e$c;->d:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " features"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/e/z0$a;->n(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 39
    :cond_4
    instance-of v2, p1, Le/a/t3/c/r;

    if-eqz v2, :cond_5

    .line 40
    check-cast p1, Le/a/t3/c/r;

    .line 41
    iget-object v0, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    .line 42
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.truecaller.feature_toggles.control_panel.FeatureItem.FirebaseBooleanFeatureItem"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/t3/c/e$b;

    .line 43
    iget-object v0, p2, Le/a/t3/c/e$b;->b:Ljava/lang/String;

    .line 44
    invoke-interface {p1, v0}, Le/a/t3/c/r;->setTitle(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    iget-object v1, p2, Le/a/t3/c/e$b;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    .line 47
    invoke-virtual {v1}, Lcom/truecaller/featuretoggles/FeatureKey;->getJiraTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nFirebase boolean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/t3/c/r;->d(Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p2, Le/a/t3/c/e$b;->c:Z

    .line 49
    invoke-interface {p1, v0}, Le/a/t3/c/r;->Q(Z)V

    .line 50
    new-instance v0, Le/a/t3/c/i;

    invoke-direct {v0, p2, p0, p1}, Le/a/t3/c/i;-><init>(Le/a/t3/c/e$b;Le/a/t3/c/k;Le/a/t3/c/r;)V

    invoke-interface {p1, v0}, Le/a/t3/c/r;->D(Ls1/z/b/l;)V

    if-eqz v3, :cond_8

    const-string p2, "Firebase boolean features"

    .line 51
    invoke-interface {p1, p2}, Le/a/e/z0$a;->n(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 52
    :cond_5
    instance-of v2, p1, Le/a/t3/c/b;

    if-eqz v2, :cond_6

    .line 53
    check-cast p1, Le/a/t3/c/b;

    .line 54
    iget-object v0, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    .line 55
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.truecaller.feature_toggles.control_panel.FeatureItem.BuildTimeFeatureItem"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/t3/c/e$a;

    .line 56
    iget-object v0, p2, Le/a/t3/c/e$a;->b:Ljava/lang/String;

    .line 57
    invoke-interface {p1, v0}, Le/a/t3/c/b;->setTitle(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget-object v1, p2, Le/a/t3/c/e$a;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    .line 60
    invoke-virtual {v1}, Lcom/truecaller/featuretoggles/FeatureKey;->getJiraTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nLocal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/t3/c/b;->d(Ljava/lang/String;)V

    .line 61
    iget-boolean v0, p2, Le/a/t3/c/e$a;->c:Z

    .line 62
    invoke-interface {p1, v0}, Le/a/t3/c/b;->Q(Z)V

    .line 63
    new-instance v0, Le/a/t3/c/h;

    invoke-direct {v0, p2, p0, p1}, Le/a/t3/c/h;-><init>(Le/a/t3/c/e$a;Le/a/t3/c/k;Le/a/t3/c/b;)V

    invoke-interface {p1, v0}, Le/a/t3/c/b;->D(Ls1/z/b/l;)V

    if-eqz v3, :cond_8

    const-string p2, "Local features"

    .line 64
    invoke-interface {p1, p2}, Le/a/e/z0$a;->n(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 65
    :cond_6
    instance-of v2, p1, Le/a/t3/c/v;

    if-eqz v2, :cond_8

    .line 66
    check-cast p1, Le/a/t3/c/v;

    .line 67
    iget-object v2, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    .line 68
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type com.truecaller.feature_toggles.control_panel.FeatureItem.RemoteFeatureItem"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/t3/c/e$d;

    .line 69
    iget-object v2, p2, Le/a/t3/c/e$d;->b:Ljava/lang/String;

    .line 70
    invoke-interface {p1, v2}, Le/a/t3/c/v;->setTitle(Ljava/lang/String;)V

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    iget-object v4, p2, Le/a/t3/c/e$d;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    .line 73
    invoke-virtual {v4}, Lcom/truecaller/featuretoggles/FeatureKey;->getJiraTicket()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v4, p2, Le/a/t3/c/e$d;->c:Ljava/lang/String;

    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")\n\nRemote"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Le/a/t3/c/v;->d(Ljava/lang/String;)V

    .line 76
    iget-boolean v2, p2, Le/a/t3/c/e$d;->d:Z

    .line 77
    invoke-interface {p1, v2}, Le/a/t3/c/v;->O2(Z)V

    .line 78
    iget-boolean v2, p2, Le/a/t3/c/e$d;->e:Z

    .line 79
    invoke-interface {p1, v2}, Le/a/t3/c/v;->B4(Z)V

    .line 80
    iget-object v2, p0, Le/a/t3/c/k;->c:Le/a/c/b/f;

    .line 81
    iget-object v4, p2, Le/a/t3/c/e$d;->c:Ljava/lang/String;

    .line 82
    invoke-interface {v2, v4}, Le/a/c/b/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 83
    invoke-interface {p1, v1}, Le/a/t3/c/v;->l2(I)V

    .line 84
    iget-object v2, p0, Le/a/t3/c/k;->c:Le/a/c/b/f;

    .line 85
    iget-object v4, p2, Le/a/t3/c/e$d;->c:Ljava/lang/String;

    .line 86
    invoke-interface {v2, v4}, Le/a/c/b/f;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p1, v2}, Le/a/t3/c/v;->z1(Z)V

    .line 87
    new-instance v2, Ls2;

    invoke-direct {v2, v1, p2, p0, p1}, Ls2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Le/a/t3/c/v;->R0(Ls1/z/b/l;)V

    goto :goto_2

    :cond_7
    const/16 v1, 0x8

    .line 88
    invoke-interface {p1, v1}, Le/a/t3/c/v;->l2(I)V

    .line 89
    :goto_2
    new-instance v1, Ls2;

    invoke-direct {v1, v0, p2, p0, p1}, Ls2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Le/a/t3/c/v;->d4(Ls1/z/b/l;)V

    .line 90
    new-instance v0, Ls2;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2, p0, p1}, Ls2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Le/a/t3/c/v;->n3(Ls1/z/b/l;)V

    .line 91
    iget-boolean p2, p2, Le/a/t3/c/e$d;->f:Z

    .line 92
    invoke-interface {p1, p2}, Le/a/t3/c/v;->Z1(Z)V

    if-eqz v3, :cond_8

    const-string p2, "Remote features"

    .line 93
    invoke-interface {p1, p2}, Le/a/e/z0$a;->n(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public Kb()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public Za(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t3/c/e;

    .line 3
    instance-of v0, p1, Le/a/t3/c/e$d;

    if-eqz v0, :cond_0

    const p1, 0x7f0d0434

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Le/a/t3/c/e$c;

    if-eqz v0, :cond_1

    const p1, 0x7f0d0167

    goto :goto_0

    .line 5
    :cond_1
    instance-of p1, p1, Le/a/t3/c/e$b;

    if-eqz p1, :cond_2

    const p1, 0x7f0d0165

    goto :goto_0

    :cond_2
    const p1, 0x7f0d0162

    :goto_0
    return p1
.end method

.method public d9(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/t3/c/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/t3/c/k;->a:Ljava/util/List;

    return-void
.end method

.method public gc(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
