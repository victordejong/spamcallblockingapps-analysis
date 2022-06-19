.class public final Lp3/a/n1/m1$t$a;
.super Lp3/a/n1/a1$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1$t;->f(Lp3/a/i0$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/i0$j;

.field public final synthetic b:Lp3/a/n1/m1$t;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$t;Lp3/a/i0$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$t$a;->b:Lp3/a/n1/m1$t;

    iput-object p2, p0, Lp3/a/n1/m1$t$a;->a:Lp3/a/i0$j;

    invoke-direct {p0}, Lp3/a/n1/a1$e;-><init>()V

    return-void
.end method
