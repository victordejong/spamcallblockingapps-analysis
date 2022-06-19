.class public Lp3/a/n1/i2$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/i2$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/i2;->n(Lp3/a/n1/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/i2;


# direct methods
.method public constructor <init>(Lp3/a/n1/i2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/i2$o;->a:Lp3/a/n1/i2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/n1/i2$x;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    new-instance v1, Lp3/a/n1/i2$w;

    iget-object v2, p0, Lp3/a/n1/i2$o;->a:Lp3/a/n1/i2;

    invoke-direct {v1, v2, p1}, Lp3/a/n1/i2$w;-><init>(Lp3/a/n1/i2;Lp3/a/n1/i2$x;)V

    invoke-interface {v0, v1}, Lp3/a/n1/s;->n(Lp3/a/n1/t;)V

    return-void
.end method
