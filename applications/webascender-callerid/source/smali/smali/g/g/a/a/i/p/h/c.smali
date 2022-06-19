.class public Lg/g/a/a/i/p/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/p/h/c$b;
    }
.end annotation


# instance fields
.field private detailsThemeDTO:Lg/g/a/a/i/p/h/a;
    .annotation runtime Lcom/google/gson/v/c;
        value = "details"
    .end annotation
.end field

.field private listThemeDTO:Lg/g/a/a/i/p/h/a;
    .annotation runtime Lcom/google/gson/v/c;
        value = "list"
    .end annotation
.end field

.field private poiDetailsDTO:Lg/g/a/a/i/p/h/b;
    .annotation runtime Lcom/google/gson/v/c;
        value = "poiDetails"
    .end annotation
.end field

.field private themeType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "actionType"
    .end annotation
.end field

.field private webLinkDTO:Lg/g/a/a/i/p/h/d;
    .annotation runtime Lcom/google/gson/v/c;
        value = "webLink"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lg/g/a/a/i/p/h/c$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lg/g/a/a/i/p/h/c$b;->access$100(Lg/g/a/a/i/p/h/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/p/h/c;->themeType:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lg/g/a/a/i/p/h/c$b;->access$200(Lg/g/a/a/i/p/h/c$b;)Lg/g/a/a/i/p/h/b;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/p/h/c;->poiDetailsDTO:Lg/g/a/a/i/p/h/b;

    .line 5
    invoke-static {p1}, Lg/g/a/a/i/p/h/c$b;->access$300(Lg/g/a/a/i/p/h/c$b;)Lg/g/a/a/i/p/h/d;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/p/h/c;->webLinkDTO:Lg/g/a/a/i/p/h/d;

    .line 6
    invoke-static {p1}, Lg/g/a/a/i/p/h/c$b;->access$400(Lg/g/a/a/i/p/h/c$b;)Lg/g/a/a/i/p/h/a;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/p/h/c;->detailsThemeDTO:Lg/g/a/a/i/p/h/a;

    .line 7
    invoke-static {p1}, Lg/g/a/a/i/p/h/c$b;->access$500(Lg/g/a/a/i/p/h/c$b;)Lg/g/a/a/i/p/h/a;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/p/h/c;->listThemeDTO:Lg/g/a/a/i/p/h/a;

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/p/h/c$b;Lg/g/a/a/i/p/h/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/p/h/c;-><init>(Lg/g/a/a/i/p/h/c$b;)V

    return-void
.end method

.method public static newBuilder()Lg/g/a/a/i/p/h/c$b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/p/h/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/p/h/c$b;-><init>(Lg/g/a/a/i/p/h/c$a;)V

    return-object v0
.end method


# virtual methods
.method public getDetailsThemeDTO()Lg/g/a/a/i/p/h/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/c;->detailsThemeDTO:Lg/g/a/a/i/p/h/a;

    return-object v0
.end method

.method public getListThemeDTO()Lg/g/a/a/i/p/h/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/c;->listThemeDTO:Lg/g/a/a/i/p/h/a;

    return-object v0
.end method

.method public getPoiDetailsDTO()Lg/g/a/a/i/p/h/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/c;->poiDetailsDTO:Lg/g/a/a/i/p/h/b;

    return-object v0
.end method

.method public getThemeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/c;->themeType:Ljava/lang/String;

    return-object v0
.end method

.method public getWebLinkDTO()Lg/g/a/a/i/p/h/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/c;->webLinkDTO:Lg/g/a/a/i/p/h/d;

    return-object v0
.end method
