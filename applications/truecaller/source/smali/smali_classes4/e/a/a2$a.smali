.class public final Le/a/a2$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a2;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ls1/o<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lcom/truecaller/data/entity/Contact;",
        "+",
        "Lcom/truecaller/blocking/FilterMatch;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.SearchOnCopyHelper$onSearch$1$1"
    f = "SearchOnCopyHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a2;


# direct methods
.method public constructor <init>(Le/a/a2;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a2$a;->e:Le/a/a2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/a2$a;

    iget-object v0, p0, Le/a/a2$a;->e:Le/a/a2;

    invoke-direct {p1, v0, p2}, Le/a/a2$a;-><init>(Le/a/a2;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a2$a;

    iget-object v0, p0, Le/a/a2$a;->e:Le/a/a2;

    invoke-direct {p1, v0, p2}, Le/a/a2$a;-><init>(Le/a/a2;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a2$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Le/a/a2$a;->e:Le/a/a2;

    iget-object v2, v2, Le/a/a2;->g:Le/a/i0;

    .line 3
    iget-object v2, v2, Le/a/i0;->k:Lo3/a;

    .line 4
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/f4/g/r;

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-string v4, "UUID.randomUUID()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "clipboard"

    invoke-interface {v2, v3, v4}, Le/a/f4/g/r;->b(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object v2

    const/16 v3, 0xf

    .line 6
    iput v3, v2, Le/a/f4/g/p;->o:I

    .line 7
    invoke-virtual {v2}, Le/a/f4/g/p;->d()Le/a/f4/g/p;

    .line 8
    iget-object v3, p0, Le/a/a2$a;->e:Le/a/a2;

    iget-object v3, v3, Le/a/a2;->h:Ljava/lang/String;

    .line 9
    iput-object v3, v2, Le/a/f4/g/p;->p:Ljava/lang/String;

    .line 10
    iput-boolean v0, v2, Le/a/f4/g/p;->g:Z

    .line 11
    iput-boolean p1, v2, Le/a/f4/g/p;->i:Z

    const/4 v3, 0x5

    .line 12
    iput v3, v2, Le/a/f4/g/p;->m:I

    .line 13
    iput-boolean v0, v2, Le/a/f4/g/p;->k:Z

    .line 14
    invoke-virtual {v2}, Le/a/f4/g/p;->a()Le/a/f4/g/t;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    iget-object v2, p0, Le/a/a2$a;->e:Le/a/a2;

    iget-object v2, v2, Le/a/a2;->h:Ljava/lang/String;

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    const-string v3, "it"

    .line 16
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move p1, v0

    :cond_2
    xor-int/2addr p1, v0

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 19
    iget-object p1, p0, Le/a/a2$a;->e:Le/a/a2;

    iget-object p1, p1, Le/a/a2;->g:Le/a/i0;

    .line 20
    iget-object p1, p1, Le/a/i0;->l:Lo3/a;

    .line 21
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h0/j;

    iget-object v0, p0, Le/a/a2$a;->e:Le/a/a2;

    iget-object v0, v0, Le/a/a2;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/h0/j;->e(Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p1

    const-string v0, "filterManager.get().find\u2026erActionForNumber(number)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Le/a/a2$a;->e:Le/a/a2;

    iget-object v0, v0, Le/a/a2;->g:Le/a/i0;

    .line 23
    iget-object v0, v0, Le/a/i0;->m:Lo3/a;

    .line 24
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/q/z;

    iget-object v1, p0, Le/a/a2$a;->e:Le/a/a2;

    iget-object v1, v1, Le/a/a2;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ls1/o;

    invoke-direct {v1, v0, v2, p1}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-object v1
.end method
