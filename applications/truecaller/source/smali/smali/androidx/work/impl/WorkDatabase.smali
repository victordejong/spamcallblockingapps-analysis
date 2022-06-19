.class public abstract Landroidx/work/impl/WorkDatabase;
.super Ln3/c0/q;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final synthetic b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/c0/q;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ln3/m0/c0/s/b;
.end method

.method public abstract b()Ln3/m0/c0/s/e;
.end method

.method public abstract c()Ln3/m0/c0/s/h;
.end method

.method public abstract d()Ln3/m0/c0/s/k;
.end method

.method public abstract e()Ln3/m0/c0/s/n;
.end method

.method public abstract f()Ln3/m0/c0/s/q;
.end method

.method public abstract g()Ln3/m0/c0/s/v;
.end method
