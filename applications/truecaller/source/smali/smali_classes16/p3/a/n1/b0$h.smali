.class public final Lp3/a/n1/b0$h;
.super Lp3/a/n1/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation


# instance fields
.field public final b:Lp3/a/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/f$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public final c:Lp3/a/g1;


# direct methods
.method public constructor <init>(Lp3/a/n1/b0;Lp3/a/f$a;Lp3/a/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f$a<",
            "TRespT;>;",
            "Lp3/a/g1;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lp3/a/n1/b0;->c:Lp3/a/q;

    .line 2
    invoke-direct {p0, p1}, Lp3/a/n1/z;-><init>(Lp3/a/q;)V

    .line 3
    iput-object p2, p0, Lp3/a/n1/b0$h;->b:Lp3/a/f$a;

    .line 4
    iput-object p3, p0, Lp3/a/n1/b0$h;->c:Lp3/a/g1;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/b0$h;->b:Lp3/a/f$a;

    iget-object v1, p0, Lp3/a/n1/b0$h;->c:Lp3/a/g1;

    new-instance v2, Lp3/a/o0;

    invoke-direct {v2}, Lp3/a/o0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lp3/a/f$a;->a(Lp3/a/g1;Lp3/a/o0;)V

    return-void
.end method
