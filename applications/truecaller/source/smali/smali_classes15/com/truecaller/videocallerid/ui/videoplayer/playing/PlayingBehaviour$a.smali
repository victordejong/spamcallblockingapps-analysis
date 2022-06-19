.class public final Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;
.super Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

.field public final c:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;->c:F

    .line 2
    sget-object p1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;

    .line 3
    sget-object p1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;->b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 4
    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;->b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;->b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;

    iget v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;->c:F

    iget p1, p1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;->c:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;->c:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Custom(playOnDownloadPercentage="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
