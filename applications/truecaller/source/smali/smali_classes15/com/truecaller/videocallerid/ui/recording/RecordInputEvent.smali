.class public final Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;
    }
.end annotation


# instance fields
.field public final a:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;III)V
    .locals 1

    const-string v0, "inputMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->a:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

    iput p2, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->b:I

    iput p3, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->c:I

    iput p4, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->d:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->a:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

    iget-object v1, p1, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->a:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->b:I

    iget v1, p1, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->c:I

    iget v1, p1, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->d:I

    iget p1, p1, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->d:I

    if-ne v0, p1, :cond_0

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
    .locals 2

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->a:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RecordInputEvent(inputMode="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->a:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recordStartEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recordStopEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;->d:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
