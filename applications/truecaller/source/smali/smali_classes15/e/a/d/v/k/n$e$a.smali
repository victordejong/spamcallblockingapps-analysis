.class public final Le/a/d/v/k/n$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/n$e;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ls1/k<",
        "+",
        "Le/a/d/v/l/a;",
        "+",
        "Le/a/d/v/l/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/d/v/k/n$e;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/n$e$a;->a:Lq3/a/x2/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Le/a/d/v/k/n$e$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/v/k/n$e$a$a;

    iget v1, v0, Le/a/d/v/k/n$e$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/v/k/n$e$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/v/k/n$e$a$a;

    invoke-direct {v0, p0, p2}, Le/a/d/v/k/n$e$a$a;-><init>(Le/a/d/v/k/n$e$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/v/k/n$e$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/v/k/n$e$a$a;->e:I

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
    iget-object p2, p0, Le/a/d/v/k/n$e$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Ls1/k;

    .line 6
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 7
    check-cast p1, Le/a/d/v/l/a;

    .line 8
    invoke-interface {p1}, Le/a/d/v/l/a;->d()I

    move-result p1

    .line 9
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 10
    iput v3, v0, Le/a/d/v/k/n$e$a$a;->e:I

    invoke-interface {p2, v2, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
