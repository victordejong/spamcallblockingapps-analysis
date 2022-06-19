.class public abstract Le/m/a/c/m1/j;
.super Le/m/a/c/e1/f;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/m1/e;


# instance fields
.field public a:Le/m/a/c/m1/e;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/c/e1/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/j;->a:Le/m/a/c/m1/e;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1}, Le/m/a/c/m1/e;->a(I)J

    move-result-wide v0

    iget-wide v2, p0, Le/m/a/c/m1/j;->b:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/j;->a:Le/m/a/c/m1/e;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Le/m/a/c/m1/e;->c()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/m/a/c/e1/a;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/m/a/c/m1/j;->a:Le/m/a/c/m1/e;

    return-void
.end method

.method public d(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/j;->a:Le/m/a/c/m1/e;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Le/m/a/c/m1/j;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Le/m/a/c/m1/e;->d(J)I

    move-result p1

    return p1
.end method

.method public e(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Le/m/a/c/m1/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/j;->a:Le/m/a/c/m1/e;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Le/m/a/c/m1/j;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Le/m/a/c/m1/e;->e(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
