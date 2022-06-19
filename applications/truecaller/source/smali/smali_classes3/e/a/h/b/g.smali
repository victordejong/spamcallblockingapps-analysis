.class public abstract Le/a/h/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/r;


# instance fields
.field public final a:Le/a/b0/i/b;

.field public b:Le/a/h/b/r$a;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Long;)V
    .locals 6

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentUri"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/g;->c:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/h/b/g;->d:Landroid/net/Uri;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    new-instance p1, Le/a/h/b/g$a;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Le/a/h/b/g$a;-><init>(Le/a/h/b/g;Ljava/lang/Long;Landroid/os/Handler;J)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Le/a/h/b/g$b;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Le/a/h/b/g$b;-><init>(Le/a/h/b/g;Landroid/os/Handler;)V

    .line 4
    :goto_0
    iput-object p1, p0, Le/a/h/b/g;->a:Le/a/b0/i/b;

    return-void
.end method


# virtual methods
.method public b(Le/a/h/b/r$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/b/g;->b:Le/a/h/b/r$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iput-object p1, p0, Le/a/h/b/g;->b:Le/a/h/b/r$a;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Le/a/h/b/g;->c:Landroid/content/ContentResolver;

    iget-object v0, p0, Le/a/h/b/g;->d:Landroid/net/Uri;

    iget-object v1, p0, Le/a/h/b/g;->a:Le/a/b0/i/b;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 4
    iget-object p1, p0, Le/a/h/b/g;->c:Landroid/content/ContentResolver;

    iget-object v0, p0, Le/a/h/b/g;->a:Le/a/b0/i/b;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public abstract c()V
.end method
