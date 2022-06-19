.class public Lg/g/a/a/i/o/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayName"
    .end annotation
.end field

.field private feedbackType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "feedbackType"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "incorrect"

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/o/d;->feedbackType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lg/g/a/a/i/j/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lg/g/a/a/i/j/b;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/o/d;->feedbackType:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lg/g/a/a/i/o/d;->displayName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lg/g/a/a/i/o/d;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/d;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/d;->feedbackType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/d;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/d;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/d;->name:Ljava/lang/String;

    return-void
.end method
