.class public final Lp3/a/n1/a1$d;
.super Lp3/a/n1/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lp3/a/n1/x;

.field public final b:Lp3/a/n1/n;


# direct methods
.method public constructor <init>(Lp3/a/n1/x;Lp3/a/n1/n;Lp3/a/n1/a1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/n1/l0;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/n1/a1$d;->a:Lp3/a/n1/x;

    .line 3
    iput-object p2, p0, Lp3/a/n1/a1$d;->b:Lp3/a/n1/n;

    return-void
.end method


# virtual methods
.method public a()Lp3/a/n1/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$d;->a:Lp3/a/n1/x;

    return-object v0
.end method

.method public e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/p0<",
            "**>;",
            "Lp3/a/o0;",
            "Lp3/a/c;",
            ")",
            "Lp3/a/n1/s;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/a1$d;->a()Lp3/a/n1/x;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lp3/a/n1/u;->e(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)Lp3/a/n1/s;

    move-result-object p1

    .line 2
    new-instance p2, Lp3/a/n1/a1$d$a;

    invoke-direct {p2, p0, p1}, Lp3/a/n1/a1$d$a;-><init>(Lp3/a/n1/a1$d;Lp3/a/n1/s;)V

    return-object p2
.end method
