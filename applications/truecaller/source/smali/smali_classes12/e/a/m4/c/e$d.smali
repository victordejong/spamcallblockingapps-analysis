.class public final Le/a/m4/c/e$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m4/c/e;->c(Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLe/a/b0/n/i;)V
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.profile.data.ProfileRepositoryImpl$saveProfileAsync$1"
    f = "ProfileRepositoryImpl.kt"
    l = {
        0x84
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/m4/c/e;

.field public final synthetic h:Le/a/b0/n/d;

.field public final synthetic i:Z

.field public final synthetic j:Ljava/lang/Long;

.field public final synthetic k:Ljava/util/Map;

.field public final synthetic l:Z

.field public final synthetic m:Le/a/b0/n/i;


# direct methods
.method public constructor <init>(Le/a/m4/c/e;Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLe/a/b0/n/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/m4/c/e$d;->g:Le/a/m4/c/e;

    iput-object p2, p0, Le/a/m4/c/e$d;->h:Le/a/b0/n/d;

    iput-boolean p3, p0, Le/a/m4/c/e$d;->i:Z

    iput-object p4, p0, Le/a/m4/c/e$d;->j:Ljava/lang/Long;

    iput-object p5, p0, Le/a/m4/c/e$d;->k:Ljava/util/Map;

    iput-boolean p6, p0, Le/a/m4/c/e$d;->l:Z

    iput-object p7, p0, Le/a/m4/c/e$d;->m:Le/a/b0/n/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 10
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/m4/c/e$d;

    iget-object v2, p0, Le/a/m4/c/e$d;->g:Le/a/m4/c/e;

    iget-object v3, p0, Le/a/m4/c/e$d;->h:Le/a/b0/n/d;

    iget-boolean v4, p0, Le/a/m4/c/e$d;->i:Z

    iget-object v5, p0, Le/a/m4/c/e$d;->j:Ljava/lang/Long;

    iget-object v6, p0, Le/a/m4/c/e$d;->k:Ljava/util/Map;

    iget-boolean v7, p0, Le/a/m4/c/e$d;->l:Z

    iget-object v8, p0, Le/a/m4/c/e$d;->m:Le/a/b0/n/i;

    move-object v1, v0

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Le/a/m4/c/e$d;-><init>(Le/a/m4/c/e;Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLe/a/b0/n/i;Ls1/w/d;)V

    iput-object p1, v0, Le/a/m4/c/e$d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/m4/c/e$d;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/m4/c/e$d;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/m4/c/e$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/m4/c/e$d;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/m4/c/e$d;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

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

    iget-object p1, p0, Le/a/m4/c/e$d;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object v3, p0, Le/a/m4/c/e$d;->g:Le/a/m4/c/e;

    iget-object v4, p0, Le/a/m4/c/e$d;->h:Le/a/b0/n/d;

    iget-boolean v5, p0, Le/a/m4/c/e$d;->i:Z

    iget-object v6, p0, Le/a/m4/c/e$d;->j:Ljava/lang/Long;

    iget-object v7, p0, Le/a/m4/c/e$d;->k:Ljava/util/Map;

    iget-boolean v8, p0, Le/a/m4/c/e$d;->l:Z

    iput-object p1, p0, Le/a/m4/c/e$d;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/m4/c/e$d;->f:I

    move-object v9, p0

    invoke-virtual/range {v3 .. v9}, Le/a/m4/c/e;->b(Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 5
    :goto_0
    check-cast p1, Le/a/b0/n/h;

    .line 6
    iget-object v1, p0, Le/a/m4/c/e$d;->g:Le/a/m4/c/e;

    .line 7
    iget-object v1, v1, Le/a/m4/c/e;->g:Ls1/w/f;

    const/4 v2, 0x0

    .line 8
    new-instance v3, Le/a/m4/c/e$d$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Le/a/m4/c/e$d$a;-><init>(Le/a/m4/c/e$d;Le/a/b0/n/h;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
