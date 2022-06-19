.class public Lp3/a/n1/a1$a;
.super Lp3/a/n1/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/n1/y0<",
        "Lp3/a/n1/x;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lp3/a/n1/a1;


# direct methods
.method public constructor <init>(Lp3/a/n1/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/a1$a;->b:Lp3/a/n1/a1;

    invoke-direct {p0}, Lp3/a/n1/y0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$a;->b:Lp3/a/n1/a1;

    .line 2
    iget-object v1, v0, Lp3/a/n1/a1;->e:Lp3/a/n1/a1$e;

    .line 3
    check-cast v1, Lp3/a/n1/m1$t$a;

    .line 4
    iget-object v1, v1, Lp3/a/n1/m1$t$a;->b:Lp3/a/n1/m1$t;

    iget-object v1, v1, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    iget-object v1, v1, Lp3/a/n1/m1;->b0:Lp3/a/n1/y0;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lp3/a/n1/y0;->c(Ljava/lang/Object;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$a;->b:Lp3/a/n1/a1;

    .line 2
    iget-object v1, v0, Lp3/a/n1/a1;->e:Lp3/a/n1/a1$e;

    .line 3
    check-cast v1, Lp3/a/n1/m1$t$a;

    .line 4
    iget-object v1, v1, Lp3/a/n1/m1$t$a;->b:Lp3/a/n1/m1$t;

    iget-object v1, v1, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    iget-object v1, v1, Lp3/a/n1/m1;->b0:Lp3/a/n1/y0;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lp3/a/n1/y0;->c(Ljava/lang/Object;Z)V

    return-void
.end method
