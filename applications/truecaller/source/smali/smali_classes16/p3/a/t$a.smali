.class public final Lp3/a/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lp3/a/s;

.field public final b:Z


# direct methods
.method public constructor <init>(Lp3/a/s;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "decompressor"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/s;

    iput-object p1, p0, Lp3/a/t$a;->a:Lp3/a/s;

    .line 3
    iput-boolean p2, p0, Lp3/a/t$a;->b:Z

    return-void
.end method
