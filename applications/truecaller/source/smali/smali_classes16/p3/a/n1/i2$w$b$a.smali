.class public Lp3/a/n1/i2$w$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/i2$w$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/i2$w$b;


# direct methods
.method public constructor <init>(Lp3/a/n1/i2$w$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/i2$w$b$a;->a:Lp3/a/n1/i2$w$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2$w$b$a;->a:Lp3/a/n1/i2$w$b;

    iget-object v0, v0, Lp3/a/n1/i2$w$b;->a:Lp3/a/n1/i2$w;

    iget-object v1, v0, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    iget-object v0, v0, Lp3/a/n1/i2$w;->a:Lp3/a/n1/i2$x;

    iget v0, v0, Lp3/a/n1/i2$x;->d:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    sget-object v2, Lp3/a/n1/i2;->u:Lp3/a/o0$f;

    .line 3
    invoke-virtual {v1, v0}, Lp3/a/n1/i2;->r(I)Lp3/a/n1/i2$x;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lp3/a/n1/i2$w$b$a;->a:Lp3/a/n1/i2$w$b;

    iget-object v1, v1, Lp3/a/n1/i2$w$b;->a:Lp3/a/n1/i2$w;

    iget-object v1, v1, Lp3/a/n1/i2$w;->b:Lp3/a/n1/i2;

    .line 5
    invoke-virtual {v1, v0}, Lp3/a/n1/i2;->t(Lp3/a/n1/i2$x;)V

    return-void
.end method
