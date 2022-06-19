.class public Lp3/a/o1/f$a;
.super Lp3/a/n1/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/o1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/n1/y0<",
        "Lp3/a/o1/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lp3/a/o1/f;


# direct methods
.method public constructor <init>(Lp3/a/o1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/o1/f$a;->b:Lp3/a/o1/f;

    invoke-direct {p0}, Lp3/a/n1/y0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/o1/f$a;->b:Lp3/a/o1/f;

    .line 2
    iget-object v0, v0, Lp3/a/o1/f;->g:Lp3/a/n1/t1$a;

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Lp3/a/n1/t1$a;->d(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/o1/f$a;->b:Lp3/a/o1/f;

    .line 2
    iget-object v0, v0, Lp3/a/o1/f;->g:Lp3/a/n1/t1$a;

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lp3/a/n1/t1$a;->d(Z)V

    return-void
.end method
