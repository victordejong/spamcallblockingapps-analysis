.class public Le/k/a/c/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/k/a/c/v;

.field public final b:Le/k/a/c/i;

.field public final c:Le/k/a/c/v;

.field public final d:Le/k/a/c/u;

.field public final e:Le/k/a/c/g0/i;


# direct methods
.method public constructor <init>(Le/k/a/c/v;Le/k/a/c/i;Le/k/a/c/v;Le/k/a/c/g0/i;Le/k/a/c/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d$a;->a:Le/k/a/c/v;

    .line 3
    iput-object p2, p0, Le/k/a/c/d$a;->b:Le/k/a/c/i;

    .line 4
    iput-object p3, p0, Le/k/a/c/d$a;->c:Le/k/a/c/v;

    .line 5
    iput-object p5, p0, Le/k/a/c/d$a;->d:Le/k/a/c/u;

    .line 6
    iput-object p4, p0, Le/k/a/c/d$a;->e:Le/k/a/c/g0/i;

    return-void
.end method


# virtual methods
.method public c()Le/k/a/c/g0/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d$a;->e:Le/k/a/c/g0/i;

    return-object v0
.end method

.method public d()Le/k/a/c/v;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d$a;->a:Le/k/a/c/v;

    return-object v0
.end method

.method public e(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/a/k$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/k$d;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Le/k/a/c/c0/k;->h(Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Le/k/a/c/d$a;->e:Le/k/a/c/g0/i;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Le/k/a/c/b;->n(Le/k/a/c/g0/b;)Le/k/a/a/k$d;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    .line 5
    :cond_1
    invoke-virtual {p2, p1}, Le/k/a/a/k$d;->f(Le/k/a/a/k$d;)Le/k/a/a/k$d;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object p2
.end method

.method public f(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/a/r$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/r$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d$a;->b:Le/k/a/c/i;

    .line 2
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 3
    invoke-virtual {p1, p2, v0}, Le/k/a/c/c0/k;->g(Ljava/lang/Class;Ljava/lang/Class;)Le/k/a/a/r$b;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Le/k/a/c/d$a;->e:Le/k/a/c/g0/i;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Le/k/a/c/b;->J(Le/k/a/c/g0/b;)Le/k/a/a/r$b;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    invoke-virtual {p2, p1}, Le/k/a/a/r$b;->a(Le/k/a/a/r$b;)Le/k/a/a/r$b;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object p2
.end method

.method public getMetadata()Le/k/a/c/u;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d$a;->d:Le/k/a/c/u;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d$a;->a:Le/k/a/c/v;

    .line 2
    iget-object v0, v0, Le/k/a/c/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d$a;->b:Le/k/a/c/i;

    return-object v0
.end method
