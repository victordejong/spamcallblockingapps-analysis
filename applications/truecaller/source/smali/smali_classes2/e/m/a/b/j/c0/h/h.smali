.class public final synthetic Le/m/a/b/j/c0/h/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/d0/b$a;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/h/t;

.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Le/m/a/b/j/r;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/h/t;Ljava/lang/Iterable;Le/m/a/b/j/r;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/h/h;->a:Le/m/a/b/j/c0/h/t;

    iput-object p2, p0, Le/m/a/b/j/c0/h/h;->b:Ljava/lang/Iterable;

    iput-object p3, p0, Le/m/a/b/j/c0/h/h;->c:Le/m/a/b/j/r;

    iput-wide p4, p0, Le/m/a/b/j/c0/h/h;->d:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Le/m/a/b/j/c0/h/h;->a:Le/m/a/b/j/c0/h/t;

    iget-object v1, p0, Le/m/a/b/j/c0/h/h;->b:Ljava/lang/Iterable;

    iget-object v2, p0, Le/m/a/b/j/c0/h/h;->c:Le/m/a/b/j/r;

    iget-wide v3, p0, Le/m/a/b/j/c0/h/h;->d:J

    .line 1
    iget-object v5, v0, Le/m/a/b/j/c0/h/t;->c:Le/m/a/b/j/c0/i/a0;

    invoke-interface {v5, v1}, Le/m/a/b/j/c0/i/a0;->x1(Ljava/lang/Iterable;)V

    .line 2
    iget-object v1, v0, Le/m/a/b/j/c0/h/t;->c:Le/m/a/b/j/c0/i/a0;

    iget-object v0, v0, Le/m/a/b/j/c0/h/t;->g:Le/m/a/b/j/e0/a;

    .line 3
    invoke-interface {v0}, Le/m/a/b/j/e0/a;->a()J

    move-result-wide v5

    add-long/2addr v5, v3

    .line 4
    invoke-interface {v1, v2, v5, v6}, Le/m/a/b/j/c0/i/a0;->G(Le/m/a/b/j/r;J)V

    const/4 v0, 0x0

    return-object v0
.end method
