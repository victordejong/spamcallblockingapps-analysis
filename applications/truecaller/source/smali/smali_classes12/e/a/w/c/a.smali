.class public Le/a/w/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/q4/f0;

.field public final b:Ljava/lang/String;

.field public final c:Le/a/w/b/b;

.field public final d:Le/a/u3/g;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Le/m/f/a/j;

.field public final g:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Le/a/w/b/b;Le/a/q4/f0;Ljava/lang/String;Le/m/f/a/j;Le/a/l/p2/v0;Le/a/u3/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/w/c/a;->e:Ljava/util/List;

    .line 3
    iput-object p1, p0, Le/a/w/c/a;->c:Le/a/w/b/b;

    .line 4
    iput-object p2, p0, Le/a/w/c/a;->a:Le/a/q4/f0;

    .line 5
    iput-object p3, p0, Le/a/w/c/a;->b:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Le/a/w/c/a;->f:Le/m/f/a/j;

    .line 7
    iput-object p5, p0, Le/a/w/c/a;->g:Le/a/l/p2/v0;

    .line 8
    iput-object p6, p0, Le/a/w/c/a;->d:Le/a/u3/g;

    const-string p2, "smsReferralSentTo"

    .line 9
    invoke-interface {p1, p2}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, ","

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w/c/a;->f:Le/m/f/a/j;

    invoke-virtual {v0, p1}, Le/m/f/a/j;->o(Ljava/lang/String;)I

    move-result p1

    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "+%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Number;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Number;

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Le/a/w/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Le/a/w/c/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w/c/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/w/c/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/w/c/a;->b:Ljava/lang/String;

    invoke-static {p2, v1}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Le/a/w/c/a;->f:Le/m/f/a/j;

    invoke-virtual {v1, p1, p2}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object p1

    .line 3
    iget-object p2, p0, Le/a/w/c/a;->f:Le/m/f/a/j;

    invoke-virtual {p2, p1}, Le/m/f/a/j;->w(Le/m/f/a/o;)Le/m/f/a/j$d;

    move-result-object p1

    .line 4
    sget-object p2, Le/m/f/a/j$d;->b:Le/m/f/a/j$d;

    if-eq p1, p2, :cond_0

    sget-object p2, Le/m/f/a/j$d;->c:Le/m/f/a/j$d;
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public e(Lcom/truecaller/data/entity/Contact;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/w/c/a;->d:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->g6:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x178

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/w/c/a;->c:Le/a/w/b/b;

    const/4 v1, 0x0

    const-string v2, "referralLink"

    .line 4
    invoke-interface {v0, v2, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->B0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/w/c/a;->g:Le/a/l/p2/v0;

    .line 7
    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Le/a/w/c/a;->b(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Number;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/w/c/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/w/c/a;->b:Ljava/lang/String;

    invoke-static {p2, v0}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Le/a/w/c/a;->d:Le/a/u3/g;

    .line 4
    iget-object p2, p1, Le/a/u3/g;->g6:Le/a/u3/g$a;

    sget-object v0, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v1, 0x178

    aget-object v0, v0, v1

    invoke-virtual {p2, p1, v0}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
