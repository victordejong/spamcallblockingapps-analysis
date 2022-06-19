.class public Lg/e/a/a/l/e;
.super Lg/e/a/a/l/f$a;
.source "SourceFile"


# static fields
.field private static e:Lg/e/a/a/l/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/e/a/a/l/f<",
            "Lg/e/a/a/l/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:F

.field public d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/e/a/a/l/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lg/e/a/a/l/e;-><init>(FF)V

    const/16 v1, 0x20

    invoke-static {v1, v0}, Lg/e/a/a/l/f;->a(ILg/e/a/a/l/f$a;)Lg/e/a/a/l/f;

    move-result-object v0

    sput-object v0, Lg/e/a/a/l/e;->e:Lg/e/a/a/l/f;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 2
    invoke-virtual {v0, v1}, Lg/e/a/a/l/f;->g(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/e/a/a/l/f$a;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lg/e/a/a/l/f$a;-><init>()V

    .line 3
    iput p1, p0, Lg/e/a/a/l/e;->c:F

    .line 4
    iput p2, p0, Lg/e/a/a/l/e;->d:F

    return-void
.end method

.method public static b()Lg/e/a/a/l/e;
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/l/e;->e:Lg/e/a/a/l/f;

    invoke-virtual {v0}, Lg/e/a/a/l/f;->b()Lg/e/a/a/l/f$a;

    move-result-object v0

    check-cast v0, Lg/e/a/a/l/e;

    return-object v0
.end method

.method public static c(FF)Lg/e/a/a/l/e;
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/l/e;->e:Lg/e/a/a/l/f;

    invoke-virtual {v0}, Lg/e/a/a/l/f;->b()Lg/e/a/a/l/f$a;

    move-result-object v0

    check-cast v0, Lg/e/a/a/l/e;

    .line 2
    iput p0, v0, Lg/e/a/a/l/e;->c:F

    .line 3
    iput p1, v0, Lg/e/a/a/l/e;->d:F

    return-object v0
.end method

.method public static d(Lg/e/a/a/l/e;)Lg/e/a/a/l/e;
    .locals 2

    .line 1
    sget-object v0, Lg/e/a/a/l/e;->e:Lg/e/a/a/l/f;

    invoke-virtual {v0}, Lg/e/a/a/l/f;->b()Lg/e/a/a/l/f$a;

    move-result-object v0

    check-cast v0, Lg/e/a/a/l/e;

    .line 2
    iget v1, p0, Lg/e/a/a/l/e;->c:F

    iput v1, v0, Lg/e/a/a/l/e;->c:F

    .line 3
    iget p0, p0, Lg/e/a/a/l/e;->d:F

    iput p0, v0, Lg/e/a/a/l/e;->d:F

    return-object v0
.end method

.method public static e(Lg/e/a/a/l/e;)V
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/l/e;->e:Lg/e/a/a/l/f;

    invoke-virtual {v0, p0}, Lg/e/a/a/l/f;->c(Lg/e/a/a/l/f$a;)V

    return-void
.end method


# virtual methods
.method protected a()Lg/e/a/a/l/f$a;
    .locals 2

    .line 1
    new-instance v0, Lg/e/a/a/l/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lg/e/a/a/l/e;-><init>(FF)V

    return-object v0
.end method
