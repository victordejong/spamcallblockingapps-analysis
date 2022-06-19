.class public final Le/a/v/a/o;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.details_view.ui.DetailsPresenter$onStart$1"
    f = "DetailsPresenter.kt"
    l = {
        0x83
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/v/a/q;

.field public final synthetic h:Lcom/truecaller/data/entity/Contact;

.field public final synthetic i:Lcom/truecaller/details_view/analytics/SourceType;

.field public final synthetic j:I


# direct methods
.method public constructor <init>(Le/a/v/a/q;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/o;->g:Le/a/v/a/q;

    iput-object p2, p0, Le/a/v/a/o;->h:Lcom/truecaller/data/entity/Contact;

    iput-object p3, p0, Le/a/v/a/o;->i:Lcom/truecaller/details_view/analytics/SourceType;

    iput p4, p0, Le/a/v/a/o;->j:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/a/o;

    iget-object v1, p0, Le/a/v/a/o;->g:Le/a/v/a/q;

    iget-object v2, p0, Le/a/v/a/o;->h:Lcom/truecaller/data/entity/Contact;

    iget-object v3, p0, Le/a/v/a/o;->i:Lcom/truecaller/details_view/analytics/SourceType;

    iget v4, p0, Le/a/v/a/o;->j:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/v/a/o;-><init>(Le/a/v/a/q;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/v/a/o;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/v/a/o;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/a/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v/a/o;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/v/a/o;->e:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/q;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/v/a/o;->g:Le/a/v/a/q;

    .line 5
    iget-object v1, p1, Le/a/v/a/q;->s:Le/a/v/a/t;

    .line 6
    iget-object v3, p0, Le/a/v/a/o;->h:Lcom/truecaller/data/entity/Contact;

    iput-object p1, p0, Le/a/v/a/o;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/v/a/o;->f:I

    check-cast v1, Le/a/v/a/u;

    invoke-virtual {v1, v3, p0}, Le/a/v/a/u;->c(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Le/a/v/a/s;

    .line 7
    iput-object p1, v0, Le/a/v/a/q;->d:Le/a/v/a/s;

    .line 8
    iget-object p1, p0, Le/a/v/a/o;->g:Le/a/v/a/q;

    .line 9
    iget-object v0, p1, Le/a/v/a/q;->y:Le/a/v/a/z/a;

    .line 10
    iget-object v1, p0, Le/a/v/a/o;->h:Lcom/truecaller/data/entity/Contact;

    .line 11
    iget-object p1, p1, Le/a/v/a/q;->d:Le/a/v/a/s;

    const-string v3, "detailsViewModel"

    const/4 v4, 0x0

    if-eqz p1, :cond_e

    .line 12
    iget-object p1, p1, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 13
    iget-object v5, p0, Le/a/v/a/o;->i:Lcom/truecaller/details_view/analytics/SourceType;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "contact"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "contactType"

    invoke-static {p1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "sourceType"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of v6, p1, Le/a/v/a/d$f$d;

    if-eqz v6, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    instance-of v6, p1, Le/a/v/a/d$g;

    if-eqz v6, :cond_4

    :goto_1
    const-string p1, "verified_business"

    goto :goto_2

    .line 17
    :cond_4
    instance-of p1, p1, Le/a/v/a/d$d;

    if-eqz p1, :cond_6

    const-string p1, "priority"

    .line 18
    :goto_2
    invoke-static {}, Le/a/l5/a/o;->a()Le/a/l5/a/o$b;

    move-result-object v6

    .line 19
    invoke-virtual {v6, p1}, Le/a/l5/a/o$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/o$b;

    const-string p1, "detailView"

    .line 20
    invoke-virtual {v6, p1}, Le/a/l5/a/o$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/o$b;

    .line 21
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p1

    const-string v1, "contact.numbers"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Number;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v4

    :goto_3
    invoke-virtual {v6, p1}, Le/a/l5/a/o$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/o$b;

    .line 22
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v6}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v5, 0x5

    aget-object v1, v1, v5

    invoke-virtual {v6, v1, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 24
    iput-object p1, v6, Le/a/l5/a/o$b;->d:Ljava/lang/CharSequence;

    .line 25
    invoke-virtual {v6}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v2, p1, v5

    .line 26
    invoke-virtual {v6}, Le/a/l5/a/o$b;->a()Le/a/l5/a/o;

    move-result-object p1

    const-string v1, "AppBusinessImpression.ne\u2026ame)\n            .build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, v0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {p1, v0}, Le/m/d/y/n;->C0(Lorg/apache/avro/generic/GenericRecord;Le/a/q2/a;)V

    .line 28
    :cond_6
    iget-object p1, p0, Le/a/v/a/o;->g:Le/a/v/a/q;

    .line 29
    iget-object v0, p1, Le/a/v/a/q;->t:Le/a/v/p/l;

    .line 30
    iget v1, p0, Le/a/v/a/o;->j:I

    .line 31
    iget-object p1, p1, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz p1, :cond_d

    const/4 v2, 0x0

    .line 32
    invoke-interface {v0, v1, p1, v2}, Le/a/v/p/l;->a(ILe/a/v/a/s;Z)V

    .line 33
    iget-object p1, p0, Le/a/v/a/o;->g:Le/a/v/a/q;

    .line 34
    invoke-virtual {p1}, Le/a/v/a/q;->Kj()V

    .line 35
    iget-object p1, p0, Le/a/v/a/o;->g:Le/a/v/a/q;

    .line 36
    iget-object v0, p1, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v0, :cond_c

    .line 37
    iget-object v0, v0, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 38
    iget-object v1, p1, Le/a/v/a/q;->D:Le/a/v/p/d;

    invoke-interface {v1, v0}, Le/a/v/p/d;->e(Lcom/truecaller/data/entity/Contact;)Ljava/lang/Long;

    move-result-object v1

    .line 39
    iget-object v3, p1, Le/a/v/a/q;->e:Ljava/lang/Integer;

    .line 40
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/truecaller/whoviewedme/ProfileViewSource;->CONTACT_DETAIL_PB:Lcom/truecaller/whoviewedme/ProfileViewSource;

    goto :goto_4

    :cond_7
    sget-object v4, Lcom/truecaller/whoviewedme/ProfileViewSource;->CONTACT_DETAIL:Lcom/truecaller/whoviewedme/ProfileViewSource;

    :goto_4
    move-object v10, v4

    if-nez v1, :cond_8

    const-string p1, "aggregatedContactId equals null"

    .line 41
    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    if-nez v3, :cond_9

    const-string p1, "searchType equals null"

    .line 42
    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    goto :goto_5

    .line 43
    :cond_9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Le/a/v/a/g;

    if-eqz v5, :cond_a

    .line 44
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 45
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v8

    .line 46
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 47
    invoke-interface/range {v5 .. v10}, Le/a/v/a/g;->j(JZILcom/truecaller/whoviewedme/ProfileViewSource;)V

    .line 48
    :cond_a
    :goto_5
    iget-object p1, p0, Le/a/v/a/o;->g:Le/a/v/a/q;

    .line 49
    iget-object v0, p1, Le/a/v/a/q;->o:Landroid/content/ContentResolver;

    .line 50
    iget-object v1, p1, Le/a/v/a/q;->p:Landroid/net/Uri;

    .line 51
    iget-object p1, p1, Le/a/v/a/q;->g:Le/a/v/a/h;

    .line 52
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    iget-object p1, p0, Le/a/v/a/o;->g:Le/a/v/a/q;

    .line 54
    iget-object v0, p1, Le/a/v/a/q;->o:Landroid/content/ContentResolver;

    .line 55
    iget-object v1, p1, Le/a/v/a/q;->J:Landroid/net/Uri;

    .line 56
    iget-object p1, p1, Le/a/v/a/q;->h:Le/a/v/a/j;

    .line 57
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    iget-object p1, p0, Le/a/v/a/o;->g:Le/a/v/a/q;

    .line 59
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/g;

    if-eqz p1, :cond_b

    .line 60
    invoke-interface {p1}, Le/a/v/a/g;->u()V

    .line 61
    :cond_b
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 62
    :cond_c
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_d
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 64
    :cond_e
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method
