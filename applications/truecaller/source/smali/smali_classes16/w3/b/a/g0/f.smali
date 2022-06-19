.class public final Lw3/b/a/g0/f;
.super Lw3/b/a/g0/a;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/g0/g;
.implements Lw3/b/a/g0/j;


# static fields
.field public static final a:Lw3/b/a/g0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/g0/f;

    invoke-direct {v0}, Lw3/b/a/g0/f;-><init>()V

    sput-object v0, Lw3/b/a/g0/f;->a:Lw3/b/a/g0/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/g0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/Date;

    return-object v0
.end method

.method public f(Ljava/lang/Object;Lw3/b/a/a;)J
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Date;

    .line 2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    return-wide p1
.end method
