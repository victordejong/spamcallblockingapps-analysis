.class public final Lg/g/a/a/i/l/r;
.super Lg/g/a/a/i/l/p;
.source "SourceFile"


# instance fields
.field private keyWordData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "keywordData"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/l/p;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/l/r;->keyWordData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getKeyWordData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/r;->keyWordData:Ljava/lang/String;

    return-object v0
.end method

.method public final setKeyWordData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/r;->keyWordData:Ljava/lang/String;

    return-void
.end method
