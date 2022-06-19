.class public final Le/a/h/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/d/f;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Le/a/u3/g;

.field public final e:Le/a/b0/q/z;

.field public final f:Le/a/e4/p;

.field public final g:Le/m/f/a/j;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/b0/q/z;Le/a/e4/p;Le/m/f/a/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/d/a;->d:Le/a/u3/g;

    iput-object p2, p0, Le/a/h/d/a;->e:Le/a/b0/q/z;

    iput-object p3, p0, Le/a/h/d/a;->f:Le/a/e4/p;

    iput-object p4, p0, Le/a/h/d/a;->g:Le/m/f/a/j;

    .line 2
    new-instance p1, Le/a/h/d/a$b;

    invoke-direct {p1, p0}, Le/a/h/d/a$b;-><init>(Le/a/h/d/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/d/a;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/h/d/a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/h/d/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/d/a;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/h/d/a$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/h/d/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/d/a;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/d/a;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/truecaller/data/entity/Number;)Ljava/lang/String;
    .locals 6

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/d/a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/a/h/d/a;->g:Le/m/f/a/j;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v0

    .line 4
    iget-object v3, p0, Le/a/h/d/a;->g:Le/m/f/a/j;

    .line 5
    invoke-virtual {v3, v0}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v0, v4}, Le/m/f/a/j;->H(Le/m/f/a/o;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    iget-object v3, p0, Le/a/h/d/a;->g:Le/m/f/a/j;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Le/m/f/a/j;->m(Le/m/f/a/o;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Le/a/h/d/a;->c(Lcom/truecaller/data/entity/Number;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 10
    :catch_0
    :cond_3
    invoke-virtual {p0, p1}, Le/a/h/d/a;->c(Lcom/truecaller/data/entity/Number;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/truecaller/data/entity/Number;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Le/a/p5/g0;->G([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
