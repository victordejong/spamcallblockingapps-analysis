.class public final Le/a/d/q/w$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/q/w;->k(Le/a/d/q/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/q/w;


# direct methods
.method public constructor <init>(Le/a/d/q/w;)V
    .locals 0

    iput-object p1, p0, Le/a/d/q/w$a;->b:Le/a/d/q/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/q/w$a;->b:Le/a/d/q/w;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/d/q/w$a;->b:Le/a/d/q/w;

    const/4 v2, 0x0

    .line 3
    iput-object v2, v1, Le/a/d/q/w;->b:Le/a/d/q/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    .line 5
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0

    throw v1
.end method
