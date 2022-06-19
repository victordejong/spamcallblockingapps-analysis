.class public final synthetic Le/i/b/z1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/z1/b0$a;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:J

.field public final synthetic c:Z

.field public final synthetic d:Le/i/b/u2/w;


# direct methods
.method public synthetic constructor <init>(ZJZLe/i/b/u2/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/i/b/z1/c;->a:Z

    iput-wide p2, p0, Le/i/b/z1/c;->b:J

    iput-boolean p4, p0, Le/i/b/z1/c;->c:Z

    iput-object p5, p0, Le/i/b/z1/c;->d:Le/i/b/u2/w;

    return-void
.end method


# virtual methods
.method public final a(Le/i/b/z1/x$a;)V
    .locals 6

    iget-boolean v0, p0, Le/i/b/z1/c;->a:Z

    iget-wide v1, p0, Le/i/b/z1/c;->b:J

    iget-boolean v3, p0, Le/i/b/z1/c;->c:Z

    iget-object v4, p0, Le/i/b/z1/c;->d:Le/i/b/u2/w;

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Le/i/b/z1/g$b;

    .line 2
    iput-object v0, v1, Le/i/b/z1/g$b;->b:Ljava/lang/Long;

    .line 3
    invoke-virtual {p1, v5}, Le/i/b/z1/x$a;->d(Z)Le/i/b/z1/x$a;

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p1, v5}, Le/i/b/z1/x$a;->d(Z)Le/i/b/z1/x$a;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast p1, Le/i/b/z1/g$b;

    .line 6
    iput-object v0, p1, Le/i/b/z1/g$b;->b:Ljava/lang/Long;

    .line 7
    invoke-virtual {v4}, Le/i/b/u2/w;->m()Ljava/lang/Integer;

    move-result-object v0

    .line 8
    iput-object v0, p1, Le/i/b/z1/g$b;->h:Ljava/lang/Integer;

    :goto_0
    return-void
.end method
