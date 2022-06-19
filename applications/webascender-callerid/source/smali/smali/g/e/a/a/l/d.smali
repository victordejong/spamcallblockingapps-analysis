.class public Lg/e/a/a/l/d;
.super Lg/e/a/a/l/f$a;
.source "SourceFile"


# static fields
.field private static e:Lg/e/a/a/l/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/e/a/a/l/f<",
            "Lg/e/a/a/l/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:D

.field public d:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lg/e/a/a/l/d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lg/e/a/a/l/d;-><init>(DD)V

    const/16 v1, 0x40

    invoke-static {v1, v0}, Lg/e/a/a/l/f;->a(ILg/e/a/a/l/f$a;)Lg/e/a/a/l/f;

    move-result-object v0

    sput-object v0, Lg/e/a/a/l/d;->e:Lg/e/a/a/l/f;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 2
    invoke-virtual {v0, v1}, Lg/e/a/a/l/f;->g(F)V

    return-void
.end method

.method private constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/e/a/a/l/f$a;-><init>()V

    .line 2
    iput-wide p1, p0, Lg/e/a/a/l/d;->c:D

    .line 3
    iput-wide p3, p0, Lg/e/a/a/l/d;->d:D

    return-void
.end method

.method public static b(DD)Lg/e/a/a/l/d;
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/l/d;->e:Lg/e/a/a/l/f;

    invoke-virtual {v0}, Lg/e/a/a/l/f;->b()Lg/e/a/a/l/f$a;

    move-result-object v0

    check-cast v0, Lg/e/a/a/l/d;

    .line 2
    iput-wide p0, v0, Lg/e/a/a/l/d;->c:D

    .line 3
    iput-wide p2, v0, Lg/e/a/a/l/d;->d:D

    return-object v0
.end method

.method public static c(Lg/e/a/a/l/d;)V
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/l/d;->e:Lg/e/a/a/l/f;

    invoke-virtual {v0, p0}, Lg/e/a/a/l/f;->c(Lg/e/a/a/l/f$a;)V

    return-void
.end method


# virtual methods
.method protected a()Lg/e/a/a/l/f$a;
    .locals 3

    .line 1
    new-instance v0, Lg/e/a/a/l/d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lg/e/a/a/l/d;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPPointD, x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/e/a/a/l/d;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/e/a/a/l/d;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
