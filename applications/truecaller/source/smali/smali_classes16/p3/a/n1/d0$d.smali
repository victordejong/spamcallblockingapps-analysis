.class public Lp3/a/n1/d0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/d0;->g(Lp3/a/g1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/g1;

.field public final synthetic b:Lp3/a/n1/d0;


# direct methods
.method public constructor <init>(Lp3/a/n1/d0;Lp3/a/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/d0$d;->b:Lp3/a/n1/d0;

    iput-object p2, p0, Lp3/a/n1/d0$d;->a:Lp3/a/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/d0$d;->b:Lp3/a/n1/d0;

    .line 2
    iget-object v0, v0, Lp3/a/n1/d0;->h:Lp3/a/n1/t1$a;

    .line 3
    iget-object v1, p0, Lp3/a/n1/d0$d;->a:Lp3/a/g1;

    invoke-interface {v0, v1}, Lp3/a/n1/t1$a;->a(Lp3/a/g1;)V

    return-void
.end method
