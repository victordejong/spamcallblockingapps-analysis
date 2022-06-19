.class public Le/i/a/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/i/a/a/b/c;


# direct methods
.method public constructor <init>(Le/i/a/a/b/c;)V
    .locals 0

    iput-object p1, p0, Le/i/a/a/b/b;->a:Le/i/a/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Le/i/a/a/b/b;->a:Le/i/a/a/b/c;

    .line 1
    iget-wide v1, v0, Le/i/a/a/b/c;->c:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, v0, Le/i/a/a/b/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Le/i/a/a/b/c;->a()V

    :cond_0
    return-void
.end method
