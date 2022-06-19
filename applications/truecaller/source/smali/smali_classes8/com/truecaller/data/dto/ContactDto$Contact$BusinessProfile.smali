.class public Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/data/dto/ContactDto$Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BusinessProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$BrandedMedia;,
        Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$AppStores;,
        Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$MediaCallerIDs;,
        Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$OpenHours;
    }
.end annotation


# instance fields
.field public appStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$AppStores;",
            ">;"
        }
    .end annotation
.end field

.field public backgroundColor:Ljava/lang/String;

.field public branch:Ljava/lang/String;

.field public brandedMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$BrandedMedia;",
            ">;"
        }
    .end annotation
.end field

.field public companySize:Ljava/lang/String;

.field public department:Ljava/lang/String;

.field public imageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public landLine:Ljava/lang/String;

.field public mediaCallerIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$MediaCallerIDs;",
            ">;"
        }
    .end annotation
.end field

.field public openHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$OpenHours;",
            ">;"
        }
    .end annotation
.end field

.field public score:Ljava/lang/String;

.field public swishNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "BusinessProfile{companySize=\'"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->companySize:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", branch=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->branch:Ljava/lang/String;

    const-string v3, ", department=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->department:Ljava/lang/String;

    const-string v3, ", swishNumber=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->swishNumber:Ljava/lang/String;

    const-string v3, ", landLine=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->landLine:Ljava/lang/String;

    const-string v3, ", backgroundColor=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->backgroundColor:Ljava/lang/String;

    const-string v3, ", imageUrls="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->imageUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", score=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->score:Ljava/lang/String;

    const-string v3, ", openHours="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->openHours:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaCallerIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->mediaCallerIDs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appStores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->appStores:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", brandedMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->brandedMedia:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
