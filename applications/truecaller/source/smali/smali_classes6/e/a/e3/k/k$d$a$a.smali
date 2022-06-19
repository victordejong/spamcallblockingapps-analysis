.class public final Le/a/e3/k/k$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e3/k/k$d$a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/e3/k/o$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/e3/k/k$d$a;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/e3/k/k$d$a;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/k/k$d$a$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/e3/k/k$d$a$a;->b:Le/a/e3/k/k$d$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/e3/k/k$d$a$a$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/e3/k/k$d$a$a$a;

    iget v2, v1, Le/a/e3/k/k$d$a$a$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/e3/k/k$d$a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/e3/k/k$d$a$a$a;

    invoke-direct {v1, p0, p2}, Le/a/e3/k/k$d$a$a$a;-><init>(Le/a/e3/k/k$d$a$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/e3/k/k$d$a$a$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/e3/k/k$d$a$a$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

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
    iget-object p2, p0, Le/a/e3/k/k$d$a$a;->a:Lq3/a/x2/g;

    .line 5
    move-object v3, p1

    check-cast v3, Le/a/e3/k/o$a;

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New incoming call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    iget-object v5, p0, Le/a/e3/k/k$d$a$a;->b:Le/a/e3/k/k$d$a;

    iget-object v5, v5, Le/a/e3/k/k$d$a;->b:Le/a/e3/k/k$d;

    iget-object v5, v5, Le/a/e3/k/k$d;->f:Le/a/e3/k/k;

    invoke-static {v5, v3}, Le/a/e3/k/k;->e(Le/a/e3/k/k;Le/a/e3/k/o$a;)Z

    move-result v5

    .line 8
    iget-object v3, v3, Le/a/e3/k/o$a;->a:Le/a/p5/v0/a;

    .line 9
    invoke-virtual {v3}, Le/a/p5/v0/a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v6, p0, Le/a/e3/k/k$d$a$a;->b:Le/a/e3/k/k$d$a;

    iget-object v6, v6, Le/a/e3/k/k$d$a;->b:Le/a/e3/k/k$d;

    iget-object v6, v6, Le/a/e3/k/k$d;->f:Le/a/e3/k/k;

    .line 10
    iget-object v6, v6, Le/a/e3/k/k;->k:Le/a/b0/q/z;

    .line 11
    invoke-interface {v6, v3}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 12
    iget-object v6, p0, Le/a/e3/k/k$d$a$a;->b:Le/a/e3/k/k$d$a;

    iget-object v6, v6, Le/a/e3/k/k$d$a;->b:Le/a/e3/k/k$d;

    iget-object v6, v6, Le/a/e3/k/k$d;->g:Ljava/lang/String;

    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 13
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    iput v4, v1, Le/a/e3/k/k$d$a$a$a;->e:I

    invoke-interface {p2, p1, v1}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    return-object v2

    :cond_5
    :goto_3
    return-object v0
.end method
