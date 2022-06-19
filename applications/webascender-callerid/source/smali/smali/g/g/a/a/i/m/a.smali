.class public Lg/g/a/a/i/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private languageTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "languageTag"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "str"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/m/a;->languageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/m/a;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguageTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/m/a;->languageTag:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/m/a;->name:Ljava/lang/String;

    return-void
.end method
