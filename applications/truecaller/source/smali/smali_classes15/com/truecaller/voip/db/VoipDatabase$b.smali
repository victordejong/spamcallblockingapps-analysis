.class public final Lcom/truecaller/voip/db/VoipDatabase$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/voip/db/VoipDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lcom/truecaller/voip/db/VoipDatabase;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/voip/db/VoipDatabase;->a:Lcom/truecaller/voip/db/VoipDatabase;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    const-class v0, Lcom/truecaller/voip/db/VoipDatabase;

    const-string v1, "voipDb"

    .line 4
    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ln3/c0/f0/a;

    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/truecaller/voip/db/VoipDatabase;->b:Ln3/c0/f0/a;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    .line 6
    invoke-virtual {p1}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 7
    invoke-virtual {p1}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object p1

    check-cast p1, Lcom/truecaller/voip/db/VoipDatabase;

    .line 8
    sput-object p1, Lcom/truecaller/voip/db/VoipDatabase;->a:Lcom/truecaller/voip/db/VoipDatabase;

    .line 9
    :cond_0
    sget-object p1, Lcom/truecaller/voip/db/VoipDatabase;->a:Lcom/truecaller/voip/db/VoipDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
