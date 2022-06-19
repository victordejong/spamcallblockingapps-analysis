.class public final Lg/g/a/a/i/l/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attributionDTO:Lg/g/a/a/i/l/b;
    .annotation runtime Lcom/google/gson/v/c;
        value = "attribution"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "description"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "title"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/l/h;->title:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lg/g/a/a/i/l/h;->url:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lg/g/a/a/i/l/h;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAttributionDTO()Lg/g/a/a/i/l/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/h;->attributionDTO:Lg/g/a/a/i/l/b;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/h;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/h;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/h;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final setAttributionDTO(Lg/g/a/a/i/l/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/h;->attributionDTO:Lg/g/a/a/i/l/b;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/h;->description:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/h;->title:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/h;->url:Ljava/lang/String;

    return-void
.end method
