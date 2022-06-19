.class public final Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;
.super Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V
    .locals 1

    const-string v0, "fallback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;->b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;->b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;->b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    iget-object p1, p1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;->b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 2
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;->b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "FirstFrame(fallback="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;->b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
