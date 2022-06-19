.class public Lg/g/a/a/i/p/h/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/p/h/d$b;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "description"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "imageUrl"
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
.method private constructor <init>(Lg/g/a/a/i/p/h/d$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lg/g/a/a/i/p/h/d$b;->access$100(Lg/g/a/a/i/p/h/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/p/h/d;->url:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lg/g/a/a/i/p/h/d$b;->access$200(Lg/g/a/a/i/p/h/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/p/h/d;->title:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lg/g/a/a/i/p/h/d$b;->access$300(Lg/g/a/a/i/p/h/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/p/h/d;->imageUrl:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lg/g/a/a/i/p/h/d$b;->access$400(Lg/g/a/a/i/p/h/d$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/p/h/d;->description:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/p/h/d$b;Lg/g/a/a/i/p/h/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/p/h/d;-><init>(Lg/g/a/a/i/p/h/d$b;)V

    return-void
.end method

.method public static newBuilder()Lg/g/a/a/i/p/h/d$b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/p/h/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/p/h/d$b;-><init>(Lg/g/a/a/i/p/h/d$a;)V

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/d;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/d;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/d;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/d;->url:Ljava/lang/String;

    return-object v0
.end method
