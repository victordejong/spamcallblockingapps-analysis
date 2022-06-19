.class public Lp3/a/n1/i2$w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/i2$w;->e(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/i2$x;

.field public final synthetic b:Lp3/a/n1/i2$w;


# direct methods
.method public constructor <init>(Lp3/a/n1/i2$w;Lp3/a/n1/i2$x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/i2$w$a;->b:Lp3/a/n1/i2$w;

    iput-object p2, p0, Lp3/a/n1/i2$w$a;->a:Lp3/a/n1/i2$x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2$w$a;->b:Lp3/a/n1/i2$w;

    iget-object v0, v0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    iget-object v1, p0, Lp3/a/n1/i2$w$a;->a:Lp3/a/n1/i2$x;

    .line 2
    sget-object v2, Lp3/a/n1/i2;->u:Lp3/a/o0$f;

    .line 3
    invoke-virtual {v0, v1}, Lp3/a/n1/i2;->t(Lp3/a/n1/i2$x;)V

    return-void
.end method
