.class public Le/k/a/c/l0/t/o0$b;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/t/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public transient c:Le/k/a/c/l0/s/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;Z)V

    .line 2
    sget-object v0, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object v0, p0, Le/k/a/c/l0/t/o0$b;->c:Le/k/a/c/l0/s/l;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/c/l0/t/o0$b;->c:Le/k/a/c/l0/s/l;

    .line 3
    invoke-virtual {v1, v0}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    .line 5
    new-instance v2, Le/k/a/c/l0/t/o0$a;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v0}, Le/k/a/c/l0/t/o0$a;-><init>(ILjava/lang/Class;)V

    .line 6
    invoke-virtual {v1, v0, v2}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/l0/t/o0$b;->c:Le/k/a/c/l0/s/l;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p3, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 8
    iget-object v2, v2, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 9
    iget-object v2, v2, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 10
    sget-object v3, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0, v3}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v2

    .line 11
    invoke-virtual {p3, v2, v4}, Le/k/a/c/a0;->w(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v2

    .line 12
    invoke-virtual {v1, v0, v2}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object v0

    if-eq v1, v0, :cond_1

    .line 13
    iput-object v0, p0, Le/k/a/c/l0/t/o0$b;->c:Le/k/a/c/l0/s/l;

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {v2, p1, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object v0, p0, Le/k/a/c/l0/t/o0$b;->c:Le/k/a/c/l0/s/l;

    return-object p0
.end method
