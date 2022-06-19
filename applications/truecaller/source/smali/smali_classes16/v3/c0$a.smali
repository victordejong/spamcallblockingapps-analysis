.class public final Lv3/c0$a;
.super Lv3/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv3/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(J)Lv3/c0;
    .locals 0

    return-object p0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;
    .locals 0

    const-string p1, "unit"

    invoke-static {p3, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
