.class public final Lp3/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp3/a/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/a$c<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lp3/a/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/a$c<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lp3/a/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/a$c<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp3/a/a$c;

    const-string v1, "remote-addr"

    invoke-direct {v0, v1}, Lp3/a/a$c;-><init>(Ljava/lang/String;)V

    .line 2
    sput-object v0, Lp3/a/y;->a:Lp3/a/a$c;

    .line 3
    new-instance v0, Lp3/a/a$c;

    const-string v1, "local-addr"

    invoke-direct {v0, v1}, Lp3/a/a$c;-><init>(Ljava/lang/String;)V

    .line 4
    sput-object v0, Lp3/a/y;->b:Lp3/a/a$c;

    .line 5
    new-instance v0, Lp3/a/a$c;

    const-string v1, "ssl-session"

    invoke-direct {v0, v1}, Lp3/a/a$c;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lp3/a/y;->c:Lp3/a/a$c;

    return-void
.end method
