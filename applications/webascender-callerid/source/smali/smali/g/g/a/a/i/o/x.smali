.class public Lg/g/a/a/i/o/x;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/o/x;->languageTag:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/o/x;->name:Ljava/lang/String;

    return-void
.end method
