.class public final Lg/f/e/a/a/a/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/e/a/a/a/e/g$b;
    }
.end annotation


# static fields
.field private static volatile a:Lio/grpc/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/r0<",
            "Lg/f/e/a/a/a/e/d;",
            "Lg/f/e/a/a/a/e/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/grpc/r0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/r0<",
            "Lg/f/e/a/a/a/e/d;",
            "Lg/f/e/a/a/a/e/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/e/a/a/a/e/g;->a:Lio/grpc/r0;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lg/f/e/a/a/a/e/g;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lg/f/e/a/a/a/e/g;->a:Lio/grpc/r0;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lio/grpc/r0;->g()Lio/grpc/r0$b;

    move-result-object v0

    sget-object v2, Lio/grpc/r0$d;->UNARY:Lio/grpc/r0$d;

    .line 5
    invoke-virtual {v0, v2}, Lio/grpc/r0$b;->f(Lio/grpc/r0$d;)Lio/grpc/r0$b;

    const-string v2, "google.internal.firebase.inappmessaging.v1.sdkserving.InAppMessagingSdkServing"

    const-string v3, "FetchEligibleCampaigns"

    .line 6
    invoke-static {v2, v3}, Lio/grpc/r0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/r0$b;->b(Ljava/lang/String;)Lio/grpc/r0$b;

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Lio/grpc/r0$b;->e(Z)Lio/grpc/r0$b;

    .line 8
    invoke-static {}, Lg/f/e/a/a/a/e/d;->d0()Lg/f/e/a/a/a/e/d;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lio/grpc/h1/a/b;->b(Lcom/google/protobuf/r0;)Lio/grpc/r0$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/r0$b;->c(Lio/grpc/r0$c;)Lio/grpc/r0$b;

    .line 10
    invoke-static {}, Lg/f/e/a/a/a/e/e;->Y()Lg/f/e/a/a/a/e/e;

    move-result-object v2

    .line 11
    invoke-static {v2}, Lio/grpc/h1/a/b;->b(Lcom/google/protobuf/r0;)Lio/grpc/r0$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/r0$b;->d(Lio/grpc/r0$c;)Lio/grpc/r0$b;

    .line 12
    invoke-virtual {v0}, Lio/grpc/r0$b;->a()Lio/grpc/r0;

    move-result-object v0

    sput-object v0, Lg/f/e/a/a/a/e/g;->a:Lio/grpc/r0;

    .line 13
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b(Lio/grpc/e;)Lg/f/e/a/a/a/e/g$b;
    .locals 1

    .line 1
    new-instance v0, Lg/f/e/a/a/a/e/g$a;

    invoke-direct {v0}, Lg/f/e/a/a/a/e/g$a;-><init>()V

    .line 2
    invoke-static {v0, p0}, Lio/grpc/i1/a;->e(Lio/grpc/i1/b$a;Lio/grpc/e;)Lio/grpc/i1/b;

    move-result-object p0

    check-cast p0, Lg/f/e/a/a/a/e/g$b;

    return-object p0
.end method
