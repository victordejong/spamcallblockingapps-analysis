.class public Lg/g/a/a/i/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private languageCache:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "languageCache"
    .end annotation
.end field

.field private profileCache:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "profileCache"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/i;->languageCache:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/i;->profileCache:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLanguageCache()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/i;->languageCache:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileCache()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/i;->profileCache:Ljava/lang/String;

    return-object v0
.end method
