.class public final Lcom/facebook/internal/t0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t2\u000c\u0008\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u0006J\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u000c\u0008\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u000c\u001a\u00020\u0005J$\u0010\r\u001a\u00020\u000e2\u000c\u0008\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eJ\u0014\u0010\u0010\u001a\u00020\u00112\u000c\u0008\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u0006J\u001c\u0010\u0012\u001a\u00020\u00112\u000c\u0008\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0013\u001a\u00020\u0007J$\u0010\u0014\u001a\u00020\u00112\u000c\u0008\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u000eJ\"\u0010\u0016\u001a\u00020\u00112\u000c\u0008\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tR*\u0010\u0003\u001a\u001e\u0012\u0008\u0012\u00060\u0005j\u0002`\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;",
        "",
        "()V",
        "gateKeepers",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lcom/facebook/internal/gatekeeper/AppID;",
        "Lcom/facebook/internal/gatekeeper/GateKeeper;",
        "dumpGateKeepers",
        "",
        "appId",
        "getGateKeeper",
        "name",
        "getGateKeeperValue",
        "",
        "defaultValue",
        "resetCache",
        "",
        "setGateKeeper",
        "gateKeeper",
        "setGateKeeperValue",
        "value",
        "setGateKeepers",
        "gateKeeperList",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/t0/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/t0/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method
