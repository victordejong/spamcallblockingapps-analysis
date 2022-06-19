.class public Le/m/e/e0/a0/i;
.super Le/m/e/e0/a0/j$b;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ljava/lang/reflect/Field;

.field public final synthetic e:Z

.field public final synthetic f:Le/m/e/b0;

.field public final synthetic g:Le/m/e/k;

.field public final synthetic h:Le/m/e/f0/a;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Le/m/e/e0/a0/j;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLe/m/e/b0;Le/m/e/k;Le/m/e/f0/a;Z)V
    .locals 0

    .line 1
    iput-object p5, p0, Le/m/e/e0/a0/i;->d:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Le/m/e/e0/a0/i;->e:Z

    iput-object p7, p0, Le/m/e/e0/a0/i;->f:Le/m/e/b0;

    iput-object p8, p0, Le/m/e/e0/a0/i;->g:Le/m/e/k;

    iput-object p9, p0, Le/m/e/e0/a0/i;->h:Le/m/e/f0/a;

    iput-boolean p10, p0, Le/m/e/e0/a0/i;->i:Z

    invoke-direct {p0, p2, p3, p4}, Le/m/e/e0/a0/j$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Le/m/e/g0/a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/i;->f:Le/m/e/b0;

    invoke-virtual {v0, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-boolean v0, p0, Le/m/e/e0/a0/i;->i:Z

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/e/e0/a0/i;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/i;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Le/m/e/e0/a0/i;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/e/e0/a0/i;->f:Le/m/e/b0;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Le/m/e/e0/a0/n;

    iget-object v1, p0, Le/m/e/e0/a0/i;->g:Le/m/e/k;

    iget-object v2, p0, Le/m/e/e0/a0/i;->f:Le/m/e/b0;

    iget-object v3, p0, Le/m/e/e0/a0/i;->h:Le/m/e/f0/a;

    invoke-virtual {v3}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Le/m/e/e0/a0/n;-><init>(Le/m/e/k;Le/m/e/b0;Ljava/lang/reflect/Type;)V

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/e/e0/a0/j$b;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/e/e0/a0/i;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
