.class public final synthetic Le/i/b/q0;
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

    iput-object p1, p0, Le/i/b/q0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Le/i/b/q0;->a:Le/i/b/x2;

    .line 1
    new-instance v1, Le/i/b/d2/c;

    .line 2
    invoke-virtual {v0}, Le/i/b/x2;->n()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3
    sget-object v3, Le/i/b/j;->a:Le/i/b/j;

    const-class v4, Le/i/b/d2/b;

    .line 4
    iget-object v0, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Le/i/b/k1;

    invoke-direct {v5, v3}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v0, v4, v5}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Le/i/b/d2/b;

    .line 6
    invoke-direct {v1, v2, v0}, Le/i/b/d2/c;-><init>(Landroid/content/SharedPreferences;Le/i/b/d2/b;)V

    return-object v1
.end method
