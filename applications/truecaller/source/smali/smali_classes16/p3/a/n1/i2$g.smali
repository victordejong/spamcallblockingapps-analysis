.class public Lp3/a/n1/i2$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/i2$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/i2;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(Lp3/a/n1/i2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/n1/i2$x;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    invoke-interface {p1}, Lp3/a/n1/s2;->flush()V

    return-void
.end method
