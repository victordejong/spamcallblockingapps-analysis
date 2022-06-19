.class public Lg/g/a/a/i/p/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/p/h/a$b;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "description"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "id"
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


# direct methods
.method private constructor <init>(Lg/g/a/a/i/p/h/a$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lg/g/a/a/i/p/h/a$b;->access$100(Lg/g/a/a/i/p/h/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/p/h/a;->description:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lg/g/a/a/i/p/h/a$b;->access$200(Lg/g/a/a/i/p/h/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/p/h/a;->id:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lg/g/a/a/i/p/h/a$b;->access$300(Lg/g/a/a/i/p/h/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/p/h/a;->title:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lg/g/a/a/i/p/h/a$b;->access$400(Lg/g/a/a/i/p/h/a$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/p/h/a;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/p/h/a$b;Lg/g/a/a/i/p/h/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/p/h/a;-><init>(Lg/g/a/a/i/p/h/a$b;)V

    return-void
.end method

.method public static newBuilder()Lg/g/a/a/i/p/h/a$b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/p/h/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/p/h/a$b;-><init>(Lg/g/a/a/i/p/h/a$a;)V

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/a;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/a;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/a;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/h/a;->title:Ljava/lang/String;

    return-object v0
.end method
