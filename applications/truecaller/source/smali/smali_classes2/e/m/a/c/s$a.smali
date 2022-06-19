.class public Le/m/a/c/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final synthetic b:Le/m/a/c/s;


# direct methods
.method public constructor <init>(Le/m/a/c/s;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/s$a;->b:Le/m/a/c/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/m/a/c/s$a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/s$a;->a:Landroid/os/Handler;

    new-instance v1, Le/m/a/c/a;

    invoke-direct {v1, p0, p1}, Le/m/a/c/a;-><init>(Le/m/a/c/s$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
