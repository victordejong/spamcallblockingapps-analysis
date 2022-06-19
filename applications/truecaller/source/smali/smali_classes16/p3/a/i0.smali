.class public abstract Lp3/a/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/i0$c;,
        Lp3/a/i0$j;,
        Lp3/a/i0$h;,
        Lp3/a/i0$d;,
        Lp3/a/i0$b;,
        Lp3/a/i0$e;,
        Lp3/a/i0$f;,
        Lp3/a/i0$i;,
        Lp3/a/i0$g;
    }
.end annotation


# static fields
.field public static final a:Lp3/a/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/a$c<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp3/a/a$c;

    const-string v1, "health-checking-config"

    invoke-direct {v0, v1}, Lp3/a/a$c;-><init>(Ljava/lang/String;)V

    .line 2
    sput-object v0, Lp3/a/i0;->a:Lp3/a/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lp3/a/g1;)V
.end method

.method public abstract b(Lp3/a/i0$g;)V
.end method

.method public abstract c()V
.end method
