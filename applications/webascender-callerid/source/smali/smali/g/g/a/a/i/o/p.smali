.class public Lg/g/a/a/i/o/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lineTypeDisplayName:Lg/g/a/a/i/o/w;
    .annotation runtime Lcom/google/gson/v/c;
        value = "lineTypeDisplayName"
    .end annotation
.end field

.field private lineTypeMessage:Lg/g/a/a/i/o/w;
    .annotation runtime Lcom/google/gson/v/c;
        value = "lineTypeMessage"
    .end annotation
.end field

.field private typeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "typeId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/g/a/a/i/o/w;Lg/g/a/a/i/o/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/o/p;->typeId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/o/p;->lineTypeDisplayName:Lg/g/a/a/i/o/w;

    .line 4
    iput-object p3, p0, Lg/g/a/a/i/o/p;->lineTypeMessage:Lg/g/a/a/i/o/w;

    return-void
.end method


# virtual methods
.method public getLineTypeDisplayName()Lg/g/a/a/i/o/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/p;->lineTypeDisplayName:Lg/g/a/a/i/o/w;

    return-object v0
.end method

.method public getLineTypeMessage()Lg/g/a/a/i/o/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/p;->lineTypeMessage:Lg/g/a/a/i/o/w;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/p;->typeId:Ljava/lang/String;

    return-object v0
.end method
