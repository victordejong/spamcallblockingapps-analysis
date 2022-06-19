.class public final Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;
.super Lcom/truecaller/details_view/ui/comments/widget/ThumbState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/details_view/ui/comments/widget/ThumbState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThumbUpDefault"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault$a;

    invoke-direct {v0}, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault$a;-><init>()V

    sput-object v0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 8

    const-string v0, "countForDisplay"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v2, Lcom/truecaller/details_view/R$drawable;->ic_default_thumb_up:I

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;-><init>(IILjava/lang/String;IILs1/z/c/f;)V

    iput p1, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->e:I

    iput-object p2, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->f:Ljava/lang/String;

    iput p3, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->g:I

    iput p4, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->h:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;

    iget v0, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->e:I

    iget v1, p1, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->g:I

    iget v1, p1, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->h:I

    iget p1, p1, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->h:I

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

    iget v0, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->e:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ThumbUpDefault(count="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countForDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", colorIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->h:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
