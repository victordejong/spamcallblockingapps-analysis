.class public Le/m/b/x/b/d0/a;
.super Le/m/b/x/b/a;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Le/m/b/x/c/c;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/m/b/x/c/c;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 1
    invoke-direct {p0, v0}, Le/m/b/x/b/a;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/m/b/x/b/d0/a;->d:Le/m/b/x/c/c;

    .line 4
    iput-object p2, p0, Le/m/b/x/b/d0/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/b/d0/a;->d:Le/m/b/x/c/c;

    invoke-virtual {p0}, Le/m/b/x/b/a;->d()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/m/b/x/c/c;->a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Le/m/b/x/c/d;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/m/b/x/b/d0/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Le/m/b/x/c/j/b;

    .line 4
    iget-object v1, v0, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {v1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    .line 5
    iget-object v1, p0, Le/m/b/x/b/d0/a;->e:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {v0, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 7
    :cond_0
    iget-object v0, p0, Le/m/b/x/b/d0/a;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1, v0}, Le/m/b/x/c/d;->b(ZLjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Le/m/b/x/b/d0/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 10
    move-object v0, p1

    check-cast v0, Le/m/b/x/c/j/b;

    .line 11
    iget-object v0, v0, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {v0}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    .line 12
    :cond_1
    check-cast p1, Le/m/b/x/c/j/b;

    .line 13
    iget-object p1, p1, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p1}, Le/m/e/g0/c;->flush()V

    return-void
.end method
