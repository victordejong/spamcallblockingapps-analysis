.class public Le/i/b/z1/v$b;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/z1/v;->e(Le/i/b/u2/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Le/i/b/u2/q;

.field public final synthetic d:Le/i/b/z1/v;


# direct methods
.method public constructor <init>(Le/i/b/z1/v;Le/i/b/u2/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/z1/v$b;->d:Le/i/b/z1/v;

    iput-object p2, p0, Le/i/b/z1/v$b;->c:Le/i/b/u2/q;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/i/b/z1/v$b;->d:Le/i/b/z1/v;

    .line 2
    iget-object v0, v0, Le/i/b/z1/v;->c:Le/i/b/e2;

    .line 3
    invoke-interface {v0}, Le/i/b/e2;->a()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Le/i/b/z1/v$b;->d:Le/i/b/z1/v;

    iget-object v3, p0, Le/i/b/z1/v$b;->c:Le/i/b/u2/q;

    new-instance v4, Le/i/b/z1/b;

    invoke-direct {v4, v3, v0, v1}, Le/i/b/z1/b;-><init>(Le/i/b/u2/q;J)V

    .line 5
    invoke-virtual {v2, v3, v4}, Le/i/b/z1/v;->f(Le/i/b/u2/q;Le/i/b/z1/b0$a;)V

    return-void
.end method
