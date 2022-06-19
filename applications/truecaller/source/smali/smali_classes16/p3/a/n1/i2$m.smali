.class public Lp3/a/n1/i2$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/i2$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/i2;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(Lp3/a/n1/i2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput p2, p0, Lp3/a/n1/i2$m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/n1/i2$x;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    iget v0, p0, Lp3/a/n1/i2$m;->a:I

    invoke-interface {p1, v0}, Lp3/a/n1/s2;->b(I)V

    return-void
.end method
