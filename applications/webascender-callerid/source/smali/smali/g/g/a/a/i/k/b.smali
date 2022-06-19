.class public Lg/g/a/a/i/k/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private clientDisposition:Lg/g/a/a/i/k/a;
    .annotation runtime Lcom/google/gson/v/c;
        value = "clientDisposition"
    .end annotation
.end field

.field private userDisposition:Lg/g/a/a/i/k/f;
    .annotation runtime Lcom/google/gson/v/c;
        value = "userDisposition"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/a/a/i/k/a;Lg/g/a/a/i/k/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/k/b;->clientDisposition:Lg/g/a/a/i/k/a;

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/k/b;->userDisposition:Lg/g/a/a/i/k/f;

    return-void
.end method


# virtual methods
.method public getClientDisposition()Lg/g/a/a/i/k/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/b;->clientDisposition:Lg/g/a/a/i/k/a;

    return-object v0
.end method

.method public getUserDisposition()Lg/g/a/a/i/k/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/k/b;->userDisposition:Lg/g/a/a/i/k/f;

    return-object v0
.end method

.method public setClientDisposition(Lg/g/a/a/i/k/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/b;->clientDisposition:Lg/g/a/a/i/k/a;

    return-void
.end method

.method public setUserDisposition(Lg/g/a/a/i/k/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/k/b;->userDisposition:Lg/g/a/a/i/k/f;

    return-void
.end method
