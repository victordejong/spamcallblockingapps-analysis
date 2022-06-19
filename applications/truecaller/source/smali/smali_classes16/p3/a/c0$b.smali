.class public final Lp3/a/c0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lp3/a/g1;

.field public final b:Ljava/lang/Object;

.field public c:Lp3/a/g;


# direct methods
.method public constructor <init>(Lp3/a/g1;Ljava/lang/Object;Lp3/a/g;Lp3/a/c0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "status"

    .line 2
    invoke-static {p1, p3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/c0$b;->a:Lp3/a/g1;

    .line 3
    iput-object p2, p0, Lp3/a/c0$b;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lp3/a/c0$b;->c:Lp3/a/g;

    return-void
.end method
