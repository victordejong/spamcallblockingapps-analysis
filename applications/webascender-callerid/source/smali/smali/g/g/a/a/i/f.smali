.class public Lg/g/a/a/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/f$b;
    }
.end annotation


# instance fields
.field private areaCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "areaCode"
    .end annotation
.end field

.field private countryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "countryCode"
    .end annotation
.end field

.field private isShortCode:Z
    .annotation runtime Lcom/google/gson/v/c;
        value = "isShortCode"
    .end annotation
.end field

.field private isValid:Z
    .annotation runtime Lcom/google/gson/v/c;
        value = "isValid"
    .end annotation
.end field

.field private lineType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "lineType"
    .end annotation
.end field

.field private parserVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "parserVersion"
    .end annotation
.end field

.field private rawPhone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "rawPhone"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lg/g/a/a/i/f$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lg/g/a/a/i/f$b;->access$000(Lg/g/a/a/i/f$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/f;->parserVersion:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lg/g/a/a/i/f$b;->access$100(Lg/g/a/a/i/f$b;)Z

    move-result v0

    iput-boolean v0, p0, Lg/g/a/a/i/f;->isValid:Z

    .line 5
    invoke-static {p1}, Lg/g/a/a/i/f$b;->access$200(Lg/g/a/a/i/f$b;)Z

    move-result v0

    iput-boolean v0, p0, Lg/g/a/a/i/f;->isShortCode:Z

    .line 6
    invoke-static {p1}, Lg/g/a/a/i/f$b;->access$300(Lg/g/a/a/i/f$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/f;->countryCode:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lg/g/a/a/i/f$b;->access$400(Lg/g/a/a/i/f$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/f;->areaCode:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lg/g/a/a/i/f$b;->access$500(Lg/g/a/a/i/f$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/f;->rawPhone:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lg/g/a/a/i/f$b;->access$600(Lg/g/a/a/i/f$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/f;->lineType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/f$b;Lg/g/a/a/i/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/f;-><init>(Lg/g/a/a/i/f$b;)V

    return-void
.end method

.method public static newBuilder()Lg/g/a/a/i/f$b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/f$b;-><init>(Lg/g/a/a/i/f$a;)V

    return-object v0
.end method
