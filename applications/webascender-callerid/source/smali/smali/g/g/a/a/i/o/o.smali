.class public Lg/g/a/a/i/o/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/o/o$b;
    }
.end annotation


# instance fields
.field private final disposition:Lg/g/a/a/i/k/b;
    .annotation runtime Lcom/google/gson/v/c;
        value = "disposition"
    .end annotation
.end field

.field private final eventProfileEvent:Lg/g/a/a/i/k/c;
    .annotation runtime Lcom/google/gson/v/c;
        value = "eventProfileEvent"
    .end annotation
.end field

.field private final profileTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "profileTag"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lg/g/a/a/i/k/c;Ljava/lang/String;Lg/g/a/a/i/k/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lg/g/a/a/i/o/o;->eventProfileEvent:Lg/g/a/a/i/k/c;

    .line 4
    iput-object p2, p0, Lg/g/a/a/i/o/o;->profileTag:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lg/g/a/a/i/o/o;->disposition:Lg/g/a/a/i/k/b;

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/k/c;Ljava/lang/String;Lg/g/a/a/i/k/b;Lg/g/a/a/i/o/o$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lg/g/a/a/i/o/o;-><init>(Lg/g/a/a/i/k/c;Ljava/lang/String;Lg/g/a/a/i/k/b;)V

    return-void
.end method


# virtual methods
.method public getDisposition()Lg/g/a/a/i/k/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/o;->disposition:Lg/g/a/a/i/k/b;

    return-object v0
.end method

.method public getEventProfileEvent()Lg/g/a/a/i/k/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/o;->eventProfileEvent:Lg/g/a/a/i/k/c;

    return-object v0
.end method

.method public getProfileTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/o;->profileTag:Ljava/lang/String;

    return-object v0
.end method
