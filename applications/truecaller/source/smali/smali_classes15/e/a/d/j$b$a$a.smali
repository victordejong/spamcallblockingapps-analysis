.class public final Le/a/d/j$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/j$b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/v/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/j$b$a;

.field public final synthetic b:Lq3/a/x2/g;

.field public final synthetic c:Le/a/d/v/b;


# direct methods
.method public constructor <init>(Le/a/d/j$b$a;Lq3/a/x2/g;Le/a/d/v/b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/j$b$a$a;->a:Le/a/d/j$b$a;

    iput-object p2, p0, Le/a/d/j$b$a$a;->b:Lq3/a/x2/g;

    iput-object p3, p0, Le/a/d/j$b$a$a;->c:Le/a/d/v/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v2, p2, Le/a/d/j$b$a$a$a;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Le/a/d/j$b$a$a$a;

    iget v3, v2, Le/a/d/j$b$a$a$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d/j$b$a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d/j$b$a$a$a;

    invoke-direct {v2, p0, p2}, Le/a/d/j$b$a$a$a;-><init>(Le/a/d/j$b$a$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v2, Le/a/d/j$b$a$a$a;->d:Ljava/lang/Object;

    .line 1
    iget v3, v2, Le/a/d/j$b$a$a$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    check-cast p1, Le/a/d/v/h;

    .line 5
    instance-of p1, p1, Le/a/d/v/h$c;

    if-eqz p1, :cond_4

    .line 6
    new-instance p1, Le/a/d/j$b$a$a$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/d/j$b$a$a$b;-><init>(Ls1/w/d;Le/a/d/j$b$a$a;)V

    .line 7
    new-instance p2, Lq3/a/x2/d1;

    invoke-direct {p2, p1}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 8
    iget-object p1, p0, Le/a/d/j$b$a$a;->c:Le/a/d/v/b;

    invoke-interface {p1}, Le/a/d/v/k/w0;->f()Lq3/a/x2/i1;

    move-result-object p1

    .line 9
    new-instance v3, Le/a/d/j$b$a$a$c;

    invoke-direct {v3, p2, p0}, Le/a/d/j$b$a$a$c;-><init>(Lq3/a/x2/f;Le/a/d/j$b$a$a;)V

    iput v4, v2, Le/a/d/j$b$a$a$a;->e:I

    .line 10
    new-instance p2, Lq3/a/x2/t0$a;

    invoke-direct {p2, v3}, Lq3/a/x2/t0$a;-><init>(Lq3/a/x2/g;)V

    invoke-interface {p1, p2, v2}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    return-object v0
.end method
