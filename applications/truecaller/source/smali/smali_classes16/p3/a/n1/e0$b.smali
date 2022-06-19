.class public Lp3/a/n1/e0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/e0;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/e0;


# direct methods
.method public constructor <init>(Lp3/a/n1/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/e0$b;->a:Lp3/a/n1/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0$b;->a:Lp3/a/n1/e0;

    .line 2
    iget-object v0, v0, Lp3/a/n1/e0;->c:Lp3/a/n1/s;

    .line 3
    invoke-interface {v0}, Lp3/a/n1/s2;->f()V

    return-void
.end method
