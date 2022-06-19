.class public final Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

.field public final h:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel$a;

    invoke-direct {v0}, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel$a;-><init>()V

    sput-object v0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/details_view/ui/comments/widget/ThumbState;Lcom/truecaller/details_view/ui/comments/widget/ThumbState;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalPoster"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXConfig"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postedAt"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thumbUpState"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thumbDownState"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->d:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    iput-object p5, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->g:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    iput-object p8, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->h:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

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

    instance-of v0, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->d:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->d:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->g:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->g:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->h:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    iget-object p1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->h:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

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
    .locals 3

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->d:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->g:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->h:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CommentViewModel(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", originalPoster="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarXConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->d:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", postedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbUpState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->g:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbDownState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->h:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->d:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->g:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->h:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
