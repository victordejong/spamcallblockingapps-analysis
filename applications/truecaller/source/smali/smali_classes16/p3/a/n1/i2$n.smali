.class public Lp3/a/n1/i2$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/i2$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/i2;->z(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lp3/a/n1/i2;


# direct methods
.method public constructor <init>(Lp3/a/n1/i2;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/i2$n;->b:Lp3/a/n1/i2;

    iput-object p2, p0, Lp3/a/n1/i2$n;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/n1/i2$x;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    iget-object v0, p0, Lp3/a/n1/i2$n;->b:Lp3/a/n1/i2;

    .line 2
    iget-object v0, v0, Lp3/a/n1/i2;->a:Lp3/a/p0;

    .line 3
    iget-object v1, p0, Lp3/a/n1/i2$n;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lp3/a/p0;->c(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lp3/a/n1/s2;->c(Ljava/io/InputStream;)V

    return-void
.end method
