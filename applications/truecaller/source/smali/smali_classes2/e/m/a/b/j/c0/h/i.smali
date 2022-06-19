.class public final synthetic Le/m/a/b/j/c0/h/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/d0/b$a;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/h/t;

.field public final synthetic b:Le/m/a/b/j/r;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/h/t;Le/m/a/b/j/r;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/h/i;->a:Le/m/a/b/j/c0/h/t;

    iput-object p2, p0, Le/m/a/b/j/c0/h/i;->b:Le/m/a/b/j/r;

    iput-wide p3, p0, Le/m/a/b/j/c0/h/i;->c:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Le/m/a/b/j/c0/h/i;->a:Le/m/a/b/j/c0/h/t;

    iget-object v1, p0, Le/m/a/b/j/c0/h/i;->b:Le/m/a/b/j/r;

    iget-wide v2, p0, Le/m/a/b/j/c0/h/i;->c:J

    .line 1
    iget-object v4, v0, Le/m/a/b/j/c0/h/t;->c:Le/m/a/b/j/c0/i/a0;

    iget-object v0, v0, Le/m/a/b/j/c0/h/t;->g:Le/m/a/b/j/e0/a;

    .line 2
    invoke-interface {v0}, Le/m/a/b/j/e0/a;->a()J

    move-result-wide v5

    add-long/2addr v5, v2

    .line 3
    invoke-interface {v4, v1, v5, v6}, Le/m/a/b/j/c0/i/a0;->G(Le/m/a/b/j/r;J)V

    const/4 v0, 0x0

    return-object v0
.end method
