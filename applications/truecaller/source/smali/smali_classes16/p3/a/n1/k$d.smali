.class public final Lp3/a/n1/k$d;
.super Lp3/a/i0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lp3/a/g1;


# direct methods
.method public constructor <init>(Lp3/a/g1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/i0$i;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/n1/k$d;->a:Lp3/a/g1;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/i0$f;)Lp3/a/i0$e;
    .locals 0

    .line 1
    iget-object p1, p0, Lp3/a/n1/k$d;->a:Lp3/a/g1;

    invoke-static {p1}, Lp3/a/i0$e;->a(Lp3/a/g1;)Lp3/a/i0$e;

    move-result-object p1

    return-object p1
.end method
