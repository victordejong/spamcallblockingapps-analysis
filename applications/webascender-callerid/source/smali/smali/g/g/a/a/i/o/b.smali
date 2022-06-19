.class public Lg/g/a/a/i/o/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/o/b$b;
    }
.end annotation


# instance fields
.field private attributionDTO:Lg/g/a/a/i/l/b;
    .annotation runtime Lcom/google/gson/v/c;
        value = "attribution"
    .end annotation
.end field

.field private displayCategory:Lg/g/a/a/i/o/w;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayCategory"
    .end annotation
.end field

.field private displayImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayImage"
    .end annotation
.end field

.field private displayLocation:Lg/g/a/a/i/o/w;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayLocation"
    .end annotation
.end field

.field private displayMessage:Lg/g/a/a/i/o/w;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayMessage"
    .end annotation
.end field

.field private displayName:Lg/g/a/a/i/o/w;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayName"
    .end annotation
.end field

.field private entityType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "entityType"
    .end annotation
.end field

.field private localizedLineType:Lg/g/a/a/i/o/p;
    .annotation runtime Lcom/google/gson/v/c;
        value = "lineInfo"
    .end annotation
.end field

.field private profileTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "profileTag"
    .end annotation
.end field

.field private reputationLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "reputationLevel"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lg/g/a/a/i/o/b$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lg/g/a/a/i/o/b$b;->access$000(Lg/g/a/a/i/o/b$b;)Lg/g/a/a/i/o/w;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/b;->displayName:Lg/g/a/a/i/o/w;

    .line 4
    invoke-static {p1}, Lg/g/a/a/i/o/b$b;->access$100(Lg/g/a/a/i/o/b$b;)Lg/g/a/a/i/o/w;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/b;->displayLocation:Lg/g/a/a/i/o/w;

    .line 5
    invoke-static {p1}, Lg/g/a/a/i/o/b$b;->access$200(Lg/g/a/a/i/o/b$b;)Lg/g/a/a/i/l/b;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/b;->attributionDTO:Lg/g/a/a/i/l/b;

    .line 6
    invoke-static {p1}, Lg/g/a/a/i/o/b$b;->access$300(Lg/g/a/a/i/o/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/b;->reputationLevel:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lg/g/a/a/i/o/b$b;->access$400(Lg/g/a/a/i/o/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/b;->profileTag:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lg/g/a/a/i/o/b$b;->access$500(Lg/g/a/a/i/o/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/b;->entityType:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lg/g/a/a/i/o/b$b;->access$600(Lg/g/a/a/i/o/b$b;)Lg/g/a/a/i/o/w;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/b;->displayMessage:Lg/g/a/a/i/o/w;

    .line 10
    invoke-static {p1}, Lg/g/a/a/i/o/b$b;->access$700(Lg/g/a/a/i/o/b$b;)Lg/g/a/a/i/o/w;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/b;->displayCategory:Lg/g/a/a/i/o/w;

    .line 11
    invoke-static {p1}, Lg/g/a/a/i/o/b$b;->access$800(Lg/g/a/a/i/o/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/o/b;->displayImageUrl:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lg/g/a/a/i/o/b$b;->access$900(Lg/g/a/a/i/o/b$b;)Lg/g/a/a/i/o/p;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/o/b;->localizedLineType:Lg/g/a/a/i/o/p;

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/o/b$b;Lg/g/a/a/i/o/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/o/b;-><init>(Lg/g/a/a/i/o/b$b;)V

    return-void
.end method

.method public static newBuilder()Lg/g/a/a/i/o/b$b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/o/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/o/b$b;-><init>(Lg/g/a/a/i/o/b$a;)V

    return-object v0
.end method


# virtual methods
.method public getAttributionDTO()Lg/g/a/a/i/l/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/b;->attributionDTO:Lg/g/a/a/i/l/b;

    return-object v0
.end method

.method public getDisplayCategory()Lg/g/a/a/i/o/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/b;->displayCategory:Lg/g/a/a/i/o/w;

    return-object v0
.end method

.method public getDisplayImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/b;->displayImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayLocation()Lg/g/a/a/i/o/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/b;->displayLocation:Lg/g/a/a/i/o/w;

    return-object v0
.end method

.method public getDisplayMessage()Lg/g/a/a/i/o/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/b;->displayMessage:Lg/g/a/a/i/o/w;

    return-object v0
.end method

.method public getDisplayName()Lg/g/a/a/i/o/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/b;->displayName:Lg/g/a/a/i/o/w;

    return-object v0
.end method

.method public getEntityType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/b;->entityType:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedLineType()Lg/g/a/a/i/o/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/b;->localizedLineType:Lg/g/a/a/i/o/p;

    return-object v0
.end method

.method public getProfileTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/b;->profileTag:Ljava/lang/String;

    return-object v0
.end method

.method public getReputationLevel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/b;->reputationLevel:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ndisplayName =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/o/b;->displayName:Lg/g/a/a/i/o/w;

    .line 2
    invoke-virtual {v1}, Lg/g/a/a/i/o/w;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ndisplayLocation =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/o/b;->displayLocation:Lg/g/a/a/i/o/w;

    .line 3
    invoke-virtual {v1}, Lg/g/a/a/i/o/w;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nattributionDTO = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/o/b;->attributionDTO:Lg/g/a/a/i/l/b;

    .line 4
    invoke-virtual {v1}, Lg/g/a/a/i/l/b;->getAttributionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nreputationLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/o/b;->reputationLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nprofileTag =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/o/b;->profileTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nentityType =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/o/b;->entityType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ndisplayMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/o/b;->displayMessage:Lg/g/a/a/i/o/w;

    .line 5
    invoke-virtual {v1}, Lg/g/a/a/i/o/w;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ndisplayCategory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/o/b;->displayCategory:Lg/g/a/a/i/o/w;

    .line 6
    invoke-virtual {v1}, Lg/g/a/a/i/o/w;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ndisplayImageUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/o/b;->displayImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nline type display = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/o/b;->localizedLineType:Lg/g/a/a/i/o/p;

    .line 7
    invoke-virtual {v1}, Lg/g/a/a/i/o/p;->getLineTypeDisplayName()Lg/g/a/a/i/o/w;

    move-result-object v1

    invoke-virtual {v1}, Lg/g/a/a/i/o/w;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nline type message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/o/b;->localizedLineType:Lg/g/a/a/i/o/p;

    .line 8
    invoke-virtual {v1}, Lg/g/a/a/i/o/p;->getLineTypeMessage()Lg/g/a/a/i/o/w;

    move-result-object v1

    invoke-virtual {v1}, Lg/g/a/a/i/o/w;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
