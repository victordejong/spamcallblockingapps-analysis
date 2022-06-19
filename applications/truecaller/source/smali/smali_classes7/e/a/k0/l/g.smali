.class public final Le/a/k0/l/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/l/f;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/l/g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Lcom/truecaller/callrecording/util/RecorderMode;Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;Lcom/truecaller/callrecording/recorder/CallRecorder$a;)Lcom/truecaller/callrecording/recorder/CallRecorder;
    .locals 2

    const-string v0, "outputPath"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recorderMode"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioSource"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newInstance:: mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", M4A: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_2

    const/4 p5, 0x1

    if-eq p3, p5, :cond_1

    const/4 p5, 0x2

    if-ne p3, p5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance p3, Le/a/k0/l/n;

    .line 4
    iget-object p5, p0, Le/a/k0/l/g;->a:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    const-string v0, "context.applicationContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    .line 5
    invoke-virtual {p4}, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->getMediaRecorderAudioSource()I

    move-result p4

    .line 6
    invoke-direct {p3, p2, p5, p1, p4}, Le/a/k0/l/n;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;ZI)V

    goto :goto_1

    .line 7
    :cond_2
    new-instance p3, Le/a/k0/l/a;

    .line 8
    iget-object p1, p0, Le/a/k0/l/g;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {p4}, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->getMediaRecorderAudioSource()I

    move-result p4

    .line 10
    invoke-direct {p3, p2, p5, p1, p4}, Le/a/k0/l/a;-><init>(Ljava/lang/String;Lcom/truecaller/callrecording/recorder/CallRecorder$a;Landroid/content/Context;I)V

    :goto_1
    return-object p3
.end method
