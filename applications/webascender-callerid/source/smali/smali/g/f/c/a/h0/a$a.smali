.class Lg/f/c/a/h0/a$a;
.super Lg/f/c/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/h0/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$b<",
        "Lg/f/c/a/x;",
        "Lg/f/c/a/f0/f;",
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
    check-cast p1, Lg/f/c/a/f0/f;

    invoke-virtual {p0, p1}, Lg/f/c/a/h0/a$a;->c(Lg/f/c/a/f0/f;)Lg/f/c/a/x;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/f/c/a/f0/f;)Lg/f/c/a/x;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v8, Lg/f/c/a/i0/b;

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/f;->a0()Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/f;->b0()Lg/f/c/a/f0/h;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/h;->a0()Lg/f/c/a/f0/o0;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/h0/e;->a(Lg/f/c/a/f0/o0;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/f0/f;->b0()Lg/f/c/a/f0/h;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/h;->Z()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Lg/f/c/a/f0/f;->b0()Lg/f/c/a/f0/h;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/h;->b0()Lg/f/c/a/f0/r0;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/r0;->a0()Lg/f/c/a/f0/o0;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/h0/e;->a(Lg/f/c/a/f0/o0;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Lg/f/c/a/f0/f;->b0()Lg/f/c/a/f0/h;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/h;->b0()Lg/f/c/a/f0/r0;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/r0;->b0()I

    move-result v5

    .line 7
    invoke-virtual {p1}, Lg/f/c/a/f0/f;->b0()Lg/f/c/a/f0/h;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/h;->X()I

    move-result v6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lg/f/c/a/i0/b;-><init>([BLjava/lang/String;ILjava/lang/String;III)V

    return-object v8
.end method
