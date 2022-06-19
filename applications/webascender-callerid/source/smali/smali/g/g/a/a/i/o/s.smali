.class public Lg/g/a/a/i/o/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/o/s$b;
    }
.end annotation


# instance fields
.field private identity:Z
    .annotation runtime Lcom/google/gson/v/c;
        value = "identity"
    .end annotation
.end field

.field private registered:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/v/c;
        value = "registered"
    .end annotation
.end field

.field private reputation:Z
    .annotation runtime Lcom/google/gson/v/c;
        value = "reputation"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lg/g/a/a/i/o/s$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lg/g/a/a/i/o/s$b;->access$000(Lg/g/a/a/i/o/s$b;)Z

    move-result v0

    iput-boolean v0, p0, Lg/g/a/a/i/o/s;->reputation:Z

    .line 4
    invoke-static {p1}, Lg/g/a/a/i/o/s$b;->access$100(Lg/g/a/a/i/o/s$b;)Z

    move-result v0

    iput-boolean v0, p0, Lg/g/a/a/i/o/s;->identity:Z

    .line 5
    invoke-static {p1}, Lg/g/a/a/i/o/s$b;->access$200(Lg/g/a/a/i/o/s$b;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/i/o/s;->registered:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lg/g/a/a/i/o/s$b;Lg/g/a/a/i/o/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/o/s;-><init>(Lg/g/a/a/i/o/s$b;)V

    return-void
.end method

.method public static newBuilder()Lg/g/a/a/i/o/s$b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/o/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/o/s$b;-><init>(Lg/g/a/a/i/o/s$a;)V

    return-object v0
.end method


# virtual methods
.method public isIdentity()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/g/a/a/i/o/s;->identity:Z

    return v0
.end method

.method public isReputation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/g/a/a/i/o/s;->reputation:Z

    return v0
.end method
