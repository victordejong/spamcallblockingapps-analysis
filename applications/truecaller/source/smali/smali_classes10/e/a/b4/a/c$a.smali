.class public final Le/a/b4/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b4/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Le/a/b4/a/c;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Le/a/b4/a/c;->g:Le/a/b4/a/c;

    if-nez p1, :cond_1

    .line 2
    const-class p1, Le/a/b4/a/c;

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    sget-object v0, Le/a/b4/a/c;->g:Le/a/b4/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Le/a/c/p/a;->I(Ls1/z/b/a;I)Le/a/b4/a/c;

    move-result-object v0

    .line 5
    sput-object v0, Le/a/b4/a/c;->g:Le/a/b4/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1

    throw v0

    .line 7
    :cond_1
    :goto_2
    sget-object p1, Le/a/b4/a/c;->g:Le/a/b4/a/c;

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    return-object p1
.end method
