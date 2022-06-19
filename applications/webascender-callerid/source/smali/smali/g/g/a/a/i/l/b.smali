.class public Lg/g/a/a/i/l/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attributionImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "attributionImageUrl"
    .end annotation
.end field

.field private attributionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "attributionName"
    .end annotation
.end field

.field private attributionUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "attributionUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lg/g/a/a/i/l/b;->attributionImageUrl:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lg/g/a/a/i/l/b;->attributionUrl:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lg/g/a/a/i/l/b;->attributionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttributionImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/b;->attributionImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/b;->attributionName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/b;->attributionUrl:Ljava/lang/String;

    return-object v0
.end method
