.class public Lg/g/a/a/i/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "phone"
    .end annotation
.end field

.field private phoneMetadata:Lg/g/a/a/i/f;
    .annotation runtime Lcom/google/gson/v/c;
        value = "meta"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/g/a/a/i/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/h;->phone:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/h;->phoneMetadata:Lg/g/a/a/i/f;

    return-void
.end method


# virtual methods
.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/h;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneMetadata()Lg/g/a/a/i/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/h;->phoneMetadata:Lg/g/a/a/i/f;

    return-object v0
.end method
