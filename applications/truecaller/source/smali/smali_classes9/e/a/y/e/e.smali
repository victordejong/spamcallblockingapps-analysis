.class public final synthetic Le/a/y/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/e/k$a;


# instance fields
.field public final synthetic a:Le/a/y/e/k;

.field public final synthetic b:Le/a/y/e/k$a;

.field public final synthetic c:Le/a/y/e/m;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Le/a/y/e/k;Le/a/y/e/k$a;Le/a/y/e/m;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/e/e;->a:Le/a/y/e/k;

    iput-object p2, p0, Le/a/y/e/e;->b:Le/a/y/e/k$a;

    iput-object p3, p0, Le/a/y/e/e;->c:Le/a/y/e/m;

    iput-wide p4, p0, Le/a/y/e/e;->d:J

    return-void
.end method


# virtual methods
.method public final s(Le/a/y/e/i;)V
    .locals 5

    iget-object v0, p0, Le/a/y/e/e;->a:Le/a/y/e/k;

    iget-object v1, p0, Le/a/y/e/e;->b:Le/a/y/e/k$a;

    iget-object v2, p0, Le/a/y/e/e;->c:Le/a/y/e/m;

    iget-wide v3, p0, Le/a/y/e/e;->d:J

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v1, p1}, Le/a/y/e/k$a;->s(Le/a/y/e/i;)V

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, v0, Le/a/y/e/k;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v2, v0, p1, v3, v4}, Le/a/y/e/m;->d(Landroid/content/Context;Le/a/y/e/i;J)V

    :cond_0
    return-void
.end method
