.class public Le/k/a/c/k;
.super Le/k/a/b/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/k$a;
    }
.end annotation


# instance fields
.field public b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Le/k/a/c/k$a;",
            ">;"
        }
    .end annotation
.end field

.field public transient c:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Le/k/a/b/k;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/k;->c:Ljava/io/Closeable;

    .line 3
    instance-of p2, p1, Le/k/a/b/j;

    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Le/k/a/b/j;

    invoke-virtual {p1}, Le/k/a/b/j;->m1()Le/k/a/b/h;

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/k;->a:Le/k/a/b/h;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Closeable;Ljava/lang/String;Le/k/a/b/h;)V
    .locals 0

    .line 13
    invoke-direct {p0, p2, p3}, Le/k/a/b/k;-><init>(Ljava/lang/String;Le/k/a/b/h;)V

    .line 14
    iput-object p1, p0, Le/k/a/c/k;->c:Ljava/io/Closeable;

    return-void
.end method

.method public constructor <init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2, p3}, Le/k/a/b/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iput-object p1, p0, Le/k/a/c/k;->c:Ljava/io/Closeable;

    .line 7
    instance-of p2, p3, Le/k/a/b/k;

    if-eqz p2, :cond_0

    .line 8
    check-cast p3, Le/k/a/b/k;

    .line 9
    iget-object p1, p3, Le/k/a/b/k;->a:Le/k/a/b/h;

    .line 10
    iput-object p1, p0, Le/k/a/b/k;->a:Le/k/a/b/h;

    goto :goto_0

    .line 11
    :cond_0
    instance-of p2, p1, Le/k/a/b/j;

    if-eqz p2, :cond_1

    .line 12
    check-cast p1, Le/k/a/b/j;

    invoke-virtual {p1}, Le/k/a/b/j;->m1()Le/k/a/b/h;

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/k;->a:Le/k/a/b/h;

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/io/IOException;)Le/k/a/c/k;
    .locals 4

    .line 1
    new-instance v0, Le/k/a/c/k;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {p0}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "Unexpected IOException (of type %s): %s"

    .line 4
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static h(Ljava/lang/Throwable;Le/k/a/c/k$a;)Le/k/a/c/k;
    .locals 4

    .line 1
    instance-of v0, p0, Le/k/a/c/k;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Le/k/a/c/k;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "(was "

    .line 5
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    .line 6
    instance-of v2, p0, Le/k/a/b/k;

    if-eqz v2, :cond_3

    .line 7
    move-object v2, p0

    check-cast v2, Le/k/a/b/k;

    invoke-virtual {v2}, Le/k/a/b/k;->c()Ljava/lang/Object;

    move-result-object v2

    .line 8
    instance-of v3, v2, Ljava/io/Closeable;

    if-eqz v3, :cond_3

    .line 9
    move-object v1, v2

    check-cast v1, Ljava/io/Closeable;

    .line 10
    :cond_3
    new-instance v2, Le/k/a/c/k;

    invoke-direct {v2, v1, v0, p0}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v2

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Le/k/a/c/k;->f(Le/k/a/c/k$a;)V

    return-object p0
.end method

.method public static i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/k$a;

    invoke-direct {v0, p1, p2}, Le/k/a/c/k$a;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Le/k/a/c/k;->h(Ljava/lang/Throwable;Le/k/a/c/k$a;)Le/k/a/c/k;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/k;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/k$a;

    invoke-direct {v0, p1, p2}, Le/k/a/c/k$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Le/k/a/c/k;->h(Ljava/lang/Throwable;Le/k/a/c/k$a;)Le/k/a/c/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1
    .annotation runtime Le/k/a/a/o;
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/k;->c:Ljava/io/Closeable;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Le/k/a/b/k;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/c/k;->b:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const-string v1, " (through reference chain: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Le/k/a/c/k;->b:Ljava/util/LinkedList;

    if-nez v1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/k$a;

    invoke-virtual {v2}, Le/k/a/c/k$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "->"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    :goto_2
    const/16 v1, 0x29

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Le/k/a/c/k$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/k;->b:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/k/a/c/k;->b:Ljava/util/LinkedList;

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/k;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Le/k/a/c/k;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/k$a;

    invoke-direct {v0, p1, p2}, Le/k/a/c/k$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Le/k/a/c/k;->f(Le/k/a/c/k$a;)V

    return-void
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/k;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/k;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/k/a/c/k;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
