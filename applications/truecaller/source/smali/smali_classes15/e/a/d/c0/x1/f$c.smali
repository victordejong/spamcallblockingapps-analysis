.class public final Le/a/d/c0/x1/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/x1/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/c0/x1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public final synthetic b:Le/a/d/c0/x1/f;


# direct methods
.method public constructor <init>(Le/a/d/c0/x1/f;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/d/c0/x1/f$c;->b:Le/a/d/c0/x1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/d/c0/x1/f$c;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f$c;->b:Le/a/d/c0/x1/f;

    .line 2
    invoke-virtual {v0}, Le/a/d/c0/x1/f;->m()Landroid/media/AudioManager;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/d/c0/x1/f$c;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method
