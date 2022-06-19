.class public Le/h/a/c/w;
.super Le/h/a/c/t;
.source "SourceFile"


# static fields
.field public static t:Z = false

.field public static u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static v:I

.field public static w:I


# instance fields
.field public a:J

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public final n:Ljava/lang/Object;

.field public o:J

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Le/h/a/c/t;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Le/h/a/c/w;->a:J

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, p0, Le/h/a/c/w;->b:Z

    .line 4
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Le/h/a/c/w;->c:Ljava/lang/Object;

    .line 5
    iput v2, p0, Le/h/a/c/w;->d:I

    .line 6
    iput-boolean v2, p0, Le/h/a/c/w;->e:Z

    .line 7
    iput-boolean v2, p0, Le/h/a/c/w;->f:Z

    .line 8
    iput-boolean v2, p0, Le/h/a/c/w;->g:Z

    .line 9
    iput v2, p0, Le/h/a/c/w;->h:I

    .line 10
    iput-boolean v2, p0, Le/h/a/c/w;->i:Z

    .line 11
    iput-boolean v2, p0, Le/h/a/c/w;->j:Z

    .line 12
    iput-boolean v2, p0, Le/h/a/c/w;->k:Z

    .line 13
    iput v2, p0, Le/h/a/c/w;->m:I

    .line 14
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Le/h/a/c/w;->n:Ljava/lang/Object;

    .line 15
    iput-wide v0, p0, Le/h/a/c/w;->o:J

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Le/h/a/c/w;->p:Ljava/lang/String;

    iput-object v0, p0, Le/h/a/c/w;->q:Ljava/lang/String;

    iput-object v0, p0, Le/h/a/c/w;->r:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Le/h/a/c/w;->s:Lorg/json/JSONObject;

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .locals 1

    .line 1
    sget-object v0, Le/h/a/c/w;->u:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0
.end method

.method public static e(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1
    sput-object p0, Le/h/a/c/w;->u:Ljava/lang/ref/WeakReference;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppNotificationActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Le/h/a/c/w;->u:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget v0, p0, Le/h/a/c/w;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/w;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le/h/a/c/w;->b:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/w;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Le/h/a/c/w;->b:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized f(Lorg/json/JSONObject;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/w;->s:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Le/h/a/c/w;->s:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
