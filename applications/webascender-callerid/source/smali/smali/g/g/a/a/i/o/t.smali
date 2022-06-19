.class public final Lg/g/a/a/i/o/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/a/i/o/h;


# instance fields
.field private final apiKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "apiKey"
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "packageName"
    .end annotation
.end field

.field private final platform:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "platform"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/i/o/t;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lg/g/a/a/i/o/t;->apiKey:Ljava/lang/String;

    const-string p1, "HiyaCoreSDKGrant"

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/o/t;->type:Ljava/lang/String;

    const-string p1, "android"

    .line 3
    iput-object p1, p0, Lg/g/a/a/i/o/t;->platform:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getApiKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/t;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/t;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/t;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/t;->type:Ljava/lang/String;

    return-object v0
.end method
