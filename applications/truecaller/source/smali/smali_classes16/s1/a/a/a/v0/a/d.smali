.class public final Ls1/a/a/a/v0/a/d;
.super Ls1/a/a/a/v0/a/g;
.source "SourceFile"


# static fields
.field public static final f:Ls1/a/a/a/v0/a/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/a/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/a/d;-><init>(ZI)V

    sput-object v0, Ls1/a/a/a/v0/a/d;->f:Ls1/a/a/a/v0/a/d;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    move p1, v0

    .line 1
    :cond_0
    new-instance p2, Ls1/a/a/a/v0/l/e;

    const-string v0, "DefaultBuiltIns"

    invoke-direct {p2, v0}, Ls1/a/a/a/v0/l/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ls1/a/a/a/v0/a/g;-><init>(Ls1/a/a/a/v0/l/m;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/a/g;->d(Z)V

    :cond_1
    return-void
.end method
