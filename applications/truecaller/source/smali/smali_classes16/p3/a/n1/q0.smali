.class public final Lp3/a/n1/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp3/a/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/a$c<",
            "Lp3/a/d1;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lp3/a/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/a$c<",
            "Lp3/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp3/a/a$c;

    const-string v1, "io.grpc.internal.GrpcAttributes.securityLevel"

    invoke-direct {v0, v1}, Lp3/a/a$c;-><init>(Ljava/lang/String;)V

    .line 2
    sput-object v0, Lp3/a/n1/q0;->a:Lp3/a/a$c;

    .line 3
    new-instance v0, Lp3/a/a$c;

    const-string v1, "io.grpc.internal.GrpcAttributes.clientEagAttrs"

    invoke-direct {v0, v1}, Lp3/a/a$c;-><init>(Ljava/lang/String;)V

    .line 4
    sput-object v0, Lp3/a/n1/q0;->b:Lp3/a/a$c;

    return-void
.end method
