.class public Lg/g/a/a/i/o/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private comment:Lg/g/a/a/i/m/f;
    .annotation runtime Lcom/google/gson/v/c;
        value = "comment"
    .end annotation
.end field

.field private identity:Lg/g/a/a/i/o/d;
    .annotation runtime Lcom/google/gson/v/c;
        value = "identity"
    .end annotation
.end field

.field private reputation:Lg/g/a/a/i/o/e;
    .annotation runtime Lcom/google/gson/v/c;
        value = "reputation"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/a/a/i/m/f;Lg/g/a/a/i/o/e;Lg/g/a/a/i/o/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/o/c;->comment:Lg/g/a/a/i/m/f;

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/o/c;->reputation:Lg/g/a/a/i/o/e;

    .line 4
    iput-object p3, p0, Lg/g/a/a/i/o/c;->identity:Lg/g/a/a/i/o/d;

    return-void
.end method


# virtual methods
.method public getComment()Lg/g/a/a/i/m/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/c;->comment:Lg/g/a/a/i/m/f;

    return-object v0
.end method

.method public getIdentity()Lg/g/a/a/i/o/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/c;->identity:Lg/g/a/a/i/o/d;

    return-object v0
.end method

.method public getReputation()Lg/g/a/a/i/o/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/c;->reputation:Lg/g/a/a/i/o/e;

    return-object v0
.end method
