.class public final Le/a/c/a/n/b/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/n/b/c$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic a:Le/a/c/a/n/b/c$c;


# direct methods
.method public constructor <init>(Le/a/c/a/n/b/c$c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/n/b/c$c$a;->a:Le/a/c/a/n/b/c$c;

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

    instance-of v0, p2, Le/a/c/a/n/b/c$c$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a/n/b/c$c$a$a;

    iget v1, v0, Le/a/c/a/n/b/c$c$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a/n/b/c$c$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a/n/b/c$c$a$a;

    invoke-direct {v0, p0, p2}, Le/a/c/a/n/b/c$c$a$a;-><init>(Le/a/c/a/n/b/c$c$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a/n/b/c$c$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/n/b/c$c$a$a;->e:I

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
    iget-object p2, p0, Le/a/c/a/n/b/c$c$a;->a:Le/a/c/a/n/b/c$c;

    iget-object v2, p2, Le/a/c/a/n/b/c$c;->f:Le/a/c/a/n/b/c;

    .line 6
    iget-object v2, v2, Le/a/c/a/n/b/c;->g:Ljava/util/List;

    .line 7
    iget-object p2, p2, Le/a/c/a/n/b/c$c;->h:Ln3/z/i0$d;

    iget-object p2, p2, Ln3/z/i0$d;->a:Ljava/lang/Object;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    iget-object p1, p0, Le/a/c/a/n/b/c$c$a;->a:Le/a/c/a/n/b/c$c;

    iget-object p1, p1, Le/a/c/a/n/b/c$c;->f:Le/a/c/a/n/b/c;

    invoke-virtual {p1}, Ln3/z/v;->b()V

    .line 9
    iget-object p1, p0, Le/a/c/a/n/b/c$c$a;->a:Le/a/c/a/n/b/c$c;

    iget-object p1, p1, Le/a/c/a/n/b/c$c;->f:Le/a/c/a/n/b/c;

    .line 10
    iget-object p1, p1, Le/a/c/a/n/b/c;->d:Lq3/a/y;

    .line 11
    iput v3, v0, Le/a/c/a/n/b/c$c$a$a;->e:I

    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->V(Lq3/a/p1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 12
    :cond_3
    iget-object p2, p0, Le/a/c/a/n/b/c$c$a;->a:Le/a/c/a/n/b/c$c;

    iget-object v0, p2, Le/a/c/a/n/b/c$c;->f:Le/a/c/a/n/b/c;

    .line 13
    iget-object v0, v0, Le/a/c/a/n/b/c;->g:Ljava/util/List;

    .line 14
    iget-object p2, p2, Le/a/c/a/n/b/c$c;->h:Ln3/z/i0$d;

    iget-object p2, p2, Ln3/z/i0$d;->a:Ljava/lang/Object;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p2, p0, Le/a/c/a/n/b/c$c$a;->a:Le/a/c/a/n/b/c$c;

    iget-object p2, p2, Le/a/c/a/n/b/c$c;->i:Ln3/z/i0$a;

    invoke-virtual {p2, p1}, Ln3/z/i0$a;->a(Ljava/util/List;)V

    .line 16
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
