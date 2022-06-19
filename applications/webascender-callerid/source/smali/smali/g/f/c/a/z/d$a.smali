.class Lg/f/c/a/z/d$a;
.super Lg/f/c/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/z/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$b<",
        "Lg/f/c/a/a;",
        "Lg/f/c/a/f0/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/i$b;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg/f/c/a/f0/d;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/d$a;->c(Lg/f/c/a/f0/d;)Lg/f/c/a/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/f/c/a/f0/d;)Lg/f/c/a/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/i0/z;

    new-instance v1, Lg/f/c/a/z/e;

    invoke-direct {v1}, Lg/f/c/a/z/e;-><init>()V

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/d;->a0()Lg/f/c/a/f0/i;

    move-result-object v2

    const-class v3, Lg/f/c/a/i0/g0;

    invoke-virtual {v1, v2, v3}, Lg/f/c/a/i;->d(Lcom/google/protobuf/r0;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/f/c/a/i0/g0;

    new-instance v2, Lg/f/c/a/e0/b;

    invoke-direct {v2}, Lg/f/c/a/e0/b;-><init>()V

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/d;->b0()Lg/f/c/a/f0/p0;

    move-result-object v3

    const-class v4, Lg/f/c/a/p;

    invoke-virtual {v2, v3, v4}, Lg/f/c/a/i;->d(Lcom/google/protobuf/r0;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/f/c/a/p;

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/f0/d;->b0()Lg/f/c/a/f0/p0;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/p0;->c0()Lg/f/c/a/f0/r0;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/r0;->b0()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lg/f/c/a/i0/z;-><init>(Lg/f/c/a/i0/g0;Lg/f/c/a/p;I)V

    return-object v0
.end method
