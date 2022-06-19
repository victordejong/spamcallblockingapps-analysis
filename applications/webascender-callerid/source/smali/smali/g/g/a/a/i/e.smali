.class public Lg/g/a/a/i/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/e$b;
    }
.end annotation


# instance fields
.field private event:Lg/g/a/a/i/o/g;
    .annotation runtime Lcom/google/gson/v/c;
        value = "event"
    .end annotation
.end field

.field private profileScope:Lg/g/a/a/i/o/s;
    .annotation runtime Lcom/google/gson/v/c;
        value = "profileScope"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lg/g/a/a/i/e$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lg/g/a/a/i/e$b;->access$000(Lg/g/a/a/i/e$b;)Lg/g/a/a/i/o/s;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/e;->profileScope:Lg/g/a/a/i/o/s;

    .line 4
    invoke-static {p1}, Lg/g/a/a/i/e$b;->access$100(Lg/g/a/a/i/e$b;)Lg/g/a/a/i/o/g;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/e;->event:Lg/g/a/a/i/o/g;

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/e$b;Lg/g/a/a/i/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/e;-><init>(Lg/g/a/a/i/e$b;)V

    return-void
.end method

.method public static newBuilder()Lg/g/a/a/i/e$b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/e$b;-><init>(Lg/g/a/a/i/e$a;)V

    return-object v0
.end method


# virtual methods
.method public getEvent()Lg/g/a/a/i/o/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/e;->event:Lg/g/a/a/i/o/g;

    return-object v0
.end method

.method public getProfileScope()Lg/g/a/a/i/o/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/e;->profileScope:Lg/g/a/a/i/o/s;

    return-object v0
.end method
