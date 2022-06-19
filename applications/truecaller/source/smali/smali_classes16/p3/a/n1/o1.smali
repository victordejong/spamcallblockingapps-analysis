.class public Lp3/a/n1/o1;
.super Lp3/a/n1/z;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lp3/a/f$a;

.field public final synthetic c:Lp3/a/g1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$h;Lp3/a/f$a;Lp3/a/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lp3/a/n1/o1;->b:Lp3/a/f$a;

    iput-object p3, p0, Lp3/a/n1/o1;->c:Lp3/a/g1;

    .line 2
    iget-object p1, p1, Lp3/a/n1/m1$h;->e:Lp3/a/q;

    .line 3
    invoke-direct {p0, p1}, Lp3/a/n1/z;-><init>(Lp3/a/q;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/o1;->b:Lp3/a/f$a;

    iget-object v1, p0, Lp3/a/n1/o1;->c:Lp3/a/g1;

    new-instance v2, Lp3/a/o0;

    invoke-direct {v2}, Lp3/a/o0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lp3/a/f$a;->a(Lp3/a/g1;Lp3/a/o0;)V

    return-void
.end method
