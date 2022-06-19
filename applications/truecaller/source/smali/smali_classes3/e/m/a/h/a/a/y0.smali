.class public final Le/m/a/h/a/a/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Le/m/a/h/a/d/g;


# instance fields
.field public final a:Le/m/a/h/a/a/p1;

.field public final b:Le/m/a/h/a/a/v0;

.field public final c:Le/m/a/h/a/a/z2;

.field public final d:Le/m/a/h/a/a/c2;

.field public final e:Le/m/a/h/a/a/h2;

.field public final f:Le/m/a/h/a/a/o2;

.field public final g:Le/m/a/h/a/a/s2;

.field public final h:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/a/s3;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/m/a/h/a/a/s1;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "ExtractorLooper"

    .line 1
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/a/h/a/a/y0;->k:Le/m/a/h/a/d/g;

    return-void
.end method

.method public constructor <init>(Le/m/a/h/a/a/p1;Le/m/a/h/a/d/f1;Le/m/a/h/a/a/v0;Le/m/a/h/a/a/z2;Le/m/a/h/a/a/c2;Le/m/a/h/a/a/h2;Le/m/a/h/a/a/o2;Le/m/a/h/a/a/s2;Le/m/a/h/a/a/s1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/a/p1;",
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/a/s3;",
            ">;",
            "Le/m/a/h/a/a/v0;",
            "Le/m/a/h/a/a/z2;",
            "Le/m/a/h/a/a/c2;",
            "Le/m/a/h/a/a/h2;",
            "Le/m/a/h/a/a/o2;",
            "Le/m/a/h/a/a/s2;",
            "Le/m/a/h/a/a/s1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/y0;->a:Le/m/a/h/a/a/p1;

    iput-object p2, p0, Le/m/a/h/a/a/y0;->h:Le/m/a/h/a/d/f1;

    iput-object p3, p0, Le/m/a/h/a/a/y0;->b:Le/m/a/h/a/a/v0;

    iput-object p4, p0, Le/m/a/h/a/a/y0;->c:Le/m/a/h/a/a/z2;

    iput-object p5, p0, Le/m/a/h/a/a/y0;->d:Le/m/a/h/a/a/c2;

    iput-object p6, p0, Le/m/a/h/a/a/y0;->e:Le/m/a/h/a/a/h2;

    iput-object p7, p0, Le/m/a/h/a/a/y0;->f:Le/m/a/h/a/a/o2;

    iput-object p8, p0, Le/m/a/h/a/a/y0;->g:Le/m/a/h/a/a/s2;

    iput-object p9, p0, Le/m/a/h/a/a/y0;->i:Le/m/a/h/a/a/s1;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    .line 1
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/m/a/h/a/a/y0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Exception;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/a/y0;->a:Le/m/a/h/a/a/p1;

    .line 1
    new-instance v1, Le/m/a/h/a/a/f1;

    .line 2
    invoke-direct {v1, v0, p1}, Le/m/a/h/a/a/f1;-><init>(Le/m/a/h/a/a/p1;I)V

    invoke-virtual {v0, v1}, Le/m/a/h/a/a/p1;->b(Le/m/a/h/a/a/o1;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le/m/a/h/a/a/y0;->a:Le/m/a/h/a/a/p1;

    .line 4
    new-instance v1, Le/m/a/h/a/a/e1;

    .line 5
    invoke-direct {v1, v0, p1}, Le/m/a/h/a/a/e1;-><init>(Le/m/a/h/a/a/p1;I)V

    invoke-virtual {v0, v1}, Le/m/a/h/a/a/p1;->b(Le/m/a/h/a/a/o1;)Ljava/lang/Object;
    :try_end_0
    .catch Le/m/a/h/a/a/x0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 6
    :catch_0
    sget-object p1, Le/m/a/h/a/a/y0;->k:Le/m/a/h/a/d/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Error during error handling: %s"

    invoke-virtual {p1, p2, v0}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
