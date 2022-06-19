.class public final Ls1/a/a/a/v0/d/a/g0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/f1/c;


# static fields
.field public static final a:Ls1/a/a/a/v0/d/a/g0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/g0/a;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/g0/a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/g0/a;->a:Ls1/a/a/a/v0/d/a/g0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/g0/a;->c()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()Ljava/lang/Void;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No methods should be called on this descriptor. Only its presence matters"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ls1/a/a/a/v0/f/b;
    .locals 1

    .line 1
    invoke-static {p0}, Le/q/f/a/d/a;->M0(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/f/b;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ls1/a/a/a/v0/b/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/g0/a;->c()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public getType()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/g0/a;->c()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[EnhancedType]"

    return-object v0
.end method
