.class public final Le/a/s2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s2/b;->b(Le/a/s2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/s2/b;

.field public final synthetic b:Le/a/s2/f;


# direct methods
.method public constructor <init>(Le/a/s2/b;Le/a/s2/f;)V
    .locals 0

    iput-object p1, p0, Le/a/s2/b$a;->a:Le/a/s2/b;

    iput-object p2, p0, Le/a/s2/b$a;->b:Le/a/s2/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/s2/b$a;->a:Le/a/s2/b;

    iget-object v1, p0, Le/a/s2/b$a;->b:Le/a/s2/f;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Le/a/s2/b;->a:Z

    .line 4
    iget-object v2, v0, Le/a/s2/b;->c:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_1

    .line 5
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 6
    invoke-virtual {v3, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v3, 0x6

    .line 7
    invoke-virtual {p1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 9
    invoke-virtual {v2, p1}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    .line 10
    :cond_1
    invoke-virtual {v0, v1}, Le/a/s2/b;->d(Le/a/s2/f;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, v0, Le/a/s2/b;->a:Z

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, v0, Le/a/s2/b;->d:Ljava/util/Locale;

    const-string v2, "locale"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Le/a/s2/b;->c(Ljava/lang/Integer;Ljava/util/Locale;)V

    :goto_0
    return-void
.end method
