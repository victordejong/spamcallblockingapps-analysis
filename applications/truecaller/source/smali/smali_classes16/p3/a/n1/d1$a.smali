.class public Lp3/a/n1/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/d1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/d1;


# direct methods
.method public constructor <init>(Lp3/a/n1/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/d1$a;->a:Lp3/a/n1/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/d1$a;->a:Lp3/a/n1/d1;

    iget-object v0, v0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 2
    iget-object v1, v0, Lp3/a/n1/a1;->r:Lp3/a/n1/t1;

    const/4 v2, 0x0

    .line 3
    iput-object v2, v0, Lp3/a/n1/a1;->q:Lp3/a/k1$c;

    .line 4
    iput-object v2, v0, Lp3/a/n1/a1;->r:Lp3/a/n1/t1;

    .line 5
    sget-object v0, Lp3/a/g1;->p:Lp3/a/g1;

    const-string v2, "InternalSubchannel closed transport due to address change"

    .line 6
    invoke-virtual {v0, v2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    .line 7
    invoke-interface {v1, v0}, Lp3/a/n1/t1;->g(Lp3/a/g1;)V

    return-void
.end method
