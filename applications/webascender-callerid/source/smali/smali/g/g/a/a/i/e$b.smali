.class public final Lg/g/a/a/i/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private event:Lg/g/a/a/i/o/g;

.field private profileScope:Lg/g/a/a/i/o/s;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/e$b;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lg/g/a/a/i/e$b;)Lg/g/a/a/i/o/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/e$b;->profileScope:Lg/g/a/a/i/o/s;

    return-object p0
.end method

.method static synthetic access$100(Lg/g/a/a/i/e$b;)Lg/g/a/a/i/o/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/e$b;->event:Lg/g/a/a/i/o/g;

    return-object p0
.end method


# virtual methods
.method public build()Lg/g/a/a/i/e;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/g/a/a/i/e;-><init>(Lg/g/a/a/i/e$b;Lg/g/a/a/i/e$a;)V

    return-object v0
.end method

.method public withEvent(Lg/g/a/a/i/o/g;)Lg/g/a/a/i/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/e$b;->event:Lg/g/a/a/i/o/g;

    return-object p0
.end method

.method public withProfileScope(Lg/g/a/a/i/o/s;)Lg/g/a/a/i/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/e$b;->profileScope:Lg/g/a/a/i/o/s;

    return-object p0
.end method
