.class public final Le/a/d/c/z/p$b;
.super Le/a/d/c/z/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/c/z/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Le/a/d/b0/b;

.field public final b:Landroid/net/Uri;

.field public final c:Le/a/d/c0/y1/d;

.field public final d:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;


# direct methods
.method public constructor <init>(Le/a/d/b0/b;Landroid/net/Uri;Le/a/d/c0/y1/d;Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;)V
    .locals 1

    const-string v0, "callingAction"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Le/a/d/c/z/p;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/d/c/z/p$b;->a:Le/a/d/b0/b;

    iput-object p2, p0, Le/a/d/c/z/p$b;->b:Landroid/net/Uri;

    iput-object p3, p0, Le/a/d/c/z/p$b;->c:Le/a/d/c0/y1/d;

    iput-object p4, p0, Le/a/d/c/z/p$b;->d:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    return-void
.end method

.method public constructor <init>(Le/a/d/b0/b;Landroid/net/Uri;Le/a/d/c0/y1/d;Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;I)V
    .locals 0

    and-int/lit8 p2, p5, 0x2

    const-string p2, "callingAction"

    .line 1
    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p2}, Le/a/d/c/z/p;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/d/c/z/p$b;->a:Le/a/d/b0/b;

    iput-object p2, p0, Le/a/d/c/z/p$b;->b:Landroid/net/Uri;

    iput-object p2, p0, Le/a/d/c/z/p$b;->c:Le/a/d/c0/y1/d;

    iput-object p4, p0, Le/a/d/c/z/p$b;->d:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Le/a/d/c/z/p$b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.truecaller.voip.ui.calldetails.VoipHistoryDetailsMVP.VoipCallHistoryItem.PeerItem"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/d/c/z/p$b;

    .line 3
    iget-object v1, p0, Le/a/d/c/z/p$b;->a:Le/a/d/b0/b;

    iget-object v3, p1, Le/a/d/c/z/p$b;->a:Le/a/d/b0/b;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_3

    return v2

    .line 4
    :cond_3
    iget-object v1, p0, Le/a/d/c/z/p$b;->b:Landroid/net/Uri;

    iget-object v3, p1, Le/a/d/c/z/p$b;->b:Landroid/net/Uri;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_4

    return v2

    .line 5
    :cond_4
    iget-object v1, p0, Le/a/d/c/z/p$b;->d:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    iget-object p1, p1, Le/a/d/c/z/p$b;->d:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/c/z/p$b;->a:Le/a/d/b0/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Le/a/d/c/z/p$b;->b:Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Le/a/d/c/z/p$b;->d:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PeerItem(searchedPeer="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/d/c/z/p$b;->a:Le/a/d/b0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d/c/z/p$b;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", availabilityPresenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d/c/z/p$b;->c:Le/a/d/c0/y1/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callingAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d/c/z/p$b;->d:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
