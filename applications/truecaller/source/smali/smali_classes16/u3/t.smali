.class public interface abstract Lu3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu3/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu3/s;

    invoke-direct {v0}, Lu3/s;-><init>()V

    sput-object v0, Lu3/t;->a:Lu3/t;

    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
