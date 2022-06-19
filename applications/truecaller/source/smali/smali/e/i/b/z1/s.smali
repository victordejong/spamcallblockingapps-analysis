.class public Le/i/b/z1/s;
.super Le/i/b/z1/b0;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/z1/b0;

.field public final b:Le/i/b/s2/f;


# direct methods
.method public constructor <init>(Le/i/b/z1/b0;Le/i/b/s2/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/i/b/z1/b0;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/z1/s;->a:Le/i/b/z1/b0;

    .line 3
    iput-object p2, p0, Le/i/b/z1/s;->b:Le/i/b/s2/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Le/i/b/z1/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/z1/s;->a:Le/i/b/z1/b0;

    invoke-virtual {v0}, Le/i/b/z1/b0;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Le/i/b/z1/z;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/z1/s;->a:Le/i/b/z1/b0;

    invoke-virtual {v0, p1, p2}, Le/i/b/z1/b0;->b(Ljava/lang/String;Le/i/b/z1/z;)V

    return-void
.end method

.method public c(Ljava/lang/String;Le/i/b/z1/b0$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/z1/s;->a:Le/i/b/z1/b0;

    invoke-virtual {v0}, Le/i/b/z1/b0;->e()I

    move-result v0

    .line 2
    iget-object v1, p0, Le/i/b/z1/s;->b:Le/i/b/s2/f;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xc000

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/i/b/z1/s;->a:Le/i/b/z1/b0;

    invoke-virtual {v0, p1}, Le/i/b/z1/b0;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le/i/b/z1/s;->a:Le/i/b/z1/b0;

    invoke-virtual {v0, p1, p2}, Le/i/b/z1/b0;->c(Ljava/lang/String;Le/i/b/z1/b0$a;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/z1/s;->a:Le/i/b/z1/b0;

    invoke-virtual {v0, p1}, Le/i/b/z1/b0;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/z1/s;->a:Le/i/b/z1/b0;

    invoke-virtual {v0}, Le/i/b/z1/b0;->e()I

    move-result v0

    return v0
.end method
