.class public final Le/a/f/z/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/z/b;


# instance fields
.field public final a:Le/a/f/z/h;


# direct methods
.method public constructor <init>(Le/a/f/z/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "inCallUIBitmapUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/z/c;->a:Le/a/f/z/h;

    return-void
.end method


# virtual methods
.method public a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/a/g;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/f/z/c$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/f/z/c$a;

    iget v1, v0, Le/a/f/z/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/z/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/z/c$a;

    invoke-direct {v0, p0, p3}, Le/a/f/z/c$a;-><init>(Le/a/f/z/c;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/f/z/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/f/z/c$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-nez p2, :cond_5

    .line 4
    iget-boolean p2, p1, Le/a/f/a/g;->p:Z

    if-eqz p2, :cond_5

    .line 5
    iget-boolean p2, p1, Le/a/f/a/g;->k:Z

    if-nez p2, :cond_5

    .line 6
    iget-boolean p2, p1, Le/a/f/a/g;->r:Z

    if-nez p2, :cond_5

    .line 7
    iget-boolean p2, p1, Le/a/f/a/g;->t:Z

    if-nez p2, :cond_5

    .line 8
    iget-object p2, p1, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-nez p2, :cond_5

    .line 9
    iget-object p1, p1, Le/a/f/a/g;->c:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 10
    iget-object p2, p0, Le/a/f/z/c;->a:Le/a/f/z/h;

    iput v3, v0, Le/a/f/z/c$a;->e:I

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p3, Lq3/a/o;

    invoke-static {v0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    invoke-direct {p3, v2, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 13
    invoke-virtual {p3}, Lq3/a/o;->z()V

    .line 14
    iget-object p2, p2, Le/a/f/z/h;->a:Landroid/content/Context;

    .line 15
    invoke-static {p2}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object p2

    .line 16
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/a/z3/e;->z(Landroid/net/Uri;)Le/a/z3/d;

    move-result-object p1

    .line 17
    new-instance p2, Le/a/f/z/g;

    invoke-direct {p2, p3}, Le/a/f/z/g;-><init>(Lq3/a/n;)V

    invoke-virtual {p1, p2}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    .line 18
    invoke-virtual {p3}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    const-string p1, "frame"

    .line 19
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    if-ne p3, v1, :cond_4

    return-object v1

    .line 20
    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 21
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
