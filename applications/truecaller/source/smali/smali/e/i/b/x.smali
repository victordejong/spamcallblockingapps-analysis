.class public final synthetic Le/i/b/x;
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

    iput-object p1, p0, Le/i/b/x;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Le/i/b/x;->a:Le/i/b/x2;

    .line 1
    new-instance v1, Lcom/criteo/publisher/advancednative/RendererHelper;

    .line 2
    new-instance v2, Le/i/b/t;

    invoke-direct {v2, v0}, Le/i/b/t;-><init>(Le/i/b/x2;)V

    const-class v3, Le/i/b/r1/o;

    .line 3
    iget-object v4, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Le/i/b/k1;

    invoke-direct {v5, v2}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v4, v3, v5}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Le/i/b/r1/o;

    .line 5
    invoke-virtual {v0}, Le/i/b/x2;->i()Le/i/b/w1/c;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/criteo/publisher/advancednative/RendererHelper;-><init>(Le/i/b/r1/o;Le/i/b/w1/c;)V

    return-object v1
.end method
