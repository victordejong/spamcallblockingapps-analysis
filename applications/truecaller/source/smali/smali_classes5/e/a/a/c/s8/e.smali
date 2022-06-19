.class public final Le/a/a/c/s8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/s8/c;


# instance fields
.field public final a:Landroid/media/AudioFocusRequest;


# direct methods
.method public constructor <init>(Landroid/media/AudioFocusRequest;)V
    .locals 1

    const-string v0, "audioFocusRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/s8/e;->a:Landroid/media/AudioFocusRequest;

    return-void
.end method


# virtual methods
.method public a(Landroid/media/AudioManager;)V
    .locals 1

    const-string v0, "audioManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/s8/e;->a:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    return-void
.end method
