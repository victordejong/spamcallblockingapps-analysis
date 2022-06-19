.class public Le/i/b/z1/v$e;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/z1/v;->b(Le/i/b/u2/p;Le/i/b/u2/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Le/i/b/u2/w;

.field public final synthetic d:Le/i/b/z1/v;


# direct methods
.method public constructor <init>(Le/i/b/z1/v;Le/i/b/u2/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/z1/v$e;->d:Le/i/b/z1/v;

    iput-object p2, p0, Le/i/b/z1/v$e;->c:Le/i/b/u2/w;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/i/b/z1/v$e;->c:Le/i/b/u2/w;

    invoke-virtual {v0}, Le/i/b/u2/w;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/i/b/z1/v$e;->c:Le/i/b/u2/w;

    iget-object v2, p0, Le/i/b/z1/v$e;->d:Le/i/b/z1/v;

    .line 3
    iget-object v2, v2, Le/i/b/z1/v;->c:Le/i/b/e2;

    .line 4
    invoke-virtual {v1, v2}, Le/i/b/u2/w;->d(Le/i/b/e2;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 5
    iget-object v2, p0, Le/i/b/z1/v$e;->d:Le/i/b/z1/v;

    .line 6
    iget-object v2, v2, Le/i/b/z1/v;->c:Le/i/b/e2;

    .line 7
    invoke-interface {v2}, Le/i/b/e2;->a()J

    move-result-wide v2

    .line 8
    iget-object v4, p0, Le/i/b/z1/v$e;->d:Le/i/b/z1/v;

    .line 9
    iget-object v4, v4, Le/i/b/z1/v;->a:Le/i/b/z1/b0;

    .line 10
    new-instance v5, Le/i/b/z1/d;

    invoke-direct {v5, v1, v2, v3}, Le/i/b/z1/d;-><init>(ZJ)V

    invoke-virtual {v4, v0, v5}, Le/i/b/z1/b0;->c(Ljava/lang/String;Le/i/b/z1/b0$a;)V

    .line 11
    iget-object v1, p0, Le/i/b/z1/v$e;->d:Le/i/b/z1/v;

    .line 12
    iget-object v2, v1, Le/i/b/z1/v;->b:Le/i/b/z1/h0;

    .line 13
    iget-object v1, v1, Le/i/b/z1/v;->a:Le/i/b/z1/b0;

    .line 14
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v3, Le/i/b/z1/h0$a;

    invoke-direct {v3, v2}, Le/i/b/z1/h0$a;-><init>(Le/i/b/z1/h0;)V

    invoke-virtual {v1, v0, v3}, Le/i/b/z1/b0;->b(Ljava/lang/String;Le/i/b/z1/z;)V

    return-void
.end method
