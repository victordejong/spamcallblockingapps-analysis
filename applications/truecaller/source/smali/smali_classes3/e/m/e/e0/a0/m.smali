.class public final Le/m/e/e0/a0/m;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/e/e0/a0/m$b;,
        Le/m/e/e0/a0/m$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/m/e/b0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/m/e/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/y<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Le/m/e/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Le/m/e/k;

.field public final d:Le/m/e/f0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/f0/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Le/m/e/c0;

.field public final f:Le/m/e/e0/a0/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/e0/a0/m<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field public g:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/e/y;Le/m/e/p;Le/m/e/k;Le/m/e/f0/a;Le/m/e/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/y<",
            "TT;>;",
            "Le/m/e/p<",
            "TT;>;",
            "Le/m/e/k;",
            "Le/m/e/f0/a<",
            "TT;>;",
            "Le/m/e/c0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    new-instance v0, Le/m/e/e0/a0/m$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/m/e/e0/a0/m$b;-><init>(Le/m/e/e0/a0/m;Le/m/e/e0/a0/m$a;)V

    iput-object v0, p0, Le/m/e/e0/a0/m;->f:Le/m/e/e0/a0/m$b;

    .line 3
    iput-object p1, p0, Le/m/e/e0/a0/m;->a:Le/m/e/y;

    .line 4
    iput-object p2, p0, Le/m/e/e0/a0/m;->b:Le/m/e/p;

    .line 5
    iput-object p3, p0, Le/m/e/e0/a0/m;->c:Le/m/e/k;

    .line 6
    iput-object p4, p0, Le/m/e/e0/a0/m;->d:Le/m/e/f0/a;

    .line 7
    iput-object p5, p0, Le/m/e/e0/a0/m;->e:Le/m/e/c0;

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
    iget-object v0, p0, Le/m/e/e0/a0/m;->b:Le/m/e/p;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/m/e/e0/a0/m;->g:Le/m/e/b0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/e/e0/a0/m;->c:Le/m/e/k;

    iget-object v1, p0, Le/m/e/e0/a0/m;->e:Le/m/e/c0;

    iget-object v2, p0, Le/m/e/e0/a0/m;->d:Le/m/e/f0/a;

    invoke-virtual {v0, v1, v2}, Le/m/e/k;->j(Le/m/e/c0;Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/m/e/e0/a0/m;->g:Le/m/e/b0;

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-static {p1}, Le/m/d/y/n;->M0(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    instance-of v0, p1, Le/m/e/s;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_2
    iget-object v0, p0, Le/m/e/e0/a0/m;->b:Le/m/e/p;

    iget-object v1, p0, Le/m/e/e0/a0/m;->d:Le/m/e/f0/a;

    invoke-virtual {v1}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Le/m/e/e0/a0/m;->f:Le/m/e/e0/a0/m$b;

    invoke-interface {v0, p1, v1, v2}, Le/m/e/p;->a(Le/m/e/q;Ljava/lang/reflect/Type;Le/m/e/o;)Ljava/lang/Object;

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
    iget-object v0, p0, Le/m/e/e0/a0/m;->a:Le/m/e/y;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/m/e/e0/a0/m;->g:Le/m/e/b0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/e/e0/a0/m;->c:Le/m/e/k;

    iget-object v1, p0, Le/m/e/e0/a0/m;->e:Le/m/e/c0;

    iget-object v2, p0, Le/m/e/e0/a0/m;->d:Le/m/e/f0/a;

    invoke-virtual {v0, v1, v2}, Le/m/e/k;->j(Le/m/e/c0;Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/m/e/e0/a0/m;->g:Le/m/e/b0;

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 5
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Le/m/e/e0/a0/m;->d:Le/m/e/f0/a;

    invoke-virtual {v1}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Le/m/e/e0/a0/m;->f:Le/m/e/e0/a0/m$b;

    invoke-interface {v0, p2, v1, v2}, Le/m/e/y;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/m/e/x;)Le/m/e/q;

    move-result-object p2

    .line 7
    sget-object v0, Le/m/e/e0/a0/o;->X:Le/m/e/b0;

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    return-void
.end method
