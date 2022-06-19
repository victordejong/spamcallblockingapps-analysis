.class public final Lu3/p0/l/i/l;
.super Lu3/p0/l/i/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/p0/l/i/l$a;
    }
.end annotation


# static fields
.field public static final h:Lu3/p0/l/i/l$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu3/p0/l/i/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu3/p0/l/i/l$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lu3/p0/l/i/l;->h:Lu3/p0/l/i/l$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocket;",
            ">;",
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "sslSocketClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sslSocketFactoryClass"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "paramClass"

    invoke-static {p3, p2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lu3/p0/l/i/f;-><init>(Ljava/lang/Class;)V

    return-void
.end method
