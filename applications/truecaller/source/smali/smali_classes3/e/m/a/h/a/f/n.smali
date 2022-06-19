.class public final Le/m/a/h/a/f/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/m0;


# instance fields
.field public final synthetic a:Le/m/a/h/a/f/a;


# direct methods
.method public constructor <init>(Le/m/a/h/a/f/a;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/f/n;->a:Le/m/a/h/a/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/f/n;->a:Le/m/a/h/a/f/a;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/f/a;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, v0, Le/m/a/h/a/f/a;->c:Ljava/util/Set;

    .line 2
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
