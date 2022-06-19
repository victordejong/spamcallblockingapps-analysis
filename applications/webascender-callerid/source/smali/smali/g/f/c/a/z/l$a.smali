.class Lg/f/c/a/z/l$a;
.super Lg/f/c/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/z/l;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$b<",
        "Lg/f/c/a/a;",
        "Lg/f/c/a/f0/m1;",
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
    check-cast p1, Lg/f/c/a/f0/m1;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/l$a;->c(Lg/f/c/a/f0/m1;)Lg/f/c/a/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/f/c/a/f0/m1;)Lg/f/c/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/i0/s0;

    invoke-virtual {p1}, Lg/f/c/a/f0/m1;->Z()Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/i;->w()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lg/f/c/a/i0/s0;-><init>([B)V

    return-object v0
.end method
