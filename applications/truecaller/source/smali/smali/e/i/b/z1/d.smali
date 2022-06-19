.class public final synthetic Le/i/b/z1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/z1/b0$a;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/i/b/z1/d;->a:Z

    iput-wide p2, p0, Le/i/b/z1/d;->b:J

    return-void
.end method


# virtual methods
.method public final a(Le/i/b/z1/x$a;)V
    .locals 3

    iget-boolean v0, p0, Le/i/b/z1/d;->a:Z

    iget-wide v1, p0, Le/i/b/z1/d;->b:J

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Le/i/b/z1/g$b;

    .line 2
    iput-object v0, v1, Le/i/b/z1/g$b;->e:Ljava/lang/Long;

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Le/i/b/z1/x$a;->d(Z)Le/i/b/z1/x$a;

    return-void
.end method
