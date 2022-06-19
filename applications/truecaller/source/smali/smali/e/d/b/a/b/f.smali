.class public Le/d/b/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/d/b/a/b/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/d/b/a/b/m;

    invoke-direct {v0}, Le/d/b/a/b/m;-><init>()V

    iput-object v0, p0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    return-void
.end method

.method public constructor <init>(Le/d/b/a/b/m;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Le/d/b/a/b/m;->e(I)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/d/b/a/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 v1, 0x8c

    invoke-virtual {v0, p1, v1}, Le/d/b/a/b/m;->i(II)V

    return-void
.end method

.method public c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/d/b/a/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 v1, 0x8d

    invoke-virtual {v0, p1, v1}, Le/d/b/a/b/m;->i(II)V

    return-void
.end method
