.class public final Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;
    }
.end annotation


# instance fields
.field public final a:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;Ljava/lang/String;ILs1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;",
            "Ljava/lang/String;",
            "I",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->a:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    iput-object p2, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->b:Ljava/lang/String;

    iput p3, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->c:I

    iput-object p4, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->d:Ls1/z/b/a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;

    iget-object v0, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->a:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->a:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->c:I

    iget v1, p1, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->d:Ls1/z/b/a;

    iget-object p1, p1, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->d:Ls1/z/b/a;

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

    iget-object v0, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->a:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->d:Ls1/z/b/a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SocialMediaModel(type="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->a:Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/socialmedia/SocialMediaModel;->d:Ls1/z/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
