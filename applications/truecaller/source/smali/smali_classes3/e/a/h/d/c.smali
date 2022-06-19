.class public final Le/a/h/d/c;
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


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/b0/q/z;Le/a/e4/p;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/d/c;->d:Le/a/u3/g;

    iput-object p2, p0, Le/a/h/d/c;->e:Le/a/b0/q/z;

    iput-object p3, p0, Le/a/h/d/c;->f:Le/a/e4/p;

    .line 2
    new-instance p1, Le/a/h/d/c$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/h/d/c$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/d/c;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/h/d/c$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/h/d/c$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/d/c;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/h/d/c$a;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Le/a/h/d/c$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/d/c;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/d/c;->c:Ls1/g;

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
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IN"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v3, :cond_2

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Le/a/p5/g0;->G([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method
