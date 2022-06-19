.class public final synthetic Le/m/d/t/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/v/b;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/t/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le/m/d/t/b;->a:Landroid/content/Context;

    .line 1
    sget-object v1, Le/m/d/t/g;->b:Le/m/d/t/g;

    const-class v1, Le/m/d/t/g;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Le/m/d/t/g;->b:Le/m/d/t/g;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Le/m/d/t/g;

    invoke-direct {v2, v0}, Le/m/d/t/g;-><init>(Landroid/content/Context;)V

    sput-object v2, Le/m/d/t/g;->b:Le/m/d/t/g;

    .line 4
    :cond_0
    sget-object v0, Le/m/d/t/g;->b:Le/m/d/t/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
