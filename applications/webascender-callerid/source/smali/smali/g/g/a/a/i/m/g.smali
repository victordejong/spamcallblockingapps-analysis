.class public Lg/g/a/a/i/m/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private categoryId:I
    .annotation runtime Lcom/google/gson/v/c;
        value = "category"
    .end annotation
.end field

.field private comment:Lg/g/a/a/i/m/f;
    .annotation runtime Lcom/google/gson/v/c;
        value = "comment"
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "phone"
    .end annotation
.end field

.field private timeStamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "timestamp"
    .end annotation
.end field

.field private uniqueId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "id"
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
.method public getCategoryId()I
    .locals 1

    .line 1
    iget v0, p0, Lg/g/a/a/i/m/g;->categoryId:I

    return v0
.end method

.method public getCommentDTO()Lg/g/a/a/i/m/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/m/g;->comment:Lg/g/a/a/i/m/f;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/m/g;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/m/g;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/m/g;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/g/a/a/i/m/g;->categoryId:I

    return-void
.end method

.method public setCommentDTO(Lg/g/a/a/i/m/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/m/g;->comment:Lg/g/a/a/i/m/f;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/m/g;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/m/g;->phone:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/m/g;->timeStamp:Ljava/lang/String;

    return-void
.end method
