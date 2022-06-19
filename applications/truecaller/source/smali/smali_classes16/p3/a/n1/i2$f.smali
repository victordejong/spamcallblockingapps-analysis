.class public Lp3/a/n1/i2$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/i2$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/i2;->j(Lp3/a/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/t;


# direct methods
.method public constructor <init>(Lp3/a/n1/i2;Lp3/a/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lp3/a/n1/i2$f;->a:Lp3/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/n1/i2$x;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    iget-object v0, p0, Lp3/a/n1/i2$f;->a:Lp3/a/t;

    invoke-interface {p1, v0}, Lp3/a/n1/s;->j(Lp3/a/t;)V

    return-void
.end method
