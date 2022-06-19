.class public Lw3/b/a/g0/i;
.super Lw3/b/a/g0/a;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/g0/g;
.implements Lw3/b/a/g0/j;
.implements Lw3/b/a/g0/c;
.implements Lw3/b/a/g0/k;


# static fields
.field public static final a:Lw3/b/a/g0/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/g0/i;

    invoke-direct {v0}, Lw3/b/a/g0/i;-><init>()V

    sput-object v0, Lw3/b/a/g0/i;->a:Lw3/b/a/g0/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/g0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lw3/b/a/w;Ljava/lang/Object;Lw3/b/a/a;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-interface {p1, p2}, Lw3/b/a/w;->c(Lw3/b/a/c0;)V

    return-void
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
