.class public final Le/a/i/c/a/p;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Timer;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/i/c/a/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/i/c/a/p;

    invoke-direct {v0}, Le/a/i/c/a/p;-><init>()V

    sput-object v0, Le/a/i/c/a/p;->b:Le/a/i/c/a/p;

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
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    return-object v0
.end method
