.class public Le/b/a/y/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/w/c/a$a;


# instance fields
.field public final synthetic a:Le/b/a/w/c/c;

.field public final synthetic b:Le/b/a/y/l/b;


# direct methods
.method public constructor <init>(Le/b/a/y/l/b;Le/b/a/w/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/a/y/l/a;->b:Le/b/a/y/l/b;

    iput-object p2, p0, Le/b/a/y/l/a;->a:Le/b/a/w/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/y/l/a;->b:Le/b/a/y/l/b;

    iget-object v1, p0, Le/b/a/y/l/a;->a:Le/b/a/w/c/c;

    invoke-virtual {v1}, Le/b/a/w/c/c;->j()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-boolean v2, v0, Le/b/a/y/l/b;->v:Z

    if-eq v1, v2, :cond_1

    .line 3
    iput-boolean v1, v0, Le/b/a/y/l/b;->v:Z

    .line 4
    iget-object v0, v0, Le/b/a/y/l/b;->n:Le/b/a/k;

    invoke-virtual {v0}, Le/b/a/k;->invalidateSelf()V

    :cond_1
    return-void
.end method
