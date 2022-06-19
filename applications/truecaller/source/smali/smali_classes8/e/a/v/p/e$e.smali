.class public final Le/a/v/p/e$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/p/e;->b(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.details_view.util.ContactUtilHelperImpl$removeFromIdentified$2"
    f = "ContactUtilHelperImpl.kt"
    l = {
        0x40,
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/v/p/e;

.field public final synthetic h:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/v/p/e;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/p/e$e;->g:Le/a/v/p/e;

    iput-object p2, p0, Le/a/v/p/e$e;->h:Lcom/truecaller/data/entity/Contact;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/v/p/e$e;

    iget-object v0, p0, Le/a/v/p/e$e;->g:Le/a/v/p/e;

    iget-object v1, p0, Le/a/v/p/e$e;->h:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/p/e$e;-><init>(Le/a/v/p/e;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/p/e$e;

    iget-object v0, p0, Le/a/v/p/e$e;->g:Le/a/v/p/e;

    iget-object v1, p0, Le/a/v/p/e$e;->h:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/p/e$e;-><init>(Le/a/v/p/e;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/p/e$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v/p/e$e;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/v/p/e$e;->e:Ljava/lang/Object;

    check-cast v0, Le/a/h/p0/e/a;

    :goto_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/v/p/e$e;->h:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "contact.tcId ?: return@withContext false"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Le/a/v/p/e$e;->g:Le/a/v/p/e;

    invoke-static {v1}, Le/a/v/p/e;->h(Le/a/v/p/e;)Le/a/h/p0/c;

    move-result-object v1

    invoke-interface {v1, p1}, Le/a/h/p0/c;->f(Ljava/lang/String;)Le/a/h/p0/e/a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    iput-boolean v3, v1, Le/a/h/p0/e/a;->b:Z

    .line 7
    iget-object p1, p0, Le/a/v/p/e$e;->g:Le/a/v/p/e;

    invoke-static {p1}, Le/a/v/p/e;->h(Le/a/v/p/e;)Le/a/h/p0/c;

    move-result-object p1

    iput-object v1, p0, Le/a/v/p/e$e;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/v/p/e$e;->f:I

    invoke-interface {p1, v1, p0}, Le/a/h/p0/c;->b(Le/a/h/p0/e/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 8
    :cond_3
    iget-object v1, p0, Le/a/v/p/e$e;->g:Le/a/v/p/e;

    invoke-static {v1}, Le/a/v/p/e;->h(Le/a/v/p/e;)Le/a/h/p0/c;

    move-result-object v1

    new-instance v4, Le/a/h/p0/e/a;

    invoke-direct {v4, p1, v3}, Le/a/h/p0/e/a;-><init>(Ljava/lang/String;Z)V

    iput v2, p0, Le/a/v/p/e$e;->f:I

    invoke-interface {v1, v4, p0}, Le/a/h/p0/c;->d(Le/a/h/p0/e/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 9
    :cond_4
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 10
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
