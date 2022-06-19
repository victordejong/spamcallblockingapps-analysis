.class public Le/k/a/c/l0/t/s$a;
.super Le/k/a/c/j0/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/t/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/k/a/c/j0/h;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/k/a/c/j0/h;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/j0/h;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/t/s$a;->a:Le/k/a/c/j0/h;

    .line 3
    iput-object p2, p0, Le/k/a/c/l0/t/s$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/d;)Le/k/a/c/j0/h;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/s$a;->a:Le/k/a/c/j0/h;

    invoke-virtual {v0}, Le/k/a/c/j0/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Le/k/a/a/e0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/s$a;->a:Le/k/a/c/j0/h;

    invoke-virtual {v0}, Le/k/a/c/j0/h;->c()Le/k/a/a/e0$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/s$a;->b:Ljava/lang/Object;

    iput-object v0, p2, Le/k/a/b/z/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/k/a/c/l0/t/s$a;->a:Le/k/a/c/j0/h;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object p1

    return-object p1
.end method

.method public f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/s$a;->a:Le/k/a/c/j0/h;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object p1

    return-object p1
.end method
