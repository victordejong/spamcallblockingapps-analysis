.class public Le/m/a/c/c1/t$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/a/c/c1/t;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/media/AudioTrack;

.field public final synthetic b:Le/m/a/c/c1/t;


# direct methods
.method public constructor <init>(Le/m/a/c/c1/t;Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/c1/t$a;->b:Le/m/a/c/c1/t;

    iput-object p2, p0, Le/m/a/c/c1/t$a;->a:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/a/c/c1/t$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 2
    iget-object v0, p0, Le/m/a/c/c1/t$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Le/m/a/c/c1/t$a;->b:Le/m/a/c/c1/t;

    .line 4
    iget-object v0, v0, Le/m/a/c/c1/t;->g:Landroid/os/ConditionVariable;

    .line 5
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/m/a/c/c1/t$a;->b:Le/m/a/c/c1/t;

    .line 6
    iget-object v1, v1, Le/m/a/c/c1/t;->g:Landroid/os/ConditionVariable;

    .line 7
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 8
    throw v0
.end method
