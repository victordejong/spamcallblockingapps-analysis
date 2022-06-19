.class public Lg/g/a/a/i/l/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attribution:Lg/g/a/a/i/l/b;
    .annotation runtime Lcom/google/gson/v/c;
        value = "attribution"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "imageUrl"
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "text"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "title"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "labelType"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lg/g/a/a/i/l/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/l/i;->url:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/l/i;->text:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lg/g/a/a/i/l/i;->attribution:Lg/g/a/a/i/l/b;

    .line 5
    iput-object p4, p0, Lg/g/a/a/i/l/i;->type:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lg/g/a/a/i/l/i;->title:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lg/g/a/a/i/l/i;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttribution()Lg/g/a/a/i/l/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/i;->attribution:Lg/g/a/a/i/l/b;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/i;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/i;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/i;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lg/g/a/a/i/j/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/i;->type:Ljava/lang/String;

    invoke-static {v0}, Lg/g/a/a/i/j/c;->fromString(Ljava/lang/String;)Lg/g/a/a/i/j/c;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/i;->url:Ljava/lang/String;

    return-object v0
.end method
