.class public abstract Le/k/a/c/j0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Le/k/a/c/d;)Le/k/a/c/j0/h;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Le/k/a/a/e0$a;
.end method

.method public d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/b/z/b;

    invoke-direct {v0, p1, p2}, Le/k/a/b/z/b;-><init>(Ljava/lang/Object;Le/k/a/b/m;)V

    .line 2
    invoke-virtual {p0}, Le/k/a/c/j0/h;->c()Le/k/a/a/e0$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 3
    sget-object p1, Le/k/a/b/z/b$a;->d:Le/k/a/b/z/b$a;

    iput-object p1, v0, Le/k/a/b/z/b;->e:Le/k/a/b/z/b$a;

    .line 4
    invoke-virtual {p0}, Le/k/a/c/j0/h;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Le/k/a/b/z/b;->d:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    const/4 p1, 0x0

    throw p1

    .line 6
    :cond_1
    sget-object p1, Le/k/a/b/z/b$a;->e:Le/k/a/b/z/b$a;

    iput-object p1, v0, Le/k/a/b/z/b;->e:Le/k/a/b/z/b$a;

    .line 7
    invoke-virtual {p0}, Le/k/a/c/j0/h;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Le/k/a/b/z/b;->d:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Le/k/a/b/z/b$a;->a:Le/k/a/b/z/b$a;

    iput-object p1, v0, Le/k/a/b/z/b;->e:Le/k/a/b/z/b$a;

    goto :goto_0

    .line 9
    :cond_3
    sget-object p1, Le/k/a/b/z/b$a;->b:Le/k/a/b/z/b$a;

    iput-object p1, v0, Le/k/a/b/z/b;->e:Le/k/a/b/z/b$a;

    goto :goto_0

    .line 10
    :cond_4
    sget-object p1, Le/k/a/b/z/b$a;->c:Le/k/a/b/z/b$a;

    iput-object p1, v0, Le/k/a/b/z/b;->e:Le/k/a/b/z/b$a;

    .line 11
    invoke-virtual {p0}, Le/k/a/c/j0/h;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Le/k/a/b/z/b;->d:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public abstract e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
