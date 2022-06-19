.class public Ln3/m0/c0/p/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Ln3/m0/c0/p/a/c;

.field public final b:Ln3/m0/c0/a;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayedWorkTracker"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/m0/c0/p/a/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ln3/m0/c0/p/a/c;Ln3/m0/c0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/p/a/b;->a:Ln3/m0/c0/p/a/c;

    .line 3
    iput-object p2, p0, Ln3/m0/c0/p/a/b;->b:Ln3/m0/c0/a;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ln3/m0/c0/p/a/b;->c:Ljava/util/Map;

    return-void
.end method
