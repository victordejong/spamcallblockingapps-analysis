.class public final Lg/g/a/a/i/o/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/o/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private identity:Z

.field private registered:Ljava/lang/Boolean;

.field private reputation:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/o/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/o/s$b;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lg/g/a/a/i/o/s$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg/g/a/a/i/o/s$b;->reputation:Z

    return p0
.end method

.method static synthetic access$100(Lg/g/a/a/i/o/s$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg/g/a/a/i/o/s$b;->identity:Z

    return p0
.end method

.method static synthetic access$200(Lg/g/a/a/i/o/s$b;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/o/s$b;->registered:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public build()Lg/g/a/a/i/o/s;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/o/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/g/a/a/i/o/s;-><init>(Lg/g/a/a/i/o/s$b;Lg/g/a/a/i/o/s$a;)V

    return-object v0
.end method

.method public withOptInIdentity(Z)Lg/g/a/a/i/o/s$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/g/a/a/i/o/s$b;->identity:Z

    return-object p0
.end method

.method public withOptInRegistered(Ljava/lang/Boolean;)Lg/g/a/a/i/o/s$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/s$b;->registered:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withOptInReputation(Z)Lg/g/a/a/i/o/s$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/g/a/a/i/o/s$b;->reputation:Z

    return-object p0
.end method
