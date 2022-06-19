.class Lg/f/c/a/c0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/c/a/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/c/a/c0/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/f/c/a/r<",
        "Lg/f/c/a/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/c0/e;

    invoke-direct {v0}, Lg/f/c/a/c0/e;-><init>()V

    invoke-static {v0}, Lg/f/c/a/w;->s(Lg/f/c/a/r;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lg/f/c/a/f;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lg/f/c/a/f;

    return-object v0
.end method

.method public bridge synthetic b(Lg/f/c/a/q;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lg/f/c/a/c0/e;->d(Lg/f/c/a/q;)Lg/f/c/a/f;

    move-result-object p1

    return-object p1
.end method

.method public d(Lg/f/c/a/q;)Lg/f/c/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/c/a/q<",
            "Lg/f/c/a/f;",
            ">;)",
            "Lg/f/c/a/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/c0/e$a;

    invoke-direct {v0, p1}, Lg/f/c/a/c0/e$a;-><init>(Lg/f/c/a/q;)V

    return-object v0
.end method
