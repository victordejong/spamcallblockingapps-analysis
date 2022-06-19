.class public final synthetic Le/i/b/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x2$a;


# instance fields
.field public final synthetic a:Le/i/b/x2;


# direct methods
.method public synthetic constructor <init>(Le/i/b/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/b1;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Le/i/b/b1;->a:Le/i/b/x2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Le/i/b/b2/c;

    const/4 v2, 0x3

    new-array v2, v2, [Le/i/b/b2/d;

    new-instance v3, Le/i/b/b2/e;

    invoke-direct {v3}, Le/i/b/b2/e;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Le/i/b/b2/b;

    .line 3
    invoke-virtual {v0}, Le/i/b/x2;->l()Le/i/b/s2/c;

    move-result-object v4

    invoke-virtual {v0}, Le/i/b/x2;->a()Le/i/b/s2/i;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Le/i/b/b2/b;-><init>(Le/i/b/s2/c;Le/i/b/s2/i;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Le/i/b/b2/f;

    invoke-direct {v3}, Le/i/b/b2/f;-><init>()V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 4
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Le/i/b/x2;->b()Le/i/b/d2/c;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Le/i/b/b2/c;-><init>(Ljava/util/List;Le/i/b/d2/c;)V

    return-object v1
.end method
