.class public Le/k/a/c/l0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/k/a/c/y;

.field public final b:Le/k/a/c/c;

.field public final c:Le/k/a/c/b;

.field public d:Ljava/lang/Object;

.field public final e:Le/k/a/a/r$b;

.field public final f:Z


# direct methods
.method public constructor <init>(Le/k/a/c/y;Le/k/a/c/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/k;->a:Le/k/a/c/y;

    .line 3
    iput-object p2, p0, Le/k/a/c/l0/k;->b:Le/k/a/c/c;

    .line 4
    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    invoke-virtual {p2, v0}, Le/k/a/c/c;->e(Le/k/a/a/r$b;)Le/k/a/a/r$b;

    move-result-object v1

    .line 5
    iget-object p2, p2, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 6
    iget-object p2, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 7
    invoke-virtual {p1, p2, v0}, Le/k/a/c/c0/k;->j(Ljava/lang/Class;Le/k/a/a/r$b;)Le/k/a/a/r$b;

    if-nez v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, v0}, Le/k/a/a/r$b;->a(Le/k/a/a/r$b;)Le/k/a/a/r$b;

    move-result-object v0

    .line 9
    :goto_0
    iget-object p2, p1, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    .line 10
    iget-object p2, p2, Le/k/a/c/c0/g;->a:Le/k/a/a/r$b;

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p2, v0}, Le/k/a/a/r$b;->a(Le/k/a/a/r$b;)Le/k/a/a/r$b;

    move-result-object p2

    .line 12
    :goto_1
    iput-object p2, p0, Le/k/a/c/l0/k;->e:Le/k/a/a/r$b;

    .line 13
    iget-object p2, v0, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    .line 14
    sget-object v0, Le/k/a/a/r$a;->e:Le/k/a/a/r$a;

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Le/k/a/c/l0/k;->f:Z

    .line 15
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/l0/k;->c:Le/k/a/c/b;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g0/b;ZLe/k/a/c/i;)Le/k/a/c/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/k;->c:Le/k/a/c/b;

    iget-object v1, p0, Le/k/a/c/l0/k;->a:Le/k/a/c/y;

    invoke-virtual {v0, v1, p1, p3}, Le/k/a/c/b;->r0(Le/k/a/c/c0/k;Le/k/a/c/g0/b;Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p3, :cond_2

    .line 2
    iget-object p2, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 3
    iget-object p3, p3, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move-object p3, v0

    move p2, v1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal concrete-type annotation for method \'"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not a super-type of (declared) class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v1}, Le/d/c/a/a;->Z1(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    :goto_1
    iget-object v0, p0, Le/k/a/c/l0/k;->c:Le/k/a/c/b;

    invoke-virtual {v0, p1}, Le/k/a/c/b;->U(Le/k/a/c/g0/b;)Le/k/a/c/b0/f$b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    sget-object v0, Le/k/a/c/b0/f$b;->c:Le/k/a/c/b0/f$b;

    if-eq p1, v0, :cond_4

    .line 9
    sget-object p2, Le/k/a/c/b0/f$b;->b:Le/k/a/c/b0/f$b;

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    move p2, v1

    :cond_4
    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {p3}, Le/k/a/c/i;->P()Le/k/a/c/i;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
