.class public final Lp3/a/n1/s1$c;
.super Lp3/a/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final b:Lp3/a/n1/s1;


# direct methods
.method public constructor <init>(Lp3/a/n1/s1;Lp3/a/n1/s1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/c0;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/n1/s1$c;->b:Lp3/a/n1/s1;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/i0$f;)Lp3/a/c0$b;
    .locals 3

    .line 1
    iget-object p1, p0, Lp3/a/n1/s1$c;->b:Lp3/a/n1/s1;

    const-string v0, "config"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const-string v1, "config is not set"

    .line 3
    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 4
    new-instance v0, Lp3/a/c0$b;

    sget-object v1, Lp3/a/g1;->f:Lp3/a/g1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v2}, Lp3/a/c0$b;-><init>(Lp3/a/g1;Ljava/lang/Object;Lp3/a/g;Lp3/a/c0$a;)V

    return-object v0
.end method
