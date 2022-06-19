.class Lg/f/c/a/z/k$a;
.super Lg/f/c/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/z/k;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$b<",
        "Lg/f/c/a/a;",
        "Lg/f/c/a/f0/a1;",
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
    check-cast p1, Lg/f/c/a/f0/a1;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/k$a;->c(Lg/f/c/a/f0/a1;)Lg/f/c/a/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/f/c/a/f0/a1;)Lg/f/c/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/a1;->Z()Lg/f/c/a/f0/b1;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/b1;->Z()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lg/f/c/a/o;->a(Ljava/lang/String;)Lg/f/c/a/n;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Lg/f/c/a/n;->b(Ljava/lang/String;)Lg/f/c/a/a;

    move-result-object v0

    .line 4
    new-instance v1, Lg/f/c/a/z/j;

    invoke-virtual {p1}, Lg/f/c/a/f0/a1;->Z()Lg/f/c/a/f0/b1;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/b1;->Y()Lg/f/c/a/f0/u0;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lg/f/c/a/z/j;-><init>(Lg/f/c/a/f0/u0;Lg/f/c/a/a;)V

    return-object v1
.end method
