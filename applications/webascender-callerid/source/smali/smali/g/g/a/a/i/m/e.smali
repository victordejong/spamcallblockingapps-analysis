.class public Lg/g/a/a/i/m/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private description:Lg/g/a/a/i/m/a;
    .annotation runtime Lcom/google/gson/v/c;
        value = "description"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/v/c;
        value = "categoryId"
    .end annotation
.end field

.field private nameSection:Lg/g/a/a/i/m/b;
    .annotation runtime Lcom/google/gson/v/c;
        value = "name"
    .end annotation
.end field

.field private nameStr:Ljava/lang/String;

.field private spamType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "spamType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Lg/g/a/a/i/m/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/m/e;->description:Lg/g/a/a/i/m/a;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lg/g/a/a/i/m/e;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/m/e;->nameStr:Ljava/lang/String;

    return-object v0
.end method

.method public getNameSection()Lg/g/a/a/i/m/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/m/e;->nameSection:Lg/g/a/a/i/m/b;

    return-object v0
.end method

.method public getSpamType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/m/e;->spamType:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Lg/g/a/a/i/m/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/m/e;->description:Lg/g/a/a/i/m/a;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/g/a/a/i/m/e;->id:I

    return-void
.end method

.method public setNameSection(Lg/g/a/a/i/m/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/m/e;->nameSection:Lg/g/a/a/i/m/b;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lg/g/a/a/i/m/b;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/m/e;->nameStr:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSpamType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/m/e;->spamType:Ljava/lang/String;

    return-void
.end method
