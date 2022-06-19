.class public final Le/a/h/b/y0/a/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/y0/a/c;->a(Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/data/entity/Contact;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.t9.data.SearchPerformerImpl$backendThrottledSearch$2"
    f = "SearchPerformer.kt"
    l = {
        0x2f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/h/b/y0/a/c;

.field public final synthetic g:J

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/h/b/y0/a/c;JLjava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/y0/a/c$a;->f:Le/a/h/b/y0/a/c;

    iput-wide p2, p0, Le/a/h/b/y0/a/c$a;->g:J

    iput-object p4, p0, Le/a/h/b/y0/a/c$a;->h:Ljava/lang/String;

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

    new-instance p1, Le/a/h/b/y0/a/c$a;

    iget-object v1, p0, Le/a/h/b/y0/a/c$a;->f:Le/a/h/b/y0/a/c;

    iget-wide v2, p0, Le/a/h/b/y0/a/c$a;->g:J

    iget-object v4, p0, Le/a/h/b/y0/a/c$a;->h:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/h/b/y0/a/c$a;-><init>(Le/a/h/b/y0/a/c;JLjava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/b/y0/a/c$a;

    iget-object v1, p0, Le/a/h/b/y0/a/c$a;->f:Le/a/h/b/y0/a/c;

    iget-wide v2, p0, Le/a/h/b/y0/a/c$a;->g:J

    iget-object v4, p0, Le/a/h/b/y0/a/c$a;->h:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/h/b/y0/a/c$a;-><init>(Le/a/h/b/y0/a/c;JLjava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/b/y0/a/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/b/y0/a/c$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-wide v3, p0, Le/a/h/b/y0/a/c$a;->g:J

    iput v2, p0, Le/a/h/b/y0/a/c$a;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 5
    :try_start_0
    iget-object v0, p0, Le/a/h/b/y0/a/c$a;->f:Le/a/h/b/y0/a/c;

    .line 6
    iget-object v0, v0, Le/a/h/b/y0/a/c;->c:Le/a/f4/g/r;

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v3, "UUID.randomUUID()"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dialpad"

    invoke-interface {v0, v1, v3}, Le/a/f4/g/r;->b(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object v0

    .line 8
    iput-boolean v2, v0, Le/a/f4/g/p;->g:Z

    .line 9
    iget-object v1, p0, Le/a/h/b/y0/a/c$a;->h:Ljava/lang/String;

    .line 10
    iput-object v1, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Le/a/f4/g/p;->i:Z

    .line 12
    invoke-virtual {v0}, Le/a/f4/g/p;->d()Le/a/f4/g/p;

    const/4 v1, 0x4

    .line 13
    iput v1, v0, Le/a/f4/g/p;->o:I

    .line 14
    invoke-virtual {v0}, Le/a/f4/g/p;->a()Le/a/f4/g/t;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object p1
.end method
