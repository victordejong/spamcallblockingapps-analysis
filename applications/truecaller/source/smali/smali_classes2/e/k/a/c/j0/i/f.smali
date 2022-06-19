.class public Le/k/a/c/j0/i/f;
.super Le/k/a/c/j0/i/t;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/k/a/c/j0/f;Le/k/a/c/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/k/a/c/j0/i/t;-><init>(Le/k/a/c/j0/f;Le/k/a/c/d;)V

    .line 2
    iput-object p3, p0, Le/k/a/c/j0/i/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/d;)Le/k/a/c/j0/h;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/t;->b:Le/k/a/c/d;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Le/k/a/c/j0/i/f;

    iget-object v1, p0, Le/k/a/c/j0/i/t;->a:Le/k/a/c/j0/f;

    iget-object v2, p0, Le/k/a/c/j0/i/f;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Le/k/a/c/j0/i/f;-><init>(Le/k/a/c/j0/f;Le/k/a/c/d;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Le/k/a/a/e0$a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/a/e0$a;->d:Le/k/a/a/e0$a;

    return-object v0
.end method
