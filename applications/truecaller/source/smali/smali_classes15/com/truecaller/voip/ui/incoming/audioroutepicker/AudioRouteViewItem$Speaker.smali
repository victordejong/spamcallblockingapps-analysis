.class public final Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;
.super Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Speaker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker$a;

    invoke-direct {v0}, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker$a;-><init>()V

    sput-object v0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "itemName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/voip/R$drawable;->ic_tcx_voip_speaker_normal_outline_24dp:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;-><init>(Ljava/lang/String;ILs1/z/c/f;)V

    iput-object p1, p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;

    iget-object v0, p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Speaker(itemName="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;->c:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
