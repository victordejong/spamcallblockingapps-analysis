.class public Le/k/a/c/l0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/k/a/c/d;

.field public final b:Le/k/a/c/g0/i;

.field public c:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Le/k/a/c/l0/t/t;


# direct methods
.method public constructor <init>(Le/k/a/c/d;Le/k/a/c/g0/i;Le/k/a/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d;",
            "Le/k/a/c/g0/i;",
            "Le/k/a/c/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/k/a/c/l0/a;->b:Le/k/a/c/g0/i;

    .line 3
    iput-object p1, p0, Le/k/a/c/l0/a;->a:Le/k/a/c/d;

    .line 4
    iput-object p3, p0, Le/k/a/c/l0/a;->c:Le/k/a/c/n;

    .line 5
    instance-of p1, p3, Le/k/a/c/l0/t/t;

    if-eqz p1, :cond_0

    .line 6
    check-cast p3, Le/k/a/c/l0/t/t;

    iput-object p3, p0, Le/k/a/c/l0/a;->d:Le/k/a/c/l0/t/t;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/a;->b:Le/k/a/c/g0/i;

    invoke-virtual {v0, p1}, Le/k/a/c/g0/i;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Le/k/a/c/l0/a;->d:Le/k/a/c/l0/t/t;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/l0/t/t;->t(Ljava/util/Map;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Le/k/a/c/l0/a;->c:Le/k/a/c/n;

    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void

    .line 6
    :cond_2
    iget-object p2, p0, Le/k/a/c/l0/a;->a:Le/k/a/c/d;

    invoke-interface {p2}, Le/k/a/c/d;->getType()Le/k/a/c/i;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/k/a/c/l0/a;->b:Le/k/a/c/g0/i;

    .line 7
    invoke-virtual {v2}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Value returned by \'any-getter\' %s() not java.util.Map but %s"

    .line 8
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Le/k/a/c/a0;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
