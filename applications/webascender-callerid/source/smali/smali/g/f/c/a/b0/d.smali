.class public Lg/f/c/a/b0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/c/a/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/c/a/b0/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/f/c/a/r<",
        "Lg/f/c/a/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lg/f/c/a/b0/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lg/f/c/a/b0/d;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic c()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/b0/d;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/b0/d;

    invoke-direct {v0}, Lg/f/c/a/b0/d;-><init>()V

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
            "Lg/f/c/a/d;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lg/f/c/a/d;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/b0/d;->e(Lg/f/c/a/q;)Lg/f/c/a/d;

    move-result-object p1

    return-object p1
.end method

.method public e(Lg/f/c/a/q;)Lg/f/c/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/c/a/q<",
            "Lg/f/c/a/d;",
            ">;)",
            "Lg/f/c/a/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/b0/d$a;

    invoke-direct {v0, p1}, Lg/f/c/a/b0/d$a;-><init>(Lg/f/c/a/q;)V

    return-object v0
.end method
