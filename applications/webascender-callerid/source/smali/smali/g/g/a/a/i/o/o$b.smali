.class public Lg/g/a/a/i/o/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/o/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private disposition:Lg/g/a/a/i/k/b;

.field private eventProfileEvent:Lg/g/a/a/i/k/c;

.field private profileTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lg/g/a/a/i/o/o;
    .locals 5

    .line 1
    new-instance v0, Lg/g/a/a/i/o/o;

    iget-object v1, p0, Lg/g/a/a/i/o/o$b;->eventProfileEvent:Lg/g/a/a/i/k/c;

    iget-object v2, p0, Lg/g/a/a/i/o/o$b;->profileTag:Ljava/lang/String;

    iget-object v3, p0, Lg/g/a/a/i/o/o$b;->disposition:Lg/g/a/a/i/k/b;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lg/g/a/a/i/o/o;-><init>(Lg/g/a/a/i/k/c;Ljava/lang/String;Lg/g/a/a/i/k/b;Lg/g/a/a/i/o/o$a;)V

    return-object v0
.end method

.method public setDisposition(Lg/g/a/a/i/k/b;)Lg/g/a/a/i/o/o$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/o$b;->disposition:Lg/g/a/a/i/k/b;

    return-object p0
.end method

.method public setEventProfileEvent(Lg/g/a/a/i/k/c;)Lg/g/a/a/i/o/o$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/o$b;->eventProfileEvent:Lg/g/a/a/i/k/c;

    return-object p0
.end method

.method public setProfileTag(Ljava/lang/String;)Lg/g/a/a/i/o/o$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/o$b;->profileTag:Ljava/lang/String;

    return-object p0
.end method
