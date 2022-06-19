.class public final Ls1/a/a/a/v0/d/a/g0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ls1/a/a/a/v0/d/a/g0/e;

.field public static final f:Ls1/a/a/a/v0/d/a/g0/e;


# instance fields
.field public final a:Ls1/a/a/a/v0/d/a/g0/h;

.field public final b:Ls1/a/a/a/v0/d/a/g0/f;

.field public final c:Z

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Ls1/a/a/a/v0/d/a/g0/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/d/a/g0/e;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Ls1/a/a/a/v0/d/a/g0/f;ZZI)V

    sput-object v6, Ls1/a/a/a/v0/d/a/g0/e;->e:Ls1/a/a/a/v0/d/a/g0/e;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/d/a/g0/h;Ls1/a/a/a/v0/d/a/g0/f;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/e;->a:Ls1/a/a/a/v0/d/a/g0/h;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/g0/e;->b:Ls1/a/a/a/v0/d/a/g0/f;

    iput-boolean p3, p0, Ls1/a/a/a/v0/d/a/g0/e;->c:Z

    iput-boolean p4, p0, Ls1/a/a/a/v0/d/a/g0/e;->d:Z

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/d/a/g0/h;Ls1/a/a/a/v0/d/a/g0/f;ZZI)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/e;->a:Ls1/a/a/a/v0/d/a/g0/h;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/g0/e;->b:Ls1/a/a/a/v0/d/a/g0/f;

    iput-boolean p3, p0, Ls1/a/a/a/v0/d/a/g0/e;->c:Z

    iput-boolean p4, p0, Ls1/a/a/a/v0/d/a/g0/e;->d:Z

    return-void
.end method
