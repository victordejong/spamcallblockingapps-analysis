.class public final Le/m/e/e0/a0/b$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/e/e0/a0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Le/m/e/b0<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final a:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Le/m/e/e0/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/e0/t<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/e/k;Ljava/lang/reflect/Type;Le/m/e/b0;Le/m/e/e0/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/k;",
            "Ljava/lang/reflect/Type;",
            "Le/m/e/b0<",
            "TE;>;",
            "Le/m/e/e0/t<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    new-instance v0, Le/m/e/e0/a0/n;

    invoke-direct {v0, p1, p3, p2}, Le/m/e/e0/a0/n;-><init>(Le/m/e/k;Le/m/e/b0;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Le/m/e/e0/a0/b$a;->a:Le/m/e/b0;

    .line 3
    iput-object p4, p0, Le/m/e/e0/a0/b$a;->b:Le/m/e/e0/t;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v0

    sget-object v1, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    const/4 p1, 0x0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/e/e0/a0/b$a;->b:Le/m/e/e0/t;

    invoke-interface {v0}, Le/m/e/e0/t;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 4
    invoke-virtual {p1}, Le/m/e/g0/a;->b()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Le/m/e/e0/a0/b$a;->a:Le/m/e/b0;

    invoke-virtual {v1, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Le/m/e/g0/a;->l()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->d()Le/m/e/g0/c;

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/m/e/e0/a0/b$a;->a:Le/m/e/b0;

    invoke-virtual {v1, p1, v0}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Le/m/e/g0/c;->l()Le/m/e/g0/c;

    :goto_1
    return-void
.end method
