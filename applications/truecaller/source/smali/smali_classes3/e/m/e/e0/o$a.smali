.class public Le/m/e/e0/o$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/e/e0/o;->create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Le/m/e/k;

.field public final synthetic e:Le/m/e/f0/a;

.field public final synthetic f:Le/m/e/e0/o;


# direct methods
.method public constructor <init>(Le/m/e/e0/o;ZZLe/m/e/k;Le/m/e/f0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/e/e0/o$a;->f:Le/m/e/e0/o;

    iput-boolean p2, p0, Le/m/e/e0/o$a;->b:Z

    iput-boolean p3, p0, Le/m/e/e0/o$a;->c:Z

    iput-object p4, p0, Le/m/e/e0/o$a;->d:Le/m/e/k;

    iput-object p5, p0, Le/m/e/e0/o$a;->e:Le/m/e/f0/a;

    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/g0/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/e/e0/o$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/e/e0/o$a;->a:Le/m/e/b0;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Le/m/e/e0/o$a;->d:Le/m/e/k;

    iget-object v1, p0, Le/m/e/e0/o$a;->f:Le/m/e/e0/o;

    iget-object v2, p0, Le/m/e/e0/o$a;->e:Le/m/e/f0/a;

    invoke-virtual {v0, v1, v2}, Le/m/e/k;->j(Le/m/e/c0;Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/m/e/e0/o$a;->a:Le/m/e/b0;

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/g0/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/e/e0/o$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/e/e0/o$a;->a:Le/m/e/b0;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Le/m/e/e0/o$a;->d:Le/m/e/k;

    iget-object v1, p0, Le/m/e/e0/o$a;->f:Le/m/e/e0/o;

    iget-object v2, p0, Le/m/e/e0/o$a;->e:Le/m/e/f0/a;

    invoke-virtual {v0, v1, v2}, Le/m/e/k;->j(Le/m/e/c0;Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/m/e/e0/o$a;->a:Le/m/e/b0;

    .line 5
    :goto_0
    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    return-void
.end method
