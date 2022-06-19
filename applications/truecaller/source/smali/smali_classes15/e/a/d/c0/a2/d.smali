.class public final Le/a/d/c0/a2/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Lcom/truecaller/common/network/KnownDomain;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/d/c0/a2/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/d/c0/a2/d;

    invoke-direct {v0}, Le/a/d/c0/a2/d;-><init>()V

    sput-object v0, Le/a/d/c0/a2/d;->b:Le/a/d/c0/a2/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method
