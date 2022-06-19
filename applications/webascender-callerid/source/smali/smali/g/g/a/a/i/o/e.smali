.class public Lg/g/a/a/i/o/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private category:I
    .annotation runtime Lcom/google/gson/v/c;
        value = "category"
    .end annotation
.end field

.field private feedbackType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "feedbackType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "incorrect"

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/o/e;->feedbackType:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lg/g/a/a/i/o/e;->category:I

    return-void
.end method

.method public constructor <init>(Lg/g/a/a/i/j/b;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Lg/g/a/a/i/j/b;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/o/e;->feedbackType:Ljava/lang/String;

    .line 6
    iput p2, p0, Lg/g/a/a/i/o/e;->category:I

    return-void
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    .line 1
    iget v0, p0, Lg/g/a/a/i/o/e;->category:I

    return v0
.end method

.method public getFeedbackType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/e;->feedbackType:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/g/a/a/i/o/e;->category:I

    return-void
.end method
