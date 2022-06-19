.class public final Le/a/c/a/d/d/e$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/d/d/e$e;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/d/d/e$e;


# direct methods
.method public constructor <init>(Le/a/c/a/d/d/e$e;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/d/e$e$a;->a:Le/a/c/a/d/d/e$e;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/ui/models/AdapterItem;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/a/d/d/e$e$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a/d/d/e$e$a$a;

    iget v1, v0, Le/a/c/a/d/d/e$e$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a/d/d/e$e$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a/d/d/e$e$a$a;

    invoke-direct {v0, p0, p2}, Le/a/c/a/d/d/e$e$a$a;-><init>(Le/a/c/a/d/d/e$e$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a/d/d/e$e$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/d/d/e$e$a$a;->e:I

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
    check-cast p1, Ljava/util/List;

    .line 5
    iget-object p2, p0, Le/a/c/a/d/d/e$e$a;->a:Le/a/c/a/d/d/e$e;

    iget-object p2, p2, Le/a/c/a/d/d/e$e;->f:Le/a/c/a/d/d/e;

    .line 6
    iget-boolean v2, p2, Le/a/c/a/d/d/e;->h:Z

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {p2}, Ln3/z/v;->b()V

    .line 8
    iget-object p1, p0, Le/a/c/a/d/d/e$e$a;->a:Le/a/c/a/d/d/e$e;

    iget-object p1, p1, Le/a/c/a/d/d/e$e;->f:Le/a/c/a/d/d/e;

    .line 9
    iget-object p1, p1, Le/a/c/a/d/d/e;->d:Lq3/a/y;

    .line 10
    iput v3, v0, Le/a/c/a/d/d/e$e$a$a;->e:I

    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->V(Lq3/a/p1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 11
    :cond_3
    iput-boolean v3, p2, Le/a/c/a/d/d/e;->h:Z

    .line 12
    iget-object p2, p2, Le/a/c/a/d/d/e;->p:Ln3/v/k0;

    if-eqz p2, :cond_4

    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 15
    invoke-virtual {p2, v0}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 16
    :cond_4
    iget-object p2, p0, Le/a/c/a/d/d/e$e$a;->a:Le/a/c/a/d/d/e$e;

    iget-object p2, p2, Le/a/c/a/d/d/e$e;->h:Ln3/z/i0$b;

    invoke-virtual {p2, p1}, Ln3/z/i0$a;->a(Ljava/util/List;)V

    .line 17
    :cond_5
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
