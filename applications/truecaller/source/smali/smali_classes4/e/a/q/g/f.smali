.class public final Le/a/q/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q/g/e;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q/g/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/q/g/f$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/q/g/f$a;

    iget v1, v0, Le/a/q/g/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/g/f$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/g/f$a;

    invoke-direct {v0, p0, p1}, Le/a/q/g/f$a;-><init>(Le/a/q/g/f;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/q/g/f$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/g/f$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    invoke-virtual {p0}, Le/a/q/g/f;->e()Le/a/q/g/c;

    move-result-object p1

    if-eqz p1, :cond_4

    iput v3, v0, Le/a/q/g/f$a;->e:I

    invoke-interface {p1, v0}, Le/a/q/g/c;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/q/g/f$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/q/g/f$b;

    iget v1, v0, Le/a/q/g/f$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/g/f$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/g/f$b;

    invoke-direct {v0, p0, p2}, Le/a/q/g/f$b;-><init>(Le/a/q/g/f;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/q/g/f$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/g/f$b;->e:I

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
    invoke-virtual {p0}, Le/a/q/g/f;->e()Le/a/q/g/c;

    move-result-object p2

    if-eqz p2, :cond_4

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Long;

    iput v3, v0, Le/a/q/g/f$b;->e:I

    .line 6
    invoke-interface {p2, p1, v0}, Le/a/q/g/c;->b([Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    return-object p2
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/db/CommentFeedback;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/q/g/f$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/q/g/f$c;

    iget v1, v0, Le/a/q/g/f$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/g/f$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/g/f$c;

    invoke-direct {v0, p0, p1}, Le/a/q/g/f$c;-><init>(Le/a/q/g/f;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/q/g/f$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/g/f$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    invoke-virtual {p0}, Le/a/q/g/f;->d()Le/a/q/g/a;

    move-result-object p1

    if-eqz p1, :cond_4

    iput v3, v0, Le/a/q/g/f$c;->e:I

    invoke-interface {p1, v0}, Le/a/q/g/a;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_2
    return-object p1
.end method

.method public final d()Le/a/q/g/a;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q/g/f;->a:Landroid/content/Context;

    const-string v1, "context"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;->a:Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    const-class v1, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    const-string v2, "contactFeedbackDb"

    .line 6
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ln3/c0/f0/a;

    const/4 v2, 0x0

    .line 7
    sget-object v3, Le/a/q/g/i;->a:Ln3/c0/f0/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 8
    sget-object v3, Le/a/q/g/i;->b:Ln3/c0/f0/a;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 9
    sget-object v3, Le/a/q/g/i;->c:Ln3/c0/f0/a;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 10
    sget-object v3, Le/a/q/g/i;->d:Ln3/c0/f0/a;

    aput-object v3, v1, v2

    .line 11
    invoke-virtual {v0, v1}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    .line 12
    invoke-virtual {v0}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 13
    invoke-virtual {v0}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v0

    check-cast v0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    .line 14
    sput-object v0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;->a:Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    .line 15
    :cond_0
    sget-object v0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;->a:Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;->a()Le/a/q/g/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final e()Le/a/q/g/c;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q/g/f;->a:Landroid/content/Context;

    const-string v1, "context"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;->a:Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    const-class v1, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    const-string v2, "contactFeedbackDb"

    .line 6
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ln3/c0/f0/a;

    const/4 v2, 0x0

    .line 7
    sget-object v3, Le/a/q/g/i;->a:Ln3/c0/f0/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 8
    sget-object v3, Le/a/q/g/i;->b:Ln3/c0/f0/a;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 9
    sget-object v3, Le/a/q/g/i;->c:Ln3/c0/f0/a;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 10
    sget-object v3, Le/a/q/g/i;->d:Ln3/c0/f0/a;

    aput-object v3, v1, v2

    .line 11
    invoke-virtual {v0, v1}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    .line 12
    invoke-virtual {v0}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 13
    invoke-virtual {v0}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v0

    check-cast v0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    .line 14
    sput-object v0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;->a:Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    .line 15
    :cond_0
    sget-object v0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;->a:Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;->b()Le/a/q/g/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/q/g/f$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/q/g/f$d;

    iget v1, v0, Le/a/q/g/f$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/g/f$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/g/f$d;

    invoke-direct {v0, p0, p2}, Le/a/q/g/f$d;-><init>(Le/a/q/g/f;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/q/g/f$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/g/f$d;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

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
    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Le/a/q/g/f;->g()Le/a/q/g/g;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v2, "it"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput v4, v0, Le/a/q/g/f$d;->e:I

    invoke-interface {p2, v2, v3, v0}, Le/a/q/g/g;->b(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v3, p2

    check-cast v3, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;

    :cond_4
    return-object v3
.end method

.method public final g()Le/a/q/g/g;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q/g/f;->a:Landroid/content/Context;

    const-string v1, "context"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;->a:Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    const-class v1, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    const-string v2, "contactFeedbackDb"

    .line 6
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ln3/c0/f0/a;

    const/4 v2, 0x0

    .line 7
    sget-object v3, Le/a/q/g/i;->a:Ln3/c0/f0/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 8
    sget-object v3, Le/a/q/g/i;->b:Ln3/c0/f0/a;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 9
    sget-object v3, Le/a/q/g/i;->c:Ln3/c0/f0/a;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 10
    sget-object v3, Le/a/q/g/i;->d:Ln3/c0/f0/a;

    aput-object v3, v1, v2

    .line 11
    invoke-virtual {v0, v1}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    .line 12
    invoke-virtual {v0}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 13
    invoke-virtual {v0}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v0

    check-cast v0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    .line 14
    sput-object v0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;->a:Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    .line 15
    :cond_0
    sget-object v0, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;->a:Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/truecaller/contactfeedback/db/ContactFeedbackDatabase;->c()Le/a/q/g/g;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public h([Lcom/truecaller/contactfeedback/db/CommentFeedback;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/contactfeedback/db/CommentFeedback;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/q/g/f$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/q/g/f$e;

    iget v1, v0, Le/a/q/g/f$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/g/f$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/g/f$e;

    invoke-direct {v0, p0, p2}, Le/a/q/g/f$e;-><init>(Le/a/q/g/f;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/q/g/f$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/g/f$e;->e:I

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
    invoke-virtual {p0}, Le/a/q/g/f;->d()Le/a/q/g/a;

    move-result-object p2

    if-eqz p2, :cond_4

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/truecaller/contactfeedback/db/CommentFeedback;

    iput v3, v0, Le/a/q/g/f$e;->e:I

    invoke-interface {p2, p1, v0}, Le/a/q/g/a;->a([Lcom/truecaller/contactfeedback/db/CommentFeedback;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    :goto_2
    return-object p2
.end method

.method public i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/q/g/f$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/q/g/f$f;

    iget v1, v0, Le/a/q/g/f$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/g/f$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/g/f$f;

    invoke-direct {v0, p0, p2}, Le/a/q/g/f$f;-><init>(Le/a/q/g/f;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/q/g/f$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/g/f$f;->e:I

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
    invoke-virtual {p0}, Le/a/q/g/f;->g()Le/a/q/g/g;

    move-result-object p2

    if-eqz p2, :cond_4

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;

    iput v3, v0, Le/a/q/g/f$f;->e:I

    .line 6
    invoke-interface {p2, p1, v0}, Le/a/q/g/g;->a([Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    :goto_2
    return-object p2
.end method

.method public j(JILs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/db/ContactFeedback;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/q/g/f$g;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/q/g/f$g;

    iget v1, v0, Le/a/q/g/f$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/g/f$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/g/f$g;

    invoke-direct {v0, p0, p4}, Le/a/q/g/f$g;-><init>(Le/a/q/g/f;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/q/g/f$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/g/f$g;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/q/g/f;->e()Le/a/q/g/c;

    move-result-object p4

    if-eqz p4, :cond_4

    iput v3, v0, Le/a/q/g/f$g;->e:I

    invoke-interface {p4, p1, p2, p3, v0}, Le/a/q/g/c;->a(JILs1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Ljava/util/List;

    if-eqz p4, :cond_4

    goto :goto_2

    :cond_4
    sget-object p4, Ls1/u/s;->a:Ls1/u/s;

    :goto_2
    return-object p4
.end method

.method public k(Ljava/util/List;Lcom/truecaller/contactfeedback/db/SyncState;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/db/CommentFeedback;",
            ">;",
            "Lcom/truecaller/contactfeedback/db/SyncState;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/q/g/f$h;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/q/g/f$h;

    iget v1, v0, Le/a/q/g/f$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/g/f$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/g/f$h;

    invoke-direct {v0, p0, p3}, Le/a/q/g/f$h;-><init>(Le/a/q/g/f;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/q/g/f$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/g/f$h;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/q/g/f;->d()Le/a/q/g/a;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Lcom/truecaller/contactfeedback/db/CommentFeedback;

    .line 8
    invoke-virtual {v4}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getId()J

    move-result-wide v4

    .line 9
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 10
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput v3, v0, Le/a/q/g/f$h;->e:I

    invoke-interface {p3, v2, p1, v0}, Le/a/q/g/a;->c(Ljava/util/List;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 11
    :goto_3
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2
.end method

.method public l(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/db/ContactFeedback;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/q/g/f$i;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/q/g/f$i;

    iget v1, v0, Le/a/q/g/f$i;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/g/f$i;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/g/f$i;

    invoke-direct {v0, p0, p2}, Le/a/q/g/f$i;-><init>(Le/a/q/g/f;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/q/g/f$i;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/g/f$i;->e:I

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
    invoke-virtual {p0}, Le/a/q/g/f;->e()Le/a/q/g/c;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/truecaller/contactfeedback/db/ContactFeedback;

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Lcom/truecaller/contactfeedback/db/ContactFeedback;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/truecaller/contactfeedback/db/ContactFeedback;

    iput v3, v0, Le/a/q/g/f$i;->e:I

    .line 6
    invoke-interface {p2, p1, v0}, Le/a/q/g/c;->c([Lcom/truecaller/contactfeedback/db/ContactFeedback;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
