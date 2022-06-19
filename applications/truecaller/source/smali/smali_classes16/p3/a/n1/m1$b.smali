.class public final Lp3/a/n1/m1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1;-><init>(Lp3/a/n1/q1;Lp3/a/n1/v;Lp3/a/n1/l$a;Lp3/a/n1/y1;Lcom/google/common/base/Supplier;Ljava/util/List;Lp3/a/n1/u2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/u2;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;Lp3/a/n1/u2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lp3/a/n1/m1$b;->a:Lp3/a/n1/u2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lp3/a/n1/n;
    .locals 2

    .line 1
    new-instance v0, Lp3/a/n1/n;

    iget-object v1, p0, Lp3/a/n1/m1$b;->a:Lp3/a/n1/u2;

    invoke-direct {v0, v1}, Lp3/a/n1/n;-><init>(Lp3/a/n1/u2;)V

    return-object v0
.end method
