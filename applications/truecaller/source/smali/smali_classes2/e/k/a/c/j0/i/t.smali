.class public abstract Le/k/a/c/j0/i/t;
.super Le/k/a/c/j0/h;
.source "SourceFile"


# instance fields
.field public final a:Le/k/a/c/j0/f;

.field public final b:Le/k/a/c/d;


# direct methods
.method public constructor <init>(Le/k/a/c/j0/f;Le/k/a/c/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/j0/h;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/j0/i/t;->a:Le/k/a/c/j0/f;

    .line 3
    iput-object p2, p0, Le/k/a/c/j0/i/t;->b:Le/k/a/c/d;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Le/k/a/b/z/b;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p2, Le/k/a/b/z/b;->a:Ljava/lang/Object;

    .line 3
    iget-object v1, p2, Le/k/a/b/z/b;->b:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Le/k/a/c/j0/i/t;->a:Le/k/a/c/j0/f;

    invoke-interface {v1, v0}, Le/k/a/c/j0/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Le/k/a/c/j0/i/t;->a:Le/k/a/c/j0/f;

    invoke-interface {v2, v0, v1}, Le/k/a/c/j0/f;->e(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iput-object v0, p2, Le/k/a/b/z/b;->c:Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p2, Le/k/a/b/z/b;->c:Ljava/lang/Object;

    .line 9
    iget-object v1, p2, Le/k/a/b/z/b;->f:Le/k/a/b/m;

    .line 10
    invoke-virtual {p1}, Le/k/a/b/g;->k()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 11
    iput-boolean v3, p2, Le/k/a/b/z/b;->g:Z

    .line 12
    invoke-virtual {p1, v0}, Le/k/a/b/g;->Z1(Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, p2, Le/k/a/b/z/b;->g:Z

    .line 15
    iget-object v4, p2, Le/k/a/b/z/b;->e:Le/k/a/b/z/b$a;

    .line 16
    sget-object v5, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-eq v1, v5, :cond_6

    .line 17
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v5, Le/k/a/b/z/b$a;->c:Le/k/a/b/z/b$a;

    if-eq v4, v5, :cond_4

    sget-object v5, Le/k/a/b/z/b$a;->d:Le/k/a/b/z/b$a;

    if-ne v4, v5, :cond_5

    :cond_4
    move v3, v2

    :cond_5
    if-eqz v3, :cond_6

    .line 19
    sget-object v4, Le/k/a/b/z/b$a;->a:Le/k/a/b/z/b$a;

    iput-object v4, p2, Le/k/a/b/z/b;->e:Le/k/a/b/z/b$a;

    .line 20
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v2, :cond_8

    const/4 v2, 0x2

    if-eq v3, v2, :cond_7

    const/4 v2, 0x3

    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-eq v3, v2, :cond_9

    .line 21
    invoke-virtual {p1}, Le/k/a/b/g;->F1()V

    .line 22
    invoke-virtual {p1, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_7
    iget-object v1, p2, Le/k/a/b/z/b;->a:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Le/k/a/b/g;->O1(Ljava/lang/Object;)V

    .line 24
    iget-object v1, p2, Le/k/a/b/z/b;->d:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    goto :goto_3

    .line 27
    :cond_8
    invoke-virtual {p1}, Le/k/a/b/g;->M1()V

    .line 28
    invoke-virtual {p1, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 29
    :cond_9
    :goto_2
    sget-object v0, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne v1, v0, :cond_a

    .line 30
    iget-object v0, p2, Le/k/a/b/z/b;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Le/k/a/b/g;->O1(Ljava/lang/Object;)V

    goto :goto_3

    .line 31
    :cond_a
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v1, v0, :cond_b

    .line 32
    invoke-virtual {p1}, Le/k/a/b/g;->F1()V

    :cond_b
    :goto_3
    return-object p2
.end method

.method public f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p2, Le/k/a/b/z/b;->f:Le/k/a/b/m;

    .line 3
    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Le/k/a/b/g;->t0()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Le/k/a/b/g;->p0()V

    .line 7
    :cond_1
    :goto_0
    iget-boolean v0, p2, Le/k/a/b/z/b;->g:Z

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p2, Le/k/a/b/z/b;->e:Le/k/a/b/z/b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 9
    invoke-virtual {p1}, Le/k/a/b/g;->t0()V

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, p2, Le/k/a/b/z/b;->c:Ljava/lang/Object;

    .line 11
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_1
    iget-object v1, p2, Le/k/a/b/z/b;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {p1}, Le/k/a/b/g;->p0()V

    :cond_5
    :goto_2
    return-object p2
.end method
