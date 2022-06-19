.class public Lp3/a/n1/e0$o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/e0$o;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/e0$o;


# direct methods
.method public constructor <init>(Lp3/a/n1/e0$o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/e0$o$b;->a:Lp3/a/n1/e0$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0$o$b;->a:Lp3/a/n1/e0$o;

    .line 2
    iget-object v0, v0, Lp3/a/n1/e0$o;->a:Lp3/a/n1/t;

    .line 3
    invoke-interface {v0}, Lp3/a/n1/t2;->d()V

    return-void
.end method
