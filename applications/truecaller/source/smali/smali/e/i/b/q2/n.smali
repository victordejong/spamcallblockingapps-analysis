.class public final Le/i/b/q2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/z1/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/i/b/z1/h<",
        "Lcom/criteo/publisher/logging/RemoteLogRecords;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/i/b/s2/f;


# direct methods
.method public constructor <init>(Le/i/b/s2/f;)V
    .locals 1

    const-string v0, "buildConfigWrapper"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/q2/n;->b:Le/i/b/s2/f;

    .line 2
    const-class p1, Lcom/criteo/publisher/logging/RemoteLogRecords;

    iput-object p1, p0, Le/i/b/q2/n;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/q2/n;->b:Le/i/b/s2/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1388

    return v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/q2/n;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/q2/n;->b:Le/i/b/s2/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x3e800

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/q2/n;->b:Le/i/b/s2/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "criteo_remote_logs_queue"

    const-string v1, "buildConfigWrapper.remoteLogQueueFilename"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
