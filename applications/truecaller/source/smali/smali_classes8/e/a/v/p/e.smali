.class public final Le/a/v/p/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/p/d;


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;

.field public final c:Ls1/w/f;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k3/j/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Lo3/a;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/k3/j/j;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawContactDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/p/e;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/v/p/e;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/v/p/e;->d:Lo3/a;

    .line 2
    sget-object p1, Le/a/v/p/e$a;->b:Le/a/v/p/e$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v/p/e;->a:Ls1/g;

    return-void
.end method

.method public static final h(Le/a/v/p/e;)Le/a/h/p0/c;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/v/p/e;->a:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/h/p0/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;ZLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/v/p/e;->c:Ls1/w/f;

    new-instance v1, Le/a/v/p/e$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/v/p/e$f;-><init>(Le/a/v/p/e;Lcom/truecaller/data/entity/Contact;ZLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/v/p/e;->c:Ls1/w/f;

    new-instance v1, Le/a/v/p/e$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/v/p/e$e;-><init>(Le/a/v/p/e;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/v/p/e$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/v/p/e$b;

    iget v1, v0, Le/a/v/p/e$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/v/p/e$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/v/p/e$b;

    invoke-direct {v0, p0, p2}, Le/a/v/p/e$b;-><init>(Le/a/v/p/e;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/v/p/e$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/v/p/e$b;->e:I

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
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 5
    :cond_3
    iget-object p2, p0, Le/a/v/p/e;->c:Ls1/w/f;

    new-instance v2, Le/a/v/p/e$c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Le/a/v/p/e$c;-><init>(Le/a/v/p/e;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    iput v3, v0, Le/a/v/p/e$b;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const-string p1, "withContext(ioContext) {\u2026efaultNumberForDisplay) }"

    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_2
    return-object p1
.end method

.method public d(Lcom/truecaller/data/entity/Contact;)I
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcom/truecaller/data/entity/Contact;->r:I

    .line 2
    iget-object p1, p1, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 3
    invoke-static {v0, p1}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result p1

    return p1
.end method

.method public e(Lcom/truecaller/data/entity/Contact;)Ljava/lang/Long;
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/k3/j/b;->o(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->l()Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le/a/o5/t;->b(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object p1

    const-string v0, "ContactUtil.getEmails(contact)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public g(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/v/p/e;->c:Ls1/w/f;

    new-instance v1, Le/a/v/p/e$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/v/p/e$d;-><init>(Le/a/v/p/e;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
