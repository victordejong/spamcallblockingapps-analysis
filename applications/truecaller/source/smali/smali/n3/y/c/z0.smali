.class public final Ln3/y/c/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/media/PlaybackParams;


# direct methods
.method public constructor <init>(Landroid/media/PlaybackParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/c/z0;->a:Landroid/media/PlaybackParams;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Float;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/y/c/z0;->a:Landroid/media/PlaybackParams;

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
