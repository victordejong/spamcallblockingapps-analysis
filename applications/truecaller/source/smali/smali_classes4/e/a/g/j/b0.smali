.class public final Le/a/g/j/b0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.acs.util.AcsSearchHelperImpl$search$2"
    f = "AcsSearchHelperImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/g/j/c0;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/g/j/c0;ILjava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/j/b0;->e:Le/a/g/j/c0;

    iput p2, p0, Le/a/g/j/b0;->f:I

    iput-object p3, p0, Le/a/g/j/b0;->g:Ljava/lang/String;

    iput-object p4, p0, Le/a/g/j/b0;->h:Ljava/lang/String;

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

    new-instance p1, Le/a/g/j/b0;

    iget-object v1, p0, Le/a/g/j/b0;->e:Le/a/g/j/c0;

    iget v2, p0, Le/a/g/j/b0;->f:I

    iget-object v3, p0, Le/a/g/j/b0;->g:Ljava/lang/String;

    iget-object v4, p0, Le/a/g/j/b0;->h:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/g/j/b0;-><init>(Le/a/g/j/c0;ILjava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/g/j/b0;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/g/j/b0;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/j/b0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    new-instance p1, Le/a/f4/g/p;

    iget-object v0, p0, Le/a/g/j/b0;->e:Le/a/g/j/c0;

    .line 3
    iget-object v0, v0, Le/a/g/j/c0;->a:Landroid/content/Context;

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "afterCall"

    invoke-direct {p1, v0, v1, v2}, Le/a/f4/g/p;-><init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Le/a/g/j/b0;->f:I

    .line 6
    iput v0, p1, Le/a/f4/g/p;->o:I

    .line 7
    iget-object v0, p0, Le/a/g/j/b0;->g:Ljava/lang/String;

    .line 8
    iput-object v0, p1, Le/a/f4/g/p;->p:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Le/a/g/j/b0;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le/a/f4/g/p;->c(Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Le/a/f4/g/p;->b()Lx3/b;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    :goto_0
    return-object p1
.end method
