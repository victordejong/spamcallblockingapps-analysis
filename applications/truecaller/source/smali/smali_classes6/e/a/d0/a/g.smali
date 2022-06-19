.class public final Le/a/d0/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/a/f;


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/x4/l/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b/j/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/o/a/j/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/o/c;

.field public final e:Le/a/x4/g;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/o/c;Le/a/x4/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Le/a/x4/l/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/b/j/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/o/a/j/b;",
            ">;",
            "Le/a/o/c;",
            "Le/a/x4/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "searchWarningsPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCallReasonPresenter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callContextPresenter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchWarningsHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/a/g;->a:Ljavax/inject/Provider;

    iput-object p2, p0, Le/a/d0/a/g;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/d0/a/g;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/d0/a/g;->d:Le/a/o/c;

    iput-object p5, p0, Le/a/d0/a/g;->e:Le/a/x4/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/d0/v;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d0/v;",
            "Ls1/w/d<",
            "-",
            "Le/a/m5/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d0/a/g$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d0/a/g$a;

    iget v1, v0, Le/a/d0/a/g$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d0/a/g$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d0/a/g$a;

    invoke-direct {v0, p0, p2}, Le/a/d0/a/g$a;-><init>(Le/a/d0/a/g;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d0/a/g$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d0/a/g$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/d0/a/g$a;->i:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    iget-object v1, v0, Le/a/d0/a/g$a;->h:Ljava/lang/Object;

    check-cast v1, Le/a/d0/v;

    iget-object v0, v0, Le/a/d0/a/g$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/g;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v5, p2

    move-object p2, p1

    move-object p1, v1

    move-object v1, v0

    move-object v0, v5

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
    iget-object p2, p1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    if-eqz p2, :cond_7

    const-string v2, "callState.contact ?: return null"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p0, v0, Le/a/d0/a/g$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d0/a/g$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d0/a/g$a;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/d0/a/g$a;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/d0/a/g;->b(Le/a/d0/v;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p0

    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Le/a/d0/a/g;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/o/a/j/b;

    .line 6
    new-instance v2, Le/a/o/a/j/a$b;

    .line 7
    iget-object v3, p1, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    const-string v4, "callState.number"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Le/a/d0/v;->d()Z

    move-result p1

    const-string v4, "callerId"

    .line 9
    invoke-direct {v2, p2, v3, p1, v4}, Le/a/o/a/j/a$b;-><init>(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;ZLjava/lang/String;)V

    .line 10
    invoke-virtual {v1, v2}, Le/a/o/a/j/b;->Jj(Le/a/o/a/j/a;)V

    .line 11
    move-object v3, v0

    check-cast v3, Le/a/m5/c;

    goto :goto_3

    .line 12
    :cond_4
    iget-object v0, v1, Le/a/d0/a/g;->e:Le/a/x4/g;

    iget-object v2, p1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    invoke-interface {v0, v2}, Le/a/x4/g;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, v1, Le/a/d0/a/g;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/x4/l/b;

    .line 14
    new-instance v2, Le/a/x4/l/a$b;

    .line 15
    invoke-virtual {p1}, Le/a/d0/v;->d()Z

    move-result p1

    .line 16
    invoke-direct {v2, p2, p1}, Le/a/x4/l/a$b;-><init>(Lcom/truecaller/data/entity/Contact;Z)V

    .line 17
    invoke-virtual {v1, v2}, Le/a/x4/l/b;->Kj(Le/a/x4/l/a;)V

    .line 18
    move-object v3, v0

    check-cast v3, Le/a/m5/c;

    goto :goto_3

    .line 19
    :cond_5
    iget-object v0, v1, Le/a/d0/a/g;->e:Le/a/x4/g;

    iget-object v2, p1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    invoke-interface {v0, v2}, Le/a/x4/g;->c(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean p1, p1, Le/a/d0/v;->e:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_7

    .line 20
    iget-object p1, v1, Le/a/d0/a/g;->b:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/b/j/b;

    .line 21
    new-instance v1, Le/a/b/j/a$c;

    invoke-direct {v1, p2}, Le/a/b/j/a$c;-><init>(Lcom/truecaller/data/entity/Contact;)V

    .line 22
    invoke-virtual {v0, v1}, Le/a/b/j/b;->Jj(Le/a/b/j/a;)V

    .line 23
    move-object v3, p1

    check-cast v3, Le/a/m5/c;

    :cond_7
    :goto_3
    return-object v3
.end method

.method public final b(Le/a/d0/v;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d0/v;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d0/a/g$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d0/a/g$b;

    iget v1, v0, Le/a/d0/a/g$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d0/a/g$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d0/a/g$b;

    invoke-direct {v0, p0, p2}, Le/a/d0/a/g$b;-><init>(Le/a/d0/a/g;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d0/a/g$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d0/a/g$b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-boolean p2, p1, Le/a/d0/v;->e:Z

    if-eqz p2, :cond_7

    .line 5
    iget p2, p1, Le/a/d0/v;->h:I

    if-eq p2, v4, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    move p2, v4

    :goto_1
    if-nez p2, :cond_7

    iget-object p2, p0, Le/a/d0/a/g;->d:Le/a/o/c;

    invoke-interface {p2}, Le/a/o/c;->isSupported()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p1, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    const-string p2, "callState.number"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 6
    iget-object p2, p0, Le/a/d0/a/g;->d:Le/a/o/c;

    iput v4, v0, Le/a/d0/a/g$b;->e:I

    invoke-interface {p2, p1, v0}, Le/a/o/c;->H(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    move p1, v4

    goto :goto_3

    :cond_5
    move p1, v3

    .line 7
    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_4

    :cond_6
    move p1, v3

    :goto_4
    if-eqz p1, :cond_7

    move v3, v4

    .line 9
    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
