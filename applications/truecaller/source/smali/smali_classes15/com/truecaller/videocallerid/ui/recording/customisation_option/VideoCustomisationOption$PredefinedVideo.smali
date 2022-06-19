.class public final Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;
.super Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PredefinedVideo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J

.field public final f:Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;ZI)V
    .locals 0

    and-int/lit8 p10, p10, 0x40

    if-eqz p10, :cond_0

    const/4 p9, 0x0

    :cond_0
    const-string p10, "id"

    .line 1
    invoke-static {p1, p10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p10, "videoUrl"

    invoke-static {p2, p10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p10, "thumbnail"

    invoke-static {p3, p10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p10, "videoState"

    invoke-static {p8, p10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p10, 0x0

    .line 2
    invoke-direct {p0, p10}, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->d:J

    iput-wide p6, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->e:J

    iput-object p8, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->f:Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;

    iput-boolean p9, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->g:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->a:Ljava/lang/String;

    check-cast p1, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;

    iget-object p1, p1, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PredefinedVideo(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", durationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->f:Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showNewBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->g:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
