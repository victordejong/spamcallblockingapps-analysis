.class Lg/f/c/a/z/i$a;
.super Lg/f/c/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/z/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$b<",
        "Lg/f/c/a/a;",
        "Lg/f/c/a/f0/y0;",
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
    check-cast p1, Lg/f/c/a/f0/y0;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/i$a;->c(Lg/f/c/a/f0/y0;)Lg/f/c/a/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/f/c/a/f0/y0;)Lg/f/c/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/y0;->Z()Lg/f/c/a/f0/z0;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/z0;->Y()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lg/f/c/a/o;->a(Ljava/lang/String;)Lg/f/c/a/n;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Lg/f/c/a/n;->b(Ljava/lang/String;)Lg/f/c/a/a;

    move-result-object p1

    return-object p1
.end method
